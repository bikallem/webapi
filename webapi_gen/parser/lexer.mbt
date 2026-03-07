///|
/// WebIDL Lexer using lexmatch
/// Based on https://github.com/moonbit-community/webidl.mbt/blob/main/parser/lexer.mbt

///|
/// Keywords map for token lookup
let keywords : Map[String, Token] = {
  "attribute": ATTRIBUTE,
  "callback": CALLBACK,
  "const": CONST,
  "constructor": CONSTRUCTOR,
  "deleter": DELETER,
  "dictionary": DICTIONARY,
  "enum": ENUM,
  "getter": GETTER,
  "includes": INCLUDES,
  "inherit": INHERIT,
  "interface": INTERFACE,
  "iterable": ITERABLE,
  "maplike": MAPLIKE,
  "mixin": MIXIN,
  "namespace": NAMESPACE,
  "partial": PARTIAL,
  "readonly": READONLY,
  "required": REQUIRED,
  "setlike": SETLIKE,
  "setter": SETTER,
  "static": STATIC,
  "stringifier": STRINGIFIER,
  "typedef": TYPEDEF,
  "unrestricted": UNRESTRICTED,
  "ArrayBuffer": ARRAYBUFFER,
  "SharedArrayBuffer": SHAREDARRAYBUFFER,
  "DataView": DATAVIEW,
  "Int8Array": INT8ARRAY,
  "Int16Array": INT16ARRAY,
  "Int32Array": INT32ARRAY,
  "Uint8Array": UINT8ARRAY,
  "Uint16Array": UINT16ARRAY,
  "Uint32Array": UINT32ARRAY,
  "Uint8ClampedArray": UINT8CLAMPEDARRAY,
  "BigInt64Array": BIGINT64ARRAY,
  "BigUint64Array": BIGUINT64ARRAY,
  "Float16Array": FLOAT16ARRAY,
  "Float32Array": FLOAT32ARRAY,
  "Float64Array": FLOAT64ARRAY,
  "ByteString": BYTESTRING,
  "DOMString": DOMSTRING,
  "USVString": USVSTRING,
  "FrozenArray": FROZENARRAY,
  "Infinity": INFINITY,
  "-Infinity": NEG_INFINITY,
  "NaN": NAN,
  "ObservableArray": OBSERVABLEARRAY,
  "Promise": PROMISE,
  "any": ANY,
  "bigint": BIGINT,
  "boolean": BOOLEAN,
  "byte": BYTE,
  "double": DOUBLE,
  "float": FLOAT_KW,
  "long": LONG,
  "object": OBJECT,
  "octet": OCTET,
  "record": RECORD,
  "sequence": SEQUENCE,
  "short": SHORT,
  "symbol": SYMBOL,
  "unsigned": UNSIGNED,
  "false": FALSE,
  "true": TRUE,
  "null": NULL,
  "undefined": UNDEFINED,
  "optional": OPTIONAL,
  "or": OR,
  "async_iterable": ASYNC_ITERABLE,
  "async_sequence": ASYNC_SEQUENCE,
}

///|
/// Error type for lexing
pub suberror LexError {
  LexFailed(StringView)
} derive(Show)

///|
/// Position in the source file
pub struct Position {
  file : String
  line : Int
  column : Int
} derive(Show)

///|
/// Tokenize WebIDL input into an array of tokens with positions
pub fn lex(
  input : StringView,
  file? : String = "",
) -> Array[(Token, Position, Position)] raise LexError {
  let mut line = 1
  let mut column = 1
  let mut remain = input
  let acc : Array[(Token, Position, Position)] = []
  fn push(token : Token, lexeme : StringView, xs : StringView) {
    let start = { file, line, column }
    let end = { file, line, column: column + lexeme.length() }
    acc.push((token, start, end))
    column += lexeme.length()
    remain = xs
  }

  for ;; {
    lexmatch remain with longest {
      ("-?([1-9][0-9]*|0[Xx][0-9A-Fa-f]+|0[0-7]*)" as s, xs) =>
        push(INTEGER(s.to_string()), s, xs)
      (
        "-?(([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([Ee][+\-]?[0-9]+)?|[0-9]+[Ee][+\-]?[0-9]+)" as s,
        xs
      ) => push(FLOAT(s.to_string()), s, xs)
      ("[_\-]?[A-Za-z][0-9A-Z_a-z\-]*" as s, xs) => {
        let tok = match keywords.get(s.to_string()) {
          None => IDENTIFIER(s.to_string())
          Some(t) => t
        }
        push(tok, s, xs)
      }
      ("\"" ("[^\"]*" as s) "\"", xs) => push(STRING(s.to_string()), s, xs)
      ("(\r\n)|\n|\r", xs) => {
        line += 1
        column = 1
        remain = xs
      }
      ("[\t ]+" as s, xs) => {
        column += s.length()
        remain = xs
      }
      ("//[^\n]*\n", xs) => { // Single line comment
        line += 1
        column = 1
        remain = xs
      }
      ("//[^\n]*$", xs) => // Single line comment at EOF
        remain = xs
      ("/\*([^*]|\*+[^*/])*\*+/" as s, xs) => { // Multi-line comment
        let strs = s.split("\n").collect()
        line += strs.length() - 1
        column += strs.last().unwrap_or("").length()
        remain = xs
      }
      ("\.\.\." as s, xs) => push(ELLIPSIS, s, xs)
      (":", xs) => push(COLON, ":", xs)
      (";", xs) => push(SEMICOLON, ";", xs)
      ("<", xs) => push(LANGLE, "<", xs)
      ("=", xs) => push(EQUALS, "=", xs)
      (">", xs) => push(RANGLE, ">", xs)
      ("\?", xs) => push(QUESTION, "?", xs)
      ("\*", xs) => push(STAR, "*", xs)
      ("[{]", xs) => push(LBRACE, "{", xs)
      ("[}]", xs) => push(RBRACE, "}", xs)
      ("\(", xs) => push(LPAREN, "(", xs)
      ("\)", xs) => push(RPAREN, ")", xs)
      ("\[", xs) => push(LBRACKET, "[", xs)
      ("\]", xs) => push(RBRACKET, "]", xs)
      (",", xs) => push(COMMA, ",", xs)
      ("$", _) => {
        push(EOF, "", "")
        break
      }
      xs => raise LexFailed(xs)
    }
  }
  acc
}
