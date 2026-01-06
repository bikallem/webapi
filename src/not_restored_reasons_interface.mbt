// Do not edit. This file is generated.
// MoonBit type: NotRestoredReasons
// Specifications: html.idl

///|
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
extern "js" fn not_restored_reasons_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl TNotRestoredReasons with src(self : Self) -> String {
  not_restored_reasons_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TNotRestoredReasons with id(self : Self) -> String {
  not_restored_reasons_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TNotRestoredReasons with name(self : Self) -> String {
  not_restored_reasons_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_url_ffi(obj : JsValue) -> String = "(obj) => obj.url"

///|
impl TNotRestoredReasons with url(self : Self) -> String {
  not_restored_reasons_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_reasons_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reasons"

///|
impl TNotRestoredReasons with reasons(self : Self) -> JsValue {
  not_restored_reasons_reasons_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_children_ffi(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
impl TNotRestoredReasons with children(self : Self) -> JsValue {
  not_restored_reasons_children_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reasons_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
impl TNotRestoredReasons with to_json(self : Self) -> JsValue {
  not_restored_reasons_to_json_ffi(TJsValue::to_js(self))
}
