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
fn ffi_module_name(type_name : String) -> String {
  "webapi_\{type_name}"
}

///|
/// Types to skip in union filtering (rarely used or not in bindings)
let skip_union_types : @hashset.HashSet[String] = [
    "TrustedType", "TrustedHTML", "TrustedScript", "TrustedScriptURL",
  ]
  |> @hashset.from_array

///|
/// Get filtered union member types, removing duplicates, Unit, and skip types
fn filter_union_members(
  members : Array[@parser.TypeWithExtendedAttributes],
  type_registry : TypeRegistry,
) -> Array[String] {
  let seen : @hashset.HashSet[String] = @hashset.new()
  let result : Array[String] = []
  for mem in members {
    let mbt_type = to_mbt_type_string(mem.type_, type_registry)
    if mbt_type != "Unit" &&
      not(skip_union_types.contains(mbt_type)) &&
      not(seen.contains(mbt_type)) {
      seen.add(mbt_type)
      result.push(mbt_type)
    }
  }
  result
}

///|
/// Map WebIDL type to Moonbit type string
fn to_mbt_type_string(idl_type : Type, type_registry : TypeRegistry) -> String {
  match idl_type {
    // Named types (interfaces, dictionaries, enums, typedefs)
    Identifier(name) =>
      if type_registry.is_interface(name) {
        "&T\{name}"
      } else {
        name
      }
    Nullable(t) => "\{to_mbt_type_string(t, type_registry)}" // Nullable types

    // Void 
    Undefined => "Unit"

    // Union types map to JsValue by default
    Union(_) => "JsValue" // Default

    // Parameterized types
    Promise(t) => "JsPromise[\{to_mbt_type_string(t, type_registry)}]"
    ObservableArray({ type_, .. }) =>
      "Array[\{to_mbt_type_string(type_, type_registry)}]"
    FrozenArray({ type_, .. }) =>
      "Array[\{to_mbt_type_string(type_, type_registry)}]"
    Sequence(t) => "Array[\{to_mbt_type_string(t, type_registry)}]"
    AsyncSequence({ type_, .. }) =>
      "Array[\{to_mbt_type_string(type_, type_registry)}]"

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
/// Generate a safe MoonBit identifier from a WebIDL name.
/// Handles keywords and invalid characters.
fn safe_identifier(name : String) -> String {
  escape_keyword(to_snake_case(name))
}
