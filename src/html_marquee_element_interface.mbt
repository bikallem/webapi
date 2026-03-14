// Do not edit. This file is generated.
// MoonBit type: HTMLMarqueeElement
// Specifications: html.idl

/// [HTMLMarqueeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement)
#external
pub type HTMLMarqueeElement

pub impl TJsValue for HTMLMarqueeElement with to_js(self: HTMLMarqueeElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLMarqueeElement with from_js_any(value : JsAny) -> HTMLMarqueeElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLMarqueeElement] HTMLMarqueeElement::into(self : HTMLMarqueeElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLMarqueeElement] HTMLMarqueeElement::unsafe_into(self : HTMLMarqueeElement) -> T = "%identity"

pub impl HasConstructor for HTMLMarqueeElement with constructor_name() { "HTMLMarqueeElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLMarqueeElement + HasConstructor] HTMLMarqueeElement::try_into(self : HTMLMarqueeElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLMarqueeElement for HTMLMarqueeElement

pub impl THTMLElement for HTMLMarqueeElement

pub impl TElement for HTMLMarqueeElement

pub impl TNode for HTMLMarqueeElement

pub impl TEventTarget for HTMLMarqueeElement

pub fn HTMLMarqueeElement::new() -> HTMLMarqueeElement {
  html_marquee_element_new_ffi()
}

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

/// [HTMLMarqueeElement.behavior](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/behavior)
impl THTMLMarqueeElement with behavior(self : Self) -> String {
  html_marquee_element_behavior_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.behavior](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/behavior)
impl THTMLMarqueeElement with set_behavior(self : Self, 
behavior : String) -> Unit {
  html_marquee_element_set_behavior_ffi(TJsValue::to_js(self), TJsValue::to_js(behavior))
}

/// [HTMLMarqueeElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/bgColor)
impl THTMLMarqueeElement with bg_color(self : Self) -> String {
  html_marquee_element_bg_color_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/bgColor)
impl THTMLMarqueeElement with set_bg_color(self : Self, 
bg_color : String) -> Unit {
  html_marquee_element_set_bg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(bg_color))
}

/// [HTMLMarqueeElement.direction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/direction)
impl THTMLMarqueeElement with direction(self : Self) -> String {
  html_marquee_element_direction_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.direction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/direction)
impl THTMLMarqueeElement with set_direction(self : Self, 
direction : String) -> Unit {
  html_marquee_element_set_direction_ffi(TJsValue::to_js(self), TJsValue::to_js(direction))
}

/// [HTMLMarqueeElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/height)
impl THTMLMarqueeElement with height(self : Self) -> String {
  html_marquee_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/height)
impl THTMLMarqueeElement with set_height(self : Self, 
height : String) -> Unit {
  html_marquee_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLMarqueeElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/hspace)
impl THTMLMarqueeElement with hspace(self : Self) -> UInt {
  html_marquee_element_hspace_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/hspace)
impl THTMLMarqueeElement with set_hspace(self : Self, 
hspace : UInt) -> Unit {
  html_marquee_element_set_hspace_ffi(TJsValue::to_js(self), TJsValue::to_js(hspace))
}

/// [HTMLMarqueeElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/loop)
impl THTMLMarqueeElement with loop_(self : Self) -> Int {
  html_marquee_element_loop_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/loop)
impl THTMLMarqueeElement with set_loop_(self : Self, 
loop_ : Int) -> Unit {
  html_marquee_element_set_loop_ffi(TJsValue::to_js(self), TJsValue::to_js(loop_))
}

/// [HTMLMarqueeElement.scrollAmount](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollAmount)
impl THTMLMarqueeElement with scroll_amount(self : Self) -> UInt {
  html_marquee_element_scroll_amount_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.scrollAmount](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollAmount)
impl THTMLMarqueeElement with set_scroll_amount(self : Self, 
scroll_amount : UInt) -> Unit {
  html_marquee_element_set_scroll_amount_ffi(TJsValue::to_js(self), TJsValue::to_js(scroll_amount))
}

/// [HTMLMarqueeElement.scrollDelay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollDelay)
impl THTMLMarqueeElement with scroll_delay(self : Self) -> UInt {
  html_marquee_element_scroll_delay_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.scrollDelay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/scrollDelay)
impl THTMLMarqueeElement with set_scroll_delay(self : Self, 
scroll_delay : UInt) -> Unit {
  html_marquee_element_set_scroll_delay_ffi(TJsValue::to_js(self), TJsValue::to_js(scroll_delay))
}

/// [HTMLMarqueeElement.trueSpeed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/trueSpeed)
impl THTMLMarqueeElement with true_speed(self : Self) -> Bool {
  html_marquee_element_true_speed_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.trueSpeed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/trueSpeed)
impl THTMLMarqueeElement with set_true_speed(self : Self, 
true_speed : Bool) -> Unit {
  html_marquee_element_set_true_speed_ffi(TJsValue::to_js(self), TJsValue::to_js(true_speed))
}

/// [HTMLMarqueeElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/vspace)
impl THTMLMarqueeElement with vspace(self : Self) -> UInt {
  html_marquee_element_vspace_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/vspace)
impl THTMLMarqueeElement with set_vspace(self : Self, 
vspace : UInt) -> Unit {
  html_marquee_element_set_vspace_ffi(TJsValue::to_js(self), TJsValue::to_js(vspace))
}

/// [HTMLMarqueeElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/width)
impl THTMLMarqueeElement with width(self : Self) -> String {
  html_marquee_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/width)
impl THTMLMarqueeElement with set_width(self : Self, 
width : String) -> Unit {
  html_marquee_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLMarqueeElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/start)
impl THTMLMarqueeElement with start(self : Self) -> Unit {
  html_marquee_element_start_ffi(TJsValue::to_js(self))
}

/// [HTMLMarqueeElement.stop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement/stop)
impl THTMLMarqueeElement with stop(self : Self) -> Unit {
  html_marquee_element_stop_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn html_marquee_element_new_ffi() -> HTMLMarqueeElement = "() => new HTMLMarqueeElement()"

#cfg(target="js")
extern "js" fn html_marquee_element_behavior_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.behavior"

///|
#cfg(target="js")
fn html_marquee_element_behavior_ffi(obj: JsValue) -> String {
  html_marquee_element_behavior_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_behavior_ffi(obj: JsValue, behavior: JsValue) -> Unit = "(obj, behavior) => { obj.behavior = behavior; }"

#cfg(target="js")
extern "js" fn html_marquee_element_bg_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
#cfg(target="js")
fn html_marquee_element_bg_color_ffi(obj: JsValue) -> String {
  html_marquee_element_bg_color_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

#cfg(target="js")
extern "js" fn html_marquee_element_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
fn html_marquee_element_direction_ffi(obj: JsValue) -> String {
  html_marquee_element_direction_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "(obj, direction) => { obj.direction = direction; }"

#cfg(target="js")
extern "js" fn html_marquee_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_marquee_element_height_ffi(obj: JsValue) -> String {
  html_marquee_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn html_marquee_element_hspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hspace"

///|
#cfg(target="js")
fn html_marquee_element_hspace_ffi(obj: JsValue) -> UInt {
  html_marquee_element_hspace_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_hspace_ffi(obj: JsValue, hspace: JsValue) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

#cfg(target="js")
extern "js" fn html_marquee_element_loop_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loop"

///|
#cfg(target="js")
fn html_marquee_element_loop_ffi(obj: JsValue) -> Int {
  html_marquee_element_loop_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_loop_ffi(obj: JsValue, loop_: JsValue) -> Unit = "(obj, loop) => { obj.loop = loop; }"

#cfg(target="js")
extern "js" fn html_marquee_element_scroll_amount_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollAmount"

///|
#cfg(target="js")
fn html_marquee_element_scroll_amount_ffi(obj: JsValue) -> UInt {
  html_marquee_element_scroll_amount_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_scroll_amount_ffi(obj: JsValue, scroll_amount: JsValue) -> Unit = "(obj, scrollAmount) => { obj.scrollAmount = scrollAmount; }"

#cfg(target="js")
extern "js" fn html_marquee_element_scroll_delay_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollDelay"

///|
#cfg(target="js")
fn html_marquee_element_scroll_delay_ffi(obj: JsValue) -> UInt {
  html_marquee_element_scroll_delay_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_scroll_delay_ffi(obj: JsValue, scroll_delay: JsValue) -> Unit = "(obj, scrollDelay) => { obj.scrollDelay = scrollDelay; }"

#cfg(target="js")
extern "js" fn html_marquee_element_true_speed_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.trueSpeed"

///|
#cfg(target="js")
fn html_marquee_element_true_speed_ffi(obj: JsValue) -> Bool {
  html_marquee_element_true_speed_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_true_speed_ffi(obj: JsValue, true_speed: JsValue) -> Unit = "(obj, trueSpeed) => { obj.trueSpeed = trueSpeed; }"

#cfg(target="js")
extern "js" fn html_marquee_element_vspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vspace"

///|
#cfg(target="js")
fn html_marquee_element_vspace_ffi(obj: JsValue) -> UInt {
  html_marquee_element_vspace_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_vspace_ffi(obj: JsValue, vspace: JsValue) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

#cfg(target="js")
extern "js" fn html_marquee_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_marquee_element_width_ffi(obj: JsValue) -> String {
  html_marquee_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_marquee_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_marquee_element_start_ffi(obj: JsValue) -> Unit = "(obj) => obj.start()"

#cfg(target="js")
extern "js" fn html_marquee_element_stop_ffi(obj: JsValue) -> Unit = "(obj) => obj.stop()"

#cfg(target="wasm-gc")
fn html_marquee_element_new_ffi() -> HTMLMarqueeElement = "webapi_HTMLMarqueeElement" "new"

#cfg(target="wasm-gc")
fn html_marquee_element_behavior_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_behavior"

///|
#cfg(target="wasm-gc")
fn html_marquee_element_behavior_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_marquee_element_behavior_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_marquee_element_set_behavior_ffi(obj: JsValue, behavior: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_behavior"

#cfg(target="wasm-gc")
fn html_marquee_element_bg_color_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_bgColor"

///|
#cfg(target="wasm-gc")
fn html_marquee_element_bg_color_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_marquee_element_bg_color_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_marquee_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_bgColor"

#cfg(target="wasm-gc")
fn html_marquee_element_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_direction"

///|
#cfg(target="wasm-gc")
fn html_marquee_element_direction_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_marquee_element_direction_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_marquee_element_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_direction"

#cfg(target="wasm-gc")
fn html_marquee_element_height_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_marquee_element_height_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_marquee_element_height_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_marquee_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_height"

#cfg(target="wasm-gc")
fn html_marquee_element_hspace_ffi(obj: JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_hspace"

#cfg(target="wasm-gc")
fn html_marquee_element_set_hspace_ffi(obj: JsValue, hspace: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_hspace"

#cfg(target="wasm-gc")
fn html_marquee_element_loop_ffi(obj: JsValue) -> Int = "webapi_HTMLMarqueeElement" "get_loop"

#cfg(target="wasm-gc")
fn html_marquee_element_set_loop_ffi(obj: JsValue, loop_: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_loop"

#cfg(target="wasm-gc")
fn html_marquee_element_scroll_amount_ffi(obj: JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_scrollAmount"

#cfg(target="wasm-gc")
fn html_marquee_element_set_scroll_amount_ffi(obj: JsValue, scroll_amount: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollAmount"

#cfg(target="wasm-gc")
fn html_marquee_element_scroll_delay_ffi(obj: JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_scrollDelay"

#cfg(target="wasm-gc")
fn html_marquee_element_set_scroll_delay_ffi(obj: JsValue, scroll_delay: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollDelay"

#cfg(target="wasm-gc")
fn html_marquee_element_true_speed_ffi(obj: JsValue) -> Bool = "webapi_HTMLMarqueeElement" "get_trueSpeed"

#cfg(target="wasm-gc")
fn html_marquee_element_set_true_speed_ffi(obj: JsValue, true_speed: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_trueSpeed"

#cfg(target="wasm-gc")
fn html_marquee_element_vspace_ffi(obj: JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_vspace"

#cfg(target="wasm-gc")
fn html_marquee_element_set_vspace_ffi(obj: JsValue, vspace: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_vspace"

#cfg(target="wasm-gc")
fn html_marquee_element_width_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_marquee_element_width_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_marquee_element_width_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_marquee_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_width"

#cfg(target="wasm-gc")
fn html_marquee_element_start_ffi(obj: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "start"

#cfg(target="wasm-gc")
fn html_marquee_element_stop_ffi(obj: JsValue) -> Unit = "webapi_HTMLMarqueeElement" "stop"