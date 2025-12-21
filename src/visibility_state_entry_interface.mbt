///|
#external
pub type VisibilityStateEntry

///|
pub impl TJsValue for VisibilityStateEntry with to_js(
  self : VisibilityStateEntry,
) -> JsValue = "%identity"

///|
pub fn[T : TVisibilityStateEntry] VisibilityStateEntry::into(
  self : VisibilityStateEntry,
) -> T = "%identity"

///|
pub impl TVisibilityStateEntry for VisibilityStateEntry

///|
pub trait TVisibilityStateEntry: TPerformanceEntry {}
