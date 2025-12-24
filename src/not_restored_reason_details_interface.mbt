///|
#external
pub type NotRestoredReasonDetails

///|
pub impl TJsValue for NotRestoredReasonDetails with to_js(
  self : NotRestoredReasonDetails,
) -> JsValue = "%identity"

///|
pub fn[T : TNotRestoredReasonDetails] NotRestoredReasonDetails::into(
  self : NotRestoredReasonDetails,
) -> T = "%identity"

///|
pub impl TNotRestoredReasonDetails for NotRestoredReasonDetails

///|
pub trait TNotRestoredReasonDetails: TJsValue {
  reason(self : Self) -> String = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn not_restored_reason_details_reason_ffi(obj : JsValue) -> String = "(obj) => obj.reason"

///|
impl TNotRestoredReasonDetails with reason(self : Self) -> String {
  not_restored_reason_details_reason_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn not_restored_reason_details_to_json_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TNotRestoredReasonDetails with to_json(self : Self) -> JsValue {
  not_restored_reason_details_to_json_ffi(TJsValue::to_js(self))
}
