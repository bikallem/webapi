// Do not edit. This file is generated.
// MoonBit type: ReadableStreamReaderMode
// Specifications: streams.idl

///|
pub(all) enum ReadableStreamReaderMode {
  Byob
} derive(Eq)

///|
pub impl Show for ReadableStreamReaderMode with output(
  self : ReadableStreamReaderMode,
  logger : &Logger,
) -> Unit {
  match self {
    ReadableStreamReaderMode::Byob => logger.write_string("Byob")
  }
}

///|
pub impl TJsValue for ReadableStreamReaderMode with to_js(
  self : ReadableStreamReaderMode,
) -> JsValue {
  match self {
    ReadableStreamReaderMode::Byob => TJsValue::to_js("byob")
  }
}

///|
pub fn ReadableStreamReaderMode::from(
  value : String,
) -> ReadableStreamReaderMode? {
  match value {
    "byob" => Some(ReadableStreamReaderMode::Byob)
    _ => None
  }
}

///|
fn ReadableStreamReaderMode::from_unchecked(
  value : String,
) -> ReadableStreamReaderMode {
  match value {
    "byob" => ReadableStreamReaderMode::Byob
    _ => abort("unknown enum value")
  }
}

///|
pub fn ReadableStreamReaderMode::value(
  self : ReadableStreamReaderMode,
) -> String {
  let buf = StringBuilder::new()
  match self {
    ReadableStreamReaderMode::Byob => buf.write_string("byob")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for ReadableStreamReaderMode with from_js_any(value : JsAny) -> ReadableStreamReaderMode {
  ReadableStreamReaderMode::from_unchecked(value)
}
