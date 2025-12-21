///|
#external
pub type MutationRecord

///|
pub impl TJsValue for MutationRecord with to_js(self : MutationRecord) -> JsValue = "%identity"

///|
pub fn[T : TMutationRecord] MutationRecord::into(self : MutationRecord) -> T = "%identity"

///|
pub impl TMutationRecord for MutationRecord

///|
pub trait TMutationRecord: TJsValue {}
