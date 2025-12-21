///|
#external
pub type XMLHttpRequestEventTarget

///|
pub impl TJsValue for XMLHttpRequestEventTarget with to_js(
  self : XMLHttpRequestEventTarget,
) -> JsValue = "%identity"

///|
pub fn[T : TXMLHttpRequestEventTarget] XMLHttpRequestEventTarget::into(
  self : XMLHttpRequestEventTarget,
) -> T = "%identity"

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequestEventTarget

///|
pub impl TEventTarget for XMLHttpRequestEventTarget

///|
pub trait TXMLHttpRequestEventTarget: TEventTarget {}
