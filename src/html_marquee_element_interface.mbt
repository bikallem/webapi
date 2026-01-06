// Do not edit. This file is generated.
// MoonBit type: HTMLMarqueeElement
// Specifications: html.idl

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
extern "js" fn html_marquee_element_behavior_ffi(obj : JsValue) -> String = "(obj) => obj.behavior"

///|
impl THTMLMarqueeElement with behavior(self : Self) -> String {
  html_marquee_element_behavior_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_behavior_ffi(
  obj : JsValue,
  behavior : JsValue,
) -> Unit = "(obj, behavior) => { obj.behavior = behavior; }"

///|
impl THTMLMarqueeElement with set_behavior(self : Self, behavior : String) -> Unit {
  html_marquee_element_set_behavior_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(behavior),
  )
}

///|
extern "js" fn html_marquee_element_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
impl THTMLMarqueeElement with bg_color(self : Self) -> String {
  html_marquee_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bg_color; }"

///|
impl THTMLMarqueeElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_marquee_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
extern "js" fn html_marquee_element_direction_ffi(obj : JsValue) -> String = "(obj) => obj.direction"

///|
impl THTMLMarqueeElement with direction(self : Self) -> String {
  html_marquee_element_direction_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_direction_ffi(
  obj : JsValue,
  direction : JsValue,
) -> Unit = "(obj, direction) => { obj.direction = direction; }"

///|
impl THTMLMarqueeElement with set_direction(self : Self, direction : String) -> Unit {
  html_marquee_element_set_direction_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(direction),
  )
}

///|
extern "js" fn html_marquee_element_height_ffi(obj : JsValue) -> String = "(obj) => obj.height"

///|
impl THTMLMarqueeElement with height(self : Self) -> String {
  html_marquee_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLMarqueeElement with set_height(self : Self, height : String) -> Unit {
  html_marquee_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_marquee_element_hspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.hspace"

///|
impl THTMLMarqueeElement with hspace(self : Self) -> UInt {
  html_marquee_element_hspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
impl THTMLMarqueeElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_marquee_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
extern "js" fn html_marquee_element_loop_ffi(obj : JsValue) -> Int = "(obj) => obj.loop"

///|
impl THTMLMarqueeElement with loop_(self : Self) -> Int {
  html_marquee_element_loop_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_loop_ffi(
  obj : JsValue,
  loop_ : JsValue,
) -> Unit = "(obj, loop) => { obj.loop = loop_; }"

///|
impl THTMLMarqueeElement with set_loop_(self : Self, loop_ : Int) -> Unit {
  html_marquee_element_set_loop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loop_),
  )
}

///|
extern "js" fn html_marquee_element_scroll_amount_ffi(obj : JsValue) -> UInt = "(obj) => obj.scrollAmount"

///|
impl THTMLMarqueeElement with scroll_amount(self : Self) -> UInt {
  html_marquee_element_scroll_amount_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_scroll_amount_ffi(
  obj : JsValue,
  scroll_amount : JsValue,
) -> Unit = "(obj, scrollAmount) => { obj.scrollAmount = scroll_amount; }"

///|
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
extern "js" fn html_marquee_element_scroll_delay_ffi(obj : JsValue) -> UInt = "(obj) => obj.scrollDelay"

///|
impl THTMLMarqueeElement with scroll_delay(self : Self) -> UInt {
  html_marquee_element_scroll_delay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_scroll_delay_ffi(
  obj : JsValue,
  scroll_delay : JsValue,
) -> Unit = "(obj, scrollDelay) => { obj.scrollDelay = scroll_delay; }"

///|
impl THTMLMarqueeElement with set_scroll_delay(self : Self, scroll_delay : UInt) -> Unit {
  html_marquee_element_set_scroll_delay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_delay),
  )
}

///|
extern "js" fn html_marquee_element_true_speed_ffi(obj : JsValue) -> Bool = "(obj) => obj.trueSpeed"

///|
impl THTMLMarqueeElement with true_speed(self : Self) -> Bool {
  html_marquee_element_true_speed_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_true_speed_ffi(
  obj : JsValue,
  true_speed : JsValue,
) -> Unit = "(obj, trueSpeed) => { obj.trueSpeed = true_speed; }"

///|
impl THTMLMarqueeElement with set_true_speed(self : Self, true_speed : Bool) -> Unit {
  html_marquee_element_set_true_speed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(true_speed),
  )
}

///|
extern "js" fn html_marquee_element_vspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.vspace"

///|
impl THTMLMarqueeElement with vspace(self : Self) -> UInt {
  html_marquee_element_vspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
impl THTMLMarqueeElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_marquee_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
extern "js" fn html_marquee_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLMarqueeElement with width(self : Self) -> String {
  html_marquee_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLMarqueeElement with set_width(self : Self, width : String) -> Unit {
  html_marquee_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_marquee_element_start_ffi(obj : JsValue) -> Unit = "(obj) => obj.start()"

///|
impl THTMLMarqueeElement with start(self : Self) -> Unit {
  html_marquee_element_start_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_marquee_element_stop_ffi(obj : JsValue) -> Unit = "(obj) => obj.stop()"

///|
impl THTMLMarqueeElement with stop(self : Self) -> Unit {
  html_marquee_element_stop_ffi(TJsValue::to_js(self))
}
