///|
#external
pub type WorkerLocation

///|
pub impl TJsValue for WorkerLocation with to_js(self : WorkerLocation) -> JsValue = "%identity"

///|
pub fn[T : TWorkerLocation] WorkerLocation::into(self : WorkerLocation) -> T = "%identity"

///|
pub impl TWorkerLocation for WorkerLocation

///|
pub trait TWorkerLocation: TJsValue {}
