///|
/// AST types for WebIDL parser
/// Based on the WebIDL grammar: https://webidl.spec.whatwg.org/#idl-grammar

// =============================================================================
// Extended Attributes
// =============================================================================

///|
/// Extended attribute forms: [Attr], [Attr=Value], [Attr(args)], etc.
pub(all) enum ExtendedAttribute {
  NoArgs(String) // [Exposed]
  Ident(String, String) // [Exposed=Window]
  Wildcard(String) // [Exposed=*]
  ArgList(String, Array[Argument]) // [Constructor(DOMString url)]
  NamedArgList(String, String, Array[Argument]) // [NamedConstructor=Image(DOMString src)]
} derive(Show, Eq, ToJson)

// =============================================================================
// Types
// =============================================================================

///|
/// WebIDL type representation
pub(all) enum Type {
  // Primitive types  
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

  // Buffer types
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

  // Reference type
  Identifier(String)

  // Parameterized types
  Sequence(Type)
  AsyncSequence(TypeWithExtendedAttributes)
  FrozenArray(TypeWithExtendedAttributes)
  ObservableArray(TypeWithExtendedAttributes)
  Promise(Type)
  Record(StringType, TypeWithExtendedAttributes)

  // Union type
  Union(Array[TypeWithExtendedAttributes])

  // Nullable type
  Nullable(Type)
} derive(Show, Eq, ToJson)

///|
pub(all) struct TypeWithExtendedAttributes {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
} derive(Show, Eq, ToJson)

///|
/// String type for Record key
pub(all) enum StringType {
  DOMString
  ByteString
  USVString
} derive(Show, Eq, ToJson)

// =============================================================================
// Arguments
// =============================================================================

///|
/// Operation/constructor argument
pub(all) struct Argument {
  extended_attributes : Array[ExtendedAttribute]
  type_ : TypeWithExtendedAttributes
  name : String
  optional : Bool
  variadic : Bool
  default_value : DefaultValue?
} derive(Show, Eq, ToJson)

///|
/// Default value for optional arguments
pub(all) enum DefaultValue {
  ConstValue(ConstValue)
  String(String)
  EmptySequence // []
  EmptyObject // {}
  Null
  Undefined
} derive(Show, Eq, ToJson)

///|
/// Constant value
pub(all) enum ConstValue {
  Boolean(String)
  Integer(String)
  Float(FloatLiteral)
} derive(Show, Eq, ToJson)

///|
pub(all) enum FloatLiteral {
  Float(String)
  Infinity
  NegInfinity
  NaN
} derive(Show, Eq, ToJson)

// =============================================================================
// Members
// =============================================================================

///|
/// Interface/mixin member
pub(all) enum InterfaceMember {
  Const(ConstMember)
  Attribute(AttributeMember)
  RegularOperation(RegularOperationMember)
  SpecialOperation(SpecialOperationMember)
  Constructor(ConstructorMember)
  Iterable(IterableMember)
  AsyncIterable(AsyncIterableMember)
  Maplike(MaplikeMember)
  Setlike(SetlikeMember)
  Stringifier(StringifierMember)
} derive(Show, Eq, ToJson)

///|
pub(all) struct InterfaceMemberExtendedAttributes {
  extended_attributes : Array[ExtendedAttribute]
  interface_member : InterfaceMember
} derive(Show, Eq, ToJson)

///|
/// Constant member
pub(all) struct ConstMember {
  type_ : Type
  name : String
  value : ConstValue
} derive(Show, Eq, ToJson)

///|
/// Attribute member
pub(all) struct AttributeMember {
  type_ : Type
  name : String
  is_readonly : Bool
  static_ : Bool
  is_inherit : Bool
} derive(Show, Eq, ToJson)

///|
/// Regular operation (non-special) member
pub(all) struct RegularOperationMember {
  return_type : Type
  name : String
  arguments : Array[Argument]
  static_ : Bool
} derive(Show, Eq, ToJson)

///|
/// Special operation member (getter/setter/deleter)
pub(all) struct SpecialOperationMember {
  return_type : Type
  name : String?
  arguments : Array[Argument]
  special : Special
} derive(Show, Eq, ToJson)

///|
/// Special operation type
pub(all) enum Special {
  Getter
  Setter
  Deleter
} derive(Show, Eq, ToJson)

///|
/// Constructor member
pub(all) struct ConstructorMember {
  arguments : Array[Argument]
} derive(Show, Eq, ToJson)

///|
/// Iterable declaration
pub(all) struct IterableMember {
  key_type : Type?
  value_type : Type
} derive(Show, Eq, ToJson)

///|
/// Async iterable declaration
pub(all) struct AsyncIterableMember {
  key_type : Type?
  value_type : Type
  arguments : Array[Argument]
} derive(Show, Eq, ToJson)

///|
/// Maplike declaration
pub(all) struct MaplikeMember {
  key_type : Type
  value_type : Type
  is_readonly : Bool
} derive(Show, Eq, ToJson)

///|
/// Setlike declaration
pub(all) struct SetlikeMember {
  value_type : Type
  is_readonly : Bool
} derive(Show, Eq, ToJson)

///|
/// Stringifier member (simplified - only bare stringifier supported)
pub(all) enum StringifierMember {
  Bare
} derive(Show, Eq, ToJson)

// =============================================================================
// Dictionary Members
// =============================================================================

///|
/// Dictionary member
pub(all) struct DictionaryMember {
  extended_attributes : Array[ExtendedAttribute]
  type_ : Type
  name : String
  required : Bool
  default_value : DefaultValue?
} derive(Show, Eq, ToJson)

// =============================================================================
// Namespace Members
// =============================================================================

///|
/// Namespace member
pub(all) enum NamespaceMember {
  Operation(RegularOperationMember)
  Attribute(AttributeMember)
  Const(ConstMember)
} derive(Show, Eq, ToJson)

///|
pub(all) struct NamespaceMemberExtendedAttributes {
  extended_attributes : Array[ExtendedAttribute]
  namespace_member : NamespaceMember
} derive(Show, Eq, ToJson)

// =============================================================================
// Top-level Definitions
// =============================================================================

///|
/// Top-level WebIDL definition
pub(all) enum Definition {
  Interface(InterfaceDefinition)
  PartialInterface(PartialInterfaceDefinition)
  Mixin(MixinDefinition)
  PartialMixin(PartialMixinDefinition)
  Namespace(NamespaceDefinition)
  PartialNamespace(PartialNamespaceDefinition)
  Dictionary(DictionaryDefinition)
  PartialDictionary(PartialDictionaryDefinition)
  Enum(EnumDefinition)
  Typedef(TypedefDefinition)
  CallbackFunction(CallbackFunctionDefinition)
  CallbackInterface(CallbackInterfaceDefinition)
  Includes(IncludesStatement)
} derive(Show, Eq, ToJson)

///|
pub(all) struct DefinitionExtendedAttributes {
  extended_attributes : Array[ExtendedAttribute]
  definition : Definition
} derive(Show, Eq, ToJson)

///|
/// Interface definition
pub(all) struct InterfaceDefinition {
  name : String
  inheritance : String?
  members : Array[InterfaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Partial interface definition
pub(all) struct PartialInterfaceDefinition {
  name : String
  members : Array[InterfaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Mixin definition
pub(all) struct MixinDefinition {
  name : String
  members : Array[InterfaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Partial mixin definition
pub(all) struct PartialMixinDefinition {
  name : String
  members : Array[InterfaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Namespace definition
pub(all) struct NamespaceDefinition {
  name : String
  members : Array[NamespaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Partial namespace definition
pub(all) struct PartialNamespaceDefinition {
  name : String
  members : Array[NamespaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
/// Dictionary definition
pub(all) struct DictionaryDefinition {
  name : String
  inheritance : String?
  members : Array[DictionaryMember]
} derive(Show, Eq, ToJson)

///|
/// Partial dictionary definition
pub(all) struct PartialDictionaryDefinition {
  name : String
  members : Array[DictionaryMember]
} derive(Show, Eq, ToJson)

///|
/// Enum definition
pub(all) struct EnumDefinition {
  name : String
  values : Array[String]
} derive(Show, Eq, ToJson)

///|
/// Typedef definition
pub(all) struct TypedefDefinition {
  type_ : Type
  name : String
} derive(Show, Eq, ToJson)

///|
/// Callback function definition
pub(all) struct CallbackFunctionDefinition {
  name : String
  return_type : Type
  arguments : Array[Argument]
} derive(Show, Eq, ToJson)

///|
/// Callback interface definition
pub(all) struct CallbackInterfaceDefinition {
  name : String
  members : Array[CallbackInterfaceMemberExtendedAttributes]
} derive(Show, Eq, ToJson)

///|
pub(all) enum CallbackInterfaceMember {
  Operation(RegularOperationMember)
  Const(ConstMember)
} derive(Show, Eq, ToJson)

///|
pub(all) struct CallbackInterfaceMemberExtendedAttributes {
  extended_attributes : Array[ExtendedAttribute]
  callback_interface_member : CallbackInterfaceMember
} derive(Show, Eq, ToJson)

///|
/// Includes statement (e.g., "Window includes GlobalEventHandlers;")
pub(all) struct IncludesStatement {
  interface_name : String
  mixin_name : String
} derive(Show, Eq, ToJson)
