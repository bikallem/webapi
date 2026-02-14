// Do not edit. This file is generated.
// MoonBit type: ReadableStreamType
// Specifications: streams.idl

///|
pub(all) enum ReadableStreamType {
  Bytes
} derive(Eq)

///|
pub impl Show for ReadableStreamType with output(
  self : ReadableStreamType,
  logger : &Logger,
) -> Unit {
  match self {
    ReadableStreamType::Bytes => logger.write_string("Bytes")
  }
}

///|
pub impl TJsValue for ReadableStreamType with to_js(self : ReadableStreamType) -> JsValue {
  match self {
    ReadableStreamType::Bytes => TJsValue::to_js("bytes")
  }
}

///|
pub fn ReadableStreamType::from(value : String) -> ReadableStreamType? {
  match value {
    "bytes" => Some(ReadableStreamType::Bytes)
    _ => None
  }
}

///|
fn ReadableStreamType::from_unchecked(value : String) -> ReadableStreamType {
  match value {
    "bytes" => ReadableStreamType::Bytes
    _ => abort("unknown ReadableStreamType enum value")
  }
}

///|
pub fn ReadableStreamType::value(self : ReadableStreamType) -> String {
  let buf = StringBuilder::new()
  match self {
    ReadableStreamType::Bytes => buf.write_string("bytes")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for ReadableStreamType with from_js_any(value : JsAny) -> ReadableStreamType {
  ReadableStreamType::from_unchecked(value)
}
