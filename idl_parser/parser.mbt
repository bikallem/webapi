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
/// Parse WebIDL source
pub fn parse(source : String) -> Array[Definition] {
  let tokens = tokenize(source)
  let parser : Parser = { tokens, position: 0 }
  let definitions : Array[Definition] = []
  while parser.current_token().token != Token::Eof {
    if parser.check(Token::Interface) {
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
            parser.advance() // skip "attribute" keyword if present
            // Skip for now
            while !parser.check(Token::Semicolon) &&
                  parser.current_token().token != Token::Eof {
              parser.advance()
            }
            if parser.check(Token::Semicolon) {
              parser.advance()
            }
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
