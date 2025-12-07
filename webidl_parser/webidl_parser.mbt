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
  let tokens_with_pos = lex(input[:]) catch { e => raise Lex(e) }
  // Convert Position to Int for parser compatibility
  let tokens : Array[(Token, Int, Int)] = tokens_with_pos.map(fn(t) {
    let (tok, start, end) = t
    (tok, start.column, end.column)
  })
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
