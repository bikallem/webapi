// ============================ Emit IR ===========================

///|
/// Represents a type name
struct TypeName(String) derive(Show, ToJson)

///|
struct TraitName(String) derive(Show, ToJson)

///|
pub enum Emit {
  External(TypeName) // External type, eg. #external EventTarget
  IntoMethod(TypeName) // eg. pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
  EmptyMethod(TypeName) // eg. pub fn Event::empty() -> EventTarget
  ImplTrait(TypeName, TraitName) // eg. impl TEventTarget for EventTarget
  TraitDefinition(TraitDef) // eg. trait TEventTarget { ... }
  UnionArgTrait(TypeName) // eg. trait TEventTargetArg { ... }
  UnionArgTraitImpl(@parser.Type, TypeName) // eg. impl TEventTargetArg for TEventTarget
  DictionaryCreate(TypeName, Array[MethodArg]) // eg. pub fn[T: TEventTarget] EventTarget::new(self : EventTarget) -> T = "%identity"
  ConstructorMethod(TypeName, Array[MethodArg]) // eg. pub fn EventTarget::new(...) -> EventTarget { ...
} derive(Show, ToJson)

///|
pub struct TraitDef {
  trait_name : String
  parent_trait : String
  methods : Array[TraitMethod]
} derive(Show, ToJson)

///|
pub struct TraitMethod {
  method_name : String
  return_type : @parser.Type
  args : Array[MethodArg]
} derive(Show, ToJson)

///|
pub struct MethodArg {
  name : String
  type_ : ArgType
  optional : Bool
  default_value : String?
} derive(Show, ToJson)

///|
pub enum ArgType {
  Self
  Type(@parser.Type)
  Resolved(String) // Already resolved type, no need for further mapping
} derive(Show, ToJson)

//============================ Emit Helpers ============================

///|
pub fn emit_interface(
  interface : @partial_merged.PartialMergedInterface,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  let emits = []
  emits.push(Emit::External(interface.name))
  emits.push(Emit::IntoMethod(interface.name))
  emits.push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))

  // Generate trait method args
  fn fill_method_args(
    method_args : Array[@parser.Argument],
    method_name : String,
    output_args : Array[MethodArg],
  ) {
    for arg in method_args {
      let (type_, arg_emits) = arg_type(
        arg.type_.type_,
        method_name,
        arg.name,
        @type_registry.TypeRegistry::new([]), // empty registry since we don't need it here
      )
      // Push any additional emits needed for the arg type, e.g. union arg traits
      emits.push_iter(arg_emits.iter())
      output_args.push(MethodArg::{
        name: safe_identifier(arg.name),
        type_,
        optional: arg.optional,
        default_value: arg.default_value.map(dv => arg_default_value(
          dv,
          arg.type_.type_,
          type_registry,
        )),
      })
    }
  }

  let trait_methods = []
  for mem in interface.members {
    match mem.interface_member {
      Constructor(ctor) => {
        let args = []
        let method_name = "new"
        fill_method_args(ctor.arguments, method_name, args)
        emits.push(Emit::ConstructorMethod(interface.name, args))
      }
      RegularOperation(op) => {
        if op.static_ {
          continue // TODO: determine how to map static methods, perhaps to external type?
        }
        // trait method args
        let args = [
          MethodArg::{
            name: "self",
            type_: ArgType::Self,
            optional: false,
            default_value: None,
          },
        ]
        let method_name = safe_identifier(op.name)
        fill_method_args(op.arguments, method_name, args)
        // trait method
        let trait_method = TraitMethod::{
          method_name: op.name,
          return_type: op.return_type,
          args,
        }
        trait_methods.push(trait_method)
      }
      Attribute(_) => ()
      _ => ()
    }
  }
  let parent_trait = match interface.inheritance {
    None => "TJsValue"
    Some(parent) => "T\{parent}"
  }
  emits.push(
    Emit::TraitDefinition(TraitDef::{
      trait_name: interface.name,
      parent_trait,
      methods: trait_methods,
    }),
  )
  emits
}

///|
pub fn emit_dictionary(
  dict : @flattened_idl.MergedDictionaryIR,
  type_registry : @type_registry.TypeRegistry,
) -> Array[Emit] {
  let emits = [Emit::External(dict.name)]

  // Constructor method args
  let args = []
  for mem in dict.members {
    let (type_, arg_emits) = arg_type(
      mem.type_,
      dict.name,
      mem.name,
      type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    args.push(MethodArg::{
      name: mem.name,
      type_,
      optional: !mem.required,
      default_value: mem.default_value.map(dv => arg_default_value(
        dv,
        mem.type_,
        type_registry,
      )),
    })
  }
  emits.push(Emit::DictionaryCreate(dict.name, args)) // empty constructor
  emits.push(Emit::EmptyMethod(dict.name))
  emits
}

///|
pub fn emit_all_dictionaries(
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> Map[String, String] {
  let result = {}
  for name, dict in idl.dictionaries {
    let filename = "\{to_snake_case(name)}_dictionary.mbt"
    result[filename] = emit_dictionary(dict, type_registry) |> js_code_gen
  }
  result
}

///|
pub fn emit_all_interfaces(
  idl : @flattened_idl.FlattenedIdl,
  type_registry : @type_registry.TypeRegistry,
) -> Map[String, String] {
  let result = {}
  for name, interface in idl.interfaces {
    let filename = "\{to_snake_case(name)}_interface.mbt"
    result[filename] = emit_interface(interface, type_registry) |> js_code_gen
  }
  result
}

///|
fn arg_type(
  type_ : @parser.Type,
  method_name : String,
  arg_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (ArgType, Array[Emit]) {
  let emits = []
  match type_ {
    Union(options) => {
      let type_name = "T\{to_pascal_case(method_name)}\{to_pascal_case(arg_name)}Arg"
      emits.push(Emit::UnionArgTrait(type_name))
      for option in options {
        emits.push(Emit::UnionArgTraitImpl(option.type_, type_name))
      }
      (ArgType::Resolved("&\{type_name}"), emits)
    }
    Identifier(name) => {
      let name = if type_registry.is_interface(name) {
        "&T\{name}"
      } else {
        name
      }
      (ArgType::Resolved(name), emits)
    }
    Nullable(type_) =>
      // TODO: what happens if the nullable type is a union and none of the options are identifiers?
      arg_type(type_, method_name, arg_name, type_registry)
    _ => (ArgType::Type(type_), emits)
  }
}

//============================ Code generator ===========================

///|
fn method_args_to_string(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = safe_identifier(arg.name)
    let arg_name = if arg.optional { "\{arg_name}?" } else { arg_name }
    let arg_decl = match arg.type_ {
      ArgType::Self => "\{arg_name} : Self"
      ArgType::Type(t) => "\{arg_name} : \{idl_to_mbt_type(t)}"
      ArgType::Resolved(r) => "\{arg_name} : \{r}"
    }
    match arg.default_value {
      Some(dv) => "\{arg_decl} = \{dv}"
      None => arg_decl
    }
  })
  .join(", \n")
}

///|
fn func_call_args(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = safe_identifier(arg.name)
    if !arg.optional {
      "TJsValue::to_js(\{arg_name})"
    } else if arg.optional && arg.default_value is Some(_) {
      "\{arg_name}.to_js()"
    } else {
      "opt_to_js(\{arg_name})"
    }
  })
  .join(", ")
}

///|
/// Generate MoonBit code from Emit array for js backend
pub fn js_code_gen(emits : Array[Emit]) -> String {
  let buf = StringBuilder::new()
  for i, emit in emits {
    match emit {
      Emit::External(TypeName(type_name)) => {
        buf.write_string("#external\npub type \{type_name}")
        buf.write_string("\n\n")
        buf.write_string(
          "pub impl TJsValue for \{type_name} with to_js(self: \{type_name}) -> JsValue = \"%identity\"",
        )
      }
      Emit::IntoMethod(TypeName(type_name)) =>
        buf.write_string(
          "pub fn[T: T\{type_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
        )
      Emit::EmptyMethod(TypeName(type_name)) => {
        let ffi_name = "\{to_snake_case(type_name)}_empty_ffi"
        buf.write_string(
          "extern \"js\" fn \{ffi_name}() -> \{type_name} = \"() => {}\"",
        )
        buf.write_string("\n\n")
        buf.write_string(
          "pub fn \{type_name}::empty() -> \{type_name} { \{ffi_name}() }",
        )
      }
      Emit::ImplTrait(TypeName(type_name), TraitName(trait_name)) =>
        buf.write_string("pub impl \{trait_name} for \{type_name}")
      Emit::TraitDefinition(trait_def) => {
        buf.write_string(
          "pub trait T\{trait_def.trait_name}: \{trait_def.parent_trait} {\n",
        )
        for meth in trait_def.methods {
          let args = meth.args
            .map(arg => {
              let arg_name = if arg.optional {
                "\{arg.name}?"
              } else {
                arg.name
              }
              match arg.type_ {
                ArgType::Self => "\{arg_name} : Self"
                ArgType::Type(t) => "\{arg_name} : \{idl_to_mbt_type(t)}"
                ArgType::Resolved(r) => "\{arg_name} : \{r}"
              }
            })
            .join(", ")
          let ret_type_str = idl_to_mbt_type(meth.return_type)
          let method_name = safe_identifier(meth.method_name)
          buf.write_string("  \{method_name}(\{args}) -> \{ret_type_str} = _\n")
        }
        buf.write_string("}")
        buf.write_string("\n\n")

        // Emit default trait method implementations
        for i, meth in trait_def.methods {
          // Emit FFI function
          let ret_type_str = idl_to_mbt_type(meth.return_type)
          let ffi_name = "\{to_snake_case(trait_def.trait_name)}_\{to_snake_case(meth.method_name)}_ffi"
          let ffi_argnames = meth.args.map(arg => match arg.type_ {
            ArgType::Self => "obj"
            _ => arg.name
          })
          let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
          let ffi_js_args = ffi_argnames.join(", ")
          buf.write_string(
            "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ret_type_str} = \"(\{ffi_js_args}) => obj.\{meth.method_name}(\{ffi_js_args})\"",
          )
          buf.write_string("\n\n")

          // Emit default trait method implementation
          let method_args = method_args_to_string(meth.args)
          let method_name = safe_identifier(meth.method_name)
          let call_args = func_call_args(meth.args)
          buf.write_string(
            "impl T\{trait_def.trait_name} with \{method_name}(\{method_args}) -> \{ret_type_str} {\n",
          )
          buf.write_string("  \{ffi_name}(\{call_args})\n")
          buf.write_string("}")
          if i < trait_def.methods.length() - 1 {
            buf.write_string("\n\n")
          }
        }
      }
      Emit::UnionArgTrait(TypeName(trait_name)) => {
        buf.write_string("pub(open) trait \{trait_name} {\n")
        buf.write_string("  to_js(self : Self) -> JsValue\n")
        buf.write_string("}")
      }
      Emit::UnionArgTraitImpl(type_, TypeName(trait_name)) => {
        let mbt_type = idl_to_mbt_type(type_)
        buf.write_string(
          "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
        )
      }
      Emit::DictionaryCreate(TypeName(type_name), args) => {
        // Emit FFI function
        let ffi_name = "\{to_snake_case(type_name)}_ffi"
        let ffi_args = args
          .map(arg => "\{safe_identifier(arg.name)}: JsValue")
          .join(", ")
        let ffi_js_args = args.map(arg => arg.name).join(", ")

        // FFI function body 
        buf.write_string(
          "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \n",
        )
        buf.write_string("#|(\{ffi_js_args}) => {\n")
        buf.write_string("#|  const obj = {};\n")
        for arg in args {
          buf.write_string(
            "#|  if (\{arg.name} !== undefined) obj.\{arg.name} = \{arg.name};\n",
          )
        }
        buf.write_string("#|  return obj;\n")
        buf.write_string("#|}")
        buf.write_string("\n\n")

        // Emit new() method
        let method_args = method_args_to_string(args)
        buf.write_string(
          "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n",
        )
        let call_args = func_call_args(args)
        buf.write_string("  \{ffi_name}(\{call_args})\n")
        buf.write_string("}")
      }
      Emit::ConstructorMethod(TypeName(type_name), args) => {
        // Emit FFI function
        let ffi_name = "\{to_snake_case(type_name)}_ffi"
        let ffi_args = args
          .map(arg => "\{safe_identifier(arg.name)}: JsValue")
          .join(", ")
        let ffi_js_args = args.map(arg => arg.name).join(", ")
        buf.write_string(
          "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \"(\{ffi_js_args}) => new \{type_name}(\{ffi_js_args})\"",
        )
        buf.write_string("\n\n")
        let method_args = method_args_to_string(args)
        buf.write_string(
          "pub fn \{type_name}::new(\{method_args}) -> \{type_name} {\n",
        )
        let call_args = func_call_args(args)
        buf.write_string("  \{ffi_name}(\{call_args})\n")
        buf.write_string("}")
      }
    }
    if i < emits.length() - 1 {
      buf.write_string("\n\n")
    }
  }
  buf.to_string()
}

//============================ Utility Functions ============================

///|
/// Moonbit reserved keywords that need escaping
let keywords : @hashset.HashSet[String] = [
    "fn", "let", "mut", "if", "else", "match", "while", "for", "break", "continue",
    "return", "struct", "enum", "type", "trait", "impl", "pub", "priv", "true", "false",
    "as", "is", "in", "loop", "test", "raise", "try", "catch",
  ]
  |> @hashset.from_array

///|
/// Escape MoonBit reserved keywords by appending underscore.
fn escape_keyword(name : String) -> String {
  match keywords.contains(name) {
    true => "\{name}_"
    false => name
  }
}

///|
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
fn safe_identifier(name : String) -> String {
  escape_keyword(to_snake_case(name))
}

///|
/// Convert a string to snake case
fn is_upper(c : Char) -> Bool {
  c >= 'A' && c <= 'Z'
}

///|
fn is_lower(c : Char) -> Bool {
  c >= 'a' && c <= 'z'
}

///|
fn to_lower_char(c : Char) -> Char {
  if is_upper(c) {
    Int::to_char(c.to_int() + 32).unwrap()
  } else {
    c
  }
}

///|
/// Convert a string to snake case
/// Handles acronyms: DOMImplementation -> dom_implementation
fn to_snake_case(s : String) -> String {
  let buf = StringBuilder::new()
  let chars = []
  for c in s {
    chars.push(c)
  }
  for i, c in chars {
    if is_upper(c) {
      if i > 0 {
        let prev = chars[i - 1]
        let mut split = false
        if is_lower(prev) {
          split = true
        } else if is_upper(prev) && i + 1 < chars.length() {
          let next = chars[i + 1]
          if is_lower(next) {
            split = true
          }
        }
        // Prevent double underscore if input already has underscore
        if prev == '_' {
          split = false
        }
        if split {
          buf.write_char('_')
        }
      }
      buf.write_char(to_lower_char(c))
    } else {
      buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
/// Convert a string to PascalCase
fn to_pascal_case(s : String) -> String {
  let buf = StringBuilder::new()
  let mut capitalize_next = true
  for c in s {
    match c {
      '_' | '-' | ' ' => capitalize_next = true
      c if capitalize_next => {
        match c {
          'a'..='z' => buf.write_char(Int::to_char(c.to_int() - 32).unwrap()) // uppercase
          c => buf.write_char(c)
        }
        capitalize_next = false
      }
      c => buf.write_char(c)
    }
  }
  buf.to_string()
}

///|
fn arg_default_value(
  default_value : @parser.DefaultValue,
  arg_type : @parser.Type,
  type_registry : @type_registry.TypeRegistry,
) -> String {
  fn mbt_type() {
    match arg_type {
      Identifier(name) => name
      Union(options) =>
        // if the arg type is a union, find the first identifier option and return it
        loop options[:] {
          [] => "JsValue" // shouldn't happen
          [o, .. rest] =>
            if o.type_ is Identifier(name) {
              break name
            } else {
              continue rest
            }
        }
      _ => "JsValue" // shouldn't happen
    }
  }

  match default_value {
    Null => "\{mbt_type()}::null()"
    EmptyObject => "\{mbt_type()}::empty()" // A dictionary type
    EmptySequence => "[]"
    String(s) =>
      if arg_type is Identifier(name) && type_registry.is_enum(name) {
        // For enum types, convert string to enum variant
        let enum_variant = to_pascal_case(s)
        "\{name}::\{enum_variant}"
      } else {
        "\"\{s}\""
      }
    ConstValue(c) =>
      match c {
        Boolean(b) => b
        Integer(i) => i
        Float(Float(f)) => f
        Float(Infinity) => "@float.infinity"
        Float(NegInfinity) => "@float.neg_infinity"
        Float(NaN) => "@float.not_a_number"
      }
    Undefined => "\{mbt_type()}::undefined()"
  }
}

///|
/// Map WebIDL type to Moonbit type string
fn idl_to_mbt_type(idl_type : @parser.Type) -> String {
  match idl_type {
    // Named types (interfaces, dictionaries, enums, typedefs, union options)
    Identifier(name) => name

    // Void 
    Undefined => "Unit"

    // TODO: rethink these mappings (Parameterized types)
    // Promise(t) => "JsPromise[\{mbt_type_string(t)}]"
    // ObservableArray({ type_, .. }) => "Array[\{mbt_type_string(type_)}]"
    // FrozenArray({ type_, .. }) => "Array[\{mbt_type_string(type_)}]"
    // Sequence(t) => "Array[\{mbt_type_string(t)}]"
    // AsyncSequence({ type_, .. }) => "Array[\{mbt_type_string(type_)}]"

    // Typed Arrays
    Float64Array => "Float64Array"
    Float32Array => "Float32Array"
    Float16Array => "Float16Array"
    BigUint64Array => "BigUint64Array"
    BigInt64Array => "BigInt64Array"
    Uint8ClampedArray => "Uint8ClampedArray"
    Uint32Array => "Uint32Array"
    Uint16Array => "Uint16Array"
    Uint8Array => "Uint8Array"
    Int32Array => "Int32Array"
    Int16Array => "Int16Array"
    Int8Array => "Int8Array"
    DataView => "DataView"
    SharedArrayBuffer => "SharedArrayBuffer"
    ArrayBuffer => "ArrayBuffer"

    // Object types
    Object => "JsValue"
    Any => "JsValue"

    // String types
    USVString => "String"
    ByteString => "String"
    DOMString => "String"

    // Integer Types    
    LongLong => "Int64" // 64-bit signed → Int64
    Bigint => "Int64" // BigInt → Int64
    UnsignedLong => "UInt" // 32-bit unsigned → UInt
    UnsignedLongLong => "UInt64" // 64-bit unsigned → UInt64
    UnsignedShort => "UInt" // 16-bit unsigned → UInt (UInt16 exists but UInt is more common)
    Long => "Int" // 32-bit signed → Int
    Short => "Int" // 16-bit signed → Int (Int16 exists but Int is more common)
    Octet => "Byte" // 8-bit unsigned → Byte
    Byte => "Int" // 8-bit signed → Int (no signed 8-bit in MoonBit)
    Boolean => "Bool"

    // Floating point types
    Float => "Float" // 32-bit float → Float
    Double => "Double" // 64-bit float → Double
    UnrestrictedDouble => "Double" // 64-bit unrestricted float → Double
    UnrestrictedFloat => "Float" // 32-bit unrestricted float → Float    

    // Default fallback
    _ => "JsValue" // Fallback to JsValue for unsupported types
  }
}
