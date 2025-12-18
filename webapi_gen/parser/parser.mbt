
pub suberror ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
  UnexpectedEndOfInput(Position, Array[TokenKind])
} derive(Show)

type YYObj = Error

priv suberror YYObj_Void

priv suberror YYObj_Bool Bool

priv suberror YYObj_Type Type

priv suberror YYObj_Array_String_ Array[String]

priv suberror YYObj_Array_Argument_ Array[Argument]

priv suberror YYObj_Array_DictionaryMember_ Array[DictionaryMember]

priv suberror YYObj_Array_ExtendedAttribute_ Array[ExtendedAttribute]

priv suberror YYObj_Array_TypeWithExtendedAttributes_ Array[TypeWithExtendedAttributes]

priv suberror YYObj_Array_DefinitionExtendedAttributes_ Array[DefinitionExtendedAttributes]

priv suberror YYObj_Array_InterfaceMemberExtendedAttributes_ Array[InterfaceMemberExtendedAttributes]

priv suberror YYObj_Array_NamespaceMemberExtendedAttributes_ Array[NamespaceMemberExtendedAttributes]

priv suberror YYObj_Array_CallbackInterfaceMemberExtendedAttributes_ Array[CallbackInterfaceMemberExtendedAttributes]

priv suberror YYObj_Const Const

priv suberror YYObj_Option_DefaultValue_ Option[DefaultValue]

priv suberror YYObj_String String

priv suberror YYObj_Special Special

priv suberror YYObj_Argument Argument

priv suberror YYObj_Definition Definition

priv suberror YYObj_ConstMember ConstMember

priv suberror YYObj_DefaultValue DefaultValue

priv suberror YYObj_FloatLiteral FloatLiteral

priv suberror YYObj_MaplikeMember MaplikeMember

priv suberror YYObj_SetlikeMember SetlikeMember

priv suberror YYObj_EnumDefinition EnumDefinition

priv suberror YYObj_IterableMember IterableMember

priv suberror YYObj_InterfaceMember InterfaceMember

priv suberror YYObj_MixinDefinition MixinDefinition

priv suberror YYObj_NamespaceMember NamespaceMember

priv suberror YYObj_DictionaryMember DictionaryMember

priv suberror YYObj_ExtendedAttribute ExtendedAttribute

priv suberror YYObj_IncludesStatement IncludesStatement

priv suberror YYObj_TypedefDefinition TypedefDefinition

priv suberror YYObj_InterfaceDefinition InterfaceDefinition

priv suberror YYObj_NamespaceDefinition NamespaceDefinition

priv suberror YYObj_DictionaryDefinition DictionaryDefinition

priv suberror YYObj_PartialMixinDefinition PartialMixinDefinition

priv suberror YYObj_RegularOperationMember RegularOperationMember

priv suberror YYObj_CallbackInterfaceMember CallbackInterfaceMember

priv suberror YYObj_CallbackFunctionDefinition CallbackFunctionDefinition

priv suberror YYObj_PartialInterfaceDefinition PartialInterfaceDefinition

priv suberror YYObj_PartialNamespaceDefinition PartialNamespaceDefinition

priv suberror YYObj_TypeWithExtendedAttributes TypeWithExtendedAttributes

priv suberror YYObj_CallbackInterfaceDefinition CallbackInterfaceDefinition

priv suberror YYObj_PartialDictionaryDefinition PartialDictionaryDefinition

priv suberror YYObj_String_ String?

type YYState = (YYSymbol) -> YYDecision

type YYAction = (Position, ArrayView[(YYObj, Position, Position)]) -> YYObj

priv enum YYDecision {
  Accept
  Shift(YYState)
  Reduce(Int, YYSymbol, YYAction)
  ReduceNoLookahead(Int, YYSymbol, YYAction)
  Error
}

priv enum YYSymbol {
  T_EOF
  T_INTEGER
  T_FLOAT
  T_STRING
  T_IDENTIFIER
  T_INTERFACE
  T_PARTIAL
  T_MIXIN
  T_DICTIONARY
  T_ENUM
  T_TYPEDEF
  T_CALLBACK
  T_NAMESPACE
  T_INCLUDES
  T_ATTRIBUTE
  T_CONST
  T_READONLY
  T_INHERIT
  T_STATIC
  T_STRINGIFIER
  T_GETTER
  T_SETTER
  T_DELETER
  T_CONSTRUCTOR
  T_ITERABLE
  T_ASYNC_ITERABLE
  T_ASYNC_SEQUENCE
  T_MAPLIKE
  T_SETLIKE
  T_REQUIRED
  T_OPTIONAL
  T_UNDEFINED
  T_BOOLEAN
  T_BYTE
  T_OCTET
  T_SHORT
  T_LONG
  T_UNSIGNED
  T_FLOAT_KW
  T_DOUBLE
  T_UNRESTRICTED
  T_BIGINT
  T_DOMSTRING
  T_BYTESTRING
  T_USVSTRING
  T_ANY
  T_OBJECT
  T_SYMBOL
  T_SEQUENCE
  T_PROMISE
  T_FROZENARRAY
  T_OBSERVABLEARRAY
  T_RECORD
  T_OR
  T_ARRAYBUFFER
  T_SHAREDARRAYBUFFER
  T_DATAVIEW
  T_INT8ARRAY
  T_INT16ARRAY
  T_INT32ARRAY
  T_UINT8ARRAY
  T_UINT16ARRAY
  T_UINT32ARRAY
  T_UINT8CLAMPEDARRAY
  T_BIGINT64ARRAY
  T_BIGUINT64ARRAY
  T_FLOAT16ARRAY
  T_FLOAT32ARRAY
  T_FLOAT64ARRAY
  T_TRUE
  T_FALSE
  T_NULL
  T_INFINITY
  T_NEG_INFINITY
  T_NAN
  T_LBRACE
  T_RBRACE
  T_LPAREN
  T_RPAREN
  T_LBRACKET
  T_RBRACKET
  T_LANGLE
  T_RANGLE
  T_COMMA
  T_SEMICOLON
  T_COLON
  T_EQUALS
  T_QUESTION
  T_ELLIPSIS
  T_STAR
  NT_definitions
  NT_definition
  NT_interface_def
  NT_partial_interface_def
  NT_mixin_def
  NT_partial_mixin_def
  NT_namespace_def
  NT_partial_namespace_def
  NT_dictionary_def
  NT_partial_dictionary_def
  NT_enum_def
  NT_typedef_def
  NT_callback_def
  NT_callback_interface_def
  NT_includes_statement
  NT_inheritance
  NT_callback_interface_members
  NT_callback_interface_member
  NT_interface_members
  NT_interface_member
  NT_regular_operation_member
  NT_const_member
  NT_operation_name
  NT_special
  NT_iterable_member
  NT_maplike_member
  NT_setlike_member
  NT_namespace_members
  NT_namespace_member
  NT_dictionary_members
  NT_dictionary_member
  NT_enum_value_list
  NT_enum_value_list_rest
  NT_argument_list
  NT_arguments
  NT_argument
  NT_argument_rest
  NT_ellipsis
  NT_attribute_name
  NT_argument_name
  NT_argument_name_keyword
  NT_type
  NT_type_with_extended_attributes
  NT_union_type
  NT_union_member_type
  NT_union_member_types
  NT_distinguishable_type
  NT_single_type
  NT_primitive_type
  NT_string_type
  NT_buffer_type
  NT_null_modifier
  NT_const_value
  NT_boolean_literal
  NT_float_literal
  NT_default_value_opt
  NT_default_value
  NT_extended_attribute_list
  NT_extended_attributes
  NT_extended_attribute
  NT_identifier_list
  NT_identifier_list_rest
  EOI
}

// Workaround for EOI unused warning
fn init {
  match (EOI : YYSymbol) {
    EOI => ()
    _ => ()
  }
}

// file:///./parser.mbty
// 124|    extended_attributes = extended_attribute_list definition=definition defs=definitions  
// 125|    { [{extended_attributes, definition}, ..defs] }
fn yy_action_0(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_Definition(definition)
  guard _args[2].0 is YYObj_Array_DefinitionExtendedAttributes_(defs)
  YYObj_Array_DefinitionExtendedAttributes_({();  [{extended_attributes, definition}, ..defs] })
}

// file:///./parser.mbty
// 129|    i=interface_def               { Definition::Interface(i) }
fn yy_action_1(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_InterfaceDefinition(i)
  YYObj_Definition({();  Definition::Interface(i) })
}

// file:///./parser.mbty
// 130|    m=mixin_def                   { Definition::Mixin(m) }
fn yy_action_2(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_MixinDefinition(m)
  YYObj_Definition({();  Definition::Mixin(m) })
}

// file:///./parser.mbty
// 131|    p=partial_interface_def       { Definition::PartialInterface(p) }
fn yy_action_3(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialInterfaceDefinition(p)
  YYObj_Definition({();  Definition::PartialInterface(p) })
}

// file:///./parser.mbty
// 132|    p=partial_mixin_def           { Definition::PartialMixin(p) }
fn yy_action_4(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialMixinDefinition(p)
  YYObj_Definition({();  Definition::PartialMixin(p) })
}

// file:///./parser.mbty
// 133|    n=namespace_def               { Definition::Namespace(n) }
fn yy_action_5(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_NamespaceDefinition(n)
  YYObj_Definition({();  Definition::Namespace(n) })
}

// file:///./parser.mbty
// 134|    p=partial_namespace_def       { Definition::PartialNamespace(p) }
fn yy_action_6(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialNamespaceDefinition(p)
  YYObj_Definition({();  Definition::PartialNamespace(p) })
}

// file:///./parser.mbty
// 135|    d=dictionary_def              { Definition::Dictionary(d) }
fn yy_action_7(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_DictionaryDefinition(d)
  YYObj_Definition({();  Definition::Dictionary(d) })
}

// file:///./parser.mbty
// 136|    p=partial_dictionary_def      { Definition::PartialDictionary(p) }
fn yy_action_8(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialDictionaryDefinition(p)
  YYObj_Definition({();  Definition::PartialDictionary(p) })
}

// file:///./parser.mbty
// 137|    e=enum_def                    { Definition::Enum(e) }
fn yy_action_9(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_EnumDefinition(e)
  YYObj_Definition({();  Definition::Enum(e) })
}

// file:///./parser.mbty
// 138|    t=typedef_def                 { Definition::Typedef(t) }
fn yy_action_10(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_TypedefDefinition(t)
  YYObj_Definition({();  Definition::Typedef(t) })
}

// file:///./parser.mbty
// 139|    c=callback_def                { Definition::CallbackFunction(c) }
fn yy_action_11(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_CallbackFunctionDefinition(c)
  YYObj_Definition({();  Definition::CallbackFunction(c) })
}

// file:///./parser.mbty
// 140|    ci=callback_interface_def     { Definition::CallbackInterface(ci) }
fn yy_action_12(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_CallbackInterfaceDefinition(ci)
  YYObj_Definition({();  Definition::CallbackInterface(ci) })
}

// file:///./parser.mbty
// 141|    inc=includes_statement        { Definition::Includes(inc) }
fn yy_action_13(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_IncludesStatement(inc)
  YYObj_Definition({();  Definition::Includes(inc) })
}

// file:///./parser.mbty
// 145|    "interface" name=IDENTIFIER inheritance=inheritance "{" members=interface_members "}" ";" { { name, inheritance, members } }
fn yy_action_14(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  guard _args[2].0 is YYObj_String_(inheritance)
  guard _args[4].0 is YYObj_Array_InterfaceMemberExtendedAttributes_(members)
  YYObj_InterfaceDefinition({();  { name, inheritance, members } })
}

// file:///./parser.mbty
// 151|    "interface" "mixin" name=IDENTIFIER "{" members=interface_members "}" ";" { { name, members } }
fn yy_action_15(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Array_InterfaceMemberExtendedAttributes_(members)
  YYObj_MixinDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 148|    "partial" "interface" name=IDENTIFIER "{" members=interface_members "}" ";"  { { name, members } }
fn yy_action_16(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Array_InterfaceMemberExtendedAttributes_(members)
  YYObj_PartialInterfaceDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 154|    "partial" "interface" "mixin" name=IDENTIFIER "{" members=interface_members "}" ";" { { name, members } }
fn yy_action_17(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_String(name)
  guard _args[5].0 is YYObj_Array_InterfaceMemberExtendedAttributes_(members)
  YYObj_PartialMixinDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 199|    extended_attributes=extended_attribute_list interface_member=interface_member members=interface_members
// 200|      { [ {extended_attributes, interface_member }, ..members] }
fn yy_action_18(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_InterfaceMember(interface_member)
  guard _args[2].0 is YYObj_Array_InterfaceMemberExtendedAttributes_(members)
  YYObj_Array_InterfaceMemberExtendedAttributes_({();  [ {extended_attributes, interface_member }, ..members] })
}

// file:///./parser.mbty
// 204|    c=const_member                { Const(c) }
fn yy_action_19(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(c)
  YYObj_InterfaceMember({();  Const(c) })
}

// file:///./parser.mbty
// 206|    "constructor" "(" arguments=argument_list ")" ";" { Constructor({ arguments, }) }
fn yy_action_20(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Array_Argument_(arguments)
  YYObj_InterfaceMember({();  Constructor({ arguments, }) })
}

// file:///./parser.mbty
// 207|    "stringifier" ";"             { Stringifier(StringifierMember::Bare) }
fn yy_action_21(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_InterfaceMember({();  Stringifier(StringifierMember::Bare) })
}

// file:///./parser.mbty
// 209|    "stringifier" "readonly" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 210|      { Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: false }) }
fn yy_action_22(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[4].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 211|    "stringifier" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 212|      { Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: false }) }
fn yy_action_23(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[3].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 213|    "static" "readonly" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 214|      { Attribute({ type_: type_.type_, name, is_readonly: true, static_: true, is_inherit: false }) }
fn yy_action_24(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[4].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: true, static_: true, is_inherit: false }) })
}

// file:///./parser.mbty
// 215|    "static" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 216|      { Attribute({ type_: type_.type_, name, is_readonly: false, static_: true, is_inherit: false }) }
fn yy_action_25(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[3].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: false, static_: true, is_inherit: false }) })
}

// file:///./parser.mbty
// 236|    "static" op=regular_operation_member  { RegularOperation({ ..op, static_: true }) }
fn yy_action_26(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_RegularOperationMember(op)
  YYObj_InterfaceMember({();  RegularOperation({ ..op, static_: true }) })
}

// file:///./parser.mbty
// 217|    i=iterable_member             { Iterable(i) }
fn yy_action_27(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_IterableMember(i)
  YYObj_InterfaceMember({();  Iterable(i) })
}

// file:///./parser.mbty
// 218|    "async_iterable" "<" type ">" ";"
// 219|      { AsyncIterable({ key_type: None, value_type: $3, arguments: [] }) }
fn yy_action_28(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_InterfaceMember({();  AsyncIterable({ key_type: None, value_type: _dollar3, arguments: [] }) })
}

// file:///./parser.mbty
// 220|    "async_iterable" "<" type "," type ">" ";"
// 221|      { AsyncIterable({ key_type: Some($3), value_type: $5, arguments: [] }) }
fn yy_action_29(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  YYObj_InterfaceMember({();  AsyncIterable({ key_type: Some(_dollar3), value_type: _dollar5, arguments: [] }) })
}

// file:///./parser.mbty
// 222|    "readonly" m=maplike_member   { Maplike({ ..m, is_readonly: true }) }
fn yy_action_30(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_MaplikeMember(m)
  YYObj_InterfaceMember({();  Maplike({ ..m, is_readonly: true }) })
}

// file:///./parser.mbty
// 224|    "readonly" s=setlike_member   { Setlike({ ..s, is_readonly: true }) }
fn yy_action_31(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_SetlikeMember(s)
  YYObj_InterfaceMember({();  Setlike({ ..s, is_readonly: true }) })
}

// file:///./parser.mbty
// 230|    "readonly" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 231|      { Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: false }) }
fn yy_action_32(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[3].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 223|    m=maplike_member              { Maplike(m) }
fn yy_action_33(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_MaplikeMember(m)
  YYObj_InterfaceMember({();  Maplike(m) })
}

// file:///./parser.mbty
// 225|    s=setlike_member              { Setlike(s) }
fn yy_action_34(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_SetlikeMember(s)
  YYObj_InterfaceMember({();  Setlike(s) })
}

// file:///./parser.mbty
// 226|    "inherit" "readonly" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 227|      { Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: true }) }
fn yy_action_35(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[4].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: true, static_: false, is_inherit: true }) })
}

// file:///./parser.mbty
// 228|    "inherit" "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 229|      { Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: true }) }
fn yy_action_36(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[3].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: true }) })
}

// file:///./parser.mbty
// 232|    "attribute" type_=type_with_extended_attributes name=attribute_name ";"
// 233|      { Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: false }) }
fn yy_action_37(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[2].0 is YYObj_String(name)
  YYObj_InterfaceMember({();  Attribute({ type_: type_.type_, name, is_readonly: false, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 328|    name=argument_name_keyword   { name }
fn yy_action_38(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_String({();  name })
}

// file:///./parser.mbty
// 329|    name=IDENTIFIER              { name }
fn yy_action_39(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_String({();  name })
}

// file:///./parser.mbty
// 234|    special=special return_type=type name=operation_name "(" arguments=argument_list ")" ";"
// 235|      { SpecialOperation({ return_type, name, arguments, special }) }
fn yy_action_40(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Special(special)
  guard _args[1].0 is YYObj_Type(return_type)
  guard _args[2].0 is YYObj_String_(name)
  guard _args[4].0 is YYObj_Array_Argument_(arguments)
  YYObj_InterfaceMember({();  SpecialOperation({ return_type, name, arguments, special }) })
}

// file:///./parser.mbty
// 247|    name=IDENTIFIER           { Some(name) }
fn yy_action_41(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_String_({();  Some(name) })
}

// file:///./parser.mbty
// 248|                              { None }
fn yy_action_42(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String_({();  None })
}

// file:///./parser.mbty
// 237|    op=regular_operation_member           { RegularOperation(op) }
fn yy_action_43(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_RegularOperationMember(op)
  YYObj_InterfaceMember({();  RegularOperation(op) })
}

// file:///./parser.mbty
// 251|    "getter"                    { Special::Getter }
fn yy_action_44(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Getter })
}

// file:///./parser.mbty
// 252|    "setter"                    { Special::Setter }
fn yy_action_45(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Setter })
}

// file:///./parser.mbty
// 253|    "deleter"                   { Special::Deleter }
fn yy_action_46(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Deleter })
}

// file:///./parser.mbty
// 259|    "iterable" "<" value_type=type ">" ";" { { key_type: None, value_type } }
fn yy_action_47(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(value_type)
  YYObj_IterableMember({();  { key_type: None, value_type } })
}

// file:///./parser.mbty
// 260|    "iterable" "<" key_type=type "," value_type=type ">" ";" { { key_type: Some(key_type), value_type } }
fn yy_action_48(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(key_type)
  guard _args[4].0 is YYObj_Type(value_type)
  YYObj_IterableMember({();  { key_type: Some(key_type), value_type } })
}

// file:///./parser.mbty
// 263|    "maplike" "<" key_type=type "," value_type=type ">" ";" { { key_type, value_type, is_readonly: false } }
fn yy_action_49(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(key_type)
  guard _args[4].0 is YYObj_Type(value_type)
  YYObj_MaplikeMember({();  { key_type, value_type, is_readonly: false } })
}

// file:///./parser.mbty
// 266|    "setlike" "<" value_type=type ">" ";" { { value_type, is_readonly: false } }
fn yy_action_50(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(value_type)
  YYObj_SetlikeMember({();  { value_type, is_readonly: false } })
}

// file:///./parser.mbty
// 201|      { [] }
fn yy_action_51(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_InterfaceMemberExtendedAttributes_({();  [] })
}

// file:///./parser.mbty
// 160|    "partial" "namespace" name=IDENTIFIER "{" members=namespace_members "}" ";" { { name, members } }
fn yy_action_52(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Array_NamespaceMemberExtendedAttributes_(members)
  YYObj_PartialNamespaceDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 166|    "partial" "dictionary" name=IDENTIFIER "{" members=dictionary_members "}" ";" { { name, members } }
fn yy_action_53(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Array_DictionaryMember_(members)
  YYObj_PartialDictionaryDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 157|    "namespace" name=IDENTIFIER "{" members=namespace_members "}" ";" { { name, members } }
fn yy_action_54(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  guard _args[3].0 is YYObj_Array_NamespaceMemberExtendedAttributes_(members)
  YYObj_NamespaceDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 270|    extended_attributes=extended_attribute_list namespace_member = namespace_member namespaces=namespace_members 
// 271|    { [{ extended_attributes, namespace_member}, ..namespaces] }
fn yy_action_55(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_NamespaceMember(namespace_member)
  guard _args[2].0 is YYObj_Array_NamespaceMemberExtendedAttributes_(namespaces)
  YYObj_Array_NamespaceMemberExtendedAttributes_({();  [{ extended_attributes, namespace_member}, ..namespaces] })
}

// file:///./parser.mbty
// 275|    "readonly" "attribute" type_=type name=IDENTIFIER ";" 
// 276|    { Attribute({ type_, name, is_readonly: true, static_: false, is_inherit: false }) }
fn yy_action_56(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(type_)
  guard _args[3].0 is YYObj_String(name)
  YYObj_NamespaceMember({();  Attribute({ type_, name, is_readonly: true, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 277|    op=regular_operation_member { Operation(op) }
fn yy_action_57(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_RegularOperationMember(op)
  YYObj_NamespaceMember({();  Operation(op) })
}

// file:///./parser.mbty
// 278|    const_member                { Const($1) }
fn yy_action_58(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(_dollar1)
  YYObj_NamespaceMember({();  Const(_dollar1) })
}

// file:///./parser.mbty
// 272|                                { [] }
fn yy_action_59(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_NamespaceMemberExtendedAttributes_({();  [] })
}

// file:///./parser.mbty
// 163|    "dictionary" name=IDENTIFIER inheritance=inheritance "{" members=dictionary_members "}" ";" { { name, inheritance, members } }
fn yy_action_60(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  guard _args[2].0 is YYObj_String_(inheritance)
  guard _args[4].0 is YYObj_Array_DictionaryMember_(members)
  YYObj_DictionaryDefinition({();  { name, inheritance, members } })
}

// file:///./parser.mbty
// 282|    extended_attributes=extended_attribute_list m=dictionary_member members=dictionary_members
// 283|      { [{ ..m, extended_attributes }, ..members] }
fn yy_action_61(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_DictionaryMember(m)
  guard _args[2].0 is YYObj_Array_DictionaryMember_(members)
  YYObj_Array_DictionaryMember_({();  [{ ..m, extended_attributes }, ..members] })
}

// file:///./parser.mbty
// 287|    "required" type_=type name=IDENTIFIER ";"
// 288|      { { extended_attributes: [], type_, name, required: true, default_value: None } }
fn yy_action_62(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(type_)
  guard _args[2].0 is YYObj_String(name)
  YYObj_DictionaryMember({();  { extended_attributes: [], type_, name, required: true, default_value: None } })
}

// file:///./parser.mbty
// 289|    type_=type name=IDENTIFIER default_value=default_value_opt ";"
// 290|      { { extended_attributes: [], type_, name, required: false, default_value } }
fn yy_action_63(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(type_)
  guard _args[1].0 is YYObj_String(name)
  guard _args[2].0 is YYObj_Option_DefaultValue_(default_value)
  YYObj_DictionaryMember({();  { extended_attributes: [], type_, name, required: false, default_value } })
}

// file:///./parser.mbty
// 284|                                { [] }
fn yy_action_64(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_DictionaryMember_({();  [] })
}

// file:///./parser.mbty
// 184|    ":" name=IDENTIFIER         { Some(name) }
fn yy_action_65(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  YYObj_String_({();  Some(name) })
}

// file:///./parser.mbty
// 185|                                { None }
fn yy_action_66(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String_({();  None })
}

// file:///./parser.mbty
// 169|    "enum" name=IDENTIFIER "{" values=enum_value_list "}" ";" { { name, values } }
fn yy_action_67(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  guard _args[3].0 is YYObj_Array_String_(values)
  YYObj_EnumDefinition({();  { name, values } })
}

// file:///./parser.mbty
// 294|    e=STRING enums=enum_value_list_rest { [e, ..enums] }
fn yy_action_68(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(e)
  guard _args[1].0 is YYObj_Array_String_(enums)
  YYObj_Array_String_({();  [e, ..enums] })
}

// file:///./parser.mbty
// 297|    "," e=STRING enums=enum_value_list_rest  { [e, ..enums] }
fn yy_action_69(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(e)
  guard _args[2].0 is YYObj_Array_String_(enums)
  YYObj_Array_String_({();  [e, ..enums] })
}

// file:///./parser.mbty
// 298|    ","                              { [] }
fn yy_action_70(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_String_({();  [] })
}

// file:///./parser.mbty
// 299|                                     { [] }
fn yy_action_71(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_String_({();  [] })
}

// file:///./parser.mbty
// 172|    "typedef" type_=type name=IDENTIFIER ";" { { type_, name } }
fn yy_action_72(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(type_)
  guard _args[2].0 is YYObj_String(name)
  YYObj_TypedefDefinition({();  { type_, name } })
}

// file:///./parser.mbty
// 175|    "callback" name=IDENTIFIER "=" return_type=type "(" arguments=argument_list ")" ";" { { name, return_type, arguments } }
fn yy_action_73(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(name)
  guard _args[3].0 is YYObj_Type(return_type)
  guard _args[5].0 is YYObj_Array_Argument_(arguments)
  YYObj_CallbackFunctionDefinition({();  { name, return_type, arguments } })
}

// file:///./parser.mbty
// 178|    "callback" "interface" name=IDENTIFIER "{" members = callback_interface_members "}" ";" { { name, members } }
fn yy_action_74(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Array_CallbackInterfaceMemberExtendedAttributes_(members)
  YYObj_CallbackInterfaceDefinition({();  { name, members } })
}

// file:///./parser.mbty
// 189|    extended_attributes=extended_attribute_list m=callback_interface_member members=callback_interface_members
// 190|      { [ { extended_attributes, callback_interface_member: m }, ..members] }
fn yy_action_75(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_CallbackInterfaceMember(m)
  guard _args[2].0 is YYObj_Array_CallbackInterfaceMemberExtendedAttributes_(members)
  YYObj_Array_CallbackInterfaceMemberExtendedAttributes_({();  [ { extended_attributes, callback_interface_member: m }, ..members] })
}

// file:///./parser.mbty
// 194|    op=regular_operation_member   { CallbackInterfaceMember::Operation(op) }
fn yy_action_76(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_RegularOperationMember(op)
  YYObj_CallbackInterfaceMember({();  CallbackInterfaceMember::Operation(op) })
}

// file:///./parser.mbty
// 195|    c=const_member                { CallbackInterfaceMember::Const(c) }
fn yy_action_77(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(c)
  YYObj_CallbackInterfaceMember({();  CallbackInterfaceMember::Const(c) })
}

// file:///./parser.mbty
// 240|    return_type=type name=IDENTIFIER "(" arguments=argument_list ")" ";"
// 241|      { { return_type, name, arguments, static_: false } }
fn yy_action_78(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(return_type)
  guard _args[1].0 is YYObj_String(name)
  guard _args[3].0 is YYObj_Array_Argument_(arguments)
  YYObj_RegularOperationMember({();  { return_type, name, arguments, static_: false } })
}

// file:///./parser.mbty
// 244|    "const" type_=type name=IDENTIFIER "=" value=const_value ";" { { type_, name, value } }
fn yy_action_79(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(type_)
  guard _args[2].0 is YYObj_String(name)
  guard _args[4].0 is YYObj_Const(value)
  YYObj_ConstMember({();  { type_, name, value } })
}

// file:///./parser.mbty
// 191|      { [] }
fn yy_action_80(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_CallbackInterfaceMemberExtendedAttributes_({();  [] })
}

// file:///./parser.mbty
// 181|    interface_name=IDENTIFIER "includes" mixin_name=IDENTIFIER ";" { { interface_name, mixin_name } }
fn yy_action_81(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(interface_name)
  guard _args[2].0 is YYObj_String(mixin_name)
  YYObj_IncludesStatement({();  { interface_name, mixin_name } })
}

// file:///./parser.mbty
// 126|    EOF { [] }
fn yy_action_82(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_DefinitionExtendedAttributes_({();  [] })
}

// file:///./parser.mbty
// 498|    "[" ext_attr=extended_attribute attrs=extended_attributes "]"  { [ext_attr, ..attrs] }
fn yy_action_83(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_ExtendedAttribute(ext_attr)
  guard _args[2].0 is YYObj_Array_ExtendedAttribute_(attrs)
  YYObj_Array_ExtendedAttribute_({();  [ext_attr, ..attrs] })
}

// file:///./parser.mbty
// 502|    "," ext_attr=extended_attribute attrs=extended_attributes  { [ext_attr, ..attrs] }
fn yy_action_84(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_ExtendedAttribute(ext_attr)
  guard _args[2].0 is YYObj_Array_ExtendedAttribute_(attrs)
  YYObj_Array_ExtendedAttribute_({();  [ext_attr, ..attrs] })
}

// file:///./parser.mbty
// 503|                                { [] }
fn yy_action_85(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_ExtendedAttribute_({();  [] })
}

// file:///./parser.mbty
// 506|    arg_name=IDENTIFIER "=" arg_value=IDENTIFIER "(" args=argument_list ")" { ExtendedAttribute::NamedArgList(arg_name, arg_value, args) }
fn yy_action_86(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(arg_name)
  guard _args[2].0 is YYObj_String(arg_value)
  guard _args[4].0 is YYObj_Array_Argument_(args)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::NamedArgList(arg_name, arg_value, args) })
}

// file:///./parser.mbty
// 509|    attr_name=IDENTIFIER "=" attr_value=IDENTIFIER { ExtendedAttribute::Ident(attr_name, attr_value) }
fn yy_action_87(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[2].0 is YYObj_String(attr_value)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Ident(attr_name, attr_value) })
}

// file:///./parser.mbty
// 507|    attr_name=IDENTIFIER "=" "(" i1=INTEGER "," i2=INTEGER ")" { ExtendedAttribute::IntPair(attr_name, i1, i2) }
fn yy_action_88(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[3].0 is YYObj_String(i1)
  guard _args[5].0 is YYObj_String(i2)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::IntPair(attr_name, i1, i2) })
}

// file:///./parser.mbty
// 508|    attr_name=IDENTIFIER "=" "(" idents=identifier_list ")" { ExtendedAttribute::IdentList(attr_name, idents) }
fn yy_action_89(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[3].0 is YYObj_Array_String_(idents)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::IdentList(attr_name, idents) })
}

// file:///./parser.mbty
// 518|    id=IDENTIFIER rest=identifier_list_rest { [id, ..rest] }
fn yy_action_90(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(id)
  guard _args[1].0 is YYObj_Array_String_(rest)
  YYObj_Array_String_({();  [id, ..rest] })
}

// file:///./parser.mbty
// 521|    "," id=IDENTIFIER rest=identifier_list_rest { [id, ..rest] }
fn yy_action_91(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(id)
  guard _args[2].0 is YYObj_Array_String_(rest)
  YYObj_Array_String_({();  [id, ..rest] })
}

// file:///./parser.mbty
// 522|                                                { [] }
fn yy_action_92(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_String_({();  [] })
}

// file:///./parser.mbty
// 510|    attr_name=IDENTIFIER "=" int_val=INTEGER { ExtendedAttribute::IntValue(attr_name, int_val) }
fn yy_action_93(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[2].0 is YYObj_String(int_val)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::IntValue(attr_name, int_val) })
}

// file:///./parser.mbty
// 511|    attr_name=IDENTIFIER "=" float_val=FLOAT { ExtendedAttribute::FloatValue(attr_name, float_val) }
fn yy_action_94(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[2].0 is YYObj_String(float_val)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::FloatValue(attr_name, float_val) })
}

// file:///./parser.mbty
// 512|    attr_name=IDENTIFIER "=" STRING             { ExtendedAttribute::Ident(attr_name, $3) }
fn yy_action_95(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(attr_name)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Ident(attr_name, _dollar3) })
}

// file:///./parser.mbty
// 513|    id=IDENTIFIER "=" "*"                       { ExtendedAttribute::Wildcard(id) }
fn yy_action_96(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(id)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Wildcard(id) })
}

// file:///./parser.mbty
// 303|    arg=argument arguments=arguments  { [arg, ..arguments] }
fn yy_action_97(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Argument(arg)
  guard _args[1].0 is YYObj_Array_Argument_(arguments)
  YYObj_Array_Argument_({();  [arg, ..arguments] })
}

// file:///./parser.mbty
// 307|    "," arg=argument arguments=arguments  { [arg, ..arguments] }
fn yy_action_98(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Argument(arg)
  guard _args[2].0 is YYObj_Array_Argument_(arguments)
  YYObj_Array_Argument_({();  [arg, ..arguments] })
}

// file:///./parser.mbty
// 308|                                { [] }
fn yy_action_99(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_Argument_({();  [] })
}

// file:///./parser.mbty
// 311|    extended_attributes=extended_attribute_list arg=argument_rest
// 312|      { { ..arg, extended_attributes } }
fn yy_action_100(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_Argument(arg)
  YYObj_Argument({();  { ..arg, extended_attributes } })
}

// file:///./parser.mbty
// 315|    "optional" type_=type_with_extended_attributes name=argument_name default_value=default_value_opt
// 316|      { { extended_attributes:[], type_, name, optional: true, variadic: false, default_value } }
fn yy_action_101(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_TypeWithExtendedAttributes(type_)
  guard _args[2].0 is YYObj_String(name)
  guard _args[3].0 is YYObj_Option_DefaultValue_(default_value)
  YYObj_Argument({();  { extended_attributes:[], type_, name, optional: true, variadic: false, default_value } })
}

// file:///./parser.mbty
// 469|    b=boolean_literal           { Const::Boolean(b) }
fn yy_action_102(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(b)
  YYObj_Const({();  Const::Boolean(b) })
}

// file:///./parser.mbty
// 470|    f=float_literal             { Const::Float(f) }
fn yy_action_103(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_FloatLiteral(f)
  YYObj_Const({();  Const::Float(f) })
}

// file:///./parser.mbty
// 471|    i=INTEGER                   { Const::Integer(i) }
fn yy_action_104(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(i)
  YYObj_Const({();  Const::Integer(i) })
}

// file:///./parser.mbty
// 474|    "true"                      { "true" }
fn yy_action_105(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "true" })
}

// file:///./parser.mbty
// 475|    "false"                     { "false" }
fn yy_action_106(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "false" })
}

// file:///./parser.mbty
// 478|    f=FLOAT                     { FloatLiteral::Float(f) }
fn yy_action_107(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(f)
  YYObj_FloatLiteral({();  FloatLiteral::Float(f) })
}

// file:///./parser.mbty
// 479|    "Infinity"                  { FloatLiteral::Infinity }
fn yy_action_108(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_FloatLiteral({();  FloatLiteral::Infinity })
}

// file:///./parser.mbty
// 480|    "-Infinity"                 { FloatLiteral::NegInfinity }
fn yy_action_109(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_FloatLiteral({();  FloatLiteral::NegInfinity })
}

// file:///./parser.mbty
// 481|    "NaN"                       { FloatLiteral::NaN }
fn yy_action_110(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_FloatLiteral({();  FloatLiteral::NaN })
}

// file:///./parser.mbty
// 485|    "=" default_value           { Some($2) }
fn yy_action_111(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_DefaultValue(_dollar2)
  YYObj_Option_DefaultValue_({();  Some(_dollar2) })
}

// file:///./parser.mbty
// 489|    const_value                 { DefaultValue::ConstValue($1) }
fn yy_action_112(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Const(_dollar1)
  YYObj_DefaultValue({();  DefaultValue::ConstValue(_dollar1) })
}

// file:///./parser.mbty
// 490|    STRING                      { DefaultValue::String($1) }
fn yy_action_113(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_DefaultValue({();  DefaultValue::String(_dollar1) })
}

// file:///./parser.mbty
// 491|    "[" "]"                     { DefaultValue::EmptySequence }
fn yy_action_114(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::EmptySequence })
}

// file:///./parser.mbty
// 492|    "{" "}"                     { DefaultValue::EmptyObject }
fn yy_action_115(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::EmptyObject })
}

// file:///./parser.mbty
// 493|    "null"                      { DefaultValue::Null }
fn yy_action_116(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::Null })
}

// file:///./parser.mbty
// 494|    "undefined"                 { DefaultValue::Undefined }
fn yy_action_117(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::Undefined })
}

// file:///./parser.mbty
// 486|                                { None }
fn yy_action_118(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Option_DefaultValue_({();  None })
}

// file:///./parser.mbty
// 317|    type_=type variadic=ellipsis  name=argument_name
// 318|      { 
// 319|        let type_ = { extended_attributes: [], type_ }
// 320|        { extended_attributes:[], type_, name, optional: false, variadic, default_value: None } 
// 321|      }
fn yy_action_119(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(type_)
  guard _args[1].0 is YYObj_Bool(variadic)
  guard _args[2].0 is YYObj_String(name)
  YYObj_Argument({();  
        let type_ = { extended_attributes: [], type_ }
        { extended_attributes:[], type_, name, optional: false, variadic, default_value: None } 
      })
}

// file:///./parser.mbty
// 332|    name=argument_name_keyword   { name }
fn yy_action_120(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_String({();  name })
}

// file:///./parser.mbty
// 333|    name=IDENTIFIER              { name }
fn yy_action_121(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_String({();  name })
}

// file:///./parser.mbty
// 336|    "attribute"    { "attribute" }
fn yy_action_122(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "attribute" })
}

// file:///./parser.mbty
// 337|    "callback"     { "callback" }
fn yy_action_123(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "callback" })
}

// file:///./parser.mbty
// 338|    "const"        { "const" }
fn yy_action_124(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "const" })
}

// file:///./parser.mbty
// 339|    "constructor"  { "constructor" }
fn yy_action_125(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "constructor" })
}

// file:///./parser.mbty
// 340|    "deleter"      { "deleter" }
fn yy_action_126(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "deleter" })
}

// file:///./parser.mbty
// 341|    "dictionary"   { "dictionary" }
fn yy_action_127(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "dictionary" })
}

// file:///./parser.mbty
// 342|    "enum"         { "enum" }
fn yy_action_128(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "enum" })
}

// file:///./parser.mbty
// 343|    "getter"       { "getter" }
fn yy_action_129(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "getter" })
}

// file:///./parser.mbty
// 344|    "includes"     { "includes" }
fn yy_action_130(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "includes" })
}

// file:///./parser.mbty
// 345|    "inherit"      { "inherit" }
fn yy_action_131(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "inherit" })
}

// file:///./parser.mbty
// 346|    "interface"    { "interface" }
fn yy_action_132(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "interface" })
}

// file:///./parser.mbty
// 347|    "iterable"     { "iterable" }
fn yy_action_133(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "iterable" })
}

// file:///./parser.mbty
// 348|    "maplike"      { "maplike" }
fn yy_action_134(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "maplike" })
}

// file:///./parser.mbty
// 349|    "mixin"        { "mixin" }
fn yy_action_135(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "mixin" })
}

// file:///./parser.mbty
// 350|    "namespace"    { "namespace" }
fn yy_action_136(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "namespace" })
}

// file:///./parser.mbty
// 351|    "partial"      { "partial" }
fn yy_action_137(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "partial" })
}

// file:///./parser.mbty
// 352|    "readonly"     { "readonly" }
fn yy_action_138(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "readonly" })
}

// file:///./parser.mbty
// 353|    "required"     { "required" }
fn yy_action_139(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "required" })
}

// file:///./parser.mbty
// 354|    "setlike"      { "setlike" }
fn yy_action_140(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "setlike" })
}

// file:///./parser.mbty
// 355|    "setter"       { "setter" }
fn yy_action_141(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "setter" })
}

// file:///./parser.mbty
// 356|    "static"       { "static" }
fn yy_action_142(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "static" })
}

// file:///./parser.mbty
// 357|    "stringifier"  { "stringifier" }
fn yy_action_143(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "stringifier" })
}

// file:///./parser.mbty
// 358|    "typedef"      { "typedef" }
fn yy_action_144(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "typedef" })
}

// file:///./parser.mbty
// 359|    "unrestricted" { "unrestricted" }
fn yy_action_145(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String({();  "unrestricted" })
}

// file:///./parser.mbty
// 324|    "..."                       { true }
fn yy_action_146(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Bool({();  true })
}

// file:///./parser.mbty
// 325|                                { false }
fn yy_action_147(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Bool({();  false })
}

// file:///./parser.mbty
// 368|    extended_attributes=extended_attribute_list type_=type  { { extended_attributes, type_ } }
fn yy_action_148(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_Type(type_)
  YYObj_TypeWithExtendedAttributes({();  { extended_attributes, type_ } })
}

// file:///./parser.mbty
// 363|    type_=single_type { type_ }
fn yy_action_149(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(type_)
  YYObj_Type({();  type_ })
}

// file:///./parser.mbty
// 364|    union_type=union_type "?" { Type::Nullable(union_type) }
fn yy_action_150(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(union_type)
  YYObj_Type({();  Type::Nullable(union_type) })
}

// file:///./parser.mbty
// 365|    union_type=union_type { union_type }
fn yy_action_151(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(union_type)
  YYObj_Type({();  union_type })
}

// file:///./parser.mbty
// 372|    "(" union_member_type "or" union_member_type union_member_types ")"      { Type::Union([$2, $4, ..$5]) }
fn yy_action_152(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_TypeWithExtendedAttributes(_dollar2)
  guard _args[3].0 is YYObj_TypeWithExtendedAttributes(_dollar4)
  guard _args[4].0 is YYObj_Array_TypeWithExtendedAttributes_(_dollar5)
  YYObj_Type({();  Type::Union([_dollar2, _dollar4, .._dollar5]) })
}

// file:///./parser.mbty
// 387|    "or" union_member_type union_member_types   { [$2, ..$3] }
fn yy_action_153(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_TypeWithExtendedAttributes(_dollar2)
  guard _args[2].0 is YYObj_Array_TypeWithExtendedAttributes_(_dollar3)
  YYObj_Array_TypeWithExtendedAttributes_({();  [_dollar2, .._dollar3] })
}

// file:///./parser.mbty
// 388|                                                { [] }
fn yy_action_154(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_TypeWithExtendedAttributes_({();  [] })
}

// file:///./parser.mbty
// 375|    extended_attributes = extended_attribute_list type_=distinguishable_type
// 376|    { {extended_attributes, type_} }
fn yy_action_155(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(extended_attributes)
  guard _args[1].0 is YYObj_Type(type_)
  YYObj_TypeWithExtendedAttributes({();  {extended_attributes, type_} })
}

// file:///./parser.mbty
// 377|    union_type=union_type is_null=null_modifier
// 378|    {
// 379|      let ty = match is_null {
// 380|        true => Type::Nullable(union_type)
// 381|        false => union_type
// 382|      }
// 383|      { extended_attributes: [], type_: ty }
// 384|    }
fn yy_action_156(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(union_type)
  guard _args[1].0 is YYObj_Bool(is_null)
  YYObj_TypeWithExtendedAttributes({(); 
      let ty = match is_null {
        true => Type::Nullable(union_type)
        false => union_type
      }
      { extended_attributes: [], type_: ty }
    })
}

// file:///./parser.mbty
// 391|    p=primitive_type              { p }
fn yy_action_157(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(p)
  YYObj_Type({();  p })
}

// file:///./parser.mbty
// 392|    st=string_type                { st }
fn yy_action_158(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(st)
  YYObj_Type({();  st })
}

// file:///./parser.mbty
// 393|    id=IDENTIFIER                 { Type::Identifier(id) }
fn yy_action_159(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(id)
  YYObj_Type({();  Type::Identifier(id) })
}

// file:///./parser.mbty
// 394|    "sequence" "<" t=type ">"       { Type::Sequence(t) }
fn yy_action_160(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(t)
  YYObj_Type({();  Type::Sequence(t) })
}

// file:///./parser.mbty
// 395|    "async_sequence" "<" type_=type_with_extended_attributes ">" { Type::AsyncSequence(type_) }
fn yy_action_161(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(type_)
  YYObj_Type({();  Type::AsyncSequence(type_) })
}

// file:///./parser.mbty
// 396|    "object"                    { Type::Object }
fn yy_action_162(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Object })
}

// file:///./parser.mbty
// 397|    "symbol"                    { Type::Symbol }
fn yy_action_163(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Symbol })
}

// file:///./parser.mbty
// 398|    bt=buffer_type                 { bt }
fn yy_action_164(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(bt)
  YYObj_Type({();  bt })
}

// file:///./parser.mbty
// 399|    "FrozenArray" "<" t=type_with_extended_attributes ">" { Type::FrozenArray(t) }
fn yy_action_165(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(t)
  YYObj_Type({();  Type::FrozenArray(t) })
}

// file:///./parser.mbty
// 400|    "ObservableArray" "<" t=type_with_extended_attributes ">" { Type::ObservableArray(t) }
fn yy_action_166(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_TypeWithExtendedAttributes(t)
  YYObj_Type({();  Type::ObservableArray(t) })
}

// file:///./parser.mbty
// 401|    "record" "<" st=string_type "," t=type_with_extended_attributes ">" { Type::Record(type_to_string_type(st), t) }
fn yy_action_167(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(st)
  guard _args[4].0 is YYObj_TypeWithExtendedAttributes(t)
  YYObj_Type({();  Type::Record(type_to_string_type(st), t) })
}

// file:///./parser.mbty
// 402|    "undefined"                 { Type::Undefined }
fn yy_action_168(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Undefined })
}

// file:///./parser.mbty
// 405|    type_=distinguishable_type is_null=null_modifier
// 406|    { 
// 407|      if is_null {
// 408|        Type::Nullable(type_)
// 409|      } else {
// 410|        type_
// 411|      }
// 412|    }
fn yy_action_169(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(type_)
  guard _args[1].0 is YYObj_Bool(is_null)
  YYObj_Type({();  
      if is_null {
        Type::Nullable(type_)
      } else {
        type_
      }
    })
}

// file:///./parser.mbty
// 464|    "?"                         { true }
fn yy_action_170(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Bool({();  true })
}

// file:///./parser.mbty
// 465|                                { false }
fn yy_action_171(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Bool({();  false })
}

// file:///./parser.mbty
// 413|    "any"                       { Type::Any }
fn yy_action_172(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Any })
}

// file:///./parser.mbty
// 414|    "Promise" "<" type ">"      { Type::Promise($3) }
fn yy_action_173(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_Type({();  Type::Promise(_dollar3) })
}

// file:///./parser.mbty
// 418|    "unsigned" "short"          { Type::UnsignedShort }
fn yy_action_174(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedShort })
}

// file:///./parser.mbty
// 419|    "unsigned" "long" "long"    { Type::UnsignedLongLong }
fn yy_action_175(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedLongLong })
}

// file:///./parser.mbty
// 420|    "unsigned" "long"           { Type::UnsignedLong }
fn yy_action_176(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedLong })
}

// file:///./parser.mbty
// 423|    "short"                     { Type::Short }
fn yy_action_177(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Short })
}

// file:///./parser.mbty
// 425|    "long" "long"               { Type::LongLong }
fn yy_action_178(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::LongLong })
}

// file:///./parser.mbty
// 424|    "long"                      { Type::Long }
fn yy_action_179(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Long })
}

// file:///./parser.mbty
// 428|    "unrestricted" "float"      { Type::UnrestrictedFloat }
fn yy_action_180(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnrestrictedFloat })
}

// file:///./parser.mbty
// 429|    "unrestricted" "double"     { Type::UnrestrictedDouble }
fn yy_action_181(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnrestrictedDouble })
}

// file:///./parser.mbty
// 432|    "float"                     { Type::Float }
fn yy_action_182(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float })
}

// file:///./parser.mbty
// 433|    "double"                    { Type::Double }
fn yy_action_183(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Double })
}

// file:///./parser.mbty
// 436|    "boolean"                   { Type::Boolean }
fn yy_action_184(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Boolean })
}

// file:///./parser.mbty
// 437|    "byte"                      { Type::Byte }
fn yy_action_185(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Byte })
}

// file:///./parser.mbty
// 438|    "octet"                     { Type::Octet }
fn yy_action_186(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Octet })
}

// file:///./parser.mbty
// 439|    "bigint"                    { Type::Bigint }
fn yy_action_187(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Bigint })
}

// file:///./parser.mbty
// 442|    "DOMString"                 { Type::DOMString }
fn yy_action_188(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::DOMString })
}

// file:///./parser.mbty
// 443|    "ByteString"                { Type::ByteString }
fn yy_action_189(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::ByteString })
}

// file:///./parser.mbty
// 444|    "USVString"                 { Type::USVString }
fn yy_action_190(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::USVString })
}

// file:///./parser.mbty
// 447|    "ArrayBuffer"               { Type::ArrayBuffer }
fn yy_action_191(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::ArrayBuffer })
}

// file:///./parser.mbty
// 448|    "SharedArrayBuffer"         { Type::SharedArrayBuffer }
fn yy_action_192(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::SharedArrayBuffer })
}

// file:///./parser.mbty
// 449|    "DataView"                  { Type::DataView }
fn yy_action_193(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::DataView })
}

// file:///./parser.mbty
// 450|    "Int8Array"                 { Type::Int8Array }
fn yy_action_194(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int8Array })
}

// file:///./parser.mbty
// 451|    "Int16Array"                { Type::Int16Array }
fn yy_action_195(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int16Array })
}

// file:///./parser.mbty
// 452|    "Int32Array"                { Type::Int32Array }
fn yy_action_196(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int32Array })
}

// file:///./parser.mbty
// 453|    "Uint8Array"                { Type::Uint8Array }
fn yy_action_197(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint8Array })
}

// file:///./parser.mbty
// 454|    "Uint16Array"               { Type::Uint16Array }
fn yy_action_198(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint16Array })
}

// file:///./parser.mbty
// 455|    "Uint32Array"               { Type::Uint32Array }
fn yy_action_199(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint32Array })
}

// file:///./parser.mbty
// 456|    "Uint8ClampedArray"         { Type::Uint8ClampedArray }
fn yy_action_200(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint8ClampedArray })
}

// file:///./parser.mbty
// 457|    "BigInt64Array"             { Type::BigInt64Array }
fn yy_action_201(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::BigInt64Array })
}

// file:///./parser.mbty
// 458|    "BigUint64Array"            { Type::BigUint64Array }
fn yy_action_202(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::BigUint64Array })
}

// file:///./parser.mbty
// 459|    "Float16Array"              { Type::Float16Array }
fn yy_action_203(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float16Array })
}

// file:///./parser.mbty
// 460|    "Float32Array"              { Type::Float32Array }
fn yy_action_204(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float32Array })
}

// file:///./parser.mbty
// 461|    "Float64Array"              { Type::Float64Array }
fn yy_action_205(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float64Array })
}

// file:///./parser.mbty
// 514|    name=IDENTIFIER "(" args=argument_list ")"  { ExtendedAttribute::ArgList(name, args) }
fn yy_action_206(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  guard _args[2].0 is YYObj_Array_Argument_(args)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::ArgList(name, args) })
}

// file:///./parser.mbty
// 304|                                      { [] }
fn yy_action_207(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_Argument_({();  [] })
}

// file:///./parser.mbty
// 515|    name=IDENTIFIER                             { ExtendedAttribute::NoArgs(name) }
fn yy_action_208(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(name)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::NoArgs(name) })
}

// file:///./parser.mbty
// 499|                                { [] }
fn yy_action_209(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_ExtendedAttribute_({();  [] })
}

fn yy_input(token : Token, _start_pos : Position, _end_pos : Position) -> (YYSymbol, YYObj) {
  match token {
    EOF => (T_EOF, YYObj_Void)
    INTEGER(data) => (T_INTEGER, YYObj_String(data))
    FLOAT(data) => (T_FLOAT, YYObj_String(data))
    STRING(data) => (T_STRING, YYObj_String(data))
    IDENTIFIER(data) => (T_IDENTIFIER, YYObj_String(data))
    INTERFACE => (T_INTERFACE, YYObj_Void)
    PARTIAL => (T_PARTIAL, YYObj_Void)
    MIXIN => (T_MIXIN, YYObj_Void)
    DICTIONARY => (T_DICTIONARY, YYObj_Void)
    ENUM => (T_ENUM, YYObj_Void)
    TYPEDEF => (T_TYPEDEF, YYObj_Void)
    CALLBACK => (T_CALLBACK, YYObj_Void)
    NAMESPACE => (T_NAMESPACE, YYObj_Void)
    INCLUDES => (T_INCLUDES, YYObj_Void)
    ATTRIBUTE => (T_ATTRIBUTE, YYObj_Void)
    CONST => (T_CONST, YYObj_Void)
    READONLY => (T_READONLY, YYObj_Void)
    INHERIT => (T_INHERIT, YYObj_Void)
    STATIC => (T_STATIC, YYObj_Void)
    STRINGIFIER => (T_STRINGIFIER, YYObj_Void)
    GETTER => (T_GETTER, YYObj_Void)
    SETTER => (T_SETTER, YYObj_Void)
    DELETER => (T_DELETER, YYObj_Void)
    CONSTRUCTOR => (T_CONSTRUCTOR, YYObj_Void)
    ITERABLE => (T_ITERABLE, YYObj_Void)
    ASYNC_ITERABLE => (T_ASYNC_ITERABLE, YYObj_Void)
    ASYNC_SEQUENCE => (T_ASYNC_SEQUENCE, YYObj_Void)
    MAPLIKE => (T_MAPLIKE, YYObj_Void)
    SETLIKE => (T_SETLIKE, YYObj_Void)
    REQUIRED => (T_REQUIRED, YYObj_Void)
    OPTIONAL => (T_OPTIONAL, YYObj_Void)
    UNDEFINED => (T_UNDEFINED, YYObj_Void)
    BOOLEAN => (T_BOOLEAN, YYObj_Void)
    BYTE => (T_BYTE, YYObj_Void)
    OCTET => (T_OCTET, YYObj_Void)
    SHORT => (T_SHORT, YYObj_Void)
    LONG => (T_LONG, YYObj_Void)
    UNSIGNED => (T_UNSIGNED, YYObj_Void)
    FLOAT_KW => (T_FLOAT_KW, YYObj_Void)
    DOUBLE => (T_DOUBLE, YYObj_Void)
    UNRESTRICTED => (T_UNRESTRICTED, YYObj_Void)
    BIGINT => (T_BIGINT, YYObj_Void)
    DOMSTRING => (T_DOMSTRING, YYObj_Void)
    BYTESTRING => (T_BYTESTRING, YYObj_Void)
    USVSTRING => (T_USVSTRING, YYObj_Void)
    ANY => (T_ANY, YYObj_Void)
    OBJECT => (T_OBJECT, YYObj_Void)
    SYMBOL => (T_SYMBOL, YYObj_Void)
    SEQUENCE => (T_SEQUENCE, YYObj_Void)
    PROMISE => (T_PROMISE, YYObj_Void)
    FROZENARRAY => (T_FROZENARRAY, YYObj_Void)
    OBSERVABLEARRAY => (T_OBSERVABLEARRAY, YYObj_Void)
    RECORD => (T_RECORD, YYObj_Void)
    OR => (T_OR, YYObj_Void)
    ARRAYBUFFER => (T_ARRAYBUFFER, YYObj_Void)
    SHAREDARRAYBUFFER => (T_SHAREDARRAYBUFFER, YYObj_Void)
    DATAVIEW => (T_DATAVIEW, YYObj_Void)
    INT8ARRAY => (T_INT8ARRAY, YYObj_Void)
    INT16ARRAY => (T_INT16ARRAY, YYObj_Void)
    INT32ARRAY => (T_INT32ARRAY, YYObj_Void)
    UINT8ARRAY => (T_UINT8ARRAY, YYObj_Void)
    UINT16ARRAY => (T_UINT16ARRAY, YYObj_Void)
    UINT32ARRAY => (T_UINT32ARRAY, YYObj_Void)
    UINT8CLAMPEDARRAY => (T_UINT8CLAMPEDARRAY, YYObj_Void)
    BIGINT64ARRAY => (T_BIGINT64ARRAY, YYObj_Void)
    BIGUINT64ARRAY => (T_BIGUINT64ARRAY, YYObj_Void)
    FLOAT16ARRAY => (T_FLOAT16ARRAY, YYObj_Void)
    FLOAT32ARRAY => (T_FLOAT32ARRAY, YYObj_Void)
    FLOAT64ARRAY => (T_FLOAT64ARRAY, YYObj_Void)
    TRUE => (T_TRUE, YYObj_Void)
    FALSE => (T_FALSE, YYObj_Void)
    NULL => (T_NULL, YYObj_Void)
    INFINITY => (T_INFINITY, YYObj_Void)
    NEG_INFINITY => (T_NEG_INFINITY, YYObj_Void)
    NAN => (T_NAN, YYObj_Void)
    LBRACE => (T_LBRACE, YYObj_Void)
    RBRACE => (T_RBRACE, YYObj_Void)
    LPAREN => (T_LPAREN, YYObj_Void)
    RPAREN => (T_RPAREN, YYObj_Void)
    LBRACKET => (T_LBRACKET, YYObj_Void)
    RBRACKET => (T_RBRACKET, YYObj_Void)
    LANGLE => (T_LANGLE, YYObj_Void)
    RANGLE => (T_RANGLE, YYObj_Void)
    COMMA => (T_COMMA, YYObj_Void)
    SEMICOLON => (T_SEMICOLON, YYObj_Void)
    COLON => (T_COLON, YYObj_Void)
    EQUALS => (T_EQUALS, YYObj_Void)
    QUESTION => (T_QUESTION, YYObj_Void)
    ELLIPSIS => (T_ELLIPSIS, YYObj_Void)
    STAR => (T_STAR, YYObj_Void)
  }
}

fn yy_state_0(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_definitions => Shift(yy_state_1)
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_183)
    NT_extended_attribute_list => Shift(yy_state_184)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_3)
    NT_extended_attribute => Shift(yy_state_177)
    _ => Error
  }
}

fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_4)
    T_EQUALS => Shift(yy_state_156)
    T_RBRACKET | T_COMMA => Reduce(1, NT_extended_attribute, yy_action_208)
    _ => Error
  }
}

fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_argument_list => Shift(yy_state_5)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_5(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_6)
    _ => Error
  }
}

fn yy_state_6(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_extended_attribute, yy_action_206)
}

fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_97)
    T_OPTIONAL => Shift(yy_state_127)
    NT_argument_rest => Shift(yy_state_150)
    _ => Error
  }
}

fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_205)
}

fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_204)
}

fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_203)
}

fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_202)
}

fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_201)
}

fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_200)
}

fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_199)
}

fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_198)
}

fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_197)
}

fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_196)
}

fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_195)
}

fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_194)
}

fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_193)
}

fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_192)
}

fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_191)
}

fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_190)
}

fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_189)
}

fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_188)
}

fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_187)
}

fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_186)
}

fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_185)
}

fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_184)
}

fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_183)
}

fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_182)
}

fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_DOUBLE => Shift(yy_state_33)
    T_FLOAT_KW => Shift(yy_state_34)
    _ => Error
  }
}

fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_181)
}

fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_180)
}

fn yy_state_35(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_36)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_MIXIN | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE | T_INCLUDES | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_MAPLIKE | T_SETLIKE | T_REQUIRED | T_UNRESTRICTED | T_OR | T_LPAREN | T_RPAREN | T_RANGLE | T_COMMA | T_QUESTION | T_ELLIPSIS => Reduce(1, NT_primitive_type, yy_action_179)
    _ => Error
  }
}

fn yy_state_36(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_178)
}

fn yy_state_37(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_177)
}

fn yy_state_38(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_39)
    T_SHORT => Shift(yy_state_41)
    _ => Error
  }
}

fn yy_state_39(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_40)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_MIXIN | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE | T_INCLUDES | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_MAPLIKE | T_SETLIKE | T_REQUIRED | T_UNRESTRICTED | T_OR | T_LPAREN | T_RPAREN | T_RANGLE | T_COMMA | T_QUESTION | T_ELLIPSIS => Reduce(2, NT_primitive_type, yy_action_176)
    _ => Error
  }
}

fn yy_state_40(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_primitive_type, yy_action_175)
}

fn yy_state_41(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_174)
}

fn yy_state_42(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_43)
    _ => Error
  }
}

fn yy_state_43(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    NT_type => Shift(yy_state_44)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    _ => Error
  }
}

fn yy_state_44(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_45)
    _ => Error
  }
}

fn yy_state_45(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_single_type, yy_action_173)
}

fn yy_state_46(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_172)
}

fn yy_state_47(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_48)
    NT_null_modifier => Shift(yy_state_49)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_MIXIN | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE | T_INCLUDES | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_MAPLIKE | T_SETLIKE | T_REQUIRED | T_UNRESTRICTED | T_LPAREN | T_RANGLE | T_COMMA | T_ELLIPSIS => Reduce(0, NT_null_modifier, yy_action_171)
    _ => Error
  }
}

fn yy_state_48(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_null_modifier, yy_action_170)
}

fn yy_state_49(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_single_type, yy_action_169)
}

fn yy_state_50(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_168)
}

fn yy_state_51(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_52)
    _ => Error
  }
}

fn yy_state_52(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    NT_string_type => Shift(yy_state_53)
    _ => Error
  }
}

fn yy_state_53(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_54)
    _ => Error
  }
}

fn yy_state_54(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_type_with_extended_attributes => Shift(yy_state_55)
    NT_extended_attribute_list => Shift(yy_state_57)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_55(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_56)
    _ => Error
  }
}

fn yy_state_56(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_distinguishable_type, yy_action_167)
}

fn yy_state_57(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_96)
    _ => Error
  }
}

fn yy_state_58(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_59)
    _ => Error
  }
}

fn yy_state_59(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_60)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_60(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_61)
    _ => Error
  }
}

fn yy_state_61(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_distinguishable_type, yy_action_166)
}

fn yy_state_62(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_63)
    _ => Error
  }
}

fn yy_state_63(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_64)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_64(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_65)
    _ => Error
  }
}

fn yy_state_65(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_distinguishable_type, yy_action_165)
}

fn yy_state_66(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_164)
}

fn yy_state_67(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_163)
}

fn yy_state_68(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_162)
}

fn yy_state_69(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_70)
    _ => Error
  }
}

fn yy_state_70(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_71)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_71(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_72)
    _ => Error
  }
}

fn yy_state_72(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_distinguishable_type, yy_action_161)
}

fn yy_state_73(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_74)
    _ => Error
  }
}

fn yy_state_74(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    NT_type => Shift(yy_state_75)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    _ => Error
  }
}

fn yy_state_75(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_76)
    _ => Error
  }
}

fn yy_state_76(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_distinguishable_type, yy_action_160)
}

fn yy_state_77(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_159)
}

fn yy_state_78(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_158)
}

fn yy_state_79(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_distinguishable_type, yy_action_157)
}

fn yy_state_80(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_81)
    NT_extended_attribute_list => Shift(yy_state_83)
    NT_union_member_type => Shift(yy_state_85)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_81(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_48)
    NT_null_modifier => Shift(yy_state_82)
    T_OR | T_RPAREN => Reduce(0, NT_null_modifier, yy_action_171)
    _ => Error
  }
}

fn yy_state_82(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_union_member_type, yy_action_156)
}

fn yy_state_83(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    NT_distinguishable_type => Shift(yy_state_84)
    _ => Error
  }
}

fn yy_state_84(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_union_member_type, yy_action_155)
}

fn yy_state_85(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_86)
    _ => Error
  }
}

fn yy_state_86(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_81)
    NT_extended_attribute_list => Shift(yy_state_83)
    NT_union_member_type => Shift(yy_state_87)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_87(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_88)
    NT_union_member_types => Shift(yy_state_91)
    T_RPAREN => Reduce(0, NT_union_member_types, yy_action_154)
    _ => Error
  }
}

fn yy_state_88(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_81)
    NT_extended_attribute_list => Shift(yy_state_83)
    NT_union_member_type => Shift(yy_state_89)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_89(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_88)
    NT_union_member_types => Shift(yy_state_90)
    T_RPAREN => Reduce(0, NT_union_member_types, yy_action_154)
    _ => Error
  }
}

fn yy_state_90(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_union_member_types, yy_action_153)
}

fn yy_state_91(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_92)
    _ => Error
  }
}

fn yy_state_92(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_union_type, yy_action_152)
}

fn yy_state_93(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_94)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_MIXIN | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE | T_INCLUDES | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_MAPLIKE | T_SETLIKE | T_REQUIRED | T_UNRESTRICTED | T_LPAREN | T_RANGLE | T_COMMA | T_ELLIPSIS => Reduce(1, NT_type, yy_action_151)
    _ => Error
  }
}

fn yy_state_94(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_type, yy_action_150)
}

fn yy_state_95(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_type, yy_action_149)
}

fn yy_state_96(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_type_with_extended_attributes, yy_action_148)
}

fn yy_state_97(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ELLIPSIS => Shift(yy_state_98)
    NT_ellipsis => Shift(yy_state_99)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_MIXIN | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE | T_INCLUDES | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_MAPLIKE | T_SETLIKE | T_REQUIRED | T_UNRESTRICTED => Reduce(0, NT_ellipsis, yy_action_147)
    _ => Error
  }
}

fn yy_state_98(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_ellipsis, yy_action_146)
}

fn yy_state_99(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_124)
    NT_argument_name_keyword => Shift(yy_state_125)
    NT_argument_name => Shift(yy_state_126)
    _ => Error
  }
}

fn yy_state_100(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_145)
}

fn yy_state_101(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_144)
}

fn yy_state_102(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_143)
}

fn yy_state_103(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_142)
}

fn yy_state_104(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_141)
}

fn yy_state_105(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_140)
}

fn yy_state_106(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_139)
}

fn yy_state_107(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_138)
}

fn yy_state_108(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_137)
}

fn yy_state_109(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_136)
}

fn yy_state_110(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_135)
}

fn yy_state_111(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_134)
}

fn yy_state_112(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_133)
}

fn yy_state_113(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_132)
}

fn yy_state_114(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_131)
}

fn yy_state_115(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_130)
}

fn yy_state_116(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_129)
}

fn yy_state_117(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_128)
}

fn yy_state_118(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_127)
}

fn yy_state_119(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_126)
}

fn yy_state_120(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_125)
}

fn yy_state_121(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_124)
}

fn yy_state_122(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_123)
}

fn yy_state_123(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name_keyword, yy_action_122)
}

fn yy_state_124(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name, yy_action_121)
}

fn yy_state_125(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_argument_name, yy_action_120)
}

fn yy_state_126(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_argument_rest, yy_action_119)
}

fn yy_state_127(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_128)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_128(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_124)
    NT_argument_name_keyword => Shift(yy_state_125)
    NT_argument_name => Shift(yy_state_129)
    _ => Error
  }
}

fn yy_state_129(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_130)
    NT_default_value_opt => Shift(yy_state_149)
    T_RPAREN | T_COMMA => Reduce(0, NT_default_value_opt, yy_action_118)
    _ => Error
  }
}

fn yy_state_130(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNDEFINED => Shift(yy_state_131)
    T_NULL => Shift(yy_state_132)
    T_LBRACE => Shift(yy_state_133)
    T_LBRACKET => Shift(yy_state_135)
    T_STRING => Shift(yy_state_137)
    NT_const_value => Shift(yy_state_138)
    NT_default_value => Shift(yy_state_139)
    T_NAN => Shift(yy_state_140)
    T_NEG_INFINITY => Shift(yy_state_141)
    T_INFINITY => Shift(yy_state_142)
    T_FLOAT => Shift(yy_state_143)
    T_FALSE => Shift(yy_state_144)
    T_TRUE => Shift(yy_state_145)
    T_INTEGER => Shift(yy_state_146)
    NT_float_literal => Shift(yy_state_147)
    NT_boolean_literal => Shift(yy_state_148)
    _ => Error
  }
}

fn yy_state_131(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_117)
}

fn yy_state_132(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_116)
}

fn yy_state_133(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_134)
    _ => Error
  }
}

fn yy_state_134(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value, yy_action_115)
}

fn yy_state_135(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_136)
    _ => Error
  }
}

fn yy_state_136(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value, yy_action_114)
}

fn yy_state_137(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_113)
}

fn yy_state_138(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_112)
}

fn yy_state_139(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value_opt, yy_action_111)
}

fn yy_state_140(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_float_literal, yy_action_110)
}

fn yy_state_141(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_float_literal, yy_action_109)
}

fn yy_state_142(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_float_literal, yy_action_108)
}

fn yy_state_143(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_float_literal, yy_action_107)
}

fn yy_state_144(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_boolean_literal, yy_action_106)
}

fn yy_state_145(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_boolean_literal, yy_action_105)
}

fn yy_state_146(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_104)
}

fn yy_state_147(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_103)
}

fn yy_state_148(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_102)
}

fn yy_state_149(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_argument_rest, yy_action_101)
}

fn yy_state_150(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argument, yy_action_100)
}

fn yy_state_151(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_152)
    NT_arguments => Shift(yy_state_155)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_99)
    _ => Error
  }
}

fn yy_state_152(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_153)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_153(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_152)
    NT_arguments => Shift(yy_state_154)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_99)
    _ => Error
  }
}

fn yy_state_154(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_arguments, yy_action_98)
}

fn yy_state_155(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argument_list, yy_action_97)
}

fn yy_state_156(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STAR => Shift(yy_state_157)
    T_STRING => Shift(yy_state_158)
    T_FLOAT => Shift(yy_state_159)
    T_INTEGER => Shift(yy_state_160)
    T_LPAREN => Shift(yy_state_161)
    T_IDENTIFIER => Shift(yy_state_173)
    _ => Error
  }
}

fn yy_state_157(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_96)
}

fn yy_state_158(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_95)
}

fn yy_state_159(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_94)
}

fn yy_state_160(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_93)
}

fn yy_state_161(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_162)
    NT_identifier_list => Shift(yy_state_167)
    T_INTEGER => Shift(yy_state_169)
    _ => Error
  }
}

fn yy_state_162(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_163)
    NT_identifier_list_rest => Shift(yy_state_166)
    T_RPAREN => Reduce(0, NT_identifier_list_rest, yy_action_92)
    _ => Error
  }
}

fn yy_state_163(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_164)
    _ => Error
  }
}

fn yy_state_164(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_163)
    NT_identifier_list_rest => Shift(yy_state_165)
    T_RPAREN => Reduce(0, NT_identifier_list_rest, yy_action_92)
    _ => Error
  }
}

fn yy_state_165(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_identifier_list_rest, yy_action_91)
}

fn yy_state_166(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_identifier_list, yy_action_90)
}

fn yy_state_167(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_168)
    _ => Error
  }
}

fn yy_state_168(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_extended_attribute, yy_action_89)
}

fn yy_state_169(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_170)
    _ => Error
  }
}

fn yy_state_170(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INTEGER => Shift(yy_state_171)
    _ => Error
  }
}

fn yy_state_171(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_172)
    _ => Error
  }
}

fn yy_state_172(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_extended_attribute, yy_action_88)
}

fn yy_state_173(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_174)
    T_RBRACKET | T_COMMA => Reduce(3, NT_extended_attribute, yy_action_87)
    _ => Error
  }
}

fn yy_state_174(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    NT_argument_list => Shift(yy_state_175)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_175(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_176)
    _ => Error
  }
}

fn yy_state_176(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_extended_attribute, yy_action_86)
}

fn yy_state_177(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_178)
    NT_extended_attributes => Shift(yy_state_181)
    T_RBRACKET => Reduce(0, NT_extended_attributes, yy_action_85)
    _ => Error
  }
}

fn yy_state_178(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_3)
    NT_extended_attribute => Shift(yy_state_179)
    _ => Error
  }
}

fn yy_state_179(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_178)
    NT_extended_attributes => Shift(yy_state_180)
    T_RBRACKET => Reduce(0, NT_extended_attributes, yy_action_85)
    _ => Error
  }
}

fn yy_state_180(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attributes, yy_action_84)
}

fn yy_state_181(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_182)
    _ => Error
  }
}

fn yy_state_182(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_extended_attribute_list, yy_action_83)
}

fn yy_state_183(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definitions, yy_action_82)
}

fn yy_state_184(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_185)
    T_CALLBACK => Shift(yy_state_189)
    T_TYPEDEF => Shift(yy_state_220)
    T_ENUM => Shift(yy_state_224)
    T_DICTIONARY => Shift(yy_state_235)
    T_NAMESPACE => Shift(yy_state_255)
    T_PARTIAL => Shift(yy_state_271)
    T_INTERFACE => Shift(yy_state_395)
    NT_includes_statement => Shift(yy_state_408)
    NT_callback_interface_def => Shift(yy_state_409)
    NT_callback_def => Shift(yy_state_410)
    NT_typedef_def => Shift(yy_state_411)
    NT_enum_def => Shift(yy_state_412)
    NT_partial_dictionary_def => Shift(yy_state_413)
    NT_dictionary_def => Shift(yy_state_414)
    NT_partial_namespace_def => Shift(yy_state_415)
    NT_namespace_def => Shift(yy_state_416)
    NT_partial_mixin_def => Shift(yy_state_417)
    NT_partial_interface_def => Shift(yy_state_418)
    NT_mixin_def => Shift(yy_state_419)
    NT_interface_def => Shift(yy_state_420)
    NT_definition => Shift(yy_state_421)
    _ => Error
  }
}

fn yy_state_185(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INCLUDES => Shift(yy_state_186)
    _ => Error
  }
}

fn yy_state_186(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_187)
    _ => Error
  }
}

fn yy_state_187(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_188)
    _ => Error
  }
}

fn yy_state_188(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_includes_statement, yy_action_81)
}

fn yy_state_189(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INTERFACE => Shift(yy_state_190)
    T_IDENTIFIER => Shift(yy_state_213)
    _ => Error
  }
}

fn yy_state_190(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_191)
    _ => Error
  }
}

fn yy_state_191(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_192)
    _ => Error
  }
}

fn yy_state_192(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_193)
    NT_callback_interface_members => Shift(yy_state_210)
    T_RBRACE => Reduce(0, NT_callback_interface_members, yy_action_80)
    T_IDENTIFIER | T_CONST | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_193(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    T_CONST => Shift(yy_state_194)
    NT_type => Shift(yy_state_200)
    NT_const_member => Shift(yy_state_206)
    NT_regular_operation_member => Shift(yy_state_207)
    NT_callback_interface_member => Shift(yy_state_208)
    _ => Error
  }
}

fn yy_state_194(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_195)
    _ => Error
  }
}

fn yy_state_195(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_196)
    _ => Error
  }
}

fn yy_state_196(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_197)
    _ => Error
  }
}

fn yy_state_197(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_NAN => Shift(yy_state_140)
    T_NEG_INFINITY => Shift(yy_state_141)
    T_INFINITY => Shift(yy_state_142)
    T_FLOAT => Shift(yy_state_143)
    T_FALSE => Shift(yy_state_144)
    T_TRUE => Shift(yy_state_145)
    T_INTEGER => Shift(yy_state_146)
    NT_float_literal => Shift(yy_state_147)
    NT_boolean_literal => Shift(yy_state_148)
    NT_const_value => Shift(yy_state_198)
    _ => Error
  }
}

fn yy_state_198(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_199)
    _ => Error
  }
}

fn yy_state_199(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_const_member, yy_action_79)
}

fn yy_state_200(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_201)
    _ => Error
  }
}

fn yy_state_201(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_202)
    _ => Error
  }
}

fn yy_state_202(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    NT_argument_list => Shift(yy_state_203)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_203(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_204)
    _ => Error
  }
}

fn yy_state_204(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_205)
    _ => Error
  }
}

fn yy_state_205(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_regular_operation_member, yy_action_78)
}

fn yy_state_206(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callback_interface_member, yy_action_77)
}

fn yy_state_207(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callback_interface_member, yy_action_76)
}

fn yy_state_208(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_193)
    NT_callback_interface_members => Shift(yy_state_209)
    T_RBRACE => Reduce(0, NT_callback_interface_members, yy_action_80)
    T_IDENTIFIER | T_CONST | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_209(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_callback_interface_members, yy_action_75)
}

fn yy_state_210(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_211)
    _ => Error
  }
}

fn yy_state_211(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_212)
    _ => Error
  }
}

fn yy_state_212(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_callback_interface_def, yy_action_74)
}

fn yy_state_213(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_214)
    _ => Error
  }
}

fn yy_state_214(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_215)
    _ => Error
  }
}

fn yy_state_215(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_216)
    _ => Error
  }
}

fn yy_state_216(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    NT_argument_list => Shift(yy_state_217)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_217(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_218)
    _ => Error
  }
}

fn yy_state_218(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_219)
    _ => Error
  }
}

fn yy_state_219(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_callback_def, yy_action_73)
}

fn yy_state_220(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_221)
    _ => Error
  }
}

fn yy_state_221(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_222)
    _ => Error
  }
}

fn yy_state_222(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_223)
    _ => Error
  }
}

fn yy_state_223(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_typedef_def, yy_action_72)
}

fn yy_state_224(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_225)
    _ => Error
  }
}

fn yy_state_225(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_226)
    _ => Error
  }
}

fn yy_state_226(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_227)
    NT_enum_value_list => Shift(yy_state_232)
    _ => Error
  }
}

fn yy_state_227(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_228)
    NT_enum_value_list_rest => Shift(yy_state_231)
    T_RBRACE => Reduce(0, NT_enum_value_list_rest, yy_action_71)
    _ => Error
  }
}

fn yy_state_228(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_229)
    T_RBRACE => Reduce(1, NT_enum_value_list_rest, yy_action_70)
    _ => Error
  }
}

fn yy_state_229(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_228)
    NT_enum_value_list_rest => Shift(yy_state_230)
    T_RBRACE => Reduce(0, NT_enum_value_list_rest, yy_action_71)
    _ => Error
  }
}

fn yy_state_230(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_enum_value_list_rest, yy_action_69)
}

fn yy_state_231(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_enum_value_list, yy_action_68)
}

fn yy_state_232(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_233)
    _ => Error
  }
}

fn yy_state_233(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_234)
    _ => Error
  }
}

fn yy_state_234(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_enum_def, yy_action_67)
}

fn yy_state_235(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_236)
    _ => Error
  }
}

fn yy_state_236(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_237)
    NT_inheritance => Shift(yy_state_239)
    T_LBRACE => Reduce(0, NT_inheritance, yy_action_66)
    _ => Error
  }
}

fn yy_state_237(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_238)
    _ => Error
  }
}

fn yy_state_238(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_inheritance, yy_action_65)
}

fn yy_state_239(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_240)
    _ => Error
  }
}

fn yy_state_240(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_241)
    NT_dictionary_members => Shift(yy_state_252)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_64)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_REQUIRED | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_241(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_242)
    T_REQUIRED => Shift(yy_state_246)
    NT_dictionary_member => Shift(yy_state_250)
    _ => Error
  }
}

fn yy_state_242(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_243)
    _ => Error
  }
}

fn yy_state_243(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_130)
    NT_default_value_opt => Shift(yy_state_244)
    T_SEMICOLON => Reduce(0, NT_default_value_opt, yy_action_118)
    _ => Error
  }
}

fn yy_state_244(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_245)
    _ => Error
  }
}

fn yy_state_245(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionary_member, yy_action_63)
}

fn yy_state_246(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_247)
    _ => Error
  }
}

fn yy_state_247(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_248)
    _ => Error
  }
}

fn yy_state_248(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_249)
    _ => Error
  }
}

fn yy_state_249(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionary_member, yy_action_62)
}

fn yy_state_250(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_241)
    NT_dictionary_members => Shift(yy_state_251)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_64)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_REQUIRED | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_251(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_dictionary_members, yy_action_61)
}

fn yy_state_252(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_253)
    _ => Error
  }
}

fn yy_state_253(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_254)
    _ => Error
  }
}

fn yy_state_254(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_dictionary_def, yy_action_60)
}

fn yy_state_255(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_256)
    _ => Error
  }
}

fn yy_state_256(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_257)
    _ => Error
  }
}

fn yy_state_257(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_258)
    NT_namespace_members => Shift(yy_state_268)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_59)
    T_IDENTIFIER | T_CONST | T_READONLY | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_258(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    T_CONST => Shift(yy_state_194)
    NT_type => Shift(yy_state_200)
    NT_const_member => Shift(yy_state_259)
    NT_regular_operation_member => Shift(yy_state_260)
    T_READONLY => Shift(yy_state_261)
    NT_namespace_member => Shift(yy_state_266)
    _ => Error
  }
}

fn yy_state_259(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_namespace_member, yy_action_58)
}

fn yy_state_260(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_namespace_member, yy_action_57)
}

fn yy_state_261(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_262)
    _ => Error
  }
}

fn yy_state_262(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_263)
    _ => Error
  }
}

fn yy_state_263(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_264)
    _ => Error
  }
}

fn yy_state_264(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_265)
    _ => Error
  }
}

fn yy_state_265(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_namespace_member, yy_action_56)
}

fn yy_state_266(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_258)
    NT_namespace_members => Shift(yy_state_267)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_59)
    T_IDENTIFIER | T_CONST | T_READONLY | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_267(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_namespace_members, yy_action_55)
}

fn yy_state_268(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_269)
    _ => Error
  }
}

fn yy_state_269(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_270)
    _ => Error
  }
}

fn yy_state_270(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_namespace_def, yy_action_54)
}

fn yy_state_271(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_DICTIONARY => Shift(yy_state_272)
    T_NAMESPACE => Shift(yy_state_278)
    T_INTERFACE => Shift(yy_state_284)
    _ => Error
  }
}

fn yy_state_272(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_273)
    _ => Error
  }
}

fn yy_state_273(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_274)
    _ => Error
  }
}

fn yy_state_274(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_241)
    NT_dictionary_members => Shift(yy_state_275)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_64)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_REQUIRED | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_275(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_276)
    _ => Error
  }
}

fn yy_state_276(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_277)
    _ => Error
  }
}

fn yy_state_277(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_partial_dictionary_def, yy_action_53)
}

fn yy_state_278(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_279)
    _ => Error
  }
}

fn yy_state_279(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_280)
    _ => Error
  }
}

fn yy_state_280(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_258)
    NT_namespace_members => Shift(yy_state_281)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_59)
    T_IDENTIFIER | T_CONST | T_READONLY | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_281(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_282)
    _ => Error
  }
}

fn yy_state_282(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_283)
    _ => Error
  }
}

fn yy_state_283(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_partial_namespace_def, yy_action_52)
}

fn yy_state_284(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_285)
    T_IDENTIFIER => Shift(yy_state_390)
    _ => Error
  }
}

fn yy_state_285(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_286)
    _ => Error
  }
}

fn yy_state_286(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_287)
    _ => Error
  }
}

fn yy_state_287(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_288)
    NT_interface_members => Shift(yy_state_387)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_51)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_ASYNC_SEQUENCE | T_MAPLIKE | T_SETLIKE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_288(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    T_CONST => Shift(yy_state_194)
    NT_type => Shift(yy_state_200)
    T_SETLIKE => Shift(yy_state_289)
    T_MAPLIKE => Shift(yy_state_294)
    T_ITERABLE => Shift(yy_state_301)
    T_DELETER => Shift(yy_state_310)
    T_SETTER => Shift(yy_state_311)
    T_GETTER => Shift(yy_state_312)
    NT_regular_operation_member => Shift(yy_state_313)
    NT_special => Shift(yy_state_314)
    T_ATTRIBUTE => Shift(yy_state_322)
    T_INHERIT => Shift(yy_state_328)
    NT_setlike_member => Shift(yy_state_338)
    NT_maplike_member => Shift(yy_state_339)
    T_READONLY => Shift(yy_state_340)
    T_ASYNC_ITERABLE => Shift(yy_state_347)
    NT_iterable_member => Shift(yy_state_356)
    T_STATIC => Shift(yy_state_357)
    T_STRINGIFIER => Shift(yy_state_368)
    T_CONSTRUCTOR => Shift(yy_state_379)
    NT_const_member => Shift(yy_state_384)
    NT_interface_member => Shift(yy_state_385)
    _ => Error
  }
}

fn yy_state_289(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_290)
    _ => Error
  }
}

fn yy_state_290(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_291)
    _ => Error
  }
}

fn yy_state_291(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_292)
    _ => Error
  }
}

fn yy_state_292(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_293)
    _ => Error
  }
}

fn yy_state_293(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_setlike_member, yy_action_50)
}

fn yy_state_294(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_295)
    _ => Error
  }
}

fn yy_state_295(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_296)
    _ => Error
  }
}

fn yy_state_296(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_297)
    _ => Error
  }
}

fn yy_state_297(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_298)
    _ => Error
  }
}

fn yy_state_298(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_299)
    _ => Error
  }
}

fn yy_state_299(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_300)
    _ => Error
  }
}

fn yy_state_300(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_maplike_member, yy_action_49)
}

fn yy_state_301(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_302)
    _ => Error
  }
}

fn yy_state_302(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_303)
    _ => Error
  }
}

fn yy_state_303(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_304)
    T_RANGLE => Shift(yy_state_308)
    _ => Error
  }
}

fn yy_state_304(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_305)
    _ => Error
  }
}

fn yy_state_305(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_306)
    _ => Error
  }
}

fn yy_state_306(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_307)
    _ => Error
  }
}

fn yy_state_307(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_iterable_member, yy_action_48)
}

fn yy_state_308(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_309)
    _ => Error
  }
}

fn yy_state_309(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_iterable_member, yy_action_47)
}

fn yy_state_310(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_46)
}

fn yy_state_311(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_45)
}

fn yy_state_312(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_44)
}

fn yy_state_313(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_43)
}

fn yy_state_314(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_315)
    _ => Error
  }
}

fn yy_state_315(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_316)
    NT_operation_name => Shift(yy_state_317)
    T_LPAREN => Reduce(0, NT_operation_name, yy_action_42)
    _ => Error
  }
}

fn yy_state_316(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_operation_name, yy_action_41)
}

fn yy_state_317(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_318)
    _ => Error
  }
}

fn yy_state_318(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    NT_argument_list => Shift(yy_state_319)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_319(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_320)
    _ => Error
  }
}

fn yy_state_320(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_321)
    _ => Error
  }
}

fn yy_state_321(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_member, yy_action_40)
}

fn yy_state_322(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_323)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_323(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_326)
    _ => Error
  }
}

fn yy_state_324(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_attribute_name, yy_action_39)
}

fn yy_state_325(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_attribute_name, yy_action_38)
}

fn yy_state_326(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_327)
    _ => Error
  }
}

fn yy_state_327(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_interface_member, yy_action_37)
}

fn yy_state_328(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_329)
    T_READONLY => Shift(yy_state_333)
    _ => Error
  }
}

fn yy_state_329(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_330)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_330(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_331)
    _ => Error
  }
}

fn yy_state_331(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_332)
    _ => Error
  }
}

fn yy_state_332(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_36)
}

fn yy_state_333(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_334)
    _ => Error
  }
}

fn yy_state_334(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_335)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_335(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_336)
    _ => Error
  }
}

fn yy_state_336(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_337)
    _ => Error
  }
}

fn yy_state_337(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_35)
}

fn yy_state_338(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_34)
}

fn yy_state_339(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_33)
}

fn yy_state_340(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SETLIKE => Shift(yy_state_289)
    T_MAPLIKE => Shift(yy_state_294)
    T_ATTRIBUTE => Shift(yy_state_341)
    NT_setlike_member => Shift(yy_state_345)
    NT_maplike_member => Shift(yy_state_346)
    _ => Error
  }
}

fn yy_state_341(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_342)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_342(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_343)
    _ => Error
  }
}

fn yy_state_343(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_344)
    _ => Error
  }
}

fn yy_state_344(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_32)
}

fn yy_state_345(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_31)
}

fn yy_state_346(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_30)
}

fn yy_state_347(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_348)
    _ => Error
  }
}

fn yy_state_348(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_349)
    _ => Error
  }
}

fn yy_state_349(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_350)
    T_RANGLE => Shift(yy_state_354)
    _ => Error
  }
}

fn yy_state_350(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_351)
    _ => Error
  }
}

fn yy_state_351(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_352)
    _ => Error
  }
}

fn yy_state_352(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_353)
    _ => Error
  }
}

fn yy_state_353(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_member, yy_action_29)
}

fn yy_state_354(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_355)
    _ => Error
  }
}

fn yy_state_355(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_28)
}

fn yy_state_356(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_27)
}

fn yy_state_357(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_8)
    T_FLOAT32ARRAY => Shift(yy_state_9)
    T_FLOAT16ARRAY => Shift(yy_state_10)
    T_BIGUINT64ARRAY => Shift(yy_state_11)
    T_BIGINT64ARRAY => Shift(yy_state_12)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_13)
    T_UINT32ARRAY => Shift(yy_state_14)
    T_UINT16ARRAY => Shift(yy_state_15)
    T_UINT8ARRAY => Shift(yy_state_16)
    T_INT32ARRAY => Shift(yy_state_17)
    T_INT16ARRAY => Shift(yy_state_18)
    T_INT8ARRAY => Shift(yy_state_19)
    T_DATAVIEW => Shift(yy_state_20)
    T_SHAREDARRAYBUFFER => Shift(yy_state_21)
    T_ARRAYBUFFER => Shift(yy_state_22)
    T_USVSTRING => Shift(yy_state_23)
    T_BYTESTRING => Shift(yy_state_24)
    T_DOMSTRING => Shift(yy_state_25)
    T_BIGINT => Shift(yy_state_26)
    T_OCTET => Shift(yy_state_27)
    T_BYTE => Shift(yy_state_28)
    T_BOOLEAN => Shift(yy_state_29)
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    T_UNRESTRICTED => Shift(yy_state_32)
    T_LONG => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_37)
    T_UNSIGNED => Shift(yy_state_38)
    T_PROMISE => Shift(yy_state_42)
    T_ANY => Shift(yy_state_46)
    NT_distinguishable_type => Shift(yy_state_47)
    T_UNDEFINED => Shift(yy_state_50)
    T_RECORD => Shift(yy_state_51)
    T_OBSERVABLEARRAY => Shift(yy_state_58)
    T_FROZENARRAY => Shift(yy_state_62)
    NT_buffer_type => Shift(yy_state_66)
    T_SYMBOL => Shift(yy_state_67)
    T_OBJECT => Shift(yy_state_68)
    T_ASYNC_SEQUENCE => Shift(yy_state_69)
    T_SEQUENCE => Shift(yy_state_73)
    T_IDENTIFIER => Shift(yy_state_77)
    NT_string_type => Shift(yy_state_78)
    NT_primitive_type => Shift(yy_state_79)
    T_LPAREN => Shift(yy_state_80)
    NT_union_type => Shift(yy_state_93)
    NT_single_type => Shift(yy_state_95)
    NT_type => Shift(yy_state_200)
    NT_regular_operation_member => Shift(yy_state_358)
    T_ATTRIBUTE => Shift(yy_state_359)
    T_READONLY => Shift(yy_state_363)
    _ => Error
  }
}

fn yy_state_358(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_26)
}

fn yy_state_359(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_360)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_360(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_361)
    _ => Error
  }
}

fn yy_state_361(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_362)
    _ => Error
  }
}

fn yy_state_362(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_25)
}

fn yy_state_363(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_364)
    _ => Error
  }
}

fn yy_state_364(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_365)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_365(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_366)
    _ => Error
  }
}

fn yy_state_366(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_367)
    _ => Error
  }
}

fn yy_state_367(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_24)
}

fn yy_state_368(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_369)
    T_READONLY => Shift(yy_state_373)
    T_SEMICOLON => Shift(yy_state_378)
    _ => Error
  }
}

fn yy_state_369(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_370)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_370(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_371)
    _ => Error
  }
}

fn yy_state_371(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_372)
    _ => Error
  }
}

fn yy_state_372(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_23)
}

fn yy_state_373(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_374)
    _ => Error
  }
}

fn yy_state_374(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_57)
    NT_type_with_extended_attributes => Shift(yy_state_375)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_375(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNRESTRICTED => Shift(yy_state_100)
    T_TYPEDEF => Shift(yy_state_101)
    T_STRINGIFIER => Shift(yy_state_102)
    T_STATIC => Shift(yy_state_103)
    T_SETTER => Shift(yy_state_104)
    T_SETLIKE => Shift(yy_state_105)
    T_REQUIRED => Shift(yy_state_106)
    T_READONLY => Shift(yy_state_107)
    T_PARTIAL => Shift(yy_state_108)
    T_NAMESPACE => Shift(yy_state_109)
    T_MIXIN => Shift(yy_state_110)
    T_MAPLIKE => Shift(yy_state_111)
    T_ITERABLE => Shift(yy_state_112)
    T_INTERFACE => Shift(yy_state_113)
    T_INHERIT => Shift(yy_state_114)
    T_INCLUDES => Shift(yy_state_115)
    T_GETTER => Shift(yy_state_116)
    T_ENUM => Shift(yy_state_117)
    T_DICTIONARY => Shift(yy_state_118)
    T_DELETER => Shift(yy_state_119)
    T_CONSTRUCTOR => Shift(yy_state_120)
    T_CONST => Shift(yy_state_121)
    T_CALLBACK => Shift(yy_state_122)
    T_ATTRIBUTE => Shift(yy_state_123)
    T_IDENTIFIER => Shift(yy_state_324)
    NT_argument_name_keyword => Shift(yy_state_325)
    NT_attribute_name => Shift(yy_state_376)
    _ => Error
  }
}

fn yy_state_376(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_377)
    _ => Error
  }
}

fn yy_state_377(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_22)
}

fn yy_state_378(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_21)
}

fn yy_state_379(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_380)
    _ => Error
  }
}

fn yy_state_380(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_argument => Shift(yy_state_151)
    NT_argument_list => Shift(yy_state_381)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_207)
    T_IDENTIFIER | T_ASYNC_SEQUENCE | T_OPTIONAL | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_381(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_382)
    _ => Error
  }
}

fn yy_state_382(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_383)
    _ => Error
  }
}

fn yy_state_383(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_20)
}

fn yy_state_384(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_19)
}

fn yy_state_385(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_288)
    NT_interface_members => Shift(yy_state_386)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_51)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_ASYNC_SEQUENCE | T_MAPLIKE | T_SETLIKE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_386(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_interface_members, yy_action_18)
}

fn yy_state_387(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_388)
    _ => Error
  }
}

fn yy_state_388(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_389)
    _ => Error
  }
}

fn yy_state_389(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_partial_mixin_def, yy_action_17)
}

fn yy_state_390(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_391)
    _ => Error
  }
}

fn yy_state_391(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_288)
    NT_interface_members => Shift(yy_state_392)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_51)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_ASYNC_SEQUENCE | T_MAPLIKE | T_SETLIKE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_392(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_393)
    _ => Error
  }
}

fn yy_state_393(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_394)
    _ => Error
  }
}

fn yy_state_394(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_partial_interface_def, yy_action_16)
}

fn yy_state_395(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_396)
    T_IDENTIFIER => Shift(yy_state_402)
    _ => Error
  }
}

fn yy_state_396(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_397)
    _ => Error
  }
}

fn yy_state_397(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_398)
    _ => Error
  }
}

fn yy_state_398(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_288)
    NT_interface_members => Shift(yy_state_399)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_51)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_ASYNC_SEQUENCE | T_MAPLIKE | T_SETLIKE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_399(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_400)
    _ => Error
  }
}

fn yy_state_400(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_401)
    _ => Error
  }
}

fn yy_state_401(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_mixin_def, yy_action_15)
}

fn yy_state_402(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_237)
    NT_inheritance => Shift(yy_state_403)
    T_LBRACE => Reduce(0, NT_inheritance, yy_action_66)
    _ => Error
  }
}

fn yy_state_403(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_404)
    _ => Error
  }
}

fn yy_state_404(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_288)
    NT_interface_members => Shift(yy_state_405)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_51)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_ASYNC_SEQUENCE | T_MAPLIKE | T_SETLIKE | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_405(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_406)
    _ => Error
  }
}

fn yy_state_406(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_407)
    _ => Error
  }
}

fn yy_state_407(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_def, yy_action_14)
}

fn yy_state_408(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_13)
}

fn yy_state_409(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_12)
}

fn yy_state_410(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_11)
}

fn yy_state_411(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_10)
}

fn yy_state_412(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_9)
}

fn yy_state_413(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_8)
}

fn yy_state_414(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_7)
}

fn yy_state_415(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_6)
}

fn yy_state_416(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_5)
}

fn yy_state_417(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_4)
}

fn yy_state_418(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_3)
}

fn yy_state_419(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_2)
}

fn yy_state_420(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_1)
}

fn yy_state_421(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_EOF => Shift(yy_state_183)
    NT_extended_attribute_list => Shift(yy_state_184)
    NT_definitions => Shift(yy_state_422)
    T_IDENTIFIER | T_INTERFACE | T_PARTIAL | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE => Reduce(0, NT_extended_attribute_list, yy_action_209)
    _ => Error
  }
}

fn yy_state_422(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_definitions, yy_action_0)
}

fn[T] yy_parse(
  tokens : Array[(Token, Position, Position)],
  start : YYState,
  return_ : (YYObj) -> T,
  initial_pos? : Position,
) -> T raise ParseError {
  let mut cursor = 0
  let mut state_stack : @list.List[YYState] = @list.cons(start, @list.empty())
  let data_stack : Array[(YYObj, Position, Position)] = []
  let mut last_pos = initial_pos.unwrap_or(tokens[0].1)
  let mut state = start
  let mut lookahead : Option[(YYSymbol, (YYObj, Position, Position), Token?)] = None
  let mut last_shifted_state_stack = state_stack
  while true {
    let decision = match state(EOI) {
      ReduceNoLookahead(_) | Accept as t => t
      _ => {
        match lookahead {
          Some(la) => state(la.0)
          None => {
            if cursor < tokens.length() {
              let (token, start_pos, end_pos) = tokens[cursor]
              cursor += 1
              let (symbol, data) = yy_input(token, start_pos, end_pos)
              lookahead = Some((symbol, (data, start_pos, end_pos), Some(token)))
              state(symbol)
            } else {
              lookahead = Some((EOI, (YYObj_Void, last_pos, last_pos), None))
              state(EOI)
            }
          }
        }
      }
    }
    match decision {
      Accept => return return_(data_stack.unsafe_pop().0)
      Shift(next_state) => {
        guard lookahead is Some(la)
        data_stack.push(la.1)
        state_stack = @list.cons(next_state, state_stack)
        last_shifted_state_stack = state_stack
        state = next_state
        last_pos = la.1.2
        lookahead = None
      }
      Reduce(count, symbol, action)
      | ReduceNoLookahead(count, symbol, action) => {
        loop (count, symbol, action) {
          _ => {
            let args = data_stack[data_stack.length() - count:]
            let data = action(last_pos, args)
            let (start_pos, end_pos) = if args.length() == 0 {
              (last_pos, last_pos)
            } else {
              (args[0].1, args[args.length() - 1].2)
            }
            for i in 0..<count {
              ignore(data_stack.unsafe_pop())
              state_stack = state_stack.unsafe_tail()
            }
            state = state_stack.unsafe_head()
            data_stack.push((data, start_pos, end_pos))
            match state(symbol) {
              Accept => return return_(data_stack.unsafe_pop().0)
              Shift(next_state) => {
                state_stack = @list.cons(next_state, state_stack)
                state = next_state
              }
              Reduce(count, symbol, action)
              | ReduceNoLookahead(count, symbol, action) => continue (count, symbol, action)
              _ => panic()
            }
          }
        }
      }
      Error => {
        let (_, (_, start_pos, end_pos), token) = lookahead.unwrap()
        error(last_shifted_state_stack, token, (start_pos, end_pos))
      }
    }
  }
  panic()
}

fn error(stack : @list.List[YYState], token : Token?, loc : (Position, Position)) -> Unit raise ParseError {
  let expected = []
  fn try_add(symbol : YYSymbol, kind : TokenKind) {
    fn go(stack : @list.List[YYState]) {
      match stack {
        Empty => ()
        More(state, ..) => {
          match state(symbol) {
            Accept | Shift(_) => expected.push(kind)
            Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => {
              fn inner_go(stack : @list.List[YYState], count, symbol) {
                let stack = stack.drop(count)
                guard stack is More(state, ..)
                match state(symbol) {
                  Shift(state) => go(@list.cons(state, stack))
                  Reduce(count, symbol, _) | ReduceNoLookahead(count, symbol, _) => inner_go(stack, count, symbol)
                  _ => panic()
                }
              }
              inner_go(stack, count, symbol)
            }
            Error => ()
          }
        }
      }
    }
    go(stack)
  }
  for term in ([(T_EOF, TK_EOF), (T_INTEGER, TK_INTEGER), (T_FLOAT, TK_FLOAT), (T_STRING, TK_STRING), (T_IDENTIFIER, TK_IDENTIFIER), (T_INTERFACE, TK_INTERFACE), (T_PARTIAL, TK_PARTIAL), (T_MIXIN, TK_MIXIN), (T_DICTIONARY, TK_DICTIONARY), (T_ENUM, TK_ENUM), (T_TYPEDEF, TK_TYPEDEF), (T_CALLBACK, TK_CALLBACK), (T_NAMESPACE, TK_NAMESPACE), (T_INCLUDES, TK_INCLUDES), (T_ATTRIBUTE, TK_ATTRIBUTE), (T_CONST, TK_CONST), (T_READONLY, TK_READONLY), (T_INHERIT, TK_INHERIT), (T_STATIC, TK_STATIC), (T_STRINGIFIER, TK_STRINGIFIER), (T_GETTER, TK_GETTER), (T_SETTER, TK_SETTER), (T_DELETER, TK_DELETER), (T_CONSTRUCTOR, TK_CONSTRUCTOR), (T_ITERABLE, TK_ITERABLE), (T_ASYNC_ITERABLE, TK_ASYNC_ITERABLE), (T_ASYNC_SEQUENCE, TK_ASYNC_SEQUENCE), (T_MAPLIKE, TK_MAPLIKE), (T_SETLIKE, TK_SETLIKE), (T_REQUIRED, TK_REQUIRED), (T_OPTIONAL, TK_OPTIONAL), (T_UNDEFINED, TK_UNDEFINED), (T_BOOLEAN, TK_BOOLEAN), (T_BYTE, TK_BYTE), (T_OCTET, TK_OCTET), (T_SHORT, TK_SHORT), (T_LONG, TK_LONG), (T_UNSIGNED, TK_UNSIGNED), (T_FLOAT_KW, TK_FLOAT_KW), (T_DOUBLE, TK_DOUBLE), (T_UNRESTRICTED, TK_UNRESTRICTED), (T_BIGINT, TK_BIGINT), (T_DOMSTRING, TK_DOMSTRING), (T_BYTESTRING, TK_BYTESTRING), (T_USVSTRING, TK_USVSTRING), (T_ANY, TK_ANY), (T_OBJECT, TK_OBJECT), (T_SYMBOL, TK_SYMBOL), (T_SEQUENCE, TK_SEQUENCE), (T_PROMISE, TK_PROMISE), (T_FROZENARRAY, TK_FROZENARRAY), (T_OBSERVABLEARRAY, TK_OBSERVABLEARRAY), (T_RECORD, TK_RECORD), (T_OR, TK_OR), (T_ARRAYBUFFER, TK_ARRAYBUFFER), (T_SHAREDARRAYBUFFER, TK_SHAREDARRAYBUFFER), (T_DATAVIEW, TK_DATAVIEW), (T_INT8ARRAY, TK_INT8ARRAY), (T_INT16ARRAY, TK_INT16ARRAY), (T_INT32ARRAY, TK_INT32ARRAY), (T_UINT8ARRAY, TK_UINT8ARRAY), (T_UINT16ARRAY, TK_UINT16ARRAY), (T_UINT32ARRAY, TK_UINT32ARRAY), (T_UINT8CLAMPEDARRAY, TK_UINT8CLAMPEDARRAY), (T_BIGINT64ARRAY, TK_BIGINT64ARRAY), (T_BIGUINT64ARRAY, TK_BIGUINT64ARRAY), (T_FLOAT16ARRAY, TK_FLOAT16ARRAY), (T_FLOAT32ARRAY, TK_FLOAT32ARRAY), (T_FLOAT64ARRAY, TK_FLOAT64ARRAY), (T_TRUE, TK_TRUE), (T_FALSE, TK_FALSE), (T_NULL, TK_NULL), (T_INFINITY, TK_INFINITY), (T_NEG_INFINITY, TK_NEG_INFINITY), (T_NAN, TK_NAN), (T_LBRACE, TK_LBRACE), (T_RBRACE, TK_RBRACE), (T_LPAREN, TK_LPAREN), (T_RPAREN, TK_RPAREN), (T_LBRACKET, TK_LBRACKET), (T_RBRACKET, TK_RBRACKET), (T_LANGLE, TK_LANGLE), (T_RANGLE, TK_RANGLE), (T_COMMA, TK_COMMA), (T_SEMICOLON, TK_SEMICOLON), (T_COLON, TK_COLON), (T_EQUALS, TK_EQUALS), (T_QUESTION, TK_QUESTION), (T_ELLIPSIS, TK_ELLIPSIS), (T_STAR, TK_STAR)] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  match token {
    None => raise UnexpectedEndOfInput(loc.1, expected)
    Some(token) => raise UnexpectedToken(token, loc, expected)
  }
}

pub fn definitions(tokens : Array[(Token, Position, Position)], initial_pos? : Position) -> Array[DefinitionExtendedAttributes] raise ParseError {
  yy_parse(
    tokens,
    yy_state_0,
    (it) => {
      guard it is YYObj_Array_DefinitionExtendedAttributes_(result)
      result
    },
    initial_pos?,
  )
}


// Helper functions

fn type_to_string_type(t : Type) -> StringType {
  match t {
    Type::DOMString => StringType::DOMString
    Type::ByteString => StringType::ByteString
    Type::USVString => StringType::USVString
    _ => StringType::DOMString
  }
}

