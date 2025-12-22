///|
#external
pub type HTMLMarqueeElement

///|
pub impl TJsValue for HTMLMarqueeElement with to_js(self : HTMLMarqueeElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMarqueeElement] HTMLMarqueeElement::into(
  self : HTMLMarqueeElement,
) -> T = "%identity"

///|
pub impl THTMLMarqueeElement for HTMLMarqueeElement

///|
pub impl THTMLElement for HTMLMarqueeElement

///|
pub impl TElement for HTMLMarqueeElement

///|
pub impl TNode for HTMLMarqueeElement

///|
pub impl TEventTarget for HTMLMarqueeElement

///|
extern "js" fn html_marquee_element_new_ffi() -> HTMLMarqueeElement = "() => new HTMLMarqueeElement()"

///|
pub fn HTMLMarqueeElement::new() -> HTMLMarqueeElement {
  html_marquee_element_new_ffi()
}

///|
pub trait THTMLMarqueeElement: THTMLElement {
  start(self : Self) -> Unit = _
  stop(self : Self) -> Unit = _
}

///|
extern "js" fn html_marquee_element_start_ffi(obj : JsValue) -> Unit = "(obj) => obj.start(obj)"

///|
impl THTMLMarqueeElement with start(self : Self) -> Unit {
  html_marquee_element_start_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_stop_ffi(obj : JsValue) -> Unit = "(obj) => obj.stop(obj)"

///|
impl THTMLMarqueeElement with stop(self : Self) -> Unit {
  html_marquee_element_stop_ffi(TJsValue::to_js(self))
}
