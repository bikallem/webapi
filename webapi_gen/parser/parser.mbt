
pub suberror ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
  UnexpectedEndOfInput(Position, Array[TokenKind])
} derive(Show)

type YYObj = Error

priv suberror YYObj_Void

priv suberror YYObj_Type Type

priv suberror YYObj_Array_String_ Array[String]

priv suberror YYObj_Array_Argument_ Array[Argument]

priv suberror YYObj_Array_Definition_ Array[Definition]

priv suberror YYObj_Array_InterfaceMember_ Array[InterfaceMember]

priv suberror YYObj_Array_NamespaceMember_ Array[NamespaceMember]

priv suberror YYObj_Array_DictionaryMember_ Array[DictionaryMember]

priv suberror YYObj_Array_ExtendedAttribute_ Array[ExtendedAttribute]

priv suberror YYObj_Array_CallbackInterfaceMember_ Array[CallbackInterfaceMember]

priv suberror YYObj_String String

priv suberror YYObj_Special Special

priv suberror YYObj_Argument Argument

priv suberror YYObj_ConstValue ConstValue

priv suberror YYObj_Definition Definition

priv suberror YYObj_ConstMember ConstMember

priv suberror YYObj_DefaultValue DefaultValue

priv suberror YYObj_MaplikeMember MaplikeMember

priv suberror YYObj_SetlikeMember SetlikeMember

priv suberror YYObj_EnumDefinition EnumDefinition

priv suberror YYObj_IterableMember IterableMember

priv suberror YYObj_InterfaceMember InterfaceMember

priv suberror YYObj_MixinDefinition MixinDefinition

priv suberror YYObj_NamespaceMember NamespaceMember

priv suberror YYObj_OperationMember OperationMember

priv suberror YYObj_DictionaryMember DictionaryMember

priv suberror YYObj_ConstructorMember ConstructorMember

priv suberror YYObj_ExtendedAttribute ExtendedAttribute

priv suberror YYObj_IncludesStatement IncludesStatement

priv suberror YYObj_TypedefDefinition TypedefDefinition

priv suberror YYObj_InterfaceDefinition InterfaceDefinition

priv suberror YYObj_NamespaceDefinition NamespaceDefinition

priv suberror YYObj_DictionaryDefinition DictionaryDefinition

priv suberror YYObj_PartialMixinDefinition PartialMixinDefinition

priv suberror YYObj_CallbackInterfaceMember CallbackInterfaceMember

priv suberror YYObj_CallbackFunctionDefinition CallbackFunctionDefinition

priv suberror YYObj_PartialInterfaceDefinition PartialInterfaceDefinition

priv suberror YYObj_PartialNamespaceDefinition PartialNamespaceDefinition

priv suberror YYObj_CallbackInterfaceDefinition CallbackInterfaceDefinition

priv suberror YYObj_PartialDictionaryDefinition PartialDictionaryDefinition

priv suberror YYObj_Type_ Type?

priv suberror YYObj_String_ String?

priv suberror YYObj_DefaultValue_ DefaultValue?

priv suberror YYObj__Array_ExtendedAttribute___Type_ (Array[ExtendedAttribute], Type)

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
  T_VOID
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
  NT_callback_interface_members
  NT_callback_interface_member
  NT_includes_statement
  NT_inheritance
  NT_interface_members
  NT_interface_member
  NT_namespace_members
  NT_namespace_member
  NT_const_member
  NT_operation_member
  NT_special
  NT_constructor_member
  NT_iterable_member
  NT_maplike_member
  NT_setlike_member
  NT_dictionary_members
  NT_dictionary_member
  NT_enum_value_list
  NT_enum_value_list_rest
  NT_type
  NT_single_type
  NT_primitive_type
  NT_string_type
  NT_buffer_type
  NT_null_modifier
  NT_const_value
  NT_default_value_opt
  NT_default_value
  NT_argument_list
  NT_arguments
  NT_argument
  NT_type_with_extended_attributes
  NT_extended_attribute_list
  NT_extended_attributes
  NT_extended_attribute
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
// 176|    definition definitions          { [$1, ..$2] }
fn yy_action_0(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Definition(_dollar1)
  guard _args[1].0 is YYObj_Array_Definition_(_dollar2)
  YYObj_Array_Definition_({();  [_dollar1, .._dollar2] })
}

// file:///./parser.mbty
// 177|    EOF                             { [] }
fn yy_action_1(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_Definition_({();  [] })
}

// file:///./parser.mbty
// 180|    interface_def               { Definition::Interface($1) }
fn yy_action_2(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_InterfaceDefinition(_dollar1)
  YYObj_Definition({();  Definition::Interface(_dollar1) })
}

// file:///./parser.mbty
// 181|    mixin_def                   { Definition::Mixin($1) }
fn yy_action_3(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_MixinDefinition(_dollar1)
  YYObj_Definition({();  Definition::Mixin(_dollar1) })
}

// file:///./parser.mbty
// 182|    partial_interface_def       { Definition::PartialInterface($1) }
fn yy_action_4(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialInterfaceDefinition(_dollar1)
  YYObj_Definition({();  Definition::PartialInterface(_dollar1) })
}

// file:///./parser.mbty
// 183|    partial_mixin_def           { Definition::PartialMixin($1) }
fn yy_action_5(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialMixinDefinition(_dollar1)
  YYObj_Definition({();  Definition::PartialMixin(_dollar1) })
}

// file:///./parser.mbty
// 184|    namespace_def               { Definition::Namespace($1) }
fn yy_action_6(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_NamespaceDefinition(_dollar1)
  YYObj_Definition({();  Definition::Namespace(_dollar1) })
}

// file:///./parser.mbty
// 185|    partial_namespace_def       { Definition::PartialNamespace($1) }
fn yy_action_7(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialNamespaceDefinition(_dollar1)
  YYObj_Definition({();  Definition::PartialNamespace(_dollar1) })
}

// file:///./parser.mbty
// 186|    dictionary_def              { Definition::Dictionary($1) }
fn yy_action_8(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_DictionaryDefinition(_dollar1)
  YYObj_Definition({();  Definition::Dictionary(_dollar1) })
}

// file:///./parser.mbty
// 187|    partial_dictionary_def      { Definition::PartialDictionary($1) }
fn yy_action_9(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_PartialDictionaryDefinition(_dollar1)
  YYObj_Definition({();  Definition::PartialDictionary(_dollar1) })
}

// file:///./parser.mbty
// 188|    enum_def                    { Definition::Enum($1) }
fn yy_action_10(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_EnumDefinition(_dollar1)
  YYObj_Definition({();  Definition::Enum(_dollar1) })
}

// file:///./parser.mbty
// 189|    typedef_def                 { Definition::Typedef($1) }
fn yy_action_11(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_TypedefDefinition(_dollar1)
  YYObj_Definition({();  Definition::Typedef(_dollar1) })
}

// file:///./parser.mbty
// 190|    callback_def                { Definition::CallbackFunction($1) }
fn yy_action_12(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_CallbackFunctionDefinition(_dollar1)
  YYObj_Definition({();  Definition::CallbackFunction(_dollar1) })
}

// file:///./parser.mbty
// 191|    callback_interface_def      { Definition::CallbackInterface($1) }
fn yy_action_13(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_CallbackInterfaceDefinition(_dollar1)
  YYObj_Definition({();  Definition::CallbackInterface(_dollar1) })
}

// file:///./parser.mbty
// 192|    includes_statement          { Definition::Includes($1) }
fn yy_action_14(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_IncludesStatement(_dollar1)
  YYObj_Definition({();  Definition::Includes(_dollar1) })
}

// file:///./parser.mbty
// 195|    extended_attribute_list "interface" IDENTIFIER inheritance "{" interface_members "}" ";"
// 196|      { { extended_attributes: $1, name: $3, inheritance: $4, members: $6 } }
fn yy_action_15(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[3].0 is YYObj_String_(_dollar4)
  guard _args[5].0 is YYObj_Array_InterfaceMember_(_dollar6)
  YYObj_InterfaceDefinition({();  { extended_attributes: _dollar1, name: _dollar3, inheritance: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 203|    extended_attribute_list "interface" "mixin" IDENTIFIER "{" interface_members "}" ";"
// 204|      { { extended_attributes: $1, name: $4, members: $6 } }
fn yy_action_16(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[3].0 is YYObj_String(_dollar4)
  guard _args[5].0 is YYObj_Array_InterfaceMember_(_dollar6)
  YYObj_MixinDefinition({();  { extended_attributes: _dollar1, name: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 199|    extended_attribute_list "partial" "interface" IDENTIFIER "{" interface_members "}" ";"
// 200|      { { extended_attributes: $1, name: $4, members: $6 } }
fn yy_action_17(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[3].0 is YYObj_String(_dollar4)
  guard _args[5].0 is YYObj_Array_InterfaceMember_(_dollar6)
  YYObj_PartialInterfaceDefinition({();  { extended_attributes: _dollar1, name: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 207|    extended_attribute_list "partial" "interface" "mixin" IDENTIFIER "{" interface_members "}" ";"
// 208|      { { extended_attributes: $1, name: $5, members: $7 } }
fn yy_action_18(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[4].0 is YYObj_String(_dollar5)
  guard _args[6].0 is YYObj_Array_InterfaceMember_(_dollar7)
  YYObj_PartialMixinDefinition({();  { extended_attributes: _dollar1, name: _dollar5, members: _dollar7 } })
}

// file:///./parser.mbty
// 261|    extended_attribute_list interface_member interface_members
// 262|      { [add_interface_member_ext_attrs($2, $1), ..$3] }
fn yy_action_19(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_InterfaceMember(_dollar2)
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_Array_InterfaceMember_(_dollar3)
  YYObj_Array_InterfaceMember_({();  [add_interface_member_ext_attrs(_dollar2, _dollar1), .._dollar3] })
}

// file:///./parser.mbty
// 266|    const_member                { InterfaceMember::Const($1) }
fn yy_action_20(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Const(_dollar1) })
}

// file:///./parser.mbty
// 267|    constructor_member          { InterfaceMember::Constructor($1) }
fn yy_action_21(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstructorMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Constructor(_dollar1) })
}

// file:///./parser.mbty
// 268|    "stringifier" ";"           { InterfaceMember::Stringifier(StringifierMember::Bare) }
fn yy_action_22(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_InterfaceMember({();  InterfaceMember::Stringifier(StringifierMember::Bare) })
}

// file:///./parser.mbty
// 269|    "static" "readonly" "attribute" type IDENTIFIER ";"
// 270|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $4, name: $5, is_readonly: true, static_: true, is_inherit: false }) }
fn yy_action_23(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_Type(_dollar4)
  guard _args[4].0 is YYObj_String(_dollar5)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar4, name: _dollar5, is_readonly: true, static_: true, is_inherit: false }) })
}

// file:///./parser.mbty
// 271|    "static" "attribute" type IDENTIFIER ";"
// 272|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $3, name: $4, is_readonly: false, static_: true, is_inherit: false }) }
fn yy_action_24(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar3, name: _dollar4, is_readonly: false, static_: true, is_inherit: false }) })
}

// file:///./parser.mbty
// 273|    "static" type IDENTIFIER "(" argument_list ")" ";"
// 274|      { InterfaceMember::Operation({ extended_attributes: [], return_type: $2, name: Some($3), arguments: $5, static_: true, special: None }) }
fn yy_action_25(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Array_Argument_(_dollar5)
  YYObj_InterfaceMember({();  InterfaceMember::Operation({ extended_attributes: [], return_type: _dollar2, name: Some(_dollar3), arguments: _dollar5, static_: true, special: None }) })
}

// file:///./parser.mbty
// 275|    iterable_member             { InterfaceMember::Iterable($1) }
fn yy_action_26(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_IterableMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Iterable(_dollar1) })
}

// file:///./parser.mbty
// 276|    "async_iterable" "<" type ">" ";"
// 277|      { InterfaceMember::AsyncIterable({ extended_attributes: [], key_type: None, value_type: $3, arguments: [] }) }
fn yy_action_27(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_InterfaceMember({();  InterfaceMember::AsyncIterable({ extended_attributes: [], key_type: None, value_type: _dollar3, arguments: [] }) })
}

// file:///./parser.mbty
// 278|    "async_iterable" "<" type "," type ">" ";"
// 279|      { InterfaceMember::AsyncIterable({ extended_attributes: [], key_type: Some($3), value_type: $5, arguments: [] }) }
fn yy_action_28(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  YYObj_InterfaceMember({();  InterfaceMember::AsyncIterable({ extended_attributes: [], key_type: Some(_dollar3), value_type: _dollar5, arguments: [] }) })
}

// file:///./parser.mbty
// 280|    "readonly" maplike_member   { InterfaceMember::Maplike({ ..$2, is_readonly: true }) }
fn yy_action_29(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_MaplikeMember(_dollar2)
  YYObj_InterfaceMember({();  InterfaceMember::Maplike({ .._dollar2, is_readonly: true }) })
}

// file:///./parser.mbty
// 282|    "readonly" setlike_member   { InterfaceMember::Setlike({ ..$2, is_readonly: true }) }
fn yy_action_30(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_SetlikeMember(_dollar2)
  YYObj_InterfaceMember({();  InterfaceMember::Setlike({ .._dollar2, is_readonly: true }) })
}

// file:///./parser.mbty
// 288|    "readonly" "attribute" type IDENTIFIER ";"
// 289|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $3, name: $4, is_readonly: true, static_: false, is_inherit: false }) }
fn yy_action_31(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar3, name: _dollar4, is_readonly: true, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 281|    maplike_member              { InterfaceMember::Maplike($1) }
fn yy_action_32(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_MaplikeMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Maplike(_dollar1) })
}

// file:///./parser.mbty
// 283|    setlike_member              { InterfaceMember::Setlike($1) }
fn yy_action_33(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_SetlikeMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Setlike(_dollar1) })
}

// file:///./parser.mbty
// 284|    "inherit" "readonly" "attribute" type IDENTIFIER ";"
// 285|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $4, name: $5, is_readonly: true, static_: false, is_inherit: true }) }
fn yy_action_34(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[3].0 is YYObj_Type(_dollar4)
  guard _args[4].0 is YYObj_String(_dollar5)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar4, name: _dollar5, is_readonly: true, static_: false, is_inherit: true }) })
}

// file:///./parser.mbty
// 286|    "inherit" "attribute" type IDENTIFIER ";"
// 287|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $3, name: $4, is_readonly: false, static_: false, is_inherit: true }) }
fn yy_action_35(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar3, name: _dollar4, is_readonly: false, static_: false, is_inherit: true }) })
}

// file:///./parser.mbty
// 290|    "attribute" type IDENTIFIER ";"
// 291|      { InterfaceMember::Attribute({ extended_attributes: [], type_: $2, name: $3, is_readonly: false, static_: false, is_inherit: false }) }
fn yy_action_36(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_InterfaceMember({();  InterfaceMember::Attribute({ extended_attributes: [], type_: _dollar2, name: _dollar3, is_readonly: false, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 292|    special type IDENTIFIER "(" argument_list ")" ";"
// 293|      { InterfaceMember::Operation({ extended_attributes: [], return_type: $2, name: Some($3), arguments: $5, static_: false, special: Some($1) }) }
fn yy_action_37(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Array_Argument_(_dollar5)
  guard _args[0].0 is YYObj_Special(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Operation({ extended_attributes: [], return_type: _dollar2, name: Some(_dollar3), arguments: _dollar5, static_: false, special: Some(_dollar1) }) })
}

// file:///./parser.mbty
// 294|    special type "(" argument_list ")" ";"
// 295|      { InterfaceMember::Operation({ extended_attributes: [], return_type: $2, name: None, arguments: $4, static_: false, special: Some($1) }) }
fn yy_action_38(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[3].0 is YYObj_Array_Argument_(_dollar4)
  guard _args[0].0 is YYObj_Special(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Operation({ extended_attributes: [], return_type: _dollar2, name: None, arguments: _dollar4, static_: false, special: Some(_dollar1) }) })
}

// file:///./parser.mbty
// 296|    operation_member            { InterfaceMember::Operation($1) }
fn yy_action_39(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_OperationMember(_dollar1)
  YYObj_InterfaceMember({();  InterfaceMember::Operation(_dollar1) })
}

// file:///./parser.mbty
// 322|    "getter"                    { Special::Getter }
fn yy_action_40(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Getter })
}

// file:///./parser.mbty
// 323|    "setter"                    { Special::Setter }
fn yy_action_41(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Setter })
}

// file:///./parser.mbty
// 324|    "deleter"                   { Special::Deleter }
fn yy_action_42(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Special({();  Special::Deleter })
}

// file:///./parser.mbty
// 327|    "constructor" "(" argument_list ")" ";"
// 328|      { { extended_attributes: [], arguments: $3 } }
fn yy_action_43(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Array_Argument_(_dollar3)
  YYObj_ConstructorMember({();  { extended_attributes: [], arguments: _dollar3 } })
}

// file:///./parser.mbty
// 331|    "iterable" "<" type ">" ";"
// 332|      { { extended_attributes: [], key_type: None, value_type: $3 } }
fn yy_action_44(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_IterableMember({();  { extended_attributes: [], key_type: None, value_type: _dollar3 } })
}

// file:///./parser.mbty
// 333|    "iterable" "<" type "," type ">" ";"
// 334|      { { extended_attributes: [], key_type: Some($3), value_type: $5 } }
fn yy_action_45(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  YYObj_IterableMember({();  { extended_attributes: [], key_type: Some(_dollar3), value_type: _dollar5 } })
}

// file:///./parser.mbty
// 337|    "maplike" "<" type "," type ">" ";"
// 338|      { { extended_attributes: [], key_type: $3, value_type: $5, is_readonly: false } }
fn yy_action_46(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  YYObj_MaplikeMember({();  { extended_attributes: [], key_type: _dollar3, value_type: _dollar5, is_readonly: false } })
}

// file:///./parser.mbty
// 341|    "setlike" "<" type ">" ";"
// 342|      { { extended_attributes: [], value_type: $3, is_readonly: false } }
fn yy_action_47(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_SetlikeMember({();  { extended_attributes: [], value_type: _dollar3, is_readonly: false } })
}

// file:///./parser.mbty
// 263|                                { [] }
fn yy_action_48(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_InterfaceMember_({();  [] })
}

// file:///./parser.mbty
// 215|    extended_attribute_list "partial" "namespace" IDENTIFIER "{" namespace_members "}" ";"
// 216|      { { extended_attributes: $1, name: $4, members: $6 } }
fn yy_action_49(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[3].0 is YYObj_String(_dollar4)
  guard _args[5].0 is YYObj_Array_NamespaceMember_(_dollar6)
  YYObj_PartialNamespaceDefinition({();  { extended_attributes: _dollar1, name: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 223|    extended_attribute_list "partial" "dictionary" IDENTIFIER "{" dictionary_members "}" ";"
// 224|      { { extended_attributes: $1, name: $4, members: $6 } }
fn yy_action_50(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[3].0 is YYObj_String(_dollar4)
  guard _args[5].0 is YYObj_Array_DictionaryMember_(_dollar6)
  YYObj_PartialDictionaryDefinition({();  { extended_attributes: _dollar1, name: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 211|    extended_attribute_list "namespace" IDENTIFIER "{" namespace_members "}" ";"
// 212|      { { extended_attributes: $1, name: $3, members: $5 } }
fn yy_action_51(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Array_NamespaceMember_(_dollar5)
  YYObj_NamespaceDefinition({();  { extended_attributes: _dollar1, name: _dollar3, members: _dollar5 } })
}

// file:///./parser.mbty
// 300|    extended_attribute_list namespace_member namespace_members
// 301|      { [add_namespace_member_ext_attrs($2, $1), ..$3] }
fn yy_action_52(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_NamespaceMember(_dollar2)
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_Array_NamespaceMember_(_dollar3)
  YYObj_Array_NamespaceMember_({();  [add_namespace_member_ext_attrs(_dollar2, _dollar1), .._dollar3] })
}

// file:///./parser.mbty
// 305|    "readonly" "attribute" type IDENTIFIER ";"
// 306|      { NamespaceMember::Attribute({ extended_attributes: [], type_: $3, name: $4, is_readonly: true, static_: false, is_inherit: false }) }
fn yy_action_53(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj_NamespaceMember({();  NamespaceMember::Attribute({ extended_attributes: [], type_: _dollar3, name: _dollar4, is_readonly: true, static_: false, is_inherit: false }) })
}

// file:///./parser.mbty
// 307|    type IDENTIFIER "(" argument_list ")" ";"
// 308|      { NamespaceMember::Operation({ extended_attributes: [], return_type: $1, name: Some($2), arguments: $4, static_: false, special: None }) }
fn yy_action_54(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_Array_Argument_(_dollar4)
  YYObj_NamespaceMember({();  NamespaceMember::Operation({ extended_attributes: [], return_type: _dollar1, name: Some(_dollar2), arguments: _dollar4, static_: false, special: None }) })
}

// file:///./parser.mbty
// 309|    const_member                { NamespaceMember::Const($1) }
fn yy_action_55(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(_dollar1)
  YYObj_NamespaceMember({();  NamespaceMember::Const(_dollar1) })
}

// file:///./parser.mbty
// 302|                                { [] }
fn yy_action_56(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_NamespaceMember_({();  [] })
}

// file:///./parser.mbty
// 219|    extended_attribute_list "dictionary" IDENTIFIER inheritance "{" dictionary_members "}" ";"
// 220|      { { extended_attributes: $1, name: $3, inheritance: $4, members: $6 } }
fn yy_action_57(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[3].0 is YYObj_String_(_dollar4)
  guard _args[5].0 is YYObj_Array_DictionaryMember_(_dollar6)
  YYObj_DictionaryDefinition({();  { extended_attributes: _dollar1, name: _dollar3, inheritance: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 346|    extended_attribute_list dictionary_member dictionary_members
// 347|      { [{ ..$2, extended_attributes: $1 }, ..$3] }
fn yy_action_58(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_DictionaryMember(_dollar2)
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_Array_DictionaryMember_(_dollar3)
  YYObj_Array_DictionaryMember_({();  [{ .._dollar2, extended_attributes: _dollar1 }, .._dollar3] })
}

// file:///./parser.mbty
// 351|    "required" type IDENTIFIER ";"
// 352|      { { extended_attributes: [], type_: $2, name: $3, required: true, default_value: None } }
fn yy_action_59(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_DictionaryMember({();  { extended_attributes: [], type_: _dollar2, name: _dollar3, required: true, default_value: None } })
}

// file:///./parser.mbty
// 353|    type IDENTIFIER default_value_opt ";"
// 354|      { { extended_attributes: [], type_: $1, name: $2, required: false, default_value: $3 } }
fn yy_action_60(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[2].0 is YYObj_DefaultValue_(_dollar3)
  YYObj_DictionaryMember({();  { extended_attributes: [], type_: _dollar1, name: _dollar2, required: false, default_value: _dollar3 } })
}

// file:///./parser.mbty
// 348|                                { [] }
fn yy_action_61(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_DictionaryMember_({();  [] })
}

// file:///./parser.mbty
// 256|    ":" IDENTIFIER              { Some($2) }
fn yy_action_62(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  YYObj_String_({();  Some(_dollar2) })
}

// file:///./parser.mbty
// 257|                                { None }
fn yy_action_63(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_String_({();  None })
}

// file:///./parser.mbty
// 227|    extended_attribute_list "enum" IDENTIFIER "{" enum_value_list "}" ";"
// 228|      { { extended_attributes: $1, name: $3, values: $5 } }
fn yy_action_64(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Array_String_(_dollar5)
  YYObj_EnumDefinition({();  { extended_attributes: _dollar1, name: _dollar3, values: _dollar5 } })
}

// file:///./parser.mbty
// 358|    STRING enum_value_list_rest { [$1, ..$2] }
fn yy_action_65(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[1].0 is YYObj_Array_String_(_dollar2)
  YYObj_Array_String_({();  [_dollar1, .._dollar2] })
}

// file:///./parser.mbty
// 361|    "," STRING enum_value_list_rest  { [$2, ..$3] }
fn yy_action_66(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[2].0 is YYObj_Array_String_(_dollar3)
  YYObj_Array_String_({();  [_dollar2, .._dollar3] })
}

// file:///./parser.mbty
// 362|    ","                              { [] }
fn yy_action_67(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_String_({();  [] })
}

// file:///./parser.mbty
// 363|                                     { [] }
fn yy_action_68(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_String_({();  [] })
}

// file:///./parser.mbty
// 231|    extended_attribute_list "typedef" type IDENTIFIER ";"
// 232|      { { extended_attributes: $1, type_: $3, name: $4 } }
fn yy_action_69(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[3].0 is YYObj_String(_dollar4)
  YYObj_TypedefDefinition({();  { extended_attributes: _dollar1, type_: _dollar3, name: _dollar4 } })
}

// file:///./parser.mbty
// 235|    extended_attribute_list "callback" IDENTIFIER "=" type "(" argument_list ")" ";"
// 236|      { { extended_attributes: $1, name: $3, return_type: $5, arguments: $7 } }
fn yy_action_70(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  guard _args[6].0 is YYObj_Array_Argument_(_dollar7)
  YYObj_CallbackFunctionDefinition({();  { extended_attributes: _dollar1, name: _dollar3, return_type: _dollar5, arguments: _dollar7 } })
}

// file:///./parser.mbty
// 239|    extended_attribute_list "callback" "interface" IDENTIFIER "{" callback_interface_members "}" ";"
// 240|      { { extended_attributes: $1, name: $4, members: $6 } }
fn yy_action_71(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[3].0 is YYObj_String(_dollar4)
  guard _args[5].0 is YYObj_Array_CallbackInterfaceMember_(_dollar6)
  YYObj_CallbackInterfaceDefinition({();  { extended_attributes: _dollar1, name: _dollar4, members: _dollar6 } })
}

// file:///./parser.mbty
// 243|    extended_attribute_list callback_interface_member callback_interface_members
// 244|      { [add_callback_interface_member_ext_attrs($2, $1), ..$3] }
fn yy_action_72(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_CallbackInterfaceMember(_dollar2)
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[2].0 is YYObj_Array_CallbackInterfaceMember_(_dollar3)
  YYObj_Array_CallbackInterfaceMember_({();  [add_callback_interface_member_ext_attrs(_dollar2, _dollar1), .._dollar3] })
}

// file:///./parser.mbty
// 248|    operation_member            { CallbackInterfaceMember::Operation($1) }
fn yy_action_73(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_OperationMember(_dollar1)
  YYObj_CallbackInterfaceMember({();  CallbackInterfaceMember::Operation(_dollar1) })
}

// file:///./parser.mbty
// 249|    const_member                { CallbackInterfaceMember::Const($1) }
fn yy_action_74(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstMember(_dollar1)
  YYObj_CallbackInterfaceMember({();  CallbackInterfaceMember::Const(_dollar1) })
}

// file:///./parser.mbty
// 312|    "const" type IDENTIFIER "=" const_value ";"
// 313|      { { extended_attributes: [], type_: $2, name: $3, value: $5 } }
fn yy_action_75(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_ConstValue(_dollar5)
  YYObj_ConstMember({();  { extended_attributes: [], type_: _dollar2, name: _dollar3, value: _dollar5 } })
}

// file:///./parser.mbty
// 316|    type IDENTIFIER "(" argument_list ")" ";"
// 317|      { { extended_attributes: [], return_type: $1, name: Some($2), arguments: $4, static_: false, special: None } }
fn yy_action_76(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  guard _args[1].0 is YYObj_String(_dollar2)
  guard _args[3].0 is YYObj_Array_Argument_(_dollar4)
  YYObj_OperationMember({();  { extended_attributes: [], return_type: _dollar1, name: Some(_dollar2), arguments: _dollar4, static_: false, special: None } })
}

// file:///./parser.mbty
// 318|    type "(" argument_list ")" ";"
// 319|      { { extended_attributes: [], return_type: $1, name: None, arguments: $3, static_: false, special: None } }
fn yy_action_77(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  guard _args[2].0 is YYObj_Array_Argument_(_dollar3)
  YYObj_OperationMember({();  { extended_attributes: [], return_type: _dollar1, name: None, arguments: _dollar3, static_: false, special: None } })
}

// file:///./parser.mbty
// 245|                                { [] }
fn yy_action_78(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_CallbackInterfaceMember_({();  [] })
}

// file:///./parser.mbty
// 252|    IDENTIFIER "includes" IDENTIFIER ";"
// 253|      { { extended_attributes: [], interface_name: $1, mixin_name: $3 } }
fn yy_action_79(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_IncludesStatement({();  { extended_attributes: [], interface_name: _dollar1, mixin_name: _dollar3 } })
}

// file:///./parser.mbty
// 488|    "[" extended_attribute extended_attributes "]"  { [$2, ..$3] }
fn yy_action_80(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_ExtendedAttribute(_dollar2)
  guard _args[2].0 is YYObj_Array_ExtendedAttribute_(_dollar3)
  YYObj_Array_ExtendedAttribute_({();  [_dollar2, .._dollar3] })
}

// file:///./parser.mbty
// 492|    "," extended_attribute extended_attributes  { [$2, ..$3] }
fn yy_action_81(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_ExtendedAttribute(_dollar2)
  guard _args[2].0 is YYObj_Array_ExtendedAttribute_(_dollar3)
  YYObj_Array_ExtendedAttribute_({();  [_dollar2, .._dollar3] })
}

// file:///./parser.mbty
// 493|                                { [] }
fn yy_action_82(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_ExtendedAttribute_({();  [] })
}

// file:///./parser.mbty
// 496|    IDENTIFIER "=" IDENTIFIER "(" argument_list ")" { ExtendedAttribute::NamedArgList($1, $3, $5) }
fn yy_action_83(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[4].0 is YYObj_Array_Argument_(_dollar5)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::NamedArgList(_dollar1, _dollar3, _dollar5) })
}

// file:///./parser.mbty
// 497|    IDENTIFIER "=" IDENTIFIER   { ExtendedAttribute::Ident($1, $3) }
fn yy_action_84(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Ident(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 498|    IDENTIFIER "=" STRING       { ExtendedAttribute::Ident($1, $3) }
fn yy_action_85(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Ident(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 499|    IDENTIFIER "=" "*"          { ExtendedAttribute::Wildcard($1) }
fn yy_action_86(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::Wildcard(_dollar1) })
}

// file:///./parser.mbty
// 464|    argument arguments          { [$1, ..$2] }
fn yy_action_87(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Argument(_dollar1)
  guard _args[1].0 is YYObj_Array_Argument_(_dollar2)
  YYObj_Array_Argument_({();  [_dollar1, .._dollar2] })
}

// file:///./parser.mbty
// 468|    "," argument arguments      { [$2, ..$3] }
fn yy_action_88(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Argument(_dollar2)
  guard _args[2].0 is YYObj_Array_Argument_(_dollar3)
  YYObj_Array_Argument_({();  [_dollar2, .._dollar3] })
}

// file:///./parser.mbty
// 469|                                { [] }
fn yy_action_89(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_Argument_({();  [] })
}

// file:///./parser.mbty
// 441|    "true"                      { ConstValue::Boolean(true) }
fn yy_action_90(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_ConstValue({();  ConstValue::Boolean(true) })
}

// file:///./parser.mbty
// 442|    "false"                     { ConstValue::Boolean(false) }
fn yy_action_91(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_ConstValue({();  ConstValue::Boolean(false) })
}

// file:///./parser.mbty
// 443|    INTEGER                     { ConstValue::Integer($1) }
fn yy_action_92(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ConstValue({();  ConstValue::Integer(_dollar1) })
}

// file:///./parser.mbty
// 444|    FLOAT                       { ConstValue::Float($1) }
fn yy_action_93(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ConstValue({();  ConstValue::Float(_dollar1) })
}

// file:///./parser.mbty
// 445|    "Infinity"                  { ConstValue::Infinity }
fn yy_action_94(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_ConstValue({();  ConstValue::Infinity })
}

// file:///./parser.mbty
// 446|    "-Infinity"                 { ConstValue::NegInfinity }
fn yy_action_95(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_ConstValue({();  ConstValue::NegInfinity })
}

// file:///./parser.mbty
// 447|    "NaN"                       { ConstValue::NaN }
fn yy_action_96(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_ConstValue({();  ConstValue::NaN })
}

// file:///./parser.mbty
// 451|    "=" default_value           { Some($2) }
fn yy_action_97(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_DefaultValue(_dollar2)
  YYObj_DefaultValue_({();  Some(_dollar2) })
}

// file:///./parser.mbty
// 455|    const_value                 { DefaultValue::ConstValue($1) }
fn yy_action_98(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_ConstValue(_dollar1)
  YYObj_DefaultValue({();  DefaultValue::ConstValue(_dollar1) })
}

// file:///./parser.mbty
// 456|    STRING                      { DefaultValue::String($1) }
fn yy_action_99(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_DefaultValue({();  DefaultValue::String(_dollar1) })
}

// file:///./parser.mbty
// 457|    "[" "]"                     { DefaultValue::EmptySequence }
fn yy_action_100(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::EmptySequence })
}

// file:///./parser.mbty
// 458|    "{" "}"                     { DefaultValue::EmptyObject }
fn yy_action_101(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::EmptyObject })
}

// file:///./parser.mbty
// 459|    "null"                      { DefaultValue::Null }
fn yy_action_102(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::Null })
}

// file:///./parser.mbty
// 460|    "undefined"                 { DefaultValue::Undefined }
fn yy_action_103(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue({();  DefaultValue::Undefined })
}

// file:///./parser.mbty
// 476|    "optional" type_with_extended_attributes IDENTIFIER default_value_opt
// 477|      { { extended_attributes: $2.0, type_: $2.1, name: $3, optional: true, variadic: false, default_value: $4 } }
fn yy_action_104(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj__Array_ExtendedAttribute___Type_(_dollar2)
  guard _args[2].0 is YYObj_String(_dollar3)
  guard _args[3].0 is YYObj_DefaultValue_(_dollar4)
  YYObj_Argument({();  { extended_attributes: _dollar2.0, type_: _dollar2.1, name: _dollar3, optional: true, variadic: false, default_value: _dollar4 } })
}

// file:///./parser.mbty
// 452|                                { None }
fn yy_action_105(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_DefaultValue_({();  None })
}

// file:///./parser.mbty
// 478|    type_with_extended_attributes "..." IDENTIFIER
// 479|      { { extended_attributes: $1.0, type_: $1.1, name: $3, optional: false, variadic: true, default_value: None } }
fn yy_action_106(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Array_ExtendedAttribute___Type_(_dollar1)
  guard _args[2].0 is YYObj_String(_dollar3)
  YYObj_Argument({();  { extended_attributes: _dollar1.0, type_: _dollar1.1, name: _dollar3, optional: false, variadic: true, default_value: None } })
}

// file:///./parser.mbty
// 480|    type_with_extended_attributes IDENTIFIER
// 481|      { { extended_attributes: $1.0, type_: $1.1, name: $2, optional: false, variadic: false, default_value: None } }
fn yy_action_107(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj__Array_ExtendedAttribute___Type_(_dollar1)
  guard _args[1].0 is YYObj_String(_dollar2)
  YYObj_Argument({();  { extended_attributes: _dollar1.0, type_: _dollar1.1, name: _dollar2, optional: false, variadic: false, default_value: None } })
}

// file:///./parser.mbty
// 367|    single_type null_modifier   { 
// 368|      match $2 {
// 369|        Some(_) => Type::Nullable($1)
// 370|        None => $1 
// 371|      }
// 372|    }
fn yy_action_108(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type_(_dollar2)
  guard _args[0].0 is YYObj_Type(_dollar1)
  YYObj_Type({();  
      match _dollar2 {
        Some(_) => Type::Nullable(_dollar1)
        None => _dollar1 
      }
    })
}

// file:///./parser.mbty
// 373|    "(" single_type "or" single_type ")" null_modifier {
// 374|      let union = Type::Union([$2, $4])
// 375|      match $6 {
// 376|        Some(_) => Type::Nullable(union)
// 377|        None => union
// 378|      }
// 379|    }
fn yy_action_109(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[1].0 is YYObj_Type(_dollar2)
  guard _args[3].0 is YYObj_Type(_dollar4)
  guard _args[5].0 is YYObj_Type_(_dollar6)
  YYObj_Type({(); 
      let union = Type::Union([_dollar2, _dollar4])
      match _dollar6 {
        Some(_) => Type::Nullable(union)
        None => union
      }
    })
}

// file:///./parser.mbty
// 436|    "?"                         { Some(Type::Void) }
fn yy_action_110(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type_({();  Some(Type::Void) })
}

// file:///./parser.mbty
// 437|                                { None }
fn yy_action_111(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type_({();  None })
}

// file:///./parser.mbty
// 382|    primitive_type              { $1 }
fn yy_action_112(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  YYObj_Type({();  _dollar1 })
}

// file:///./parser.mbty
// 383|    string_type                 { $1 }
fn yy_action_113(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  YYObj_Type({();  _dollar1 })
}

// file:///./parser.mbty
// 384|    buffer_type                 { $1 }
fn yy_action_114(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Type(_dollar1)
  YYObj_Type({();  _dollar1 })
}

// file:///./parser.mbty
// 385|    IDENTIFIER                  { Type::Identifier($1) }
fn yy_action_115(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_Type({();  Type::Identifier(_dollar1) })
}

// file:///./parser.mbty
// 386|    "sequence" "<" type ">"     { Type::Sequence($3) }
fn yy_action_116(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_Type({();  Type::Sequence(_dollar3) })
}

// file:///./parser.mbty
// 387|    "Promise" "<" type ">"      { Type::Promise($3) }
fn yy_action_117(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_Type({();  Type::Promise(_dollar3) })
}

// file:///./parser.mbty
// 388|    "FrozenArray" "<" type ">"  { Type::FrozenArray($3) }
fn yy_action_118(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_Type({();  Type::FrozenArray(_dollar3) })
}

// file:///./parser.mbty
// 389|    "ObservableArray" "<" type ">" { Type::ObservableArray($3) }
fn yy_action_119(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  YYObj_Type({();  Type::ObservableArray(_dollar3) })
}

// file:///./parser.mbty
// 390|    "record" "<" string_type "," type ">" { Type::Record(type_to_string_type($3), $5) }
fn yy_action_120(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[2].0 is YYObj_Type(_dollar3)
  guard _args[4].0 is YYObj_Type(_dollar5)
  YYObj_Type({();  Type::Record(type_to_string_type(_dollar3), _dollar5) })
}

// file:///./parser.mbty
// 391|    "any"                       { Type::Any }
fn yy_action_121(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Any })
}

// file:///./parser.mbty
// 392|    "object"                    { Type::Object }
fn yy_action_122(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Object })
}

// file:///./parser.mbty
// 393|    "symbol"                    { Type::Symbol }
fn yy_action_123(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Symbol })
}

// file:///./parser.mbty
// 394|    "undefined"                 { Type::Undefined }
fn yy_action_124(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Undefined })
}

// file:///./parser.mbty
// 395|    "void"                      { Type::Void }
fn yy_action_125(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Void })
}

// file:///./parser.mbty
// 398|    "boolean"                   { Type::Boolean }
fn yy_action_126(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Boolean })
}

// file:///./parser.mbty
// 399|    "byte"                      { Type::Byte }
fn yy_action_127(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Byte })
}

// file:///./parser.mbty
// 400|    "octet"                     { Type::Octet }
fn yy_action_128(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Octet })
}

// file:///./parser.mbty
// 401|    "short"                     { Type::Short }
fn yy_action_129(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Short })
}

// file:///./parser.mbty
// 402|    "unsigned" "short"          { Type::UnsignedShort }
fn yy_action_130(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedShort })
}

// file:///./parser.mbty
// 406|    "unsigned" "long" "long"    { Type::UnsignedLongLong }
fn yy_action_131(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedLongLong })
}

// file:///./parser.mbty
// 404|    "unsigned" "long"           { Type::UnsignedLong }
fn yy_action_132(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnsignedLong })
}

// file:///./parser.mbty
// 405|    "long" "long"               { Type::LongLong }
fn yy_action_133(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::LongLong })
}

// file:///./parser.mbty
// 403|    "long"                      { Type::Long }
fn yy_action_134(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Long })
}

// file:///./parser.mbty
// 407|    "float"                     { Type::Float }
fn yy_action_135(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float })
}

// file:///./parser.mbty
// 408|    "unrestricted" "float"      { Type::UnrestrictedFloat }
fn yy_action_136(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnrestrictedFloat })
}

// file:///./parser.mbty
// 410|    "unrestricted" "double"     { Type::UnrestrictedDouble }
fn yy_action_137(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::UnrestrictedDouble })
}

// file:///./parser.mbty
// 409|    "double"                    { Type::Double }
fn yy_action_138(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Double })
}

// file:///./parser.mbty
// 411|    "bigint"                    { Type::Bigint }
fn yy_action_139(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Bigint })
}

// file:///./parser.mbty
// 414|    "DOMString"                 { Type::DOMString }
fn yy_action_140(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::DOMString })
}

// file:///./parser.mbty
// 415|    "ByteString"                { Type::ByteString }
fn yy_action_141(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::ByteString })
}

// file:///./parser.mbty
// 416|    "USVString"                 { Type::USVString }
fn yy_action_142(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::USVString })
}

// file:///./parser.mbty
// 419|    "ArrayBuffer"               { Type::ArrayBuffer }
fn yy_action_143(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::ArrayBuffer })
}

// file:///./parser.mbty
// 420|    "SharedArrayBuffer"         { Type::SharedArrayBuffer }
fn yy_action_144(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::SharedArrayBuffer })
}

// file:///./parser.mbty
// 421|    "DataView"                  { Type::DataView }
fn yy_action_145(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::DataView })
}

// file:///./parser.mbty
// 422|    "Int8Array"                 { Type::Int8Array }
fn yy_action_146(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int8Array })
}

// file:///./parser.mbty
// 423|    "Int16Array"                { Type::Int16Array }
fn yy_action_147(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int16Array })
}

// file:///./parser.mbty
// 424|    "Int32Array"                { Type::Int32Array }
fn yy_action_148(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Int32Array })
}

// file:///./parser.mbty
// 425|    "Uint8Array"                { Type::Uint8Array }
fn yy_action_149(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint8Array })
}

// file:///./parser.mbty
// 426|    "Uint16Array"               { Type::Uint16Array }
fn yy_action_150(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint16Array })
}

// file:///./parser.mbty
// 427|    "Uint32Array"               { Type::Uint32Array }
fn yy_action_151(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint32Array })
}

// file:///./parser.mbty
// 428|    "Uint8ClampedArray"         { Type::Uint8ClampedArray }
fn yy_action_152(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Uint8ClampedArray })
}

// file:///./parser.mbty
// 429|    "BigInt64Array"             { Type::BigInt64Array }
fn yy_action_153(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::BigInt64Array })
}

// file:///./parser.mbty
// 430|    "BigUint64Array"            { Type::BigUint64Array }
fn yy_action_154(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::BigUint64Array })
}

// file:///./parser.mbty
// 431|    "Float16Array"              { Type::Float16Array }
fn yy_action_155(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float16Array })
}

// file:///./parser.mbty
// 432|    "Float32Array"              { Type::Float32Array }
fn yy_action_156(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float32Array })
}

// file:///./parser.mbty
// 433|    "Float64Array"              { Type::Float64Array }
fn yy_action_157(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Type({();  Type::Float64Array })
}

// file:///./parser.mbty
// 484|    extended_attribute_list type  { ($1, $2) }
fn yy_action_158(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_Array_ExtendedAttribute_(_dollar1)
  guard _args[1].0 is YYObj_Type(_dollar2)
  YYObj__Array_ExtendedAttribute___Type_({();  (_dollar1, _dollar2) })
}

// file:///./parser.mbty
// 500|    IDENTIFIER "(" argument_list ")"  { ExtendedAttribute::ArgList($1, $3) }
fn yy_action_159(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  guard _args[2].0 is YYObj_Array_Argument_(_dollar3)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::ArgList(_dollar1, _dollar3) })
}

// file:///./parser.mbty
// 465|                                { [] }
fn yy_action_160(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  YYObj_Array_Argument_({();  [] })
}

// file:///./parser.mbty
// 501|    IDENTIFIER                  { ExtendedAttribute::NoArgs($1) }
fn yy_action_161(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
  guard _args[0].0 is YYObj_String(_dollar1)
  YYObj_ExtendedAttribute({();  ExtendedAttribute::NoArgs(_dollar1) })
}

// file:///./parser.mbty
// 489|                                { [] }
fn yy_action_162(_last_pos : Position, _args : ArrayView[(YYObj, Position, Position)]) -> YYObj {
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
    VOID => (T_VOID, YYObj_Void)
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
    T_IDENTIFIER => Shift(yy_state_126)
    NT_extended_attribute_list => Shift(yy_state_130)
    NT_includes_statement => Shift(yy_state_357)
    NT_callback_interface_def => Shift(yy_state_358)
    NT_callback_def => Shift(yy_state_359)
    NT_typedef_def => Shift(yy_state_360)
    NT_enum_def => Shift(yy_state_361)
    NT_partial_dictionary_def => Shift(yy_state_362)
    NT_dictionary_def => Shift(yy_state_363)
    NT_partial_namespace_def => Shift(yy_state_364)
    NT_namespace_def => Shift(yy_state_365)
    NT_partial_mixin_def => Shift(yy_state_366)
    NT_partial_interface_def => Shift(yy_state_367)
    NT_mixin_def => Shift(yy_state_368)
    NT_interface_def => Shift(yy_state_369)
    T_EOF => Shift(yy_state_370)
    NT_definition => Shift(yy_state_371)
    T_INTERFACE | T_PARTIAL | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_1(_lookahead : YYSymbol) -> YYDecision {
  Accept
}

fn yy_state_2(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_3)
    NT_extended_attribute => Shift(yy_state_120)
    _ => Error
  }
}

fn yy_state_3(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_4)
    T_EQUALS => Shift(yy_state_113)
    T_RBRACKET | T_COMMA => Reduce(1, NT_extended_attribute, yy_action_161)
    _ => Error
  }
}

fn yy_state_4(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_argument_list => Shift(yy_state_5)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
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
  ReduceNoLookahead(4, NT_extended_attribute, yy_action_159)
}

fn yy_state_7(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_type => Shift(yy_state_8)
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    _ => Error
  }
}

fn yy_state_8(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_type_with_extended_attributes, yy_action_158)
}

fn yy_state_9(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_157)
}

fn yy_state_10(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_156)
}

fn yy_state_11(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_155)
}

fn yy_state_12(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_154)
}

fn yy_state_13(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_153)
}

fn yy_state_14(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_152)
}

fn yy_state_15(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_151)
}

fn yy_state_16(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_150)
}

fn yy_state_17(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_149)
}

fn yy_state_18(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_148)
}

fn yy_state_19(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_147)
}

fn yy_state_20(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_146)
}

fn yy_state_21(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_145)
}

fn yy_state_22(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_144)
}

fn yy_state_23(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_buffer_type, yy_action_143)
}

fn yy_state_24(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_142)
}

fn yy_state_25(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_141)
}

fn yy_state_26(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_string_type, yy_action_140)
}

fn yy_state_27(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_139)
}

fn yy_state_28(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_138)
}

fn yy_state_29(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_DOUBLE => Shift(yy_state_30)
    T_FLOAT_KW => Shift(yy_state_31)
    _ => Error
  }
}

fn yy_state_30(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_137)
}

fn yy_state_31(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_136)
}

fn yy_state_32(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_135)
}

fn yy_state_33(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_34)
    T_IDENTIFIER | T_OR | T_LPAREN | T_RPAREN | T_RANGLE | T_COMMA | T_QUESTION | T_ELLIPSIS => Reduce(1, NT_primitive_type, yy_action_134)
    _ => Error
  }
}

fn yy_state_34(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_133)
}

fn yy_state_35(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_36)
    T_SHORT => Shift(yy_state_38)
    _ => Error
  }
}

fn yy_state_36(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LONG => Shift(yy_state_37)
    T_IDENTIFIER | T_OR | T_LPAREN | T_RPAREN | T_RANGLE | T_COMMA | T_QUESTION | T_ELLIPSIS => Reduce(2, NT_primitive_type, yy_action_132)
    _ => Error
  }
}

fn yy_state_37(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_primitive_type, yy_action_131)
}

fn yy_state_38(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_primitive_type, yy_action_130)
}

fn yy_state_39(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_129)
}

fn yy_state_40(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_128)
}

fn yy_state_41(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_127)
}

fn yy_state_42(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_primitive_type, yy_action_126)
}

fn yy_state_43(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_125)
}

fn yy_state_44(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_124)
}

fn yy_state_45(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_123)
}

fn yy_state_46(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_122)
}

fn yy_state_47(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_121)
}

fn yy_state_48(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_49)
    _ => Error
  }
}

fn yy_state_49(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    NT_string_type => Shift(yy_state_50)
    _ => Error
  }
}

fn yy_state_50(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_51)
    _ => Error
  }
}

fn yy_state_51(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    NT_type => Shift(yy_state_52)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    _ => Error
  }
}

fn yy_state_52(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_53)
    _ => Error
  }
}

fn yy_state_53(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_single_type, yy_action_120)
}

fn yy_state_54(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_55)
    _ => Error
  }
}

fn yy_state_55(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    NT_type => Shift(yy_state_56)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    _ => Error
  }
}

fn yy_state_56(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_57)
    _ => Error
  }
}

fn yy_state_57(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_single_type, yy_action_119)
}

fn yy_state_58(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_59)
    _ => Error
  }
}

fn yy_state_59(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    NT_type => Shift(yy_state_60)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
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
  ReduceNoLookahead(4, NT_single_type, yy_action_118)
}

fn yy_state_62(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_63)
    _ => Error
  }
}

fn yy_state_63(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    NT_type => Shift(yy_state_64)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
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
  ReduceNoLookahead(4, NT_single_type, yy_action_117)
}

fn yy_state_66(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_67)
    _ => Error
  }
}

fn yy_state_67(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    NT_type => Shift(yy_state_68)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    _ => Error
  }
}

fn yy_state_68(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_69)
    _ => Error
  }
}

fn yy_state_69(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_single_type, yy_action_116)
}

fn yy_state_70(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_115)
}

fn yy_state_71(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_114)
}

fn yy_state_72(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_113)
}

fn yy_state_73(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_single_type, yy_action_112)
}

fn yy_state_74(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    NT_single_type => Shift(yy_state_75)
    _ => Error
  }
}

fn yy_state_75(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_OR => Shift(yy_state_76)
    _ => Error
  }
}

fn yy_state_76(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    NT_single_type => Shift(yy_state_77)
    _ => Error
  }
}

fn yy_state_77(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_78)
    _ => Error
  }
}

fn yy_state_78(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_79)
    NT_null_modifier => Shift(yy_state_80)
    T_IDENTIFIER | T_LPAREN | T_RANGLE | T_COMMA | T_ELLIPSIS => Reduce(0, NT_null_modifier, yy_action_111)
    _ => Error
  }
}

fn yy_state_79(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_null_modifier, yy_action_110)
}

fn yy_state_80(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_type, yy_action_109)
}

fn yy_state_81(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_QUESTION => Shift(yy_state_79)
    NT_null_modifier => Shift(yy_state_82)
    T_IDENTIFIER | T_LPAREN | T_RANGLE | T_COMMA | T_ELLIPSIS => Reduce(0, NT_null_modifier, yy_action_111)
    _ => Error
  }
}

fn yy_state_82(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_type, yy_action_108)
}

fn yy_state_83(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_84)
    T_ELLIPSIS => Shift(yy_state_85)
    _ => Error
  }
}

fn yy_state_84(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argument, yy_action_107)
}

fn yy_state_85(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_86)
    _ => Error
  }
}

fn yy_state_86(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_argument, yy_action_106)
}

fn yy_state_87(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_88)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_88(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_89)
    _ => Error
  }
}

fn yy_state_89(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    NT_default_value_opt => Shift(yy_state_90)
    T_EQUALS => Shift(yy_state_91)
    T_RPAREN | T_COMMA => Reduce(0, NT_default_value_opt, yy_action_105)
    _ => Error
  }
}

fn yy_state_90(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_argument, yy_action_104)
}

fn yy_state_91(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_UNDEFINED => Shift(yy_state_92)
    T_NULL => Shift(yy_state_93)
    T_LBRACE => Shift(yy_state_94)
    T_LBRACKET => Shift(yy_state_96)
    T_STRING => Shift(yy_state_98)
    NT_const_value => Shift(yy_state_99)
    NT_default_value => Shift(yy_state_100)
    T_NAN => Shift(yy_state_101)
    T_NEG_INFINITY => Shift(yy_state_102)
    T_INFINITY => Shift(yy_state_103)
    T_FLOAT => Shift(yy_state_104)
    T_INTEGER => Shift(yy_state_105)
    T_FALSE => Shift(yy_state_106)
    T_TRUE => Shift(yy_state_107)
    _ => Error
  }
}

fn yy_state_92(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_103)
}

fn yy_state_93(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_102)
}

fn yy_state_94(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_95)
    _ => Error
  }
}

fn yy_state_95(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value, yy_action_101)
}

fn yy_state_96(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_97)
    _ => Error
  }
}

fn yy_state_97(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value, yy_action_100)
}

fn yy_state_98(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_99)
}

fn yy_state_99(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_default_value, yy_action_98)
}

fn yy_state_100(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_default_value_opt, yy_action_97)
}

fn yy_state_101(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_96)
}

fn yy_state_102(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_95)
}

fn yy_state_103(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_94)
}

fn yy_state_104(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_93)
}

fn yy_state_105(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_92)
}

fn yy_state_106(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_91)
}

fn yy_state_107(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_const_value, yy_action_90)
}

fn yy_state_108(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_109)
    NT_arguments => Shift(yy_state_112)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_89)
    _ => Error
  }
}

fn yy_state_109(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_110)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_110(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_109)
    NT_arguments => Shift(yy_state_111)
    T_RPAREN => Reduce(0, NT_arguments, yy_action_89)
    _ => Error
  }
}

fn yy_state_111(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_arguments, yy_action_88)
}

fn yy_state_112(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_argument_list, yy_action_87)
}

fn yy_state_113(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STAR => Shift(yy_state_114)
    T_STRING => Shift(yy_state_115)
    T_IDENTIFIER => Shift(yy_state_116)
    _ => Error
  }
}

fn yy_state_114(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_86)
}

fn yy_state_115(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attribute, yy_action_85)
}

fn yy_state_116(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_117)
    T_RBRACKET | T_COMMA => Reduce(3, NT_extended_attribute, yy_action_84)
    _ => Error
  }
}

fn yy_state_117(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_118)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_118(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_119)
    _ => Error
  }
}

fn yy_state_119(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_extended_attribute, yy_action_83)
}

fn yy_state_120(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_121)
    NT_extended_attributes => Shift(yy_state_124)
    T_RBRACKET => Reduce(0, NT_extended_attributes, yy_action_82)
    _ => Error
  }
}

fn yy_state_121(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_3)
    NT_extended_attribute => Shift(yy_state_122)
    _ => Error
  }
}

fn yy_state_122(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_121)
    NT_extended_attributes => Shift(yy_state_123)
    T_RBRACKET => Reduce(0, NT_extended_attributes, yy_action_82)
    _ => Error
  }
}

fn yy_state_123(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_extended_attributes, yy_action_81)
}

fn yy_state_124(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACKET => Shift(yy_state_125)
    _ => Error
  }
}

fn yy_state_125(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_extended_attribute_list, yy_action_80)
}

fn yy_state_126(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INCLUDES => Shift(yy_state_127)
    _ => Error
  }
}

fn yy_state_127(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_128)
    _ => Error
  }
}

fn yy_state_128(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_129)
    _ => Error
  }
}

fn yy_state_129(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_includes_statement, yy_action_79)
}

fn yy_state_130(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_CALLBACK => Shift(yy_state_131)
    T_TYPEDEF => Shift(yy_state_166)
    T_ENUM => Shift(yy_state_170)
    T_DICTIONARY => Shift(yy_state_181)
    T_NAMESPACE => Shift(yy_state_201)
    T_PARTIAL => Shift(yy_state_222)
    T_INTERFACE => Shift(yy_state_344)
    _ => Error
  }
}

fn yy_state_131(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_INTERFACE => Shift(yy_state_132)
    T_IDENTIFIER => Shift(yy_state_159)
    _ => Error
  }
}

fn yy_state_132(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_133)
    _ => Error
  }
}

fn yy_state_133(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_134)
    _ => Error
  }
}

fn yy_state_134(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_135)
    NT_callback_interface_members => Shift(yy_state_156)
    T_RBRACE => Reduce(0, NT_callback_interface_members, yy_action_78)
    T_IDENTIFIER | T_CONST | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_135(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_136)
    T_CONST => Shift(yy_state_146)
    NT_const_member => Shift(yy_state_152)
    NT_operation_member => Shift(yy_state_153)
    NT_callback_interface_member => Shift(yy_state_154)
    _ => Error
  }
}

fn yy_state_136(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_137)
    T_IDENTIFIER => Shift(yy_state_141)
    _ => Error
  }
}

fn yy_state_137(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_138)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_138(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_139)
    _ => Error
  }
}

fn yy_state_139(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_140)
    _ => Error
  }
}

fn yy_state_140(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_operation_member, yy_action_77)
}

fn yy_state_141(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_142)
    _ => Error
  }
}

fn yy_state_142(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_143)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_143(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_144)
    _ => Error
  }
}

fn yy_state_144(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_145)
    _ => Error
  }
}

fn yy_state_145(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_operation_member, yy_action_76)
}

fn yy_state_146(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_147)
    _ => Error
  }
}

fn yy_state_147(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_148)
    _ => Error
  }
}

fn yy_state_148(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_149)
    _ => Error
  }
}

fn yy_state_149(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_NAN => Shift(yy_state_101)
    T_NEG_INFINITY => Shift(yy_state_102)
    T_INFINITY => Shift(yy_state_103)
    T_FLOAT => Shift(yy_state_104)
    T_INTEGER => Shift(yy_state_105)
    T_FALSE => Shift(yy_state_106)
    T_TRUE => Shift(yy_state_107)
    NT_const_value => Shift(yy_state_150)
    _ => Error
  }
}

fn yy_state_150(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_151)
    _ => Error
  }
}

fn yy_state_151(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_const_member, yy_action_75)
}

fn yy_state_152(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callback_interface_member, yy_action_74)
}

fn yy_state_153(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_callback_interface_member, yy_action_73)
}

fn yy_state_154(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_135)
    NT_callback_interface_members => Shift(yy_state_155)
    T_RBRACE => Reduce(0, NT_callback_interface_members, yy_action_78)
    T_IDENTIFIER | T_CONST | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_155(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_callback_interface_members, yy_action_72)
}

fn yy_state_156(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_157)
    _ => Error
  }
}

fn yy_state_157(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_158)
    _ => Error
  }
}

fn yy_state_158(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_callback_interface_def, yy_action_71)
}

fn yy_state_159(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_160)
    _ => Error
  }
}

fn yy_state_160(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_161)
    _ => Error
  }
}

fn yy_state_161(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_162)
    _ => Error
  }
}

fn yy_state_162(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_163)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_163(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_164)
    _ => Error
  }
}

fn yy_state_164(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_165)
    _ => Error
  }
}

fn yy_state_165(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(9, NT_callback_def, yy_action_70)
}

fn yy_state_166(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_167)
    _ => Error
  }
}

fn yy_state_167(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_168)
    _ => Error
  }
}

fn yy_state_168(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_169)
    _ => Error
  }
}

fn yy_state_169(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_typedef_def, yy_action_69)
}

fn yy_state_170(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_171)
    _ => Error
  }
}

fn yy_state_171(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_172)
    _ => Error
  }
}

fn yy_state_172(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_173)
    NT_enum_value_list => Shift(yy_state_178)
    _ => Error
  }
}

fn yy_state_173(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_174)
    NT_enum_value_list_rest => Shift(yy_state_177)
    T_RBRACE => Reduce(0, NT_enum_value_list_rest, yy_action_68)
    _ => Error
  }
}

fn yy_state_174(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_STRING => Shift(yy_state_175)
    T_RBRACE => Reduce(1, NT_enum_value_list_rest, yy_action_67)
    _ => Error
  }
}

fn yy_state_175(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_174)
    NT_enum_value_list_rest => Shift(yy_state_176)
    T_RBRACE => Reduce(0, NT_enum_value_list_rest, yy_action_68)
    _ => Error
  }
}

fn yy_state_176(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_enum_value_list_rest, yy_action_66)
}

fn yy_state_177(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_enum_value_list, yy_action_65)
}

fn yy_state_178(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_179)
    _ => Error
  }
}

fn yy_state_179(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_180)
    _ => Error
  }
}

fn yy_state_180(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_enum_def, yy_action_64)
}

fn yy_state_181(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_182)
    _ => Error
  }
}

fn yy_state_182(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_183)
    NT_inheritance => Shift(yy_state_185)
    T_LBRACE => Reduce(0, NT_inheritance, yy_action_63)
    _ => Error
  }
}

fn yy_state_183(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_184)
    _ => Error
  }
}

fn yy_state_184(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_inheritance, yy_action_62)
}

fn yy_state_185(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_186)
    _ => Error
  }
}

fn yy_state_186(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_187)
    NT_dictionary_members => Shift(yy_state_198)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_61)
    T_IDENTIFIER | T_REQUIRED | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_187(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_188)
    T_REQUIRED => Shift(yy_state_192)
    NT_dictionary_member => Shift(yy_state_196)
    _ => Error
  }
}

fn yy_state_188(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_189)
    _ => Error
  }
}

fn yy_state_189(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_EQUALS => Shift(yy_state_91)
    NT_default_value_opt => Shift(yy_state_190)
    T_SEMICOLON => Reduce(0, NT_default_value_opt, yy_action_105)
    _ => Error
  }
}

fn yy_state_190(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_191)
    _ => Error
  }
}

fn yy_state_191(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionary_member, yy_action_60)
}

fn yy_state_192(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_193)
    _ => Error
  }
}

fn yy_state_193(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_194)
    _ => Error
  }
}

fn yy_state_194(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_195)
    _ => Error
  }
}

fn yy_state_195(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_dictionary_member, yy_action_59)
}

fn yy_state_196(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_187)
    NT_dictionary_members => Shift(yy_state_197)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_61)
    T_IDENTIFIER | T_REQUIRED | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_197(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_dictionary_members, yy_action_58)
}

fn yy_state_198(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_199)
    _ => Error
  }
}

fn yy_state_199(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_200)
    _ => Error
  }
}

fn yy_state_200(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_dictionary_def, yy_action_57)
}

fn yy_state_201(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_202)
    _ => Error
  }
}

fn yy_state_202(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_203)
    _ => Error
  }
}

fn yy_state_203(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_204)
    NT_namespace_members => Shift(yy_state_219)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_56)
    T_IDENTIFIER | T_CONST | T_READONLY | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_204(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    T_CONST => Shift(yy_state_146)
    NT_const_member => Shift(yy_state_205)
    NT_type => Shift(yy_state_206)
    T_READONLY => Shift(yy_state_212)
    NT_namespace_member => Shift(yy_state_217)
    _ => Error
  }
}

fn yy_state_205(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_namespace_member, yy_action_55)
}

fn yy_state_206(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_207)
    _ => Error
  }
}

fn yy_state_207(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_208)
    _ => Error
  }
}

fn yy_state_208(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_209)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_209(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_210)
    _ => Error
  }
}

fn yy_state_210(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_211)
    _ => Error
  }
}

fn yy_state_211(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_namespace_member, yy_action_54)
}

fn yy_state_212(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_213)
    _ => Error
  }
}

fn yy_state_213(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_214)
    _ => Error
  }
}

fn yy_state_214(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_215)
    _ => Error
  }
}

fn yy_state_215(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_216)
    _ => Error
  }
}

fn yy_state_216(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_namespace_member, yy_action_53)
}

fn yy_state_217(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_204)
    NT_namespace_members => Shift(yy_state_218)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_56)
    T_IDENTIFIER | T_CONST | T_READONLY | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_218(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_namespace_members, yy_action_52)
}

fn yy_state_219(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_220)
    _ => Error
  }
}

fn yy_state_220(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_221)
    _ => Error
  }
}

fn yy_state_221(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_namespace_def, yy_action_51)
}

fn yy_state_222(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_DICTIONARY => Shift(yy_state_223)
    T_NAMESPACE => Shift(yy_state_229)
    T_INTERFACE => Shift(yy_state_235)
    _ => Error
  }
}

fn yy_state_223(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_224)
    _ => Error
  }
}

fn yy_state_224(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_225)
    _ => Error
  }
}

fn yy_state_225(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_187)
    NT_dictionary_members => Shift(yy_state_226)
    T_RBRACE => Reduce(0, NT_dictionary_members, yy_action_61)
    T_IDENTIFIER | T_REQUIRED | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_226(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_227)
    _ => Error
  }
}

fn yy_state_227(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_228)
    _ => Error
  }
}

fn yy_state_228(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_partial_dictionary_def, yy_action_50)
}

fn yy_state_229(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_230)
    _ => Error
  }
}

fn yy_state_230(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_231)
    _ => Error
  }
}

fn yy_state_231(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_204)
    NT_namespace_members => Shift(yy_state_232)
    T_RBRACE => Reduce(0, NT_namespace_members, yy_action_56)
    T_IDENTIFIER | T_CONST | T_READONLY | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
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
  ReduceNoLookahead(8, NT_partial_namespace_def, yy_action_49)
}

fn yy_state_235(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_236)
    T_IDENTIFIER => Shift(yy_state_339)
    _ => Error
  }
}

fn yy_state_236(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_237)
    _ => Error
  }
}

fn yy_state_237(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_238)
    _ => Error
  }
}

fn yy_state_238(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_239)
    NT_interface_members => Shift(yy_state_336)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_48)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_MAPLIKE | T_SETLIKE | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_239(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_136)
    T_CONST => Shift(yy_state_146)
    T_SETLIKE => Shift(yy_state_240)
    T_MAPLIKE => Shift(yy_state_245)
    T_ITERABLE => Shift(yy_state_252)
    T_CONSTRUCTOR => Shift(yy_state_261)
    T_DELETER => Shift(yy_state_266)
    T_SETTER => Shift(yy_state_267)
    T_GETTER => Shift(yy_state_268)
    NT_operation_member => Shift(yy_state_269)
    NT_special => Shift(yy_state_270)
    T_ATTRIBUTE => Shift(yy_state_281)
    T_INHERIT => Shift(yy_state_285)
    NT_setlike_member => Shift(yy_state_295)
    NT_maplike_member => Shift(yy_state_296)
    T_READONLY => Shift(yy_state_297)
    T_ASYNC_ITERABLE => Shift(yy_state_304)
    NT_iterable_member => Shift(yy_state_313)
    T_STATIC => Shift(yy_state_314)
    T_STRINGIFIER => Shift(yy_state_330)
    NT_constructor_member => Shift(yy_state_332)
    NT_const_member => Shift(yy_state_333)
    NT_interface_member => Shift(yy_state_334)
    _ => Error
  }
}

fn yy_state_240(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_241)
    _ => Error
  }
}

fn yy_state_241(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_242)
    _ => Error
  }
}

fn yy_state_242(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_243)
    _ => Error
  }
}

fn yy_state_243(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_244)
    _ => Error
  }
}

fn yy_state_244(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_setlike_member, yy_action_47)
}

fn yy_state_245(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_246)
    _ => Error
  }
}

fn yy_state_246(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_247)
    _ => Error
  }
}

fn yy_state_247(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_248)
    _ => Error
  }
}

fn yy_state_248(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_249)
    _ => Error
  }
}

fn yy_state_249(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_250)
    _ => Error
  }
}

fn yy_state_250(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_251)
    _ => Error
  }
}

fn yy_state_251(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_maplike_member, yy_action_46)
}

fn yy_state_252(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_253)
    _ => Error
  }
}

fn yy_state_253(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_254)
    _ => Error
  }
}

fn yy_state_254(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_255)
    T_RANGLE => Shift(yy_state_259)
    _ => Error
  }
}

fn yy_state_255(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_256)
    _ => Error
  }
}

fn yy_state_256(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_257)
    _ => Error
  }
}

fn yy_state_257(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_258)
    _ => Error
  }
}

fn yy_state_258(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_iterable_member, yy_action_45)
}

fn yy_state_259(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_260)
    _ => Error
  }
}

fn yy_state_260(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_iterable_member, yy_action_44)
}

fn yy_state_261(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_262)
    _ => Error
  }
}

fn yy_state_262(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_263)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_263(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_264)
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
  ReduceNoLookahead(5, NT_constructor_member, yy_action_43)
}

fn yy_state_266(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_42)
}

fn yy_state_267(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_41)
}

fn yy_state_268(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_special, yy_action_40)
}

fn yy_state_269(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_39)
}

fn yy_state_270(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_271)
    _ => Error
  }
}

fn yy_state_271(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_272)
    T_IDENTIFIER => Shift(yy_state_276)
    _ => Error
  }
}

fn yy_state_272(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_273)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_273(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_274)
    _ => Error
  }
}

fn yy_state_274(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_275)
    _ => Error
  }
}

fn yy_state_275(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_38)
}

fn yy_state_276(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_277)
    _ => Error
  }
}

fn yy_state_277(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_278)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_278(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_279)
    _ => Error
  }
}

fn yy_state_279(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_280)
    _ => Error
  }
}

fn yy_state_280(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_member, yy_action_37)
}

fn yy_state_281(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_282)
    _ => Error
  }
}

fn yy_state_282(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_283)
    _ => Error
  }
}

fn yy_state_283(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_284)
    _ => Error
  }
}

fn yy_state_284(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(4, NT_interface_member, yy_action_36)
}

fn yy_state_285(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_286)
    T_READONLY => Shift(yy_state_290)
    _ => Error
  }
}

fn yy_state_286(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_287)
    _ => Error
  }
}

fn yy_state_287(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_288)
    _ => Error
  }
}

fn yy_state_288(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_289)
    _ => Error
  }
}

fn yy_state_289(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_35)
}

fn yy_state_290(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_291)
    _ => Error
  }
}

fn yy_state_291(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_292)
    _ => Error
  }
}

fn yy_state_292(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_293)
    _ => Error
  }
}

fn yy_state_293(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_294)
    _ => Error
  }
}

fn yy_state_294(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_34)
}

fn yy_state_295(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_33)
}

fn yy_state_296(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_32)
}

fn yy_state_297(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SETLIKE => Shift(yy_state_240)
    T_MAPLIKE => Shift(yy_state_245)
    T_ATTRIBUTE => Shift(yy_state_298)
    NT_setlike_member => Shift(yy_state_302)
    NT_maplike_member => Shift(yy_state_303)
    _ => Error
  }
}

fn yy_state_298(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_299)
    _ => Error
  }
}

fn yy_state_299(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_300)
    _ => Error
  }
}

fn yy_state_300(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_301)
    _ => Error
  }
}

fn yy_state_301(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_31)
}

fn yy_state_302(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_30)
}

fn yy_state_303(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_29)
}

fn yy_state_304(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LANGLE => Shift(yy_state_305)
    _ => Error
  }
}

fn yy_state_305(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_306)
    _ => Error
  }
}

fn yy_state_306(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COMMA => Shift(yy_state_307)
    T_RANGLE => Shift(yy_state_311)
    _ => Error
  }
}

fn yy_state_307(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_308)
    _ => Error
  }
}

fn yy_state_308(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RANGLE => Shift(yy_state_309)
    _ => Error
  }
}

fn yy_state_309(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_310)
    _ => Error
  }
}

fn yy_state_310(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_member, yy_action_28)
}

fn yy_state_311(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_312)
    _ => Error
  }
}

fn yy_state_312(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_27)
}

fn yy_state_313(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_26)
}

fn yy_state_314(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_315)
    T_ATTRIBUTE => Shift(yy_state_321)
    T_READONLY => Shift(yy_state_325)
    _ => Error
  }
}

fn yy_state_315(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_316)
    _ => Error
  }
}

fn yy_state_316(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LPAREN => Shift(yy_state_317)
    _ => Error
  }
}

fn yy_state_317(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_7)
    NT_type_with_extended_attributes => Shift(yy_state_83)
    T_OPTIONAL => Shift(yy_state_87)
    NT_argument => Shift(yy_state_108)
    NT_argument_list => Shift(yy_state_318)
    T_RPAREN => Reduce(0, NT_argument_list, yy_action_160)
    T_IDENTIFIER | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_318(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RPAREN => Shift(yy_state_319)
    _ => Error
  }
}

fn yy_state_319(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_320)
    _ => Error
  }
}

fn yy_state_320(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(7, NT_interface_member, yy_action_25)
}

fn yy_state_321(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_322)
    _ => Error
  }
}

fn yy_state_322(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_323)
    _ => Error
  }
}

fn yy_state_323(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_324)
    _ => Error
  }
}

fn yy_state_324(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(5, NT_interface_member, yy_action_24)
}

fn yy_state_325(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_ATTRIBUTE => Shift(yy_state_326)
    _ => Error
  }
}

fn yy_state_326(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_FLOAT64ARRAY => Shift(yy_state_9)
    T_FLOAT32ARRAY => Shift(yy_state_10)
    T_FLOAT16ARRAY => Shift(yy_state_11)
    T_BIGUINT64ARRAY => Shift(yy_state_12)
    T_BIGINT64ARRAY => Shift(yy_state_13)
    T_UINT8CLAMPEDARRAY => Shift(yy_state_14)
    T_UINT32ARRAY => Shift(yy_state_15)
    T_UINT16ARRAY => Shift(yy_state_16)
    T_UINT8ARRAY => Shift(yy_state_17)
    T_INT32ARRAY => Shift(yy_state_18)
    T_INT16ARRAY => Shift(yy_state_19)
    T_INT8ARRAY => Shift(yy_state_20)
    T_DATAVIEW => Shift(yy_state_21)
    T_SHAREDARRAYBUFFER => Shift(yy_state_22)
    T_ARRAYBUFFER => Shift(yy_state_23)
    T_USVSTRING => Shift(yy_state_24)
    T_BYTESTRING => Shift(yy_state_25)
    T_DOMSTRING => Shift(yy_state_26)
    T_BIGINT => Shift(yy_state_27)
    T_DOUBLE => Shift(yy_state_28)
    T_UNRESTRICTED => Shift(yy_state_29)
    T_FLOAT_KW => Shift(yy_state_32)
    T_LONG => Shift(yy_state_33)
    T_UNSIGNED => Shift(yy_state_35)
    T_SHORT => Shift(yy_state_39)
    T_OCTET => Shift(yy_state_40)
    T_BYTE => Shift(yy_state_41)
    T_BOOLEAN => Shift(yy_state_42)
    T_VOID => Shift(yy_state_43)
    T_UNDEFINED => Shift(yy_state_44)
    T_SYMBOL => Shift(yy_state_45)
    T_OBJECT => Shift(yy_state_46)
    T_ANY => Shift(yy_state_47)
    T_RECORD => Shift(yy_state_48)
    T_OBSERVABLEARRAY => Shift(yy_state_54)
    T_FROZENARRAY => Shift(yy_state_58)
    T_PROMISE => Shift(yy_state_62)
    T_SEQUENCE => Shift(yy_state_66)
    T_IDENTIFIER => Shift(yy_state_70)
    NT_buffer_type => Shift(yy_state_71)
    NT_string_type => Shift(yy_state_72)
    NT_primitive_type => Shift(yy_state_73)
    T_LPAREN => Shift(yy_state_74)
    NT_single_type => Shift(yy_state_81)
    NT_type => Shift(yy_state_327)
    _ => Error
  }
}

fn yy_state_327(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_328)
    _ => Error
  }
}

fn yy_state_328(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_329)
    _ => Error
  }
}

fn yy_state_329(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(6, NT_interface_member, yy_action_23)
}

fn yy_state_330(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_331)
    _ => Error
  }
}

fn yy_state_331(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_interface_member, yy_action_22)
}

fn yy_state_332(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_21)
}

fn yy_state_333(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_interface_member, yy_action_20)
}

fn yy_state_334(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_239)
    NT_interface_members => Shift(yy_state_335)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_48)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_MAPLIKE | T_SETLIKE | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_335(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(3, NT_interface_members, yy_action_19)
}

fn yy_state_336(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_337)
    _ => Error
  }
}

fn yy_state_337(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_338)
    _ => Error
  }
}

fn yy_state_338(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(9, NT_partial_mixin_def, yy_action_18)
}

fn yy_state_339(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_340)
    _ => Error
  }
}

fn yy_state_340(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_239)
    NT_interface_members => Shift(yy_state_341)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_48)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_MAPLIKE | T_SETLIKE | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_341(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_342)
    _ => Error
  }
}

fn yy_state_342(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_343)
    _ => Error
  }
}

fn yy_state_343(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_partial_interface_def, yy_action_17)
}

fn yy_state_344(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_MIXIN => Shift(yy_state_345)
    T_IDENTIFIER => Shift(yy_state_351)
    _ => Error
  }
}

fn yy_state_345(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_IDENTIFIER => Shift(yy_state_346)
    _ => Error
  }
}

fn yy_state_346(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_347)
    _ => Error
  }
}

fn yy_state_347(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_239)
    NT_interface_members => Shift(yy_state_348)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_48)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_MAPLIKE | T_SETLIKE | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_348(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_349)
    _ => Error
  }
}

fn yy_state_349(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_350)
    _ => Error
  }
}

fn yy_state_350(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_mixin_def, yy_action_16)
}

fn yy_state_351(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_COLON => Shift(yy_state_183)
    NT_inheritance => Shift(yy_state_352)
    T_LBRACE => Reduce(0, NT_inheritance, yy_action_63)
    _ => Error
  }
}

fn yy_state_352(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACE => Shift(yy_state_353)
    _ => Error
  }
}

fn yy_state_353(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    NT_extended_attribute_list => Shift(yy_state_239)
    NT_interface_members => Shift(yy_state_354)
    T_RBRACE => Reduce(0, NT_interface_members, yy_action_48)
    T_IDENTIFIER | T_ATTRIBUTE | T_CONST | T_READONLY | T_INHERIT | T_STATIC | T_STRINGIFIER | T_GETTER | T_SETTER | T_DELETER | T_CONSTRUCTOR | T_ITERABLE | T_ASYNC_ITERABLE | T_MAPLIKE | T_SETLIKE | T_VOID | T_UNDEFINED | T_BOOLEAN | T_BYTE | T_OCTET | T_SHORT | T_LONG | T_UNSIGNED | T_FLOAT_KW | T_DOUBLE | T_UNRESTRICTED | T_BIGINT | T_DOMSTRING | T_BYTESTRING | T_USVSTRING | T_ANY | T_OBJECT | T_SYMBOL | T_SEQUENCE | T_PROMISE | T_FROZENARRAY | T_OBSERVABLEARRAY | T_RECORD | T_ARRAYBUFFER | T_SHAREDARRAYBUFFER | T_DATAVIEW | T_INT8ARRAY | T_INT16ARRAY | T_INT32ARRAY | T_UINT8ARRAY | T_UINT16ARRAY | T_UINT32ARRAY | T_UINT8CLAMPEDARRAY | T_BIGINT64ARRAY | T_BIGUINT64ARRAY | T_FLOAT16ARRAY | T_FLOAT32ARRAY | T_FLOAT64ARRAY | T_LPAREN => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_354(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_RBRACE => Shift(yy_state_355)
    _ => Error
  }
}

fn yy_state_355(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_SEMICOLON => Shift(yy_state_356)
    _ => Error
  }
}

fn yy_state_356(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(8, NT_interface_def, yy_action_15)
}

fn yy_state_357(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_14)
}

fn yy_state_358(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_13)
}

fn yy_state_359(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_12)
}

fn yy_state_360(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_11)
}

fn yy_state_361(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_10)
}

fn yy_state_362(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_9)
}

fn yy_state_363(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_8)
}

fn yy_state_364(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_7)
}

fn yy_state_365(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_6)
}

fn yy_state_366(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_5)
}

fn yy_state_367(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_4)
}

fn yy_state_368(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_3)
}

fn yy_state_369(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definition, yy_action_2)
}

fn yy_state_370(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(1, NT_definitions, yy_action_1)
}

fn yy_state_371(_lookahead : YYSymbol) -> YYDecision {
  match _lookahead {
    T_LBRACKET => Shift(yy_state_2)
    T_IDENTIFIER => Shift(yy_state_126)
    NT_extended_attribute_list => Shift(yy_state_130)
    NT_includes_statement => Shift(yy_state_357)
    NT_callback_interface_def => Shift(yy_state_358)
    NT_callback_def => Shift(yy_state_359)
    NT_typedef_def => Shift(yy_state_360)
    NT_enum_def => Shift(yy_state_361)
    NT_partial_dictionary_def => Shift(yy_state_362)
    NT_dictionary_def => Shift(yy_state_363)
    NT_partial_namespace_def => Shift(yy_state_364)
    NT_namespace_def => Shift(yy_state_365)
    NT_partial_mixin_def => Shift(yy_state_366)
    NT_partial_interface_def => Shift(yy_state_367)
    NT_mixin_def => Shift(yy_state_368)
    NT_interface_def => Shift(yy_state_369)
    T_EOF => Shift(yy_state_370)
    NT_definition => Shift(yy_state_371)
    NT_definitions => Shift(yy_state_372)
    T_INTERFACE | T_PARTIAL | T_DICTIONARY | T_ENUM | T_TYPEDEF | T_CALLBACK | T_NAMESPACE => Reduce(0, NT_extended_attribute_list, yy_action_162)
    _ => Error
  }
}

fn yy_state_372(_lookahead : YYSymbol) -> YYDecision {
  ReduceNoLookahead(2, NT_definitions, yy_action_0)
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
  for term in ([(T_EOF, TK_EOF), (T_INTEGER, TK_INTEGER), (T_FLOAT, TK_FLOAT), (T_STRING, TK_STRING), (T_IDENTIFIER, TK_IDENTIFIER), (T_INTERFACE, TK_INTERFACE), (T_PARTIAL, TK_PARTIAL), (T_MIXIN, TK_MIXIN), (T_DICTIONARY, TK_DICTIONARY), (T_ENUM, TK_ENUM), (T_TYPEDEF, TK_TYPEDEF), (T_CALLBACK, TK_CALLBACK), (T_NAMESPACE, TK_NAMESPACE), (T_INCLUDES, TK_INCLUDES), (T_ATTRIBUTE, TK_ATTRIBUTE), (T_CONST, TK_CONST), (T_READONLY, TK_READONLY), (T_INHERIT, TK_INHERIT), (T_STATIC, TK_STATIC), (T_STRINGIFIER, TK_STRINGIFIER), (T_GETTER, TK_GETTER), (T_SETTER, TK_SETTER), (T_DELETER, TK_DELETER), (T_CONSTRUCTOR, TK_CONSTRUCTOR), (T_ITERABLE, TK_ITERABLE), (T_ASYNC_ITERABLE, TK_ASYNC_ITERABLE), (T_ASYNC_SEQUENCE, TK_ASYNC_SEQUENCE), (T_MAPLIKE, TK_MAPLIKE), (T_SETLIKE, TK_SETLIKE), (T_REQUIRED, TK_REQUIRED), (T_OPTIONAL, TK_OPTIONAL), (T_VOID, TK_VOID), (T_UNDEFINED, TK_UNDEFINED), (T_BOOLEAN, TK_BOOLEAN), (T_BYTE, TK_BYTE), (T_OCTET, TK_OCTET), (T_SHORT, TK_SHORT), (T_LONG, TK_LONG), (T_UNSIGNED, TK_UNSIGNED), (T_FLOAT_KW, TK_FLOAT_KW), (T_DOUBLE, TK_DOUBLE), (T_UNRESTRICTED, TK_UNRESTRICTED), (T_BIGINT, TK_BIGINT), (T_DOMSTRING, TK_DOMSTRING), (T_BYTESTRING, TK_BYTESTRING), (T_USVSTRING, TK_USVSTRING), (T_ANY, TK_ANY), (T_OBJECT, TK_OBJECT), (T_SYMBOL, TK_SYMBOL), (T_SEQUENCE, TK_SEQUENCE), (T_PROMISE, TK_PROMISE), (T_FROZENARRAY, TK_FROZENARRAY), (T_OBSERVABLEARRAY, TK_OBSERVABLEARRAY), (T_RECORD, TK_RECORD), (T_OR, TK_OR), (T_ARRAYBUFFER, TK_ARRAYBUFFER), (T_SHAREDARRAYBUFFER, TK_SHAREDARRAYBUFFER), (T_DATAVIEW, TK_DATAVIEW), (T_INT8ARRAY, TK_INT8ARRAY), (T_INT16ARRAY, TK_INT16ARRAY), (T_INT32ARRAY, TK_INT32ARRAY), (T_UINT8ARRAY, TK_UINT8ARRAY), (T_UINT16ARRAY, TK_UINT16ARRAY), (T_UINT32ARRAY, TK_UINT32ARRAY), (T_UINT8CLAMPEDARRAY, TK_UINT8CLAMPEDARRAY), (T_BIGINT64ARRAY, TK_BIGINT64ARRAY), (T_BIGUINT64ARRAY, TK_BIGUINT64ARRAY), (T_FLOAT16ARRAY, TK_FLOAT16ARRAY), (T_FLOAT32ARRAY, TK_FLOAT32ARRAY), (T_FLOAT64ARRAY, TK_FLOAT64ARRAY), (T_TRUE, TK_TRUE), (T_FALSE, TK_FALSE), (T_NULL, TK_NULL), (T_INFINITY, TK_INFINITY), (T_NEG_INFINITY, TK_NEG_INFINITY), (T_NAN, TK_NAN), (T_LBRACE, TK_LBRACE), (T_RBRACE, TK_RBRACE), (T_LPAREN, TK_LPAREN), (T_RPAREN, TK_RPAREN), (T_LBRACKET, TK_LBRACKET), (T_RBRACKET, TK_RBRACKET), (T_LANGLE, TK_LANGLE), (T_RANGLE, TK_RANGLE), (T_COMMA, TK_COMMA), (T_SEMICOLON, TK_SEMICOLON), (T_COLON, TK_COLON), (T_EQUALS, TK_EQUALS), (T_QUESTION, TK_QUESTION), (T_ELLIPSIS, TK_ELLIPSIS), (T_STAR, TK_STAR)] : Array[(YYSymbol, TokenKind)]) {
    try_add(term.0, term.1)
  }
  match token {
    None => raise UnexpectedEndOfInput(loc.1, expected)
    Some(token) => raise UnexpectedToken(token, loc, expected)
  }
}

pub fn definitions(tokens : Array[(Token, Position, Position)], initial_pos? : Position) -> Array[Definition] raise ParseError {
  yy_parse(
    tokens,
    yy_state_0,
    (it) => {
      guard it is YYObj_Array_Definition_(result)
      result
    },
    initial_pos?,
  )
}


// Helper functions

fn add_interface_member_ext_attrs(m : InterfaceMember, attrs : Array[ExtendedAttribute]) -> InterfaceMember {
  match m {
    InterfaceMember::Const(c) => InterfaceMember::Const({ ..c, extended_attributes: attrs })
    InterfaceMember::Attribute(a) => InterfaceMember::Attribute({ ..a, extended_attributes: attrs })
    InterfaceMember::Operation(o) => InterfaceMember::Operation({ ..o, extended_attributes: attrs })
    InterfaceMember::Constructor(c) => InterfaceMember::Constructor({ ..c, extended_attributes: attrs })
    InterfaceMember::Iterable(i) => InterfaceMember::Iterable({ ..i, extended_attributes: attrs })
    InterfaceMember::AsyncIterable(a) => InterfaceMember::AsyncIterable({ ..a, extended_attributes: attrs })
    InterfaceMember::Maplike(ml) => InterfaceMember::Maplike({ ..ml, extended_attributes: attrs })
    InterfaceMember::Setlike(s) => InterfaceMember::Setlike({ ..s, extended_attributes: attrs })
    InterfaceMember::Stringifier(s) => InterfaceMember::Stringifier(s)
  }
}

fn add_callback_interface_member_ext_attrs(m : CallbackInterfaceMember, attrs : Array[ExtendedAttribute]) -> CallbackInterfaceMember {
  match m {
    CallbackInterfaceMember::Operation(o) => CallbackInterfaceMember::Operation({ ..o, extended_attributes: attrs })
    CallbackInterfaceMember::Const(c) => CallbackInterfaceMember::Const({ ..c, extended_attributes: attrs })
  }
}

fn add_namespace_member_ext_attrs(m : NamespaceMember, attrs : Array[ExtendedAttribute]) -> NamespaceMember {
  match m {
    NamespaceMember::Attribute(a) => NamespaceMember::Attribute({ ..a, extended_attributes: attrs })
    NamespaceMember::Operation(o) => NamespaceMember::Operation({ ..o, extended_attributes: attrs })
    NamespaceMember::Const(c) => NamespaceMember::Const({ ..c, extended_attributes: attrs })
  }
}

fn type_to_string_type(t : Type) -> StringType {
  match t {
    Type::DOMString => StringType::DOMString
    Type::ByteString => StringType::ByteString
    Type::USVString => StringType::USVString
    _ => StringType::DOMString
  }
}

