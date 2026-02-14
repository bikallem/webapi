// Do not edit. This file is generated.
// MoonBit type: NotRestoredReasonDetails
// Specifications: html.idl

///|
/// [NotRestoredReasonDetails](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails)
#external
pub type NotRestoredReasonDetails

///|
pub impl TJsValue for NotRestoredReasonDetails with to_js(
  self : NotRestoredReasonDetails,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NotRestoredReasonDetails with from_js_any(value : JsAny) -> NotRestoredReasonDetails = "%identity"

///|
pub fn[T : TNotRestoredReasonDetails] NotRestoredReasonDetails::into(
  self : NotRestoredReasonDetails,
) -> T = "%identity"

///|
pub impl TNotRestoredReasonDetails for NotRestoredReasonDetails

///|
/// [NotRestoredReasonDetails](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails) interface.
pub trait TNotRestoredReasonDetails: TJsValue {
  reason(self : Self) -> String = _
  to_json(self : Self) -> JsValue = _
}

///|
/// [NotRestoredReasonDetails.reason](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails/reason)
impl TNotRestoredReasonDetails with reason(self : Self) -> String {
  not_restored_reason_details_reason_ffi(TJsValue::to_js(self))
}

///|
/// [NotRestoredReasonDetails.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails/toJSON)
impl TNotRestoredReasonDetails with to_json(self : Self) -> JsValue {
  not_restored_reason_details_to_json_ffi(TJsValue::to_js(self))
}
