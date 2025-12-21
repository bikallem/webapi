///|
#external
pub type WorkerNavigator

///|
pub impl TJsValue for WorkerNavigator with to_js(self : WorkerNavigator) -> JsValue = "%identity"

///|
pub fn[T : TWorkerNavigator] WorkerNavigator::into(self : WorkerNavigator) -> T = "%identity"

///|
pub impl TWorkerNavigator for WorkerNavigator

///|
pub trait TWorkerNavigator: TJsValue {
  taint_enabled(self : Self) -> Bool = _
}

///|
extern "js" fn worker_navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.taintEnabled(obj)"

///|
impl TWorkerNavigator with taint_enabled(self : Self) -> Bool {
  worker_navigator_taint_enabled_ffi(TJsValue::to_js(self))
}
