///|
/// Argument MoonBit type representation
pub(all) enum ArgMbtType {
  Self // Represents 'self' argument
  Other(String) // Resolved type other than interface or union, eg. dictionary, enum, typedef, callback
  Primitive(String) // Primitive type, eg. Int, String, Bool
  Union(UnionType) // Union type represented by a trait, Bool indicates if 'undefined' is an option
  Interface(String) // Interface type represented by a trait
  Enum(String) // Enum type
  Dictionary(String) // Dictionary type
} derive(Show, ToJson, Eq, Hash)

///|
pub(all) struct UnionType {
  name : String
  has_undefined : Bool
  options : Array[ArgMbtType]
} derive(Show, ToJson, Eq, Hash)

///|
pub fn ArgMbtType::name(self : ArgMbtType) -> String {
  match self {
    Self => "Self"
    Union(t) => t.name
    Other(t) | Interface(t) | Primitive(t) | Enum(t) | Dictionary(t) => t
  }
}

///|
pub(all) struct MethodArg {
  name : String
  original_name : String
  type_ : ArgMbtType
  optional : Bool
  variadic : Bool
  default_value : String?
} derive(Show, ToJson)

///|
pub(all) struct MethodReturn {
  type_ : ArgMbtType
  optional : Bool
} derive(Show, ToJson)

///|
pub fn MethodReturn::type_name(self : MethodReturn) -> String {
  if self.optional {
    "\{self.type_.name()}?"
  } else {
    self.type_.name()
  }
}

///|
/// Moonbit reserved keywords that need escaping
pub let keywords : @hashset.HashSet[String] = [
    "fn", "let", "mut", "if", "else", "match", "while", "for", "break", "continue",
    "return", "struct", "enum", "type", "trait", "impl", "pub", "priv", "true", "false",
    "as", "is", "in", "loop", "test", "raise", "try", "catch", "namespace", "using",
    "where", "method", "async", "constructor", "define", "defer", "declare", "opaque",
  ]
  |> @hashset.from_array

///|
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
pub fn safe_identifier(name : String) -> String {
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
pub fn snake_case(s : String) -> String {
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
  inspect(snake_case("name"), content="name")
  inspect(snake_case("margin-top"), content="margin-top")
}

///|
/// Convert a string to PascalCase
pub fn pascal_case(s : String) -> String {
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
pub fn const_value(const_value : @parser.Const) -> String {
  match const_value {
    Boolean(b) => b
    Integer(i) => i
    Float(Float(f)) => f
    Float(Infinity) => "@float.infinity"
    Float(NegInfinity) => "@float.neg_infinity"
    Float(NaN) => "@float.not_a_number"
  }
}

///|
pub fn arg_mbt_type(
  idl_type : @parser.Type,
  type_name : String,
  method_name : String,
  arg_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (ArgMbtType, Array[EmitAux]) {
  fn go(
    idl_type : @parser.Type,
    type_name : String,
    method_name : String,
    arg_name : String,
    type_registry : @type_registry.TypeRegistry,
    call_depth : Int, // used to suffix nested union type names
  ) -> (ArgMbtType, Array[EmitAux]) {
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

      // String types
      USVString => ArgMbtType::Primitive("String")
      ByteString => ArgMbtType::Primitive("String")
      DOMString => ArgMbtType::Primitive("String")

      // Integer Types
      LongLong => ArgMbtType::Primitive("Int64") // 64-bit signed → Int64
      Bigint => ArgMbtType::Primitive("Int64") // BigInt → Int64
      UnsignedLong => ArgMbtType::Primitive("UInt") // 32-bit unsigned → UInt
      UnsignedLongLong => ArgMbtType::Primitive("UInt64") // 64-bit unsigned → UInt64
      UnsignedShort => ArgMbtType::Primitive("UInt") // 16-bit unsigned → UInt (UInt16 exists but UInt is more common)
      Long => ArgMbtType::Primitive("Int") // 32-bit signed → Int
      Short => ArgMbtType::Primitive("Int") // 16-bit signed → Int (Int16 exists but Int is more common)
      Octet => ArgMbtType::Primitive("Byte") // 8-bit unsigned → Byte
      Byte => ArgMbtType::Primitive("Int") // 8-bit signed → Int (no signed 8-bit in MoonBit)

      // Boolean type
      Boolean => ArgMbtType::Primitive("Bool")

      // Floating point types
      Float => ArgMbtType::Primitive("Float") // 32-bit float → Float
      Double => ArgMbtType::Primitive("Double") // 64-bit float → Double
      UnrestrictedDouble => ArgMbtType::Primitive("Double") // 64-bit unrestricted float → Double
      UnrestrictedFloat => ArgMbtType::Primitive("Float") // 32-bit unrestricted float → Float

      // Other typed arrays
      DataView => ArgMbtType::Other("DataView")
      SharedArrayBuffer => ArgMbtType::Other("SharedArrayBuffer")
      ArrayBuffer => ArgMbtType::Other("ArrayBuffer")

      // Object types
      Object => ArgMbtType::Other("JsValue")
      Any => ArgMbtType::Other("JsValue")

      // Named types (interfaces, dictionaries, enums, typedefs, union options)
      Identifier(name) =>
        if type_registry.is_interface(name) {
          ArgMbtType::Interface(name)
        } else if type_registry.is_enum(name) {
          ArgMbtType::Enum(name)
        } else if type_registry.is_dictionary(name) {
          ArgMbtType::Dictionary(name)
        } else {
          ArgMbtType::Other(name)
        }

      // Nullable
      Nullable(t) => {
        let (type_, emits_) = go(
          t, type_name, method_name, arg_name, type_registry, call_depth,
        )
        emits.push_iter(emits_.iter())
        type_
      }

      // Void
      // Majority of use cases of 'void' are for return types. They can also be used
      // in union types as an option, eg. (DOMString or undefined). In those case we map
      // it to 'JsUndefined' type. See ArgMbtType::Union case below.
      Undefined => ArgMbtType::Other("Unit")

      // Array type
      Sequence(t) => {
        let (type_, emits_) = go(
          t, type_name, method_name, arg_name, type_registry, call_depth,
        )
        emits.push_iter(emits_.iter())
        let type_name = if type_ is ArgMbtType::Union(_) {
          "&T\{type_.name()}"
        } else {
          type_.name()
        }
        ArgMbtType::Other("Array[\{type_name}]")
      }

      // Js Promise
      Promise(t) => {
        let (type_, emits_) = go(
          t, type_name, method_name, arg_name, type_registry, call_depth,
        )
        let type_name = if type_ is ArgMbtType::Union(_) {
          "&T\{type_.name()}"
        } else {
          type_.name()
        }
        emits.push_iter(emits_.iter())
        ArgMbtType::Other("@js_async.Promise[\{type_name}]")
      }

      // Union type
      Union(options) => {
        let union_type_name = "\{type_name}\{pascal_case(method_name)}\{pascal_case(arg_name)}"
        let union_type_name = if call_depth > 0 {
          "\{union_type_name}\{call_depth+1}"
        } else {
          union_type_name
        }
        let union_trait_name = "T\{union_type_name}"
        emits.push(EmitAux::UnionArgTrait(union_trait_name))
        let mut has_undefined = false
        let option_types : Array[ArgMbtType] = []
        for option in options {
          let is_undefined = option.type_ is Undefined
          let (mbt_type, option_emits) = go(
            option.type_,
            type_name,
            method_name,
            arg_name,
            type_registry,
            call_depth + 1,
          )
          if mbt_type is ArgMbtType::Union(_) {
            emits.push(EmitAux::External(mbt_type.name()))
          }
          let mbt_type = if is_undefined {
            // Map 'undefined' type to 'JsUndefined' for union option
            has_undefined = is_undefined
            ArgMbtType::Other("JsUndefined")
          } else {
            mbt_type
          }
          option_types.push(mbt_type)
          emits.push_iter(option_emits.iter())
          let mbt_type = if option.type_ is Union(_) {
            "&T\{mbt_type.name()}"
          } else {
            mbt_type.name()
          }
          emits.push(EmitAux::UnionArgTraitImpl(mbt_type, union_trait_name))
        }
        let union_type = UnionType::{
          name: union_type_name,
          has_undefined,
          options: option_types,
        }
        ArgMbtType::Union(union_type)
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

  go(idl_type, type_name, method_name, arg_name, type_registry, 0)
}

///|
/// Auxiliary emit instructions produced by type resolution.
/// These are converted to full Emit values by the emit package.
pub enum EmitAux {
  UnionArgTrait(String) // trait name
  UnionArgTraitImpl(String, String) // (type_name, trait_name)
  External(String) // type name
} derive(Show, ToJson)
