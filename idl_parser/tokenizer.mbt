///|
/// WebIDL token definitions
pub enum Token {
  // Keywords
  Interface
  Dictionary
  Readonly
  Optional
  Callback
  Enum
  Attribute

  // Punctuation / special
  LeftBrace
  RightBrace
  LeftParen
  RightParen
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

  // Literals / identifiers
  Identifier(String)
  String(String)
  Number(String)
  Unknown(String)
  Eof
} derive(Show, Eq)

///|
/// Tokenizer state with zero-copy
struct Tokenizer {
  input : String
  mut position : Int
  mut line : Int
  mut column : Int
}

///|
/// Get current view from position to end
pub fn Tokenizer::view(self : Tokenizer) -> StringView {
  self.input.view(start_offset=self.position)
}

///|
/// Update position and column based on consumed view
fn Tokenizer::update_view(self : Tokenizer, rest : StringView) -> Unit {
  let new_offset = rest.start_offset()
  self.column = new_offset - self.position + self.column
  self.position = new_offset
}

///|
/// Create a new tokenizer
pub fn Tokenizer::new(input : String) -> Tokenizer {
  { input, position: 0, line: 1, column: 1 }
}

///|
/// Advance one character, updating line/column tracking
pub fn Tokenizer::advance(self : Tokenizer) -> Unit {
  if self.position < self.input.length() {
    let ch_code = self.input.unsafe_charcode_at(self.position)
    if ch_code == '\n' {
      self.line = self.line + 1
      self.column = 1
    } else {
      self.column = self.column + 1
    }
    let delta = if ch_code >= 0xD800 && ch_code <= 0xDFFF { 2 } else { 1 }
    self.position = self.position + delta
  }
}

///|
/// Peek current character without advancing
pub fn Tokenizer::peek(self : Tokenizer) -> Char? {
  self.input.get_char(self.position)
}

///|
/// Skip whitespace and comments
fn Tokenizer::skip_ws_comments(self : Tokenizer) -> Unit {
  loop self.view() {
    // CRLF and LF
    ['\r', '\n', .. rest] => {
      self.update_view(rest)
      self.line = self.line + 1
      self.column = 1
      continue rest
    }
    ['\n', .. rest] => {
      self.update_view(rest)
      self.line = self.line + 1
      self.column = 1
      continue rest
    }
    // Whitespace (space, tab, CR)
    [' ' | '\t' | '\r', .. rest] => {
      self.update_view(rest)
      continue rest
    }
    // Line comment
    ['/', '/', .. rest] => {
      // Skip until newline or EOF
      let after_comment = loop rest {
        ['\r', '\n', .. r] | ['\n', .. r] => r
        [_, .. r] => continue r
        r => r
      }
      self.update_view(after_comment)
      continue after_comment
    }
    // Block comment
    ['/', '*', .. rest] => {
      // Skip until */ or EOF
      let after_comment = loop rest {
        ['*', '/', .. r] => r
        [c, .. r] => {
          if c == '\n' {
            self.line = self.line + 1
            self.column = 1
          } else {
            self.column = self.column + 1
          }
          continue r
        }
        r => r
      }
      self.update_view(after_comment)
      continue after_comment
    }
    _ => break
  }
}

///|
/// Check if character is identifier start
fn is_id_start(ch : Char) -> Bool {
  (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || ch == '_'
}

///|
/// Check if character is identifier continue
fn is_id_continue(ch : Char) -> Bool {
  is_id_start(ch) || (ch >= '0' && ch <= '9')
}

///|
/// Check if character is digit
fn is_digit(ch : Char) -> Bool {
  ch >= '0' && ch <= '9'
}

///|
/// Read an identifier from current position
fn Tokenizer::read_identifier(self : Tokenizer) -> String {
  let start_pos = self.position
  loop self.view() {
    [c, .. rest] if is_id_continue(c) => {
      self.advance()
      continue rest
    }
    _ => ()
  }
  self.input[start_pos:self.position].to_string() catch {
    _ => ""
  }
}

///|
/// Read a number (integer or float)
fn Tokenizer::read_number(self : Tokenizer) -> String {
  let start_pos = self.position
  let mut seen_dot = false
  loop self.view() {
    [c, .. rest] if is_digit(c) => {
      self.advance()
      continue rest
    }
    ['.', .. rest] if !seen_dot => {
      seen_dot = true
      self.advance()
      continue rest
    }
    _ => ()
  }
  self.input[start_pos:self.position].to_string() catch {
    _ => ""
  }
}

///|
/// Read a string literal (double-quoted, no escape processing)
fn Tokenizer::read_string(self : Tokenizer) -> String {
  self.advance() // skip opening quote
  let start_pos = self.position
  loop self.view() {
    ['"', ..] => break
    ['\n', ..] => break // unterminated
    [_, .. rest] => {
      self.advance()
      continue rest
    }
    _ => break
  }
  let content = self.input[start_pos:self.position].to_string() catch {
    _ => ""
  }
  if self.peek() is Some('"') {
    self.advance() // skip closing quote
  }
  content
}

///|
/// Check if string is a keyword
fn is_keyword(s : String) -> Bool {
  s == "interface" ||
  s == "dictionary" ||
  s == "readonly" ||
  s == "optional" ||
  s == "callback" ||
  s == "enum" ||
  s == "attribute"
}

///|
/// Map keyword string to Token variant
fn keyword_to_token(s : String) -> Token {
  match s {
    "interface" => Token::Interface
    "dictionary" => Token::Dictionary
    "readonly" => Token::Readonly
    "optional" => Token::Optional
    "callback" => Token::Callback
    "enum" => Token::Enum
    "attribute" => Token::Attribute
    _ => Token::Identifier(s)
  }
}

///|
/// Produce next token from current position
pub fn Tokenizer::next_token(self : Tokenizer) -> Token {
  self.skip_ws_comments()
  match self.view() {
    // EOF
    [] => Token::Eof

    // Multi-char operators
    ['.', '.', '.', .. rest] => {
      self.update_view(rest)
      Token::DotDotDot
    }
    ['=', '>', .. rest] => {
      self.update_view(rest)
      Token::Arrow
    }

    // Single-char punctuation
    ['{', .. rest] => {
      self.update_view(rest)
      Token::LeftBrace
    }
    ['}', .. rest] => {
      self.update_view(rest)
      Token::RightBrace
    }
    ['(', .. rest] => {
      self.update_view(rest)
      Token::LeftParen
    }
    [')', .. rest] => {
      self.update_view(rest)
      Token::RightParen
    }
    ['[', .. rest] => {
      self.update_view(rest)
      Token::LeftBracket
    }
    [']', .. rest] => {
      self.update_view(rest)
      Token::RightBracket
    }
    [';', .. rest] => {
      self.update_view(rest)
      Token::Semicolon
    }
    [':', .. rest] => {
      self.update_view(rest)
      Token::Colon
    }
    [',', .. rest] => {
      self.update_view(rest)
      Token::Comma
    }
    ['?', .. rest] => {
      self.update_view(rest)
      Token::Question
    }
    ['|', .. rest] => {
      self.update_view(rest)
      Token::Pipe
    }
    ['=', .. rest] => {
      self.update_view(rest)
      Token::Equals
    }

    // String literal
    ['"', ..] => {
      let s = self.read_string()
      Token::String(s)
    }

    // Identifier or keyword
    [c, ..] if is_id_start(c) => {
      let ident = self.read_identifier()
      if is_keyword(ident) {
        keyword_to_token(ident)
      } else {
        Token::Identifier(ident)
      }
    }

    // Number
    [c, ..] if is_digit(c) => {
      let num = self.read_number()
      Token::Number(num)
    }

    // Unknown character
    [c, .. rest] => {
      self.update_view(rest)
      Token::Unknown(c.to_string())
    }
  }
}

///|
/// Tokenize entire source to array of tokens
pub fn tokenize(source : String) -> Array[Token] {
  let tz = Tokenizer::new(source)
  let out : Array[Token] = []
  while true {
    let t = tz.next_token()
    out.push(t)
    match t {
      Token::Eof => break
      _ => ()
    }
  }
  out
}
