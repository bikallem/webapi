///|
#external
pub type Screen

///|
pub impl TJsValue for Screen with to_js(self : Screen) -> JsValue = "%identity"

///|
pub fn[T : TScreen] Screen::into(self : Screen) -> T = "%identity"

///|
pub impl TScreen for Screen

///|
pub trait TScreen: TJsValue {}
