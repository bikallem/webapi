///|
#external
pub type NavigationDestination

///|
pub impl TJsValue for NavigationDestination with to_js(
  self : NavigationDestination,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationDestination] NavigationDestination::into(
  self : NavigationDestination,
) -> T = "%identity"

///|
pub impl TNavigationDestination for NavigationDestination

///|
pub trait TNavigationDestination: TJsValue {
  get_state(self : Self) -> JsValue = _
}

///|
extern "js" fn navigation_destination_get_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getState(obj)"

///|
impl TNavigationDestination with get_state(self : Self) -> JsValue {
  navigation_destination_get_state_ffi(TJsValue::to_js(self))
}
