///|
/// AST types for WebIDL parser
/// Based on the WebIDL grammar: https://webidl.spec.whatwg.org/#idl-grammar

// =============================================================================
// Extended Attributes
// =============================================================================

///|
/// Extended attribute forms: [Attr], [Attr=Value], [Attr(args)], etc.
pub enum ExtendedAttribute {
  NoArgs(String) // [Exposed]
  Ident(String, String) // [Exposed=Window]
  Wildcard(String) // [Exposed=*]
  ArgList(String, Array[Argument]) // [Constructor(DOMString url)]
  NamedArgList(String, String, Array[Argument]) // [NamedConstructor=Image(DOMString src)]
  IdentList(String, Array[String]) // [Exposed=(Window, Worker)]
} derive(Show)

// =============================================================================
// Types
// =============================================================================

///|
/// WebIDL type representation
pub enum Type {
  // Primitive types
  Void
  Undefined
  Boolean
  Byte
  Octet
  Short
  UnsignedShort
  Long
  UnsignedLong
  LongLong
  UnsignedLongLong
  Float
  UnrestrictedFloat
  Double
  UnrestrictedDouble
  Bigint
  // String types
  DOMString
  ByteString
  USVString
  // Special types
  Any
  Object
  Symbol
  // Reference type
  Identifier(String)
  // Parameterized types
  Sequence(Type)
  FrozenArray(Type)
  ObservableArray(Type)
  Promise(Type)
  Record(StringType, Type)
  // Union type
  Union(Array[Type])
  // Nullable type
  Nullable(Type)
} derive(Show)

///|
/// String type for Record key
pub enum StringType {
  DOMString
  ByteString
  USVString
} derive(Show)

///|
/// Buffer-related types
pub enum BufferType {
  ArrayBuffer
  SharedArrayBuffer
  DataView
  Int8Array
  Int16Array
  Int32Array
  Uint8Array
  Uint16Array
  Uint32Array
  Uint8ClampedArray
  BigInt64Array
  BigUint64Array
  Float16Array
  Float32Array
  Float64Array
} derive(Show)

// =============================================================================
// Arguments
// =============================================================================

///|
/// Operation/constructor argument
pub struct Argument {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
  optional : Bool
  variadic : Bool
  default_value : DefaultValue?
} derive(Show)

///|
/// Default value for optional arguments
pub enum DefaultValue {
  ConstValue(ConstValue)
  String(String)
  EmptySequence // []
  EmptyObject // {}
  Null
  Undefined
} derive(Show)

///|
/// Constant value
pub enum ConstValue {
  Boolean(Bool)
  Integer(String)
  Float(String)
  Infinity
  NegInfinity
  NaN
} derive(Show)

// =============================================================================
// Members
// =============================================================================

///|
/// Interface/mixin member
pub enum InterfaceMember {
  Const(ConstMember)
  Attribute(AttributeMember)
  Operation(OperationMember)
  Constructor(ConstructorMember)
  Iterable(IterableMember)
  AsyncIterable(AsyncIterableMember)
  Maplike(MaplikeMember)
  Setlike(SetlikeMember)
  Stringifier(StringifierMember)
} derive(Show)

///|
/// Constant member
pub struct ConstMember {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
  value : ConstValue
} derive(Show)

///|
/// Attribute member
pub struct AttributeMember {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
  is_readonly : Bool
  static_ : Bool
  is_inherit : Bool
} derive(Show)

///|
/// Operation (method) member
pub struct OperationMember {
  extended_attributes : Array[ExtendedAttribute]
  return_type : Type
  name : String?
  arguments : Array[Argument]
  static_ : Bool
  special : Special?
} derive(Show)

///|
/// Special operation type
pub enum Special {
  Getter
  Setter
  Deleter
} derive(Show)

///|
/// Constructor member
pub struct ConstructorMember {
  extended_attributes : Array[ExtendedAttribute]
  arguments : Array[Argument]
} derive(Show)

///|
/// Iterable declaration
pub struct IterableMember {
  extended_attributes : Array[ExtendedAttribute]
  key_type : Type?
  value_type : Type
} derive(Show)

///|
/// Async iterable declaration
pub struct AsyncIterableMember {
  extended_attributes : Array[ExtendedAttribute]
  key_type : Type?
  value_type : Type
  arguments : Array[Argument]
} derive(Show)

///|
/// Maplike declaration
pub struct MaplikeMember {
  extended_attributes : Array[ExtendedAttribute]
  key_type : Type
  value_type : Type
  is_readonly : Bool
} derive(Show)

///|
/// Setlike declaration
pub struct SetlikeMember {
  extended_attributes : Array[ExtendedAttribute]
  value_type : Type
  is_readonly : Bool
} derive(Show)

///|
/// Stringifier member
pub enum StringifierMember {
  Attribute(AttributeMember)
  Operation(OperationMember)
  Bare
} derive(Show)

// =============================================================================
// Dictionary Members
// =============================================================================

///|
/// Dictionary member
pub struct DictionaryMember {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
  required : Bool
  default_value : DefaultValue?
} derive(Show)

// =============================================================================
// Namespace Members
// =============================================================================

///|
/// Namespace member
pub enum NamespaceMember {
  Operation(OperationMember)
  Attribute(AttributeMember)
  Const(ConstMember)
} derive(Show)

// =============================================================================
// Top-level Definitions
// =============================================================================

///|
/// Top-level WebIDL definition
pub enum Definition {
  Interface(InterfaceDefinition)
  PartialInterface(PartialInterfaceDefinition)
  Mixin(MixinDefinition)
  PartialMixin(PartialMixinDefinition)
  Namespace(NamespaceDefinition)
  PartialNamespace(PartialNamespaceDefinition)
  Dictionary(DictionaryDefinition)
  PartialDictionary(PartialDictionaryDefinition)
  Enum_(EnumDefinition)
  Typedef(TypedefDefinition)
  CallbackFunction(CallbackFunctionDefinition)
  CallbackInterface(CallbackInterfaceDefinition)
  Includes(IncludesStatement)
} derive(Show)

///|
/// Interface definition
pub struct InterfaceDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  inheritance : String?
  members : Array[InterfaceMember]
} derive(Show)

///|
/// Partial interface definition
pub struct PartialInterfaceDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[InterfaceMember]
} derive(Show)

///|
/// Mixin definition
pub struct MixinDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[InterfaceMember]
} derive(Show)

///|
/// Partial mixin definition
pub struct PartialMixinDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[InterfaceMember]
} derive(Show)

///|
/// Namespace definition
pub struct NamespaceDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[NamespaceMember]
} derive(Show)

///|
/// Partial namespace definition
pub struct PartialNamespaceDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[NamespaceMember]
} derive(Show)

///|
/// Dictionary definition
pub struct DictionaryDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  inheritance : String?
  members : Array[DictionaryMember]
} derive(Show)

///|
/// Partial dictionary definition
pub struct PartialDictionaryDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[DictionaryMember]
} derive(Show)

///|
/// Enum definition
pub struct EnumDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  values : Array[String]
} derive(Show)

///|
/// Typedef definition
pub struct TypedefDefinition {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
} derive(Show)

///|
/// Callback function definition
pub struct CallbackFunctionDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  return_type : Type
  arguments : Array[Argument]
} derive(Show)

///|
/// Callback interface definition
pub struct CallbackInterfaceDefinition {
  extended_attributes : Array[ExtendedAttribute]
  name : String
  members : Array[InterfaceMember]
} derive(Show)

///|
/// Includes statement (e.g., "Window includes GlobalEventHandlers;")
pub struct IncludesStatement {
  extended_attributes : Array[ExtendedAttribute]
  interface_name : String
  mixin_name : String
} derive(Show)
