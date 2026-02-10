// Do not edit. This file is generated.
// MoonBit type: NotRestoredReasons
// Specifications: html.idl

///|
/// [NotRestoredReasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons)
#external
pub type NotRestoredReasons

///|
pub impl TJsValue for NotRestoredReasons with to_js(self : NotRestoredReasons) -> JsValue = "%identity"

///|
pub fn[T : TNotRestoredReasons] NotRestoredReasons::into(
  self : NotRestoredReasons,
) -> T = "%identity"

///|
pub impl TNotRestoredReasons for NotRestoredReasons

///|
/// [NotRestoredReasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons) interface.
pub trait TNotRestoredReasons: TJsValue {
  src(self : Self) -> String = _
  id(self : Self) -> String = _
  name(self : Self) -> String = _
  url(self : Self) -> String = _
  reasons(self : Self) -> JsValue = _
  children(self : Self) -> JsValue = _
  to_json(self : Self) -> JsValue = _
}

///|
/// [NotRestoredReasons.src](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/src)
impl TNotRestoredReasons with src(self : Self) -> String {
  not_restored_reasons_src_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.id](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/id)
impl TNotRestoredReasons with id(self : Self) -> String {
  not_restored_reasons_id_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.name](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/name)
impl TNotRestoredReasons with name(self : Self) -> String {
  not_restored_reasons_name_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.url](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/url)
impl TNotRestoredReasons with url(self : Self) -> String {
  not_restored_reasons_url_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.reasons](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/reasons)
impl TNotRestoredReasons with reasons(self : Self) -> JsValue {
  not_restored_reasons_reasons_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.children](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/children)
impl TNotRestoredReasons with children(self : Self) -> JsValue {
  not_restored_reasons_children_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasons.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasons/toJSON)
impl TNotRestoredReasons with to_json(self : Self) -> JsValue {
  not_restored_reasons_to_json_ffi(TJsValue::to_js(self))
}
