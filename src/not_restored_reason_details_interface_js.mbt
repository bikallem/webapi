///|
extern "js" fn not_restored_reason_details_reason_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
extern "js" fn not_restored_reason_details_to_json_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.toJSON()"
