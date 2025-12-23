// ============================ Emit IR ===========================

///|
/// Represents a type name
struct TypeName(String) derive(Show, ToJson)

///|
/// Represents a trait name
struct TraitName(String) derive(Show, ToJson)

///|
/// Represents a constructor name, such as "new" or "new_2" for overloaded constructors
struct ConstructorName(String) derive(Show, ToJson)

///|
pub struct TraitDef {
  trait_name : String
  parent_trait : String
  methods : Array[TraitMethod]
} derive(Show, ToJson)

///|
pub struct TraitMethod {
  method_name : String
  return_type : String
  args : Array[MethodArg]
} derive(Show, ToJson)

///|
pub struct MethodArg {
  name : String
  original_name : String
  type_ : ArgMbtType
  optional : Bool
  default_value : String?
} derive(Show, ToJson)

///|
/// Argument MoonBit type representation
pub enum ArgMbtType {
  Self // Represents 'self' argument  
  Other(String) // Resolved type other than interface or union, eg. dictionary, enum, typedef, callback
  Union(String) // Union type represented by a trait
  Interface(String) // Interface type represented by a trait
} derive(Show, ToJson, Eq, Hash)

///|
fn ArgMbtType::name(self : ArgMbtType) -> String {
  match self {
    Self => "Self"
    Other(t) | Union(t) | Interface(t) => t
  }
}

///|
pub struct EnumVariantEmit {
  variant_name : String
  original_value : String
} derive(Show, ToJson)

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
  UnionArgTrait(TraitName) // eg. trait TEventTargetArg { ... }
  UnionArgTraitImpl(TypeName, TraitName) // eg. impl TEventTargetArg for TEventTarget
  DictionaryCreate(TypeName, Array[MethodArg]) // eg. pub fn[T: TEventTarget] EventTarget::new(self : EventTarget) -> T = "%identity"
  ConstructorMethod(ConstructorName, TypeName, Array[MethodArg]) // eg. pub fn EventTarget::new(...) -> EventTarget { ...
  Enum(TypeName, Array[EnumVariantEmit]) // eg. pub enum SomeEnum { Variant1, Variant2
  TypedefAlias(TypeName, String) // eg. pub typealias EventHandler = EventHandlerNonNull?
  Callback(TypeName, Array[CallbackArgEmit], TypeName) // eg. pub fn EventListener::new(f : (Event) -> Unit) -> EventListener
} derive(Show, ToJson)

//============================ Code generator ===========================

///|
fn method_args_to_string(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = safe_identifier(arg.name)
    let arg_name = if arg.optional { "\{arg_name}?" } else { arg_name }
    let arg_decl = match arg.type_ {
      ArgMbtType::Self => "\{arg_name} : Self"
      ArgMbtType::Interface(t) | ArgMbtType::Union(t) | ArgMbtType::Other(t) =>
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
    } else if arg.type_ is Union(_) && arg.optional && arg.default_value is None {
      "match \{arg_name} {\nSome(v) => v.to_js()\nNone => JsValue::undefined()\n},"
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
        let ffi_name = "\{snake_case(type_name)}_empty_ffi"
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
                ArgMbtType::Self => "\{arg_name} : Self"
                ArgMbtType::Interface(t)
                | ArgMbtType::Union(t)
                | ArgMbtType::Other(t) => "\{arg_name} : \{t}"
              }
            })
            .join(", ")
          let method_name = safe_identifier(meth.method_name)
          buf.write_string(
            "  \{method_name}(\{args}) -> \{meth.return_type} = _\n",
          )
        }
        buf.write_string("}")
        buf.write_string("\n\n")

        // Emit default trait method implementations
        for i, meth in trait_def.methods {
          // Emit FFI function
          let ret_type_str = meth.return_type
          let ffi_name = "\{snake_case(trait_def.trait_name)}_\{snake_case(meth.method_name)}_ffi"
          let ffi_argnames = meth.args.map(arg => match arg.type_ {
            ArgMbtType::Self => "obj"
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
      Emit::UnionArgTrait(TraitName(trait_name)) => {
        buf.write_string("pub(open) trait \{trait_name} {\n")
        buf.write_string("  to_js(self : Self) -> JsValue\n")
        buf.write_string("}")
      }
      Emit::UnionArgTraitImpl(TypeName(mbt_type), TraitName(trait_name)) =>
        buf.write_string(
          "pub impl \{trait_name} for \{mbt_type} with to_js(self : \{mbt_type}) -> JsValue = \"%identity\"",
        )
      Emit::DictionaryCreate(TypeName(type_name), args) => {
        // Emit FFI function
        let ffi_name = "\{snake_case(type_name)}_ffi"
        let ffi_args = args
          .map(arg => "\{safe_identifier(arg.name)}: JsValue")
          .join(", ")
        let ffi_js_args = args.map(arg => arg.original_name).join(", ")

        // FFI function body
        buf.write_string(
          "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{type_name} = \n",
        )
        buf.write_string("#|(\{ffi_js_args}) => {\n")
        buf.write_string("#|  const obj = {};\n")
        for arg in args {
          buf.write_string(
            "#|  if (\{arg.original_name} !== undefined) obj.\{arg.original_name} = \{arg.original_name};\n",
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
      Emit::ConstructorMethod(
        ConstructorName(constructor_name),
        TypeName(type_name),
        args
      ) => {
        // Emit FFI function
        let ffi_name = "\{snake_case(type_name)}_\{snake_case(constructor_name)}_ffi"
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
          "pub fn \{type_name}::\{constructor_name}(\{method_args}) -> \{type_name} {\n",
        )
        let call_args = func_call_args(args)
        buf.write_string("  \{ffi_name}(\{call_args})\n")
        buf.write_string("}")
      }
      Emit::Enum(TypeName(name), variants) => {
        // Emit enum type definition        
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
            "    \{name}::\{variant.variant_name} => TJsValue::to_js(\"\{variant.original_value}\")\n",
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
      Emit::TypedefAlias(TypeName(name), target_type) =>
        buf.write_string("pub type \{name} = \{target_type}")
      Emit::Callback(TypeName(name), args, TypeName(return_type)) => {
        // Build closure type signature: (ArgType1, ArgType2) -> ReturnType
        let arg_types = args.map(fn(a) { a.mbt_type }).join(", ")
        let closure_type = "(\{arg_types}) -> \{return_type}"
        let ffi_name = "\{snake_case(name)}_ffi"

        // External type
        buf.write_string("#external\n")
        buf.write_string("pub type \{name}")
        buf.write_string("\n\n")

        // TJsValue impl
        buf.write_string(
          "pub impl TJsValue for \{name} with to_js(self : \{name}) -> JsValue = \"%identity\"",
        )
        buf.write_string("\n\n")

        // FFI function - callbacks just pass the function through

        buf.write_string(
          "extern \"js\" fn \{ffi_name}(f : \{closure_type}) -> \{name} = \"(f) => f\"",
        )
        buf.write_string("\n\n")

        // Constructor from MoonBit closure
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

//============================ Emit Helpers ============================

///|
/// Moonbit reserved keywords that need escaping
let keywords : @hashset.HashSet[String] = [
    "fn", "let", "mut", "if", "else", "match", "while", "for", "break", "continue",
    "return", "struct", "enum", "type", "trait", "impl", "pub", "priv", "true", "false",
    "as", "is", "in", "loop", "test", "raise", "try", "catch", "namespace", "using",
    "where", "method", "async",
  ]
  |> @hashset.from_array

///|
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
fn safe_identifier(name : String) -> String {
  let name = snake_case(name)

  // Escape MoonBit reserved keywords by appending underscore.
  if keywords.contains(name) {
    "\{name}_"
  } else {
    name
  }
}

///|
/// Convert a string to snake case
/// Handles acronyms: DOMImplementation -> dom_implementation
fn snake_case(s : String) -> String {
  let chars = s.to_array()
  let buf = [chars[0].to_ascii_lowercase()]
  for i = 1; i < chars.length(); i = i + 1 {
    match chars[i] {
      'A'..='Z' as c => {
        let prev = chars[i - 1]
        let mut split = false
        if prev.is_ascii_lowercase() {
          split = true
        } else if prev.is_ascii_uppercase() && i + 1 < chars.length() {
          let next = chars[i + 1]
          if next.is_ascii_lowercase() {
            split = true
          }
        }
        // Prevent double underscore if input already has underscore
        if prev == '_' {
          split = false
        }
        if split {
          buf.push('_')
        }
        buf.push(c.to_ascii_lowercase())
      }
      c => buf.push(c)
    }
  }
  String::from_array(buf)
}

///|
test "snake_case function" {
  inspect(
    snake_case("CanvasRenderingContext2D"),
    content="canvas_rendering_context2d",
  )
  inspect(snake_case("XMLHttpRequest"), content="xml_http_request")
  inspect(snake_case("DOMImplementation"), content="dom_implementation")
  inspect(snake_case("MyAPIInterface"), content="my_api_interface")
  inspect(snake_case("already_snake_case"), content="already_snake_case")
}

///|
/// Convert a string to PascalCase
fn pascal_case(s : String) -> String {
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
        let enum_variant = enum_variant(s)
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
fn arg_mbt_type(
  idl_type : @parser.Type,
  type_name : String,
  method_name : String,
  arg_name : String,
  type_registry : @type_registry.TypeRegistry,
  union_type_call_depth? : Int = 0, // used to suffix union type names
) -> (ArgMbtType, Array[Emit]) {
  let emits = []
  let type_ = match idl_type {
    // Float Arrays
    Float16Array => ArgMbtType::Other("Float16Array")
    Float32Array => ArgMbtType::Other("Float32Array")
    Float64Array => ArgMbtType::Other("Float64Array")

    // Integer arrays
    Int8Array => ArgMbtType::Other("Int8Array")
    Int16Array => ArgMbtType::Other("Int16Array")
    Int32Array => ArgMbtType::Other("Int32Array")

    // BigUint and BigInt arrays
    BigUint64Array => ArgMbtType::Other("BigUint64Array")
    BigInt64Array => ArgMbtType::Other("BigInt64Array")

    // Unsigned integer arrays
    Uint8Array => ArgMbtType::Other("Uint8Array")
    Uint16Array => ArgMbtType::Other("Uint16Array")
    Uint32Array => ArgMbtType::Other("Uint32Array")
    Uint8ClampedArray => ArgMbtType::Other("Uint8ClampedArray")

    // Other typed arrays
    DataView => ArgMbtType::Other("DataView")
    SharedArrayBuffer => ArgMbtType::Other("SharedArrayBuffer")
    ArrayBuffer => ArgMbtType::Other("ArrayBuffer")

    // Object types
    Object => ArgMbtType::Other("JsValue")
    Any => ArgMbtType::Other("JsValue")

    // String types
    USVString => ArgMbtType::Other("String")
    ByteString => ArgMbtType::Other("String")
    DOMString => ArgMbtType::Other("String")

    // Integer Types    
    LongLong => ArgMbtType::Other("Int64") // 64-bit signed → Int64
    Bigint => ArgMbtType::Other("Int64") // BigInt → Int64
    UnsignedLong => ArgMbtType::Other("UInt") // 32-bit unsigned → UInt
    UnsignedLongLong => ArgMbtType::Other("UInt64") // 64-bit unsigned → UInt64
    UnsignedShort => ArgMbtType::Other("UInt") // 16-bit unsigned → UInt (UInt16 exists but UInt is more common)
    Long => ArgMbtType::Other("Int") // 32-bit signed → Int
    Short => ArgMbtType::Other("Int") // 16-bit signed → Int (Int16 exists but Int is more common)
    Octet => ArgMbtType::Other("Byte") // 8-bit unsigned → Byte
    Byte => ArgMbtType::Other("Int") // 8-bit signed → Int (no signed 8-bit in MoonBit)
    Boolean => ArgMbtType::Other("Bool")

    // Floating point types
    Float => ArgMbtType::Other("Float") // 32-bit float → Float
    Double => ArgMbtType::Other("Double") // 64-bit float → Double
    UnrestrictedDouble => ArgMbtType::Other("Double") // 64-bit unrestricted float → Double
    UnrestrictedFloat => ArgMbtType::Other("Float") // 32-bit unrestricted float → Float    

    // Named types (interfaces, dictionaries, enums, typedefs, union options)
    Identifier(name) =>
      if type_registry.is_interface(name) {
        ArgMbtType::Interface(name)
      } else {
        ArgMbtType::Other(name)
      }

    // Nullable
    Nullable(t) => {
      let (type_, emits_) = arg_mbt_type(
        t, type_name, method_name, arg_name, type_registry,
      )
      emits.push_iter(emits_.iter())
      type_
    }

    // Void 
    Undefined => ArgMbtType::Other("Unit")

    // Array type
    Sequence(t) => {
      let (type_, emits_) = arg_mbt_type(
        t, type_name, method_name, arg_name, type_registry,
      )
      emits.push_iter(emits_.iter())
      ArgMbtType::Other("Array[\{type_.name()}]")
    }

    // Js Promise
    Promise(t) => {
      let (type_, emits_) = arg_mbt_type(
        t, type_name, method_name, arg_name, type_registry,
      )
      emits.push_iter(emits_.iter())
      ArgMbtType::Other("JsPromise[\{type_.name()}]")
    }

    // Union type
    Union(options) => {
      let union_type_name = "T\{type_name}\{pascal_case(method_name)}\{pascal_case(arg_name)}"
      let union_type_name = if union_type_call_depth > 0 {
        "\{union_type_name}\{union_type_call_depth+1}"
      } else {
        union_type_name
      }
      emits.push(Emit::UnionArgTrait(union_type_name))
      for option in options {
        let (mbt_type, option_emits) = arg_mbt_type(
          option.type_,
          type_name,
          method_name,
          arg_name,
          type_registry,
          union_type_call_depth=union_type_call_depth + 1,
        )
        emits.push_iter(option_emits.iter())
        let mbt_type = if option.type_ is Union(_) {
          "&\{mbt_type.name()}"
        } else {
          mbt_type.name()
        }
        emits.push(
          Emit::UnionArgTraitImpl(
            TypeName(mbt_type),
            TraitName(union_type_name),
          ),
        )
      }
      ArgMbtType::Other("&\{union_type_name}")
    }

    // TODO: rethink these mappings (Parameterized types)
    Record(_, _) => ArgMbtType::Other("JsValue") // Fallback to JsValue for unsupported types
    ObservableArray(_) => ArgMbtType::Other("JsValue")
    FrozenArray(_) => ArgMbtType::Other("JsValue")
    AsyncSequence(_) => ArgMbtType::Other("JsValue")
    Symbol => ArgMbtType::Other("JsValue") // WebIDL Symbol is not used in practice as yet c2025
  }
  (type_, emits)
}

///|
test "arg_default_value" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test basic default values
  inspect(
    arg_default_value(@parser.Null, @parser.Identifier("MyType"), registry),
    content="MyType::null()",
  )
  inspect(
    arg_default_value(@parser.EmptyObject, @parser.Identifier("Dict"), registry),
    content="Dict::empty()",
  )
  inspect(
    arg_default_value(@parser.EmptySequence, @parser.Boolean, registry),
    content="[]",
  )
  inspect(
    arg_default_value(
      @parser.Undefined,
      @parser.Identifier("SomeType"),
      registry,
    ),
    content="SomeType::undefined()",
  )
}

///|
test "arg_default_value/string_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test string default values for regular types
  inspect(
    arg_default_value(@parser.String("hello"), @parser.DOMString, registry),
    content="\"hello\"",
  )

  // Test string default values for enum types (when registry indicates it's an enum)
  let state_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({
      name: "State",
      values: ["active", "inactive", "pending"],
    }),
  }
  let enum_registry = @type_registry.TypeRegistry::new([state_enum])
  // Note: This test assumes the registry will properly identify enums
  inspect(
    arg_default_value(
      @parser.String("active"),
      @parser.Identifier("State"),
      enum_registry,
    ),
    content="State::Active", // Now properly recognized as enum
  )
}

///|
test "arg_default_value/const_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test constant boolean values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("true")),
      @parser.Boolean,
      registry,
    ),
    content="true",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("false")),
      @parser.Boolean,
      registry,
    ),
    content="false",
  )

  // Test constant numeric values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Integer("42")),
      @parser.Long,
      registry,
    ),
    content="42",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Float("3.14"))),
      @parser.Double,
      registry,
    ),
    content="3.14",
  )

  // Test special float values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Infinity)),
      @parser.Double,
      registry,
    ),
    content="@float.infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NegInfinity)),
      @parser.Double,
      registry,
    ),
    content="@float.neg_infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NaN)),
      @parser.Double,
      registry,
    ),
    content="@float.not_a_number",
  )
}
