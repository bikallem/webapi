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
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn not_restored_reasons_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TNotRestoredReasons with to_json(self : Self) -> JsValue {
  not_restored_reasons_to_json_ffi(TJsValue::to_js(self))
}
