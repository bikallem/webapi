///|
/// MoonBit type representation
pub enum MoonBitType {
  Primitive(String) // e.g. "Int", "String", "Bool", "Double"
  Option(MoonBitType)
  Array(MoonBitType)
  Enum(String)
  Struct(String)
  External(String) // Extern type for JS objects
} derive(Show, Eq)

///|
/// Map WebIDL type to MoonBit type
pub fn map_idl_type(idl_type : @idl_parser.IdlType) -> MoonBitType {
  match idl_type {
    @idl_parser.IdlType::Primitive(name) =>
      match name {
        "DOMString" => MoonBitType::Primitive("String")
        "boolean" => MoonBitType::Primitive("Bool")
        "byte" => MoonBitType::Primitive("Byte")
        "short" => MoonBitType::Primitive("Int16")
        "unsigned short" => MoonBitType::Primitive("UInt16")
        "long" => MoonBitType::Primitive("Int")
        "unsigned long" => MoonBitType::Primitive("UInt")
        "long long" => MoonBitType::Primitive("Int64")
        "unsigned long long" => MoonBitType::Primitive("UInt64")
        "double" => MoonBitType::Primitive("Double")
        "float" => MoonBitType::Primitive("Double")
        "void" => MoonBitType::Primitive("Unit")
        _ => MoonBitType::External(name)
      }
    @idl_parser.IdlType::Nullable(inner) =>
      MoonBitType::Option(map_idl_type(inner))
    @idl_parser.IdlType::Sequence(inner) =>
      MoonBitType::Array(map_idl_type(inner))
    @idl_parser.IdlType::FrozenArray(inner) =>
      MoonBitType::Array(map_idl_type(inner))
    @idl_parser.IdlType::Union(members) => {
      // For union types, pick the first member
      // A more sophisticated approach would generate a union enum
      if members.length() > 0 {
        map_idl_type(members[0])
      } else {
        MoonBitType::External("UnionType")
      }
    }
    @idl_parser.IdlType::Identifier(name) => {
      // Map common WebIDL primitive types that come as identifiers
      match name {
        "undefined" => MoonBitType::Primitive("Unit")
        "void" => MoonBitType::Primitive("Unit")
        "boolean" => MoonBitType::Primitive("Bool")
        "byte" => MoonBitType::Primitive("Byte")
        "short" => MoonBitType::Primitive("Int16")
        "unsigned short" => MoonBitType::Primitive("UInt16")
        "long" => MoonBitType::Primitive("Int")
        "unsigned long" => MoonBitType::Primitive("UInt")
        "long long" => MoonBitType::Primitive("Int64")
        "unsigned long long" => MoonBitType::Primitive("UInt64")
        "double" => MoonBitType::Primitive("Double")
        "float" => MoonBitType::Primitive("Double")
        "DOMString" => MoonBitType::Primitive("String")
        _ => MoonBitType::External(name)
      }
    }
  }
}

///|
/// Generate MoonBit type string
pub fn moonbit_type_string(mb_type : MoonBitType) -> String {
  match mb_type {
    MoonBitType::Primitive(name) => name
    MoonBitType::Option(inner) => "\{moonbit_type_string(inner)}?"
    MoonBitType::Array(inner) => "Array[\{moonbit_type_string(inner)}]"
    MoonBitType::Enum(name) => name
    MoonBitType::Struct(name) => name
    MoonBitType::External(name) => name
  }
}
