///|
/// WebIDL Parser - Public API
/// Parses WebIDL text into an AST

///|
/// Unified error type for parsing
pub suberror WebIdlError {
  Lex(LexError)
  Parse(ParseError)
} derive(Show)

///|
/// Parse WebIDL text into an array of definitions
pub fn parse(input : String) -> Array[Definition] raise WebIdlError {
  let tokens = lex(input[:]) catch { e => raise Lex(e) }
  definitions(tokens) catch {
    e => raise Parse(e)
  }
}

///|
/// Tokenize WebIDL text into an array of tokens with positions
pub fn tokenize(
  input : String,
) -> Array[(Token, Position, Position)] raise LexError {
  lex(input[:])
}
