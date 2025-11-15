///|
/// Token types for WebIDL lexer
pub enum Token {
  // Keywords
  Interface
  Extends
  Readonly
  Optional
  Callback
  Dictionary
  Enum
  Attribute
  // Literals and identifiers
  Identifier(String)
  Number(String)
  String(String)
  // Operators and punctuation
  LeftParen
  RightParen
  LeftBrace
  RightBrace
  LeftBracket
  RightBracket
  Semicolon
  Colon
  Comma
  Question
  Pipe
  Equals
  Arrow
  DotDotDot
  // Special
  Eof
  Unknown(String)
} derive(Show, Eq)

///|
/// Token with source location
pub struct LocatedToken {
  token : Token
  line : Int
  column : Int
}

///|
/// Check if code is identifier start
fn is_id_start(code : Int) -> Bool {
  (code >= 'a' && code <= 'z') || (code >= 'A' && code <= 'Z') || code == '_'
}

///|
/// Check if code is identifier continue
fn is_id_continue(code : Int) -> Bool {
  (code >= 'a' && code <= 'z') ||
  (code >= 'A' && code <= 'Z') ||
  (code >= '0' && code <= '9') ||
  code == '_'
}

///|
/// Check if code is digit
fn is_digit(code : Int) -> Bool {
  code >= '0' && code <= '9'
}

///|
/// Check if string is a keyword
fn is_keyword(s : String) -> Bool {
  match s {
    "interface"
    | "extends"
    | "readonly"
    | "optional"
    | "callback"
    | "dictionary"
    | "enum"
    | "attribute" => true
    _ => false
  }
}

///|
/// Convert keyword string to token
fn keyword_to_token(s : String) -> Token {
  match s {
    "interface" => Token::Interface
    "extends" => Token::Extends
    "readonly" => Token::Readonly
    "optional" => Token::Optional
    "callback" => Token::Callback
    "dictionary" => Token::Dictionary
    "enum" => Token::Enum
    "attribute" => Token::Attribute
    _ => Token::Identifier(s)
  }
}

///|
/// Tokenizer state
struct Tokenizer {
  source : String
  mut position : Int
  mut line : Int
  mut column : Int
}

///|
/// Get character code at current position
fn Tokenizer::peek_code(self : Tokenizer) -> Int {
  if self.position >= self.source.length() {
    0
  } else {
    self.source[self.position]
  }
}

///|
/// Get character code at current + offset
fn Tokenizer::peek_code_at(self : Tokenizer, offset : Int) -> Int {
  let idx = self.position + offset
  if idx >= self.source.length() {
    0
  } else {
    self.source[idx]
  }
}

///|
/// Advance position
fn Tokenizer::advance(self : Tokenizer) -> Unit {
  if self.position < self.source.length() {
    let code = self.source[self.position]
    if code == '\n' {
      self.line = self.line + 1
      self.column = 1
    } else {
      self.column = self.column + 1
    }
    self.position = self.position + 1
  }
}

///|
/// Skip whitespace and comments
fn Tokenizer::skip_whitespace_and_comments(self : Tokenizer) -> Unit {
  let mut done = false
  while !done {
    let code = self.peek_code()
    if code == ' ' || code == '\t' || code == '\n' || code == '\r' {
      self.advance()
    } else if code == '/' {
      let next = self.peek_code_at(1)
      if next == '/' {
        // Line comment
        while self.peek_code() != 0 && self.peek_code() != '\n' {
          self.advance()
        }
      } else if next == '*' {
        // Block comment
        self.advance()
        self.advance()
        while self.peek_code() != 0 {
          if self.peek_code() == '*' && self.peek_code_at(1) == '/' {
            self.advance()
            self.advance()
            break
          }
          self.advance()
        }
      } else {
        done = true
      }
    } else {
      done = true
    }
  }
}

///|
/// Read identifier
fn Tokenizer::read_identifier(self : Tokenizer) -> String {
  let start = self.position
  while self.position < self.source.length() &&
        is_id_continue(self.source[self.position]) {
    self.position = self.position + 1
  }
  self.source[start:self.position].to_string() catch {
    _ => ""
  }
}

///|
/// Read number
fn Tokenizer::read_number(self : Tokenizer) -> String {
  let start = self.position
  while self.position < self.source.length() {
    let code = self.source[self.position]
    if is_digit(code) || code == '.' {
      self.position = self.position + 1
    } else {
      break
    }
  }
  self.source[start:self.position].to_string() catch {
    _ => ""
  }
}

///|
/// Read string literal
fn Tokenizer::read_string(self : Tokenizer) -> String {
  self.advance() // skip opening quote
  let start = self.position
  while self.position < self.source.length() &&
        self.source[self.position] != '"' {
    self.advance()
  }
  let result = self.source[start:self.position].to_string() catch { _ => "" }
  if self.peek_code() == '"' {
    self.advance()
  }
  result
}

///|
/// Get next token
pub fn Tokenizer::next_token(self : Tokenizer) -> LocatedToken {
  self.skip_whitespace_and_comments()
  let line = self.line
  let column = self.column
  let code = self.peek_code()
  if code == 0 {
    return { token: Token::Eof, line, column }
  }
  if code == '(' {
    self.advance()
    { token: Token::LeftParen, line, column }
  } else if code == ')' {
    self.advance()
    { token: Token::RightParen, line, column }
  } else if code == '{' {
    self.advance()
    { token: Token::LeftBrace, line, column }
  } else if code == '}' {
    self.advance()
    { token: Token::RightBrace, line, column }
  } else if code == '[' {
    self.advance()
    { token: Token::LeftBracket, line, column }
  } else if code == ']' {
    self.advance()
    { token: Token::RightBracket, line, column }
  } else if code == ';' {
    self.advance()
    { token: Token::Semicolon, line, column }
  } else if code == ':' {
    self.advance()
    { token: Token::Colon, line, column }
  } else if code == ',' {
    self.advance()
    { token: Token::Comma, line, column }
  } else if code == '?' {
    self.advance()
    { token: Token::Question, line, column }
  } else if code == '|' {
    self.advance()
    { token: Token::Pipe, line, column }
  } else if code == '=' {
    self.advance()
    if self.peek_code() == '>' {
      self.advance()
      { token: Token::Arrow, line, column }
    } else {
      { token: Token::Equals, line, column }
    }
  } else if code == '.' &&
    self.peek_code_at(1) == '.' &&
    self.peek_code_at(2) == '.' {
    self.advance()
    self.advance()
    self.advance()
    { token: Token::DotDotDot, line, column }
  } else if code == '"' {
    let str_val = self.read_string()
    { token: Token::String(str_val), line, column }
  } else if is_id_start(code) {
    let ident = self.read_identifier()
    let token = if is_keyword(ident) {
      keyword_to_token(ident)
    } else {
      Token::Identifier(ident)
    }
    { token, line, column }
  } else if is_digit(code) {
    let num = self.read_number()
    { token: Token::Number(num), line, column }
  } else {
    self.advance()
    { token: Token::Unknown(code.to_string()), line, column }
  }
}

///|
/// Tokenize source string
pub fn tokenize(source : String) -> Array[LocatedToken] {
  let tokenizer : Tokenizer = { source, position: 0, line: 1, column: 1 }
  let tokens : Array[LocatedToken] = []
  let mut done = false
  while !done {
    let tok = tokenizer.next_token()
    tokens.push(tok)
    if tok.token == Token::Eof {
      done = true
    }
  }
  tokens
}
