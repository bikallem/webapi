///| WebIDL AST Types for MoonBit

///| These types mirror the webidl2 JSON output structure

///|
/// Extended attribute (e.g., [Exposed=Window])
pub struct ExtendedAttribute {
  type_ : String // "extended-attribute"
  name : String
  rhs : ExtAttrRhs?
  arguments : Array[Argument]
} derive(Show)

///|
/// Extended attribute RHS value
pub enum ExtAttrRhs {
  Identifier(String)
  Wildcard // "*"
} derive(Show)

///|
/// Top-level WebIDL definition
pub enum Definition {
  Interface(InterfaceDefinition)
  Dictionary(DictionaryDefinition)
  Callback(CallbackDefinition)
  Enum(EnumDefinition)
  Typedef(TypedefDefinition)
  Includes(IncludesDefinition)
  Namespace(NamespaceDefinition)
} derive(Show)

///|
/// Interface definition
pub struct InterfaceDefinition {
  type_ : String // "interface"
  name : String
  inheritance : String? // Parent interface
  members : Array[InterfaceMember]
  ext_attrs : Array[ExtendedAttribute]
  partial : Bool
} derive(Show)

///|
/// Interface member (attribute, operation, constructor, const)
pub enum InterfaceMember {
  Constructor(ConstructorMember)
  Attribute(AttributeMember)
  Operation(OperationMember)
  Const(ConstMember)
} derive(Show)

///|
/// Constructor member
pub struct ConstructorMember {
  type_ : String // "constructor"
  arguments : Array[Argument]
  ext_attrs : Array[ExtendedAttribute]
} derive(Show)

///|
/// Attribute member
pub struct AttributeMember {
  type_ : String // "attribute"
  name : String
  idl_type : IdlType
  ext_attrs : Array[ExtendedAttribute]
  special : String // "" or "static", "inherit", etc.
  read_only : Bool
} derive(Show)

///|
/// Operation (method) member
pub struct OperationMember {
  type_ : String // "operation"
  name : String
  idl_type : IdlType // Return type
  arguments : Array[Argument]
  ext_attrs : Array[ExtendedAttribute]
  special : String // "" or "getter", "setter", "deleter", "static"
} derive(Show)

///|
/// Constant member
pub struct ConstMember {
  type_ : String // "const"
  name : String
  idl_type : IdlType
  ext_attrs : Array[ExtendedAttribute]
  value : ConstValue
} derive(Show)

///|
/// Constant value
pub enum ConstValue {
  Number(String)
  Boolean(Bool)
  Null
} derive(Show)

///|
/// Function/operation argument
pub struct Argument {
  type_ : String // "argument"
  name : String
  ext_attrs : Array[ExtendedAttribute]
  idl_type : IdlType
  default : DefaultValue?
  optional : Bool
  variadic : Bool
} derive(Show)

///|
/// Default value for arguments or dictionary fields
pub enum DefaultValue {
  Number(String)
  String(String)
  Boolean(Bool)
  Null
  EmptySequence // []
  EmptyDictionary // {}
  NaN
  Infinity
  NegativeInfinity
} derive(Show)

///|
/// IDL Type representation
pub struct IdlType {
  type_ : String // "attribute-type", "return-type", "argument-type", etc.
  ext_attrs : Array[ExtendedAttribute]
  generic : String // "" or "sequence", "Promise", "FrozenArray", "record"
  nullable : Bool
  union : Bool // true if this is a union type
  idl_type : IdlTypeValue
} derive(Show)

///|
/// IDL type value (either a string or array for unions/generics)
pub enum IdlTypeValue {
  Single(String) // Type name like "DOMString", "boolean", "long"
  Multiple(Array[IdlType]) // For union types or generic inner types
} derive(Show)

///|
/// Dictionary definition
pub struct DictionaryDefinition {
  type_ : String // "dictionary"
  name : String
  inheritance : String? // Parent dictionary
  members : Array[DictionaryMember]
  ext_attrs : Array[ExtendedAttribute]
  partial : Bool
} derive(Show)

///|
/// Dictionary member (field)
pub struct DictionaryMember {
  type_ : String // "field"
  name : String
  ext_attrs : Array[ExtendedAttribute]
  idl_type : IdlType
  default : DefaultValue?
  required : Bool
} derive(Show)

///|
/// Callback definition
pub struct CallbackDefinition {
  type_ : String // "callback"
  name : String
  idl_type : IdlType // Return type
  arguments : Array[Argument]
} derive(Show)

///|
/// Enum definition
pub struct EnumDefinition {
  type_ : String // "enum"
  name : String
  values : Array[String] // Enum string values
  ext_attrs : Array[ExtendedAttribute]
} derive(Show)

///|
/// Typedef definition
pub struct TypedefDefinition {
  type_ : String // "typedef"  
  name : String
  idl_type : IdlType
  ext_attrs : Array[ExtendedAttribute]
} derive(Show)

///|
/// Includes statement (InterfaceName includes MixinName)
pub struct IncludesDefinition {
  type_ : String // "includes"
  target : String // Interface that includes the mixin
  includes : String // Mixin name
  ext_attrs : Array[ExtendedAttribute]
} derive(Show)

///|
/// Namespace definition
pub struct NamespaceDefinition {
  type_ : String // "namespace"
  name : String
  members : Array[NamespaceMember]
  ext_attrs : Array[ExtendedAttribute]
  partial : Bool
} derive(Show)

///|
/// Namespace member
pub enum NamespaceMember {
  Attribute(AttributeMember)
  Operation(OperationMember)
} derive(Show)
