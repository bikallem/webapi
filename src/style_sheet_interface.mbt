///|
#external
pub type StyleSheet

///|
pub impl TJsValue for StyleSheet with to_js(self : StyleSheet) -> JsValue = "%identity"

///|
pub fn[T : TStyleSheet] StyleSheet::into(self : StyleSheet) -> T = "%identity"

///|
pub impl TStyleSheet for StyleSheet

///|
pub trait TStyleSheet: TJsValue {}
