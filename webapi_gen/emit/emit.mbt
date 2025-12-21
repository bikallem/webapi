// ============================ Emit IR ===========================

///|
/// Represents a type name
struct TypeName(String) derive(Show, ToJson)

///|
/// Represents a trait name
struct TraitName(String) derive(Show, ToJson)

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
  Self // Represents 'self' argument
  UnresolvedType(@parser.Type) // Type that needs to be mapped
  Resolved(String) // Resolved type other than interface or union, eg. dictionary, enum, typedef, callback
  Union(String) // Union type represented by a trait
  Interface(String) // Interface type represented by a trait
} derive(Show, ToJson)

///|
pub struct EnumVariantEmit {
  variant_name : String
  original_value : String
} derive(Show, ToJson)

///|

///|
/// Callback argument emit representation
pub(all) struct CallbackArgEmit {
  name : String
  mbt_type : String
} derive(Show, ToJson)

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
  Enum(TypeName, Array[EnumVariantEmit]) // eg. pub enum SomeEnum { Variant1, Variant2
  TypedefAlias(TypeName, String) // eg. pub typealias EventHandler = EventHandlerNonNull?
  TypedefUnion(TypeName, Array[String]) // eg. pub(open) trait TCanvasImageSource { ... } with impls
  Callback(TypeName, Array[CallbackArgEmit], String) // eg. pub fn EventListener::new(f : (Event) -> Unit) -> EventListener
} derive(Show, ToJson)

//============================ Emit Helpers ============================

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
      (ArgType::Union("&\{type_name}"), emits)
    }
    Identifier(name) => {
      let name = if type_registry.is_interface(name) {
        ArgType::Interface("&T\{name}")
      } else {
        ArgType::Resolved(name)
      }
      (name, emits)
    }
    Nullable(type_) =>
      // TODO: what happens if the nullable type is a union and none of the options are identifiers?
      arg_type(type_, method_name, arg_name, type_registry)
    _ => (ArgType::UnresolvedType(type_), emits)
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
      ArgType::UnresolvedType(t) => "\{arg_name} : \{idl_to_mbt_type(t)}"
      ArgType::Interface(t) | ArgType::Union(t) | ArgType::Resolved(t) =>
        "\{arg_name} : \{t}"
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
    if (arg.type_ is Union(_) && arg.optional && arg.default_value is Some(_)) ||
      (arg.type_ is Union(_) && !arg.optional) {
      "\{arg_name}.to_js()"
    } else if arg.optional && arg.default_value is None {
      "opt_to_js(\{arg_name})"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })
  .join(", ")
}

///|
/// Generate MoonBit code from Emit array for js backend
pub fn mbt_code_gen(emits : Array[Emit]) -> String {
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
                ArgType::UnresolvedType(t) =>
                  "\{arg_name} : \{idl_to_mbt_type(t)}"
                ArgType::Interface(t)
                | ArgType::Union(t)
                | ArgType::Resolved(t) => "\{arg_name} : \{t}"
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
      Emit::Enum(TypeName(name), variants) => {
        // Emit enum type definition
        buf.write_string("///|\n")
        buf.write_string("pub(all) enum \{name} {\n")
        for variant in variants {
          buf.write_string("  \{variant.variant_name}\n")
        }
        buf.write_string("} derive(Eq,Show)")
        buf.write_string("\n\n")

        // Emit TJsValue impl
        buf.write_string(
          "pub impl TJsValue for \{name} with to_js(self: \{name}) -> JsValue {\n",
        )
        buf.write_string("  match self {\n")
        for variant in variants {
          buf.write_string(
            "    \{name}::\{variant.variant_name} => TJsValue::to_js(\"\{variant.variant_name}\")\n",
          )
        }
        buf.write_string("  }\n")
        buf.write_string("}")
        buf.write_string("\n\n")

        // Emit from method
        buf.write_string("pub fn \{name}::from(value: String) -> \{name}? {\n")
        buf.write_string("  match value {\n")
        for variant in variants {
          buf.write_string(
            "    \"\{variant.original_value}\" => Some(\{name}::\{variant.variant_name})\n",
          )
        }
        buf.write_string("    _ => None\n")
        buf.write_string("  }\n")
        buf.write_string("}")
      }
      Emit::TypedefAlias(TypeName(name), target_type) => {
        buf.write_string("///|\n")
        buf.write_string("pub typealias \{name} = \{target_type}")
      }
      Emit::TypedefUnion(TypeName(name), member_types) => {
        let trait_name = "T\{name}"
        // Emit trait definition
        buf.write_string("///|\n")
        buf.write_string("pub(open) trait \{trait_name} {\n")
        buf.write_string("  to_js(self : Self) -> JsValue\n")
        buf.write_string("}")
        buf.write_string("\n\n")
        // Emit into method
        buf.write_string("///|\n")
        buf.write_string(
          "pub fn[T : \{trait_name}] &\{trait_name}::into(self : &\{trait_name}) -> T = \"%identity\"",
        )
        buf.write_string("\n\n")
        // Emit impl for each member type
        for i, member_type in member_types {
          buf.write_string("///|\n")
          buf.write_string(
            "pub impl \{trait_name} for \{member_type} with to_js(self : \{member_type}) -> JsValue = \"%identity\"",
          )
          if i < member_types.length() - 1 {
            buf.write_string("\n\n")
          }
        }
      }
      Emit::Callback(TypeName(name), args, return_type) => {
        // Build closure type signature: (ArgType1, ArgType2) -> ReturnType
        let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
        let closure_type = "(\{arg_types}) -> \{return_type}"
        let ffi_name = "\{to_snake_case(name)}_ffi"

        // External type
        buf.write_string("///|\n")
        buf.write_string("#external\n")
        buf.write_string("pub type \{name}")
        buf.write_string("\n\n")

        // TJsValue impl
        buf.write_string("///|\n")
        buf.write_string(
          "pub impl TJsValue for \{name} with to_js(self : \{name}) -> JsValue = \"%identity\"",
        )
        buf.write_string("\n\n")

        // FFI function - callbacks just pass the function through
        buf.write_string("///|\n")
        buf.write_string(
          "extern \"js\" fn \{ffi_name}(f : \{closure_type}) -> \{name} = \"(f) => f\"",
        )
        buf.write_string("\n\n")

        // Constructor from MoonBit closure
        buf.write_string("///|\n")
        buf.write_string(
          "pub fn \{name}::new(f : \{closure_type}) -> \{name} { \{ffi_name}(f) }",
        )
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
    "as", "is", "in", "loop", "test", "raise", "try", "catch", "namespace", "using",
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
    // AsyncSequence({ type_, .. }) => "Array[\{mbt_type_string(type_)}]"
    Sequence(t) => "Array[\{idl_to_mbt_type(t)}]"

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
