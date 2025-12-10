///|
/// Convert a string to snake case
fn to_snake_case(s : String) -> String {
  let buf = StringBuilder::new()
  for i, c in s {
    match c {
      'A'..='Z' => {
        if i > 0 {
          buf.write_char('_')
        }
        buf.write_char(Int::to_char(c.to_int() + 32).unwrap())
      }
      c => buf.write_char(c)
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
/// Generate FFI function name from type and method name
fn ffi_name(type_name : String, method_name : String) -> String {
  "\{to_snake_case(type_name)}_\{to_snake_case(method_name)}_ffi"
}

///|
fn ffi_module_name(type_name : String) -> String {
  "webapi_\{type_name}"
}

///|
/// Map WebIDL type to Moonbit type string
fn map_idl_type(idl_type : Type) -> String {
  match idl_type {
    // Named types (interfaces, dictionaries, enums, typedefs)
    Identifier(name) => name
    Nullable(t) => "\{map_idl_type(t)}?" // Nullable types

    // Void 
    Undefined => "Unit"

    // Union types map to JsValue by default
    Union(_) => "JsValue" // Default

    // Parameterized types
    Promise(t) => "JsPromise[\{map_idl_type(t)}]"
    ObservableArray({ type_, .. }) => "Array[\{map_idl_type(type_)}]"
    FrozenArray({ type_, .. }) => "Array[\{map_idl_type(type_)}]"
    Sequence(t) => "Array[\{map_idl_type(t)}]"
    AsyncSequence({ type_, .. }) => "Array[\{map_idl_type(type_)}]"

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

    // Unsupported types
    Symbol => abort("Symbol type not supported")
    Record(_) => abort("Record type not supported")
  }
}

///|
/// Convert WebIDL enum value to MoonBit enum variant name
fn enum_value_to_variant(value : String) -> String {
  to_pascal_case(value.to_string())
}

///|
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
fn safe_identifier(name : String) -> String {
  escape_keyword(to_snake_case(name))
}
