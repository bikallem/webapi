///|
/// Parser error
pub struct ParseError {
  message : String
  line : Int
  column : Int
} derive(Show, Eq)

///|
/// Parser state
struct Parser {
  tokens : Array[LocatedToken]
  mut position : Int
}

///|
/// Get current token
fn Parser::current_token(self : Parser) -> LocatedToken {
  if self.position < self.tokens.length() {
    self.tokens[self.position]
  } else {
    { token: Token::Eof, line: 0, column: 0 }
  }
}

///|
/// Check if current token matches
fn Parser::check(self : Parser, expected : Token) -> Bool {
  match (self.current_token().token, expected) {
    (Token::Dictionary, Token::Dictionary) => true
    (Token::Interface, Token::Interface) => true
    (Token::LeftBrace, Token::LeftBrace) => true
    (Token::RightBrace, Token::RightBrace) => true
    (Token::Semicolon, Token::Semicolon) => true
    (Token::LeftParen, Token::LeftParen) => true
    (Token::RightParen, Token::RightParen) => true
    (Token::Colon, Token::Colon) => true
    (Token::Readonly, Token::Readonly) => true
    (Token::Identifier(_), Token::Identifier(_)) => true
    (Token::Eof, Token::Eof) => true
    _ => false
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
/// Get current identifier
fn Parser::current_identifier(self : Parser) -> String {
  match self.current_token().token {
    Token::Identifier(name) => name
    _ => ""
  }
}

///|
/// Parse a type expression (identifier, nullable, sequence, etc)
fn Parser::parse_type(self : Parser) -> IdlType {
  let _is_readonly = if self.check(Token::Readonly) {
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
    match self.current_token().token {
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
  let mut result = base_type
  while self.check(Token::Pipe) {
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
      match result {
        IdlType::Union(members) => {
          members.push(union_member)
          result = IdlType::Union(members)
        }
        _ => {
          let members = [result]
          members.push(union_member)
          result = IdlType::Union(members)
        }
      }
    }
  }
  
  if self.check(Token::Question) {
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
  let optional = self.check(Token::Optional)
  if optional {
    self.advance()
  }
  
  // Parse parameter type
  let param_type = self.parse_type()
  
  // Check for '...' (variadic)
  let variadic = self.check(Token::DotDotDot)
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

/// Parse operation (method) in interface
fn Parser::parse_operation(self : Parser) -> Operation {
  // Assume we're at the return type
  let return_type = self.parse_type()
  
  // Get method name
  let method_name = self.current_identifier()
  self.advance()
  
  // Parse parameters
  let parameters : Array[Parameter] = []
  if self.check(Token::LeftParen) {
    self.advance()
    while !self.check(Token::RightParen) &&
          self.current_token().token != Token::Eof {
      if self.is_identifier() || self.check(Token::Optional) {
        match self.parse_parameter() {
          Some(param) => {
            parameters.push(param)
            // Check for comma between parameters
            if self.check(Token::Comma) {
              self.advance()
            }
          }
          None => {
            self.advance()
          }
        }
      } else if self.check(Token::Comma) {
        self.advance()
      } else {
        self.advance()
      }
    }
    if self.check(Token::RightParen) {
      self.advance()
    }
  }
  
  // Skip to semicolon
  while !self.check(Token::Semicolon) &&
        self.current_token().token != Token::Eof {
    self.advance()
  }
  if self.check(Token::Semicolon) {
    self.advance()
  }
  
  { name: method_name, return_type, parameters }
}

///| 
/// Check if current token is an identifier
fn Parser::is_identifier(self : Parser) -> Bool {
  match self.current_token().token {
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
  if self.check(Token::Colon) {
    self.advance()
    self.advance() // skip parent name
  }
  
  let fields : Array[(String, IdlType, Bool)] = []
  
  // Parse fields - extract field type, name, and optional marker
  if self.check(Token::LeftBrace) {
    self.advance()
    while !self.check(Token::RightBrace) &&
          self.current_token().token != Token::Eof {
      // Check for optional keyword
      let optional = self.check(Token::Optional)
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
      if self.check(Token::Equals) {
        self.advance()
        // Skip the default value - typically a literal
        while !self.check(Token::Semicolon) &&
              !self.check(Token::Comma) &&
              !self.check(Token::RightBrace) &&
              self.current_token().token != Token::Eof {
          self.advance()
        }
      }
      
      // Skip semicolon or comma between fields
      if self.check(Token::Semicolon) {
        self.advance()
      } else if self.check(Token::Comma) {
        self.advance()
      }
    }
    
    if self.check(Token::RightBrace) {
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
  while parser.current_token().token != Token::Eof {
    if parser.check(Token::Dictionary) {
      let dictionary = parser.parse_dictionary()
      definitions.push(Definition::DictionaryDef(dictionary))
      if parser.check(Token::Semicolon) {
        parser.advance()
      }
    } else if parser.check(Token::Interface) {
      parser.advance()
      let interface_name = parser.current_identifier()
      parser.advance()
      let extends_name : String? = if parser.check(Token::Colon) {
        parser.advance()
        let parent = parser.current_identifier()
        parser.advance()
        Some(parent)
      } else {
        None
      }
      if parser.check(Token::LeftBrace) {
        parser.advance()
        let attributes : Array[Attribute] = []
        let operations : Array[Operation] = []
        let constants : Array[(String, String)] = []
        while !parser.check(Token::RightBrace) &&
              parser.current_token().token != Token::Eof {
          if parser.check(Token::Readonly) {
            // Parse readonly attribute
            parser.advance()
            // Skip attribute declaration
            while !parser.check(Token::Semicolon) &&
                  parser.current_token().token != Token::Eof {
              parser.advance()
            }
            if parser.check(Token::Semicolon) {
              parser.advance()
            }
          } else if parser.is_identifier() {
            // Could be a return type for operation or attribute type
            // Look ahead to see if there's a method name and (
            let next_pos = parser.position + 1
            let is_operation = if next_pos < tokens.length() {
              match tokens[next_pos].token {
                Token::Identifier(_) => {
                  let paren_pos = next_pos + 1
                  if paren_pos < tokens.length() {
                    match tokens[paren_pos].token {
                      Token::LeftParen => true
                      _ => false
                    }
                  } else {
                    false
                  }
                }
                Token::LeftParen => true  // Method with implicit return type
                _ => false
              }
            } else {
              false
            }
            
            if is_operation {
              let operation = parser.parse_operation()
              operations.push(operation)
            } else {
              // Skip other declarations
              while !parser.check(Token::Semicolon) &&
                    !parser.check(Token::RightBrace) &&
                    parser.current_token().token != Token::Eof {
                parser.advance()
              }
              if parser.check(Token::Semicolon) {
                parser.advance()
              }
            }
          } else {
            // Skip unknown tokens
            parser.advance()
          }
        }
        if parser.check(Token::RightBrace) {
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
      if parser.check(Token::Semicolon) {
        parser.advance()
      }
    } else {
      // Skip unknown tokens
      parser.advance()
    }
  }
  definitions
}
