///|
/// Parser state
priv struct Parser {
  tokens : Array[Token]
  mut position : Int
}

///|
/// Get current token
fn Parser::current_token(self : Parser) -> Token {
  if self.position < self.tokens.length() {
    self.tokens[self.position]
  } else {
    Token::Eof
  }
}

///|
/// Advance to next token
fn Parser::advance(self : Parser) -> Unit {
  if self.position < self.tokens.length() {
    self.position = self.position + 1
  }
}

///|
/// Skip tokens until reaching delimiter or EOF
fn Parser::skip_until(self : Parser, delimiter : Token) -> Unit {
  loop self.current_token() {
    Token::Eof => ()
    _ if self.current_token() == delimiter => ()
    _ => {
      self.advance()
      continue self.current_token()
    }
  }
}

///|
/// Skip extended attributes [...] 
fn Parser::skip_extended_attributes(self : Parser) -> Unit {
  loop self.current_token() {
    Token::LeftBracket => {
      self.advance()
      // Skip content until ]
      loop self.current_token() {
        Token::RightBracket | Token::Eof => ()
        _ => {
          self.advance()
          continue self.current_token()
        }
      }
      if self.current_token() is Token::RightBracket {
        self.advance()
      }
      continue self.current_token()
    }
    _ => ()
  }
}

///|
/// Get current identifier
fn Parser::current_identifier(self : Parser) -> String {
  match self.current_token() {
    Token::Identifier(name) => name
    _ => ""
  }
}

///|
/// Parse a type expression (identifier, nullable, sequence, etc)
fn Parser::parse_type(self : Parser) -> IdlType {
  let _is_readonly = if self.current_token() is Token::Readonly {
    self.advance()
    true
  } else {
    false
  }

  // Handle 'unrestricted' prefix
  if self.is_identifier() && self.current_identifier() == "unrestricted" {
    self.advance()
  }
  let base_type = if self.position < self.tokens.length() {
    match self.current_token() {
      Token::Identifier(name) => {
        self.advance()
        IdlType::Identifier(name)
      }
      _ => IdlType::Identifier("unknown")
    }
  } else {
    IdlType::Identifier("unknown")
  }

  // Handle union types (A or B)
  let result = loop base_type {
    current_result if self.current_token() is Token::Pipe => {
      self.advance()
      // Skip 'or' keyword if present
      if self.is_identifier() && self.current_identifier() == "or" {
        self.advance()
      }
      // Handle 'unrestricted' in union members
      if self.is_identifier() && self.current_identifier() == "unrestricted" {
        self.advance()
      }
      if self.is_identifier() {
        let union_member = IdlType::Identifier(self.current_identifier())
        self.advance()
        let updated_result = match current_result {
          IdlType::Union(members) => {
            members.push(union_member)
            IdlType::Union(members)
          }
          _ => {
            let members = [current_result]
            members.push(union_member)
            IdlType::Union(members)
          }
        }
        continue updated_result
      } else {
        current_result
      }
    }
    current_result => current_result
  }
  if self.current_token() is Token::Question {
    self.advance()
    IdlType::Nullable(result)
  } else {
    result
  }
}

///|
/// Parse a single parameter
fn Parser::parse_parameter(self : Parser) -> Parameter? {
  // Check for 'optional' keyword
  let optional = self.current_token() is Token::Optional
  if optional {
    self.advance()
  }

  // Parse parameter type
  let param_type = self.parse_type()

  // Check for '...' (variadic)
  let variadic = self.current_token() is Token::DotDotDot
  if variadic {
    self.advance()
  }

  // Get parameter name
  let param_name = if self.is_identifier() {
    let name = self.current_identifier()
    self.advance()
    name
  } else {
    "param"
  }
  Some({ name: param_name, param_type, optional, variadic })
}

///|
/// Parse operation (method) in interface
fn Parser::parse_operation(self : Parser) -> Operation {
  // Assume we're at the return type
  let return_type = self.parse_type()

  // Get method name
  let method_name = self.current_identifier()
  self.advance()

  // Parse parameters
  let parameters : Array[Parameter] = []
  if self.current_token() is Token::LeftParen {
    self.advance()
    loop self.current_token() {
      Token::RightParen | Token::Eof => ()
      _ if self.is_identifier() || self.current_token() is Token::Optional => {
        match self.parse_parameter() {
          Some(param) => {
            parameters.push(param)
            // Check for comma between parameters
            if self.current_token() is Token::Comma {
              self.advance()
            }
          }
          None => self.advance()
        }
        continue self.current_token()
      }
      Token::Comma => {
        self.advance()
        continue self.current_token()
      }
      _ => {
        self.advance()
        continue self.current_token()
      }
    }
    if self.current_token() is Token::RightParen {
      self.advance()
    }
  }

  // Skip to semicolon
  self.skip_until(Token::Semicolon)
  if self.current_token() is Token::Semicolon {
    self.advance()
  }
  { name: method_name, return_type, parameters }
}

///|
/// Parse attribute definition

///|
/// Parse a simple type (just identifier, no modifiers)
fn Parser::parse_simple_type(self : Parser) -> IdlType {
  // Handle 'unrestricted' prefix
  if self.is_identifier() && self.current_identifier() == "unrestricted" {
    self.advance()
  }
  let base_type = if self.position < self.tokens.length() {
    match self.current_token() {
      Token::Identifier(name) => {
        self.advance()
        IdlType::Identifier(name)
      }
      _ => IdlType::Identifier("unknown")
    }
  } else {
    IdlType::Identifier("unknown")
  }

  // Handle nullable
  if self.current_token() is Token::Question {
    self.advance()
    IdlType::Nullable(base_type)
  } else {
    base_type
  }
}

///|
/// Parse attribute definition
fn Parser::parse_attribute(self : Parser) -> Attribute? {
  // Skip extended attributes [...]
  self.skip_extended_attributes()

  // Check for 'readonly' keyword
  let is_readonly = self.current_token() is Token::Readonly
  if is_readonly {
    self.advance()
  }

  // Check for 'attribute' keyword (sometimes present)
  if self.is_identifier() && self.current_identifier() == "attribute" {
    self.advance()
  }

  // Parse attribute type using simpler parser
  let attr_type = self.parse_simple_type()

  // Get attribute name - should be next identifier
  let attr_name = if self.is_identifier() {
    let name = self.current_identifier()
    self.advance()
    name
  } else {
    "attr"
  }

  // Skip to semicolon
  self.skip_until(Token::Semicolon)
  if self.current_token() is Token::Semicolon {
    self.advance()
  }
  Some({ name: attr_name, attr_type, is_readonly })
}

///|
/// Check if current token is an identifier
fn Parser::is_identifier(self : Parser) -> Bool {
  match self.current_token() {
    Token::Identifier(_) => true
    _ => false
  }
}

///|
/// Parse dictionary definition
fn Parser::parse_dictionary(self : Parser) -> Dictionary {
  // Current token should be "Dictionary", advance past it
  self.advance()

  // Get dictionary name
  let dict_name = self.current_identifier()
  self.advance()

  // Skip extends if present
  if self.current_token() is Token::Colon {
    self.advance()
    self.advance() // skip parent name
  }
  let fields : Array[(String, IdlType, Bool)] = []

  // Parse fields - extract field type, name, and optional marker
  if self.current_token() is Token::LeftBrace {
    self.advance()
    loop self.current_token() {
      Token::RightBrace | Token::Eof => ()
      _ => {
        // Check for optional keyword
        let optional = self.current_token() is Token::Optional
        if optional {
          self.advance()
        }

        // Parse field type
        let field_type = self.parse_type()

        // Get field name - must be an identifier
        let field_name = if self.is_identifier() {
          let name = self.current_identifier()
          self.advance()
          name
        } else {
          // Skip this field if no valid identifier found
          self.advance()
          ""
        }

        // Only add field if we have a valid name
        if field_name != "" {
          fields.push((field_name, field_type, optional))
        }

        // Skip default value if present (= value)
        if self.current_token() is Token::Equals {
          self.advance()
          // Skip the default value - typically a literal
          loop self.current_token() {
            Token::Semicolon | Token::Comma | Token::RightBrace | Token::Eof =>
              ()
            _ => {
              self.advance()
              continue self.current_token()
            }
          }
        }

        // Skip semicolon or comma between fields
        if self.current_token() is Token::Semicolon {
          self.advance()
        } else if self.current_token() is Token::Comma {
          self.advance()
        }
        continue self.current_token()
      }
    }
    if self.current_token() is Token::RightBrace {
      self.advance()
    }
  }
  { name: dict_name, fields }
}

///|
/// Parse WebIDL source
pub fn parse(source : String) -> Array[Definition] {
  let tokens = tokenize(source)
  let parser : Parser = { tokens, position: 0 }
  let definitions : Array[Definition] = []
  loop parser.current_token() {
    Token::Eof => ()
    Token::Dictionary => {
      let dictionary = parser.parse_dictionary()
      definitions.push(Definition::DictionaryDef(dictionary))
      if parser.current_token() is Token::Semicolon {
        parser.advance()
      }
      continue parser.current_token()
    }
    Token::Interface => {
      parser.advance()
      let interface_name = parser.current_identifier()
      parser.advance()
      let extends_name : String? = if parser.current_token() is Token::Colon {
        parser.advance()
        let parent = parser.current_identifier()
        parser.advance()
        Some(parent)
      } else {
        None
      }
      if parser.current_token() is Token::LeftBrace {
        parser.advance()
        let attributes : Array[Attribute] = []
        let operations : Array[Operation] = []
        let constants : Array[(String, String)] = []
        loop parser.current_token() {
          Token::RightBrace | Token::Eof => ()
          _ => {
            // Skip extended attributes at the beginning of member declarations
            parser.skip_extended_attributes()
            if parser.current_token() is Token::Readonly {
              // Parse readonly attribute
              match parser.parse_attribute() {
                Some(attr) => attributes.push(attr)
                None => ()
              }
            } else if parser.is_identifier() {
              // Could be a return type for operation or attribute type
              // Look ahead to see if there's a method name and (
              let next_pos = parser.position + 1
              let is_operation = if next_pos < tokens.length() {
                match tokens[next_pos] {
                  Token::Identifier(_) => {
                    let paren_pos = next_pos + 1
                    if paren_pos < tokens.length() {
                      match tokens[paren_pos] {
                        Token::LeftParen => true
                        _ => false
                      }
                    } else {
                      false
                    }
                  }
                  Token::LeftParen => true // Method with implicit return type
                  _ => false
                }
              } else {
                false
              }
              if is_operation {
                let operation = parser.parse_operation()
                operations.push(operation)
              } else {
                // It's likely an attribute without readonly
                match parser.parse_attribute() {
                  Some(attr) => attributes.push(attr)
                  None => ()
                }
              }
            } else {
              // Skip unknown tokens
              parser.advance()
            }
            continue parser.current_token()
          }
        }
        if parser.current_token() is Token::RightBrace {
          parser.advance()
        }
        let interface : Interface = {
          name: interface_name,
          extends: extends_name,
          attributes,
          operations,
          constants,
        }
        definitions.push(Definition::InterfaceDef(interface))
      }
      if parser.current_token() is Token::Semicolon {
        parser.advance()
      }
      continue parser.current_token()
    }
    _ => {
      // Skip unknown tokens
      parser.advance()
      continue parser.current_token()
    }
  }
  definitions
}
