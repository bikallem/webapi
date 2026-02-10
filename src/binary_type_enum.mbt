// Do not edit. This file is generated.
// MoonBit type: BinaryType
// Specifications: websockets.idl

///|
pub(all) enum BinaryType {
  Blob
  Arraybuffer
} derive(Eq, Show)

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
