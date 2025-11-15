///|
/// WebIDL type representation
pub enum IdlType {
  Primitive(String) // e.g. "long", "DOMString", "boolean"
  Nullable(IdlType)
  Sequence(IdlType)
  FrozenArray(IdlType)
  Union(Array[IdlType])
  Identifier(String) // Reference to another type
} derive(Show, Eq)

///|
/// Parameter in a method or callback
pub struct Parameter {
  name : String
  param_type : IdlType
  optional : Bool
  variadic : Bool
} derive(Show, Eq)

///|
/// An attribute (property)
pub struct Attribute {
  name : String
  attr_type : IdlType
  is_readonly : Bool
} derive(Show, Eq)

///|
/// A method operation
pub struct Operation {
  name : String
  return_type : IdlType
  parameters : Array[Parameter]
} derive(Show, Eq)

///|
/// Interface definition
pub struct Interface {
  name : String
  extends : String? // Parent interface
  attributes : Array[Attribute]
  operations : Array[Operation]
  constants : Array[(String, String)] // (name, value) pairs
} derive(Show, Eq)

///|
/// Dictionary (key-value object type)
pub struct Dictionary {
  name : String
  fields : Array[(String, IdlType, Bool)] // (name, type, optional)
} derive(Show, Eq)

///|
/// Enum type
pub struct EnumType {
  name : String
  values : Array[String]
} derive(Show, Eq)

///|
/// Callback function type
pub struct Callback {
  name : String
  return_type : IdlType
  parameters : Array[Parameter]
} derive(Show, Eq)

///|
/// WebIDL definition (top-level)
pub enum Definition {
  InterfaceDef(Interface)
  DictionaryDef(Dictionary)
  EnumDef(EnumType)
  CallbackDef(Callback)
} derive(Show, Eq)
