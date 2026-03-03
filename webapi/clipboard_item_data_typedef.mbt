// Do not edit. This file is generated.
// MoonBit type: ClipboardItemData
// Specifications: clipboard-apis.idl

///|
pub(open) trait TClipboardItemData: TJsValue {}

///|
pub impl TClipboardItemData for String

///|
pub impl TClipboardItemData for Blob

///|
pub type ClipboardItemData = JsPromise[&TClipboardItemData]
