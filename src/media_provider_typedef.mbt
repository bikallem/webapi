// Do not edit. This file is generated.
// MoonBit type: MediaProvider
// Specifications: html.idl

///|
/// [MediaProvider](https://developer.mozilla.org/en-US/docs/Web/API/MediaProvider)
#external
pub type MediaProvider

///|
pub impl TJsValue for MediaProvider with to_js(self : MediaProvider) -> JsValue = "%identity"

///|
pub impl FromJsAny for MediaProvider with from_js_any(value : JsAny) -> MediaProvider = "%identity"

///|
pub(open) trait TMediaProvider {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TMediaProvider] MediaProvider::into(self : MediaProvider) -> T = "%identity"

///|
pub impl TMediaProvider for MediaProvider with to_js(self : MediaProvider) -> JsValue = "%identity"

///|
pub impl TMediaProvider for MediaStream with to_js(self : MediaStream) -> JsValue = "%identity"

///|
pub impl TMediaProvider for MediaSource with to_js(self : MediaSource) -> JsValue = "%identity"

///|
pub impl TMediaProvider for Blob with to_js(self : Blob) -> JsValue = "%identity"
