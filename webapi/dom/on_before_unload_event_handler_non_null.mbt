// Auto-generated MoonBit bindings for OnBeforeUnloadEventHandlerNonNull callback

// Do not edit manually

//
// WebIDL Callback:
// [LegacyTreatNonObjectAsNull]
// callback OnBeforeUnloadEventHandlerNonNull = DOMString? (Event event);

///|
#external
pub type OnBeforeUnloadEventHandlerNonNull

///|
pub impl TJsValue for OnBeforeUnloadEventHandlerNonNull with to_js(
  self : OnBeforeUnloadEventHandlerNonNull,
) -> JsValue = "%identity"

///|
pub fn OnBeforeUnloadEventHandlerNonNull::new(
  f : (Event) -> String?,
) -> OnBeforeUnloadEventHandlerNonNull = "webapi_OnBeforeUnloadEventHandlerNonNull" "new"
