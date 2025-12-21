///|
#external
pub type Plugin

///|
pub impl TJsValue for Plugin with to_js(self : Plugin) -> JsValue = "%identity"

///|
pub fn[T : TPlugin] Plugin::into(self : Plugin) -> T = "%identity"

///|
pub impl TPlugin for Plugin

///|
pub trait TPlugin: TJsValue {}
