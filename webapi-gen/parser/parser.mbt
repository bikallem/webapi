///|
/// Hand-written recursive descent parser for WebIDL
/// Replaces the yacc-generated LALR parser

///|
pub suberror ParseError {
  UnexpectedToken(Token, (Position, Position), Array[TokenKind])
  UnexpectedEndOfInput(Position, Array[TokenKind])
} derive(Debug)

///|
priv struct Parser {
  tokens : Array[(Token, Position, Position)]
  mut pos : Int
}

///|
fn Parser::new(tokens : Array[(Token, Position, Position)]) -> Parser {
  { tokens, pos: 0 }
}

///|
fn Parser::peek(self : Parser, offset? : Int = 0) -> Token {
  if self.pos + offset < self.tokens.length() {
    self.tokens[self.pos + offset].0
  } else {
    EOF
  }
}

///|
fn Parser::peek_kind(self : Parser, offset? : Int) -> TokenKind {
  self.peek(offset?).kind()
}

///|
fn Parser::peek2_kind(self : Parser) -> TokenKind {
  self.peek_kind(offset=1)
}

///|
fn Parser::peek3_kind(self : Parser) -> TokenKind {
  self.peek_kind(offset=2)
}

///|
fn Parser::advance(self : Parser) -> Token {
  let tok = self.peek()
  if self.pos < self.tokens.length() {
    self.pos += 1
  }
  tok
}

///|
fn Parser::current_pos(self : Parser) -> Position {
  if self.pos < self.tokens.length() {
    self.tokens[self.pos].1
  } else if self.tokens.length() > 0 {
    self.tokens[self.tokens.length() - 1].2
  } else {
    { file: "", line: 1, column: 1 }
  }
}

///|
fn Parser::expect(self : Parser, kind : TokenKind) -> Token raise ParseError {
  let tok = self.peek()
  match tok.kind() {
    k if k == kind => self.advance()
    TK_EOF => raise UnexpectedEndOfInput(self.current_pos(), [kind])
    _ => {
      let (_tok, pos1, pos2) = self.tokens[self.pos]
      raise UnexpectedToken(tok, (pos1, pos2), [kind])
    }
  }
}

///|
fn Parser::skip(self : Parser, kind : TokenKind) -> Unit raise ParseError {
  let _ = self.expect(kind)
}

///|
fn Parser::skip_next(self : Parser) -> Unit {
  let _ = self.advance()
}

///|
fn Parser::eat(self : Parser, kind : TokenKind) -> Bool {
  if self.peek_kind() == kind {
    self.pos += 1
    true
  } else {
    false
  }
}

///|
fn Parser::expect_identifier(self : Parser) -> String raise ParseError {
  match self.expect(TK_IDENTIFIER) {
    IDENTIFIER(s) => s
    _ => abort("unreachable: expect returned non-identifier")
  }
}

///|
fn Parser::expect_string(self : Parser) -> String raise ParseError {
  match self.expect(TK_STRING) {
    STRING(s) => s
    _ => abort("unreachable: expect returned non-string")
  }
}

///|
fn Parser::expect_integer(self : Parser) -> String raise ParseError {
  match self.expect(TK_INTEGER) {
    INTEGER(s) => s
    _ => abort("unreachable: expect returned non-integer")
  }
}

// ============================================================================
// Top-level: definitions
// ============================================================================

///|
pub fn definitions(
  tokens : Array[(Token, Position, Position)],
  initial_pos? : Position,
) -> Array[DefinitionExtendedAttributes] raise ParseError {
  ignore(initial_pos)
  let parser = Parser::new(tokens)
  parser.parse_definitions()
}

///|
fn Parser::parse_definitions(
  self : Parser,
) -> Array[DefinitionExtendedAttributes] raise ParseError {
  let defs : Array[DefinitionExtendedAttributes] = []
  while self.peek_kind() != TK_EOF {
    let extended_attributes = self.parse_extended_attribute_list()
    let definition = self.parse_definition()
    defs.push({ extended_attributes, definition, spec: None })
  }
  defs
}

// ============================================================================
// Definition
// ============================================================================

///|
fn Parser::parse_definition(self : Parser) -> Definition raise ParseError {
  match self.peek_kind() {
    TK_INTERFACE =>
      // Could be: interface Foo {...}; or interface mixin Foo {...};
      if self.peek2_kind() == TK_MIXIN {
        Definition::Mixin(self.parse_mixin_def())
      } else {
        Definition::Interface(self.parse_interface_def())
      }
    TK_PARTIAL => {
      // partial interface, partial interface mixin, partial dictionary, partial namespace
      let next = self.peek2_kind()
      if next == TK_INTERFACE {
        if self.peek3_kind() == TK_MIXIN {
          Definition::PartialMixin(self.parse_partial_mixin_def())
        } else {
          Definition::PartialInterface(self.parse_partial_interface_def())
        }
      } else if next == TK_DICTIONARY {
        Definition::PartialDictionary(self.parse_partial_dictionary_def())
      } else if next == TK_NAMESPACE {
        Definition::PartialNamespace(self.parse_partial_namespace_def())
      } else {
        raise UnexpectedToken(
          self.tokens[self.pos + 1].0,
          (self.tokens[self.pos + 1].1, self.tokens[self.pos + 1].2),
          [TK_INTERFACE, TK_DICTIONARY, TK_NAMESPACE],
        )
      }
    }
    TK_DICTIONARY => Definition::Dictionary(self.parse_dictionary_def())
    TK_ENUM => Definition::Enum(self.parse_enum_def())
    TK_TYPEDEF => Definition::Typedef(self.parse_typedef_def())
    TK_CALLBACK =>
      // callback interface or callback function
      if self.peek2_kind() == TK_INTERFACE {
        Definition::CallbackInterface(self.parse_callback_interface_def())
      } else {
        Definition::CallbackFunction(self.parse_callback_def())
      }
    TK_NAMESPACE => Definition::Namespace(self.parse_namespace_def())
    TK_IDENTIFIER =>
      // includes statement: Identifier "includes" Identifier ";"
      Definition::Includes(self.parse_includes_statement())
    _ =>
      raise UnexpectedToken(
        self.peek(),
        (self.tokens[self.pos].1, self.tokens[self.pos].2),
        [
          TK_INTERFACE,
          TK_PARTIAL,
          TK_DICTIONARY,
          TK_ENUM,
          TK_TYPEDEF,
          TK_CALLBACK,
          TK_NAMESPACE,
          TK_IDENTIFIER,
        ],
      )
  }
}

// ============================================================================
// Interface definitions
// ============================================================================

///|
fn Parser::parse_interface_def(
  self : Parser,
) -> InterfaceDefinition raise ParseError {
  self.skip(TK_INTERFACE)
  let name = self.expect_identifier()
  let inheritance = self.parse_inheritance()
  self.skip(TK_LBRACE)
  let members = self.parse_interface_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, inheritance, members }
}

///|
fn Parser::parse_partial_interface_def(
  self : Parser,
) -> PartialInterfaceDefinition raise ParseError {
  self.skip(TK_PARTIAL)
  self.skip(TK_INTERFACE)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_interface_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_mixin_def(self : Parser) -> MixinDefinition raise ParseError {
  self.skip(TK_INTERFACE)
  self.skip(TK_MIXIN)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_interface_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_partial_mixin_def(
  self : Parser,
) -> PartialMixinDefinition raise ParseError {
  self.skip(TK_PARTIAL)
  self.skip(TK_INTERFACE)
  self.skip(TK_MIXIN)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_interface_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_namespace_def(
  self : Parser,
) -> NamespaceDefinition raise ParseError {
  self.skip(TK_NAMESPACE)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_namespace_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_partial_namespace_def(
  self : Parser,
) -> PartialNamespaceDefinition raise ParseError {
  self.skip(TK_PARTIAL)
  self.skip(TK_NAMESPACE)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_namespace_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_dictionary_def(
  self : Parser,
) -> DictionaryDefinition raise ParseError {
  self.skip(TK_DICTIONARY)
  let name = self.expect_identifier()
  let inheritance = self.parse_inheritance()
  self.skip(TK_LBRACE)
  let members = self.parse_dictionary_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, inheritance, members }
}

///|
fn Parser::parse_partial_dictionary_def(
  self : Parser,
) -> PartialDictionaryDefinition raise ParseError {
  self.skip(TK_PARTIAL)
  self.skip(TK_DICTIONARY)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_dictionary_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members }
}

///|
fn Parser::parse_enum_def(self : Parser) -> EnumDefinition raise ParseError {
  self.skip(TK_ENUM)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let values = self.parse_enum_value_list()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, values, spec: None }
}

///|
fn Parser::parse_typedef_def(
  self : Parser,
) -> TypedefDefinition raise ParseError {
  self.skip(TK_TYPEDEF)
  let type_ = self.parse_type()
  let name = self.expect_identifier()
  self.skip(TK_SEMICOLON)
  { type_, name, spec: None }
}

///|
fn Parser::parse_callback_def(
  self : Parser,
) -> CallbackFunctionDefinition raise ParseError {
  self.skip(TK_CALLBACK)
  let name = self.expect_identifier()
  self.skip(TK_EQUALS)
  let return_type = self.parse_type()
  self.skip(TK_LPAREN)
  let arguments = self.parse_argument_list()
  self.skip(TK_RPAREN)
  self.skip(TK_SEMICOLON)
  { name, return_type, arguments, spec: None }
}

///|
fn Parser::parse_callback_interface_def(
  self : Parser,
) -> CallbackInterfaceDefinition raise ParseError {
  self.skip(TK_CALLBACK)
  self.skip(TK_INTERFACE)
  let name = self.expect_identifier()
  self.skip(TK_LBRACE)
  let members = self.parse_callback_interface_members()
  self.skip(TK_RBRACE)
  self.skip(TK_SEMICOLON)
  { name, members, spec: None }
}

///|
fn Parser::parse_includes_statement(
  self : Parser,
) -> IncludesStatement raise ParseError {
  let interface_name = self.expect_identifier()
  self.skip(TK_INCLUDES)
  let mixin_name = self.expect_identifier()
  self.skip(TK_SEMICOLON)
  { interface_name, mixin_name }
}

///|
fn Parser::parse_inheritance(self : Parser) -> String? raise ParseError {
  if self.eat(TK_COLON) {
    Some(self.expect_identifier())
  } else {
    None
  }
}

// ============================================================================
// Callback interface members
// ============================================================================

///|
fn Parser::parse_callback_interface_members(
  self : Parser,
) -> Array[CallbackInterfaceMemberExtendedAttributes] raise ParseError {
  let members : Array[CallbackInterfaceMemberExtendedAttributes] = []
  while self.peek_kind() != TK_RBRACE {
    let extended_attributes = self.parse_extended_attribute_list()
    let callback_interface_member = self.parse_callback_interface_member()
    members.push({ extended_attributes, callback_interface_member })
  }
  members
}

///|
fn Parser::parse_callback_interface_member(
  self : Parser,
) -> CallbackInterfaceMember raise ParseError {
  if self.peek_kind() == TK_CONST {
    CallbackInterfaceMember::Const(self.parse_const_member())
  } else {
    CallbackInterfaceMember::Operation(self.parse_regular_operation_member())
  }
}

// ============================================================================
// Interface members
// ============================================================================

///|
fn Parser::parse_interface_members(
  self : Parser,
) -> Array[InterfaceMemberExtendedAttributes] raise ParseError {
  let members : Array[InterfaceMemberExtendedAttributes] = []
  while self.peek_kind() != TK_RBRACE {
    let extended_attributes = self.parse_extended_attribute_list()
    let interface_member = self.parse_interface_member()
    members.push({ extended_attributes, interface_member })
  }
  members
}

///|
/// Parses `Type Name ";"` and constructs an AttributeMember.
/// The caller is responsible for consuming the leading modifiers (static, readonly, inherit, attribute).
fn Parser::parse_attribute_body(
  self : Parser,
  static_ : Bool,
  is_readonly : Bool,
  is_inherit : Bool,
) -> AttributeMember raise ParseError {
  let type_with_ea = self.parse_type_with_extended_attributes()
  let name = self.parse_argument_name()
  self.skip(TK_SEMICOLON)
  { type_: type_with_ea.type_, name, is_readonly, static_, is_inherit }
}

///|
/// Parses `Type Name? "(" Args ")" ";"` for getter/setter/deleter.
fn Parser::parse_special_operation_body(
  self : Parser,
  special : Special,
) -> SpecialOperationMember raise ParseError {
  let return_type = self.parse_type()
  let name = self.parse_operation_name()
  self.skip(TK_LPAREN)
  let arguments = self.parse_argument_list()
  self.skip(TK_RPAREN)
  self.skip(TK_SEMICOLON)
  { return_type, name, arguments, special }
}

///|
fn Parser::parse_interface_member(
  self : Parser,
) -> InterfaceMember raise ParseError {
  match self.peek_kind() {
    TK_CONST => Const(self.parse_const_member())
    TK_CONSTRUCTOR => {
      self.skip_next()
      self.skip(TK_LPAREN)
      let arguments = self.parse_argument_list()
      self.skip(TK_RPAREN)
      self.skip(TK_SEMICOLON)
      Constructor({ arguments, })
    }
    TK_STRINGIFIER => {
      self.skip_next()
      if self.eat(TK_SEMICOLON) {
        Stringifier(StringifierMember::Bare)
      } else {
        // stringifier [readonly] attribute Type name ;
        let is_readonly = self.eat(TK_READONLY)
        self.skip(TK_ATTRIBUTE)
        Attribute(self.parse_attribute_body(false, is_readonly, false))
      }
    }
    TK_STATIC => {
      self.skip_next()
      if self.peek_kind() == TK_READONLY && self.peek2_kind() == TK_ATTRIBUTE {
        // static readonly attribute
        self.skip_next() // readonly
        self.skip_next() // attribute
        Attribute(self.parse_attribute_body(true, true, false))
      } else if self.peek_kind() == TK_ATTRIBUTE {
        // static attribute
        self.skip_next() // attribute
        Attribute(self.parse_attribute_body(true, false, false))
      } else {
        // static operation
        let op = self.parse_regular_operation_member()
        RegularOperation({ ..op, static_: true })
      }
    }
    TK_ITERABLE => {
      let iterable = self.parse_iterable_member()
      Iterable(iterable)
    }
    TK_ASYNC_ITERABLE => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let first_type = self.parse_type()
      let (key_type, value_type) = if self.eat(TK_COMMA) {
        let second_type = self.parse_type()
        (Some(first_type), second_type)
      } else {
        (None, first_type)
      }
      self.skip(TK_RANGLE)
      let arguments = if self.eat(TK_LPAREN) {
        let args = self.parse_argument_list()
        self.skip(TK_RPAREN)
        args
      } else {
        ([] : Array[Argument])
      }
      self.skip(TK_SEMICOLON)
      AsyncIterable({ key_type, value_type, arguments })
    }
    TK_READONLY => {
      self.skip_next()
      match self.peek_kind() {
        TK_ATTRIBUTE => {
          self.skip_next()
          Attribute(self.parse_attribute_body(false, true, false))
        }
        TK_MAPLIKE => {
          let m = self.parse_maplike_member()
          Maplike({ ..m, is_readonly: true })
        }
        TK_SETLIKE => {
          let s = self.parse_setlike_member()
          Setlike({ ..s, is_readonly: true })
        }
        _ =>
          raise UnexpectedToken(
            self.peek(),
            (self.tokens[self.pos].1, self.tokens[self.pos].2),
            [TK_ATTRIBUTE, TK_MAPLIKE, TK_SETLIKE],
          )
      }
    }
    TK_INHERIT => {
      self.skip_next()
      let is_readonly = self.eat(TK_READONLY)
      self.skip(TK_ATTRIBUTE)
      Attribute(self.parse_attribute_body(false, is_readonly, true))
    }
    TK_ATTRIBUTE => {
      self.skip_next()
      Attribute(self.parse_attribute_body(false, false, false))
    }
    TK_GETTER => {
      self.skip_next()
      SpecialOperation(self.parse_special_operation_body(Special::Getter))
    }
    TK_SETTER => {
      self.skip_next()
      SpecialOperation(self.parse_special_operation_body(Special::Setter))
    }
    TK_DELETER => {
      self.skip_next()
      SpecialOperation(self.parse_special_operation_body(Special::Deleter))
    }
    TK_MAPLIKE => Maplike(self.parse_maplike_member())
    TK_SETLIKE => Setlike(self.parse_setlike_member())
    _ =>
      // Regular operation: Type Name "(" args ")" ";"
      RegularOperation(self.parse_regular_operation_member())
  }
}

///|
fn Parser::parse_regular_operation_member(
  self : Parser,
) -> RegularOperationMember raise ParseError {
  let return_type = self.parse_type()
  // WebIDL keywords like "includes" can appear as method names inside interfaces
  let name = match self.try_argument_name_keyword() {
    Some(kw) => kw
    None => {
      let name_tok = self.expect_identifier()
      name_tok.trim(chars="_").to_string()
    }
  }
  self.skip(TK_LPAREN)
  let arguments = self.parse_argument_list()
  self.skip(TK_RPAREN)
  self.skip(TK_SEMICOLON)
  { return_type, name, arguments, static_: false }
}

///|
fn Parser::parse_const_member(self : Parser) -> ConstMember raise ParseError {
  self.skip(TK_CONST)
  let type_ = self.parse_type()
  let name = self.expect_identifier()
  self.skip(TK_EQUALS)
  let value = self.parse_const_value()
  self.skip(TK_SEMICOLON)
  { type_, name, value }
}

///|
fn Parser::parse_operation_name(self : Parser) -> String? raise ParseError {
  if self.peek_kind() == TK_IDENTIFIER {
    Some(self.expect_identifier())
  } else {
    None
  }
}

///|
fn Parser::parse_iterable_member(
  self : Parser,
) -> IterableMember raise ParseError {
  self.skip(TK_ITERABLE)
  self.skip(TK_LANGLE)
  let first_type = self.parse_type()
  if self.eat(TK_COMMA) {
    let second_type = self.parse_type()
    self.skip(TK_RANGLE)
    self.skip(TK_SEMICOLON)
    { key_type: Some(first_type), value_type: second_type }
  } else {
    self.skip(TK_RANGLE)
    self.skip(TK_SEMICOLON)
    { key_type: None, value_type: first_type }
  }
}

///|
fn Parser::parse_maplike_member(
  self : Parser,
) -> MaplikeMember raise ParseError {
  self.skip(TK_MAPLIKE)
  self.skip(TK_LANGLE)
  let key_type = self.parse_type()
  self.skip(TK_COMMA)
  let value_type = self.parse_type()
  self.skip(TK_RANGLE)
  self.skip(TK_SEMICOLON)
  { key_type, value_type, is_readonly: false }
}

///|
fn Parser::parse_setlike_member(
  self : Parser,
) -> SetlikeMember raise ParseError {
  self.skip(TK_SETLIKE)
  self.skip(TK_LANGLE)
  let value_type = self.parse_type()
  self.skip(TK_RANGLE)
  self.skip(TK_SEMICOLON)
  { value_type, is_readonly: false }
}

// ============================================================================
// Namespace members
// ============================================================================

///|
fn Parser::parse_namespace_members(
  self : Parser,
) -> Array[NamespaceMemberExtendedAttributes] raise ParseError {
  let members : Array[NamespaceMemberExtendedAttributes] = []
  while self.peek_kind() != TK_RBRACE {
    let extended_attributes = self.parse_extended_attribute_list()
    let namespace_member = self.parse_namespace_member()
    members.push({ extended_attributes, namespace_member })
  }
  members
}

///|
fn Parser::parse_namespace_member(
  self : Parser,
) -> NamespaceMember raise ParseError {
  if self.peek_kind() == TK_READONLY {
    self.skip_next()
    self.skip(TK_ATTRIBUTE)
    let type_ = self.parse_type()
    let name = self.expect_identifier()
    self.skip(TK_SEMICOLON)
    NamespaceMember::Attribute({
      type_,
      name,
      is_readonly: true,
      static_: false,
      is_inherit: false,
    })
  } else if self.peek_kind() == TK_CONST {
    NamespaceMember::Const(self.parse_const_member())
  } else {
    NamespaceMember::Operation(self.parse_regular_operation_member())
  }
}

// ============================================================================
// Dictionary members
// ============================================================================

///|
fn Parser::parse_dictionary_members(
  self : Parser,
) -> Array[DictionaryMember] raise ParseError {
  let members : Array[DictionaryMember] = []
  while self.peek_kind() != TK_RBRACE {
    let extended_attributes = self.parse_extended_attribute_list()
    let m = self.parse_dictionary_member()
    members.push({ ..m, extended_attributes, })
  }
  members
}

///|
fn Parser::parse_dictionary_member(
  self : Parser,
) -> DictionaryMember raise ParseError {
  if self.eat(TK_REQUIRED) {
    let type_ = self.parse_type()
    let name = self.expect_identifier()
    self.skip(TK_SEMICOLON)
    {
      extended_attributes: [],
      type_,
      name,
      required: true,
      default_value: None,
    }
  } else {
    let type_ = self.parse_type()
    let name = self.expect_identifier()
    let default_value = self.parse_default_value_opt()
    self.skip(TK_SEMICOLON)
    { extended_attributes: [], type_, name, required: false, default_value }
  }
}

// ============================================================================
// Enum values
// ============================================================================

///|
fn Parser::parse_enum_value_list(
  self : Parser,
) -> Array[String] raise ParseError {
  let values : Array[String] = []
  values.push(self.expect_string())
  while self.eat(TK_COMMA) {
    if self.peek_kind() == TK_STRING {
      values.push(self.expect_string())
    }
    // trailing comma is allowed
  }
  values
}

// ============================================================================
// Arguments
// ============================================================================

///|
fn Parser::parse_argument_list(
  self : Parser,
) -> Array[Argument] raise ParseError {
  let args : Array[Argument] = []
  if self.peek_kind() == TK_RPAREN {
    return args
  }
  args.push(self.parse_argument())
  while self.eat(TK_COMMA) {
    args.push(self.parse_argument())
  }
  args
}

///|
fn Parser::parse_argument(self : Parser) -> Argument raise ParseError {
  let extended_attributes = self.parse_extended_attribute_list()
  let arg = self.parse_argument_rest()
  { ..arg, extended_attributes, }
}

///|
fn Parser::parse_argument_rest(self : Parser) -> Argument raise ParseError {
  if self.eat(TK_OPTIONAL) {
    let type_ = self.parse_type_with_extended_attributes()
    let name = self.parse_argument_name()
    let default_value = self.parse_default_value_opt()
    {
      extended_attributes: [],
      type_,
      name,
      optional: true,
      variadic: false,
      default_value,
    }
  } else {
    let type_inner = self.parse_type()
    let variadic = self.eat(TK_ELLIPSIS)
    let name = self.parse_argument_name()
    let type_ : TypeWithExtendedAttributes = {
      extended_attributes: [],
      type_: type_inner,
    }
    {
      extended_attributes: [],
      type_,
      name,
      optional: false,
      variadic,
      default_value: None,
    }
  }
}

///|
fn Parser::parse_argument_name(self : Parser) -> String raise ParseError {
  match self.peek_kind() {
    TK_IDENTIFIER => self.expect_identifier()
    _ =>
      match self.try_argument_name_keyword() {
        Some(name) => name
        None => self.expect_identifier()
      }
  }
}

///|
fn Parser::try_argument_name_keyword(self : Parser) -> String? {
  let result = match self.peek_kind() {
    TK_ATTRIBUTE => Some("attribute")
    TK_CALLBACK => Some("callback")
    TK_CONST => Some("const")
    TK_CONSTRUCTOR => Some("constructor")
    TK_DELETER => Some("deleter")
    TK_DICTIONARY => Some("dictionary")
    TK_ENUM => Some("enum")
    TK_GETTER => Some("getter")
    TK_INCLUDES => Some("includes")
    TK_INHERIT => Some("inherit")
    TK_INTERFACE => Some("interface")
    TK_ITERABLE => Some("iterable")
    TK_MAPLIKE => Some("maplike")
    TK_MIXIN => Some("mixin")
    TK_NAMESPACE => Some("namespace")
    TK_PARTIAL => Some("partial")
    TK_READONLY => Some("readonly")
    TK_REQUIRED => Some("required")
    TK_SETLIKE => Some("setlike")
    TK_SETTER => Some("setter")
    TK_STATIC => Some("static")
    TK_STRINGIFIER => Some("stringifier")
    TK_TYPEDEF => Some("typedef")
    TK_UNRESTRICTED => Some("unrestricted")
    _ => None
  }
  if result is Some(_) {
    self.pos += 1
  }
  result
}

// ============================================================================
// Types
// ============================================================================

///|
fn Parser::parse_type(self : Parser) -> Type raise ParseError {
  // Check for union type: "(" ...
  if self.peek_kind() == TK_LPAREN {
    let union_type = self.parse_union_type()
    if self.eat(TK_QUESTION) {
      return Type::Nullable(union_type)
    }
    return union_type
  }
  // single_type
  self.parse_single_type()
}

///|
fn Parser::parse_type_with_extended_attributes(
  self : Parser,
) -> TypeWithExtendedAttributes raise ParseError {
  let extended_attributes = self.parse_extended_attribute_list()
  let type_ = self.parse_type()
  { extended_attributes, type_ }
}

///|
fn Parser::parse_single_type(self : Parser) -> Type raise ParseError {
  if self.peek_kind() == TK_ANY {
    self.skip_next()
    return Type::Any
  }
  if self.peek_kind() == TK_PROMISE {
    self.skip_next()
    self.skip(TK_LANGLE)
    let inner = self.parse_type()
    self.skip(TK_RANGLE)
    return Type::Promise(inner)
  }
  let type_ = self.parse_distinguishable_type()
  if self.eat(TK_QUESTION) {
    Type::Nullable(type_)
  } else {
    type_
  }
}

///|
fn Parser::parse_union_type(self : Parser) -> Type raise ParseError {
  self.skip(TK_LPAREN)
  let members : Array[TypeWithExtendedAttributes] = []
  members.push(self.parse_union_member_type())
  self.skip(TK_OR)
  members.push(self.parse_union_member_type())
  while self.eat(TK_OR) {
    members.push(self.parse_union_member_type())
  }
  self.skip(TK_RPAREN)
  Type::Union(members)
}

///|
fn Parser::parse_union_member_type(
  self : Parser,
) -> TypeWithExtendedAttributes raise ParseError {
  if self.peek_kind() == TK_LPAREN {
    // Nested union type
    let union_type = self.parse_union_type()
    let is_null = self.eat(TK_QUESTION)
    let ty = if is_null { Type::Nullable(union_type) } else { union_type }
    { extended_attributes: [], type_: ty }
  } else {
    let extended_attributes = self.parse_extended_attribute_list()
    let base_type = self.parse_distinguishable_type()
    let type_ = if self.eat(TK_QUESTION) {
      Type::Nullable(base_type)
    } else {
      base_type
    }
    { extended_attributes, type_ }
  }
}

///|
fn Parser::parse_distinguishable_type(self : Parser) -> Type raise ParseError {
  match self.peek_kind() {
    // Primitive types
    TK_UNSIGNED
    | TK_SHORT
    | TK_LONG
    | TK_UNRESTRICTED
    | TK_FLOAT_KW
    | TK_DOUBLE
    | TK_BOOLEAN
    | TK_BYTE
    | TK_OCTET
    | TK_BIGINT => self.parse_primitive_type()
    // String types
    TK_DOMSTRING | TK_BYTESTRING | TK_USVSTRING => self.parse_string_type()
    // Buffer types
    TK_ARRAYBUFFER
    | TK_SHAREDARRAYBUFFER
    | TK_DATAVIEW
    | TK_INT8ARRAY
    | TK_INT16ARRAY
    | TK_INT32ARRAY
    | TK_UINT8ARRAY
    | TK_UINT16ARRAY
    | TK_UINT32ARRAY
    | TK_UINT8CLAMPEDARRAY
    | TK_BIGINT64ARRAY
    | TK_BIGUINT64ARRAY
    | TK_FLOAT16ARRAY
    | TK_FLOAT32ARRAY
    | TK_FLOAT64ARRAY => self.parse_buffer_type()
    // Identifier
    TK_IDENTIFIER => {
      let id = self.expect_identifier()
      Type::Identifier(id)
    }
    // Parameterized types
    TK_SEQUENCE => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let inner = self.parse_type()
      self.skip(TK_RANGLE)
      Type::Sequence(inner)
    }
    TK_ASYNC_SEQUENCE => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let inner = self.parse_type_with_extended_attributes()
      self.skip(TK_RANGLE)
      Type::AsyncSequence(inner)
    }
    TK_FROZENARRAY => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let inner = self.parse_type_with_extended_attributes()
      self.skip(TK_RANGLE)
      Type::FrozenArray(inner)
    }
    TK_OBSERVABLEARRAY => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let inner = self.parse_type_with_extended_attributes()
      self.skip(TK_RANGLE)
      Type::ObservableArray(inner)
    }
    TK_RECORD => {
      self.skip_next()
      self.skip(TK_LANGLE)
      let st = self.parse_string_type()
      self.skip(TK_COMMA)
      let vt = self.parse_type_with_extended_attributes()
      self.skip(TK_RANGLE)
      Type::Record(type_to_string_type(st), vt)
    }
    // Special types
    TK_OBJECT => {
      self.skip_next()
      Type::Object
    }
    TK_SYMBOL => {
      self.skip_next()
      Type::Symbol
    }
    TK_UNDEFINED => {
      self.skip_next()
      Type::Undefined
    }
    _ =>
      raise UnexpectedToken(
        self.peek(),
        (self.tokens[self.pos].1, self.tokens[self.pos].2),
        [TK_IDENTIFIER],
      )
  }
}

///|
fn Parser::parse_primitive_type(self : Parser) -> Type raise ParseError {
  match self.peek_kind() {
    TK_UNSIGNED => {
      self.skip_next()
      match self.peek_kind() {
        TK_SHORT => {
          self.skip_next()
          Type::UnsignedShort
        }
        TK_LONG => {
          self.skip_next()
          if self.eat(TK_LONG) {
            Type::UnsignedLongLong
          } else {
            Type::UnsignedLong
          }
        }
        _ =>
          raise UnexpectedToken(
            self.peek(),
            (self.tokens[self.pos].1, self.tokens[self.pos].2),
            [TK_SHORT, TK_LONG],
          )
      }
    }
    TK_SHORT => {
      self.skip_next()
      Type::Short
    }
    TK_LONG => {
      self.skip_next()
      if self.eat(TK_LONG) {
        Type::LongLong
      } else {
        Type::Long
      }
    }
    TK_UNRESTRICTED => {
      self.skip_next()
      match self.peek_kind() {
        TK_FLOAT_KW => {
          self.skip_next()
          Type::UnrestrictedFloat
        }
        TK_DOUBLE => {
          self.skip_next()
          Type::UnrestrictedDouble
        }
        _ =>
          raise UnexpectedToken(
            self.peek(),
            (self.tokens[self.pos].1, self.tokens[self.pos].2),
            [TK_FLOAT_KW, TK_DOUBLE],
          )
      }
    }
    TK_FLOAT_KW => {
      self.skip_next()
      Type::Float
    }
    TK_DOUBLE => {
      self.skip_next()
      Type::Double
    }
    TK_BOOLEAN => {
      self.skip_next()
      Type::Boolean
    }
    TK_BYTE => {
      self.skip_next()
      Type::Byte
    }
    TK_OCTET => {
      self.skip_next()
      Type::Octet
    }
    TK_BIGINT => {
      self.skip_next()
      Type::Bigint
    }
    _ =>
      raise UnexpectedToken(
        self.peek(),
        (self.tokens[self.pos].1, self.tokens[self.pos].2),
        [TK_UNSIGNED, TK_SHORT, TK_LONG, TK_BOOLEAN, TK_BYTE, TK_OCTET],
      )
  }
}

///|
fn Parser::parse_string_type(self : Parser) -> Type raise ParseError {
  match self.peek_kind() {
    TK_DOMSTRING => {
      self.skip_next()
      Type::DOMString
    }
    TK_BYTESTRING => {
      self.skip_next()
      Type::ByteString
    }
    TK_USVSTRING => {
      self.skip_next()
      Type::USVString
    }
    _ =>
      raise UnexpectedToken(
        self.peek(),
        (self.tokens[self.pos].1, self.tokens[self.pos].2),
        [TK_DOMSTRING, TK_BYTESTRING, TK_USVSTRING],
      )
  }
}

///|
fn Parser::parse_buffer_type(self : Parser) -> Type {
  let tok = self.advance()
  match tok.kind() {
    TK_ARRAYBUFFER => Type::ArrayBuffer
    TK_SHAREDARRAYBUFFER => Type::SharedArrayBuffer
    TK_DATAVIEW => Type::DataView
    TK_INT8ARRAY => Type::Int8Array
    TK_INT16ARRAY => Type::Int16Array
    TK_INT32ARRAY => Type::Int32Array
    TK_UINT8ARRAY => Type::Uint8Array
    TK_UINT16ARRAY => Type::Uint16Array
    TK_UINT32ARRAY => Type::Uint32Array
    TK_UINT8CLAMPEDARRAY => Type::Uint8ClampedArray
    TK_BIGINT64ARRAY => Type::BigInt64Array
    TK_BIGUINT64ARRAY => Type::BigUint64Array
    TK_FLOAT16ARRAY => Type::Float16Array
    TK_FLOAT32ARRAY => Type::Float32Array
    TK_FLOAT64ARRAY => Type::Float64Array
    _ => abort("unreachable: parse_buffer_type called with non-buffer token")
  }
}

// ============================================================================
// Const / Default values
// ============================================================================

///|
fn Parser::parse_const_value(self : Parser) -> Const raise ParseError {
  match self.peek_kind() {
    TK_TRUE => {
      self.skip_next()
      Const::Boolean("true")
    }
    TK_FALSE => {
      self.skip_next()
      Const::Boolean("false")
    }
    TK_INTEGER => {
      let s = self.expect_integer()
      Const::Integer(s)
    }
    TK_FLOAT =>
      match self.advance() {
        FLOAT(s) => Const::Float(FloatLiteral::Float(s))
        _ => abort("unreachable")
      }
    TK_INFINITY => {
      self.skip_next()
      Const::Float(FloatLiteral::Infinity)
    }
    TK_NEG_INFINITY => {
      self.skip_next()
      Const::Float(FloatLiteral::NegInfinity)
    }
    TK_NAN => {
      self.skip_next()
      Const::Float(FloatLiteral::NaN)
    }
    _ =>
      raise UnexpectedToken(
        self.peek(),
        (self.tokens[self.pos].1, self.tokens[self.pos].2),
        [TK_TRUE, TK_FALSE, TK_INTEGER, TK_FLOAT],
      )
  }
}

///|
fn Parser::parse_default_value_opt(
  self : Parser,
) -> DefaultValue? raise ParseError {
  if self.eat(TK_EQUALS) {
    Some(self.parse_default_value())
  } else {
    None
  }
}

///|
fn Parser::parse_default_value(self : Parser) -> DefaultValue raise ParseError {
  match self.peek_kind() {
    TK_STRING => {
      let s = self.expect_string()
      DefaultValue::String(s)
    }
    TK_LBRACKET => {
      self.skip_next()
      self.skip(TK_RBRACKET)
      DefaultValue::EmptySequence
    }
    TK_LBRACE => {
      self.skip_next()
      self.skip(TK_RBRACE)
      DefaultValue::EmptyObject
    }
    TK_NULL => {
      self.skip_next()
      DefaultValue::Null
    }
    TK_UNDEFINED => {
      self.skip_next()
      DefaultValue::Undefined
    }
    _ => DefaultValue::ConstValue(self.parse_const_value())
  }
}

// ============================================================================
// Extended attributes
// ============================================================================

///|
fn Parser::parse_extended_attribute_list(
  self : Parser,
) -> Array[ExtendedAttribute] raise ParseError {
  if self.peek_kind() != TK_LBRACKET {
    return []
  }
  self.skip_next() // consume [
  let attrs : Array[ExtendedAttribute] = []
  attrs.push(self.parse_extended_attribute())
  while self.eat(TK_COMMA) {
    attrs.push(self.parse_extended_attribute())
  }
  self.skip(TK_RBRACKET)
  attrs
}

///|
fn Parser::parse_extended_attribute(
  self : Parser,
) -> ExtendedAttribute raise ParseError {
  let name = self.expect_identifier()
  if self.eat(TK_EQUALS) {
    // name = ...
    match self.peek_kind() {
      TK_LPAREN => {
        // name = ( ... )
        self.skip_next()
        // Check if it's IntPair: name = (INT, INT) or IdentList: name = (id, id, ...)
        if self.peek_kind() == TK_INTEGER {
          let i1 = self.expect_integer()
          self.skip(TK_COMMA)
          let i2 = self.expect_integer()
          self.skip(TK_RPAREN)
          ExtendedAttribute::IntPair(name, i1, i2)
        } else {
          let idents = self.parse_identifier_list()
          self.skip(TK_RPAREN)
          ExtendedAttribute::IdentList(name, idents)
        }
      }
      TK_IDENTIFIER => {
        let value = self.expect_identifier()
        if self.peek_kind() == TK_LPAREN {
          // NamedArgList: name = value(args)
          self.skip_next()
          let args = self.parse_argument_list()
          self.skip(TK_RPAREN)
          ExtendedAttribute::NamedArgList(name, value, args)
        } else {
          ExtendedAttribute::Ident(name, value)
        }
      }
      TK_INTEGER => {
        let int_val = self.expect_integer()
        ExtendedAttribute::IntValue(name, int_val)
      }
      TK_FLOAT =>
        match self.advance() {
          FLOAT(f) => ExtendedAttribute::FloatValue(name, f)
          _ => abort("unreachable")
        }
      TK_STRING => {
        let s = self.expect_string()
        ExtendedAttribute::Ident(name, s)
      }
      TK_STAR => {
        self.skip_next()
        ExtendedAttribute::Wildcard(name)
      }
      _ =>
        raise UnexpectedToken(
          self.peek(),
          (self.tokens[self.pos].1, self.tokens[self.pos].2),
          [TK_IDENTIFIER, TK_LPAREN, TK_INTEGER, TK_FLOAT, TK_STRING, TK_STAR],
        )
    }
  } else if self.peek_kind() == TK_LPAREN {
    // ArgList: name(args)
    self.skip_next()
    let args = self.parse_argument_list()
    self.skip(TK_RPAREN)
    ExtendedAttribute::ArgList(name, args)
  } else {
    // NoArgs: name
    ExtendedAttribute::NoArgs(name)
  }
}

///|
fn Parser::parse_identifier_list(
  self : Parser,
) -> Array[String] raise ParseError {
  let ids : Array[String] = []
  ids.push(self.expect_identifier())
  while self.eat(TK_COMMA) {
    ids.push(self.expect_identifier())
  }
  ids
}

// ============================================================================
// Helper
// ============================================================================

///|
fn type_to_string_type(t : Type) -> StringType {
  match t {
    Type::DOMString => StringType::DOMString
    Type::ByteString => StringType::ByteString
    Type::USVString => StringType::USVString
    _ => StringType::DOMString
  }
}

///|
/// Unified error type for parsing
pub suberror WebIdlError {
  Lex(LexError)
  Parse(ParseError)
} derive(Debug)

///|
/// Parse WebIDL text into an array of definitions
pub fn parse(
  input : String,
) -> Array[DefinitionExtendedAttributes] raise WebIdlError {
  let tokens = lex(input[:]) catch { e => raise Lex(e) }
  definitions(tokens) catch {
    e => raise Parse(e)
  }
}

///|
/// Parse WebIDL file from a filepath into an array of definitions
pub fn parse_file(
  filepath : String,
) -> Array[DefinitionExtendedAttributes] raise WebIdlError {
  let content = @fs.read_file_to_string(filepath) catch {
    e => raise Lex(LexFailed(e.to_string()))
  }
  let tokens = lex(content[:], file=filepath) catch { e => raise Lex(e) }
  let definitions = definitions(tokens) catch { e => raise Parse(e) }
  let spec = @path.Path(filepath).basename().to_string()
  for def in definitions {
    def.spec = Some(spec)
  }
  definitions
}

///|
/// Tokenize WebIDL text into an array of tokens with positions
pub fn tokenize(
  input : String,
) -> Array[(Token, Position, Position)] raise LexError {
  lex(input[:])
}
