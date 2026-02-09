// Do not edit. This file is generated.
// MoonBit type: HTMLMarqueeElement
// Specifications: html.idl

///|
/// [HTMLMarqueeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement)
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
pub fn HTMLMarqueeElement::new() -> HTMLMarqueeElement {
  html_marquee_element_new_ffi()
}

///|
/// [HTMLMarqueeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement) interface.
pub trait THTMLMarqueeElement: THTMLElement {
  behavior(self : Self) -> String = _
  set_behavior(self : Self, behavior : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
  direction(self : Self) -> String = _
  set_direction(self : Self, direction : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  hspace(self : Self) -> UInt = _
  set_hspace(self : Self, hspace : UInt) -> Unit = _
  loop_(self : Self) -> Int = _
  set_loop_(self : Self, loop_ : Int) -> Unit = _
  scroll_amount(self : Self) -> UInt = _
  set_scroll_amount(self : Self, scroll_amount : UInt) -> Unit = _
  scroll_delay(self : Self) -> UInt = _
  set_scroll_delay(self : Self, scroll_delay : UInt) -> Unit = _
  true_speed(self : Self) -> Bool = _
  set_true_speed(self : Self, true_speed : Bool) -> Unit = _
  vspace(self : Self) -> UInt = _
  set_vspace(self : Self, vspace : UInt) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  start(self : Self) -> Unit = _
  stop(self : Self) -> Unit = _
}

///|
/// [HTMLMarqueeElement.behavior](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/behavior)
impl THTMLMarqueeElement with behavior(self : Self) -> String {
  html_marquee_element_behavior_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.behavior](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/behavior)
impl THTMLMarqueeElement with set_behavior(self : Self, behavior : String) -> Unit {
  html_marquee_element_set_behavior_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(behavior),
  )
}

///|
/// [HTMLMarqueeElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/bgColor)
impl THTMLMarqueeElement with bg_color(self : Self) -> String {
  html_marquee_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/bgColor)
impl THTMLMarqueeElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_marquee_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
/// [HTMLMarqueeElement.direction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/direction)
impl THTMLMarqueeElement with direction(self : Self) -> String {
  html_marquee_element_direction_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.direction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/direction)
impl THTMLMarqueeElement with set_direction(self : Self, direction : String) -> Unit {
  html_marquee_element_set_direction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(direction),
  )
}

///|
/// [HTMLMarqueeElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/height)
impl THTMLMarqueeElement with height(self : Self) -> String {
  html_marquee_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/height)
impl THTMLMarqueeElement with set_height(self : Self, height : String) -> Unit {
  html_marquee_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [HTMLMarqueeElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/hspace)
impl THTMLMarqueeElement with hspace(self : Self) -> UInt {
  html_marquee_element_hspace_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/hspace)
impl THTMLMarqueeElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_marquee_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
/// [HTMLMarqueeElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/loop)
impl THTMLMarqueeElement with loop_(self : Self) -> Int {
  html_marquee_element_loop_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/loop)
impl THTMLMarqueeElement with set_loop_(self : Self, loop_ : Int) -> Unit {
  html_marquee_element_set_loop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loop_),
  )
}

///|
/// [HTMLMarqueeElement.scrollAmount](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollAmount)
impl THTMLMarqueeElement with scroll_amount(self : Self) -> UInt {
  html_marquee_element_scroll_amount_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.scrollAmount](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollAmount)
impl THTMLMarqueeElement with set_scroll_amount(
  self : Self,
  scroll_amount : UInt,
) -> Unit {
  html_marquee_element_set_scroll_amount_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_amount),
  )
}

///|
/// [HTMLMarqueeElement.scrollDelay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollDelay)
impl THTMLMarqueeElement with scroll_delay(self : Self) -> UInt {
  html_marquee_element_scroll_delay_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.scrollDelay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollDelay)
impl THTMLMarqueeElement with set_scroll_delay(self : Self, scroll_delay : UInt) -> Unit {
  html_marquee_element_set_scroll_delay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_delay),
  )
}

///|
/// [HTMLMarqueeElement.trueSpeed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/trueSpeed)
impl THTMLMarqueeElement with true_speed(self : Self) -> Bool {
  html_marquee_element_true_speed_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.trueSpeed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/trueSpeed)
impl THTMLMarqueeElement with set_true_speed(self : Self, true_speed : Bool) -> Unit {
  html_marquee_element_set_true_speed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(true_speed),
  )
}

///|
/// [HTMLMarqueeElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/vspace)
impl THTMLMarqueeElement with vspace(self : Self) -> UInt {
  html_marquee_element_vspace_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/vspace)
impl THTMLMarqueeElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_marquee_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
/// [HTMLMarqueeElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/width)
impl THTMLMarqueeElement with width(self : Self) -> String {
  html_marquee_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/width)
impl THTMLMarqueeElement with set_width(self : Self, width : String) -> Unit {
  html_marquee_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLMarqueeElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/start)
impl THTMLMarqueeElement with start(self : Self) -> Unit {
  html_marquee_element_start_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMarqueeElement.stop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/stop)
impl THTMLMarqueeElement with stop(self : Self) -> Unit {
  html_marquee_element_stop_ffi(TJsValue::to_js(self))
}
