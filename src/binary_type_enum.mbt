// Do not edit. This file is generated.
// MoonBit type: BinaryType
// Specifications: websockets.idl

///|
pub(all) enum BinaryType {
  Blob
  Arraybuffer
} derive(Eq)

///|
pub impl Show for BinaryType with output(self : BinaryType, logger : &Logger) -> Unit {
  match self {
    BinaryType::Blob => logger.write_string("Blob")
    BinaryType::Arraybuffer => logger.write_string("Arraybuffer")
  }
}

///|
pub impl TJsValue for BinaryType with to_js(self : BinaryType) -> JsValue {
  match self {
    BinaryType::Blob => TJsValue::to_js("blob")
    BinaryType::Arraybuffer => TJsValue::to_js("arraybuffer")
  }
}

///|
pub fn BinaryType::from(value : String) -> BinaryType? {
  match value {
    "blob" => Some(BinaryType::Blob)
    "arraybuffer" => Some(BinaryType::Arraybuffer)
    _ => None
  }
}

///|
fn BinaryType::from_unchecked(value : String) -> BinaryType {
  match value {
    "blob" => BinaryType::Blob
    "arraybuffer" => BinaryType::Arraybuffer
    _ => abort("unknown BinaryType enum value")
  }
}

///|
pub fn BinaryType::value(self : BinaryType) -> String {
  let buf = StringBuilder::new()
  match self {
    BinaryType::Blob => buf.write_string("blob")
    BinaryType::Arraybuffer => buf.write_string("arraybuffer")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for BinaryType with from_js_any(value : JsAny) -> BinaryType {
  BinaryType::from_unchecked(value)
}
