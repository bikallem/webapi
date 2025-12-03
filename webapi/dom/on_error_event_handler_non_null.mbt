// Auto-generated MoonBit bindings for OnErrorEventHandlerNonNull callback

// Do not edit manually

//
// WebIDL Callback:
// [LegacyTreatNonObjectAsNull]
// callback OnErrorEventHandlerNonNull = any ((Event or DOMString) event, optional DOMString source, optional unsigned long lineno, optional unsigned long colno, optional any error);

///|
#external
pub type OnErrorEventHandlerNonNull

///|
pub impl TJsValue for OnErrorEventHandlerNonNull with to_js(
  self : OnErrorEventHandlerNonNull,
) -> JsValue = "%identity"

///|
pub fn OnErrorEventHandlerNonNull::new(
  f : (JsValue, String, Int, Int, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull = "webapi_OnErrorEventHandlerNonNull" "new"
