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
/// Parse WebIDL file from a filepath into an array of definitions
pub fn parse_file(filepath : String) -> Array[Definition] raise WebIdlError {
  let content = @fs.read_file_to_string(filepath) catch {
    e => raise Lex(LexFailed(e.to_string()))
  }
  let tokens = lex(content[:], file=filepath) catch { e => raise Lex(e) }
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
