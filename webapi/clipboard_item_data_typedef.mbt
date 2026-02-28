// Do not edit. This file is generated.
// MoonBit type: ClipboardItemData
// Specifications: clipboard-apis.idl

///|
pub(open) trait TClipboardItemData {
  to_js(self : Self) -> JsValue
}

///|
pub impl TClipboardItemData for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TClipboardItemData for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub type ClipboardItemData = JsPromise[&TClipboardItemData]
