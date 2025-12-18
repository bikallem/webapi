// Auto-generated MoonBit bindings for HTMLMarqueeElement interface
// Do not edit manually

#external
pub type HTMLMarqueeElement

pub impl TJsValue for HTMLMarqueeElement with to_js(self: HTMLMarqueeElement) -> JsValue = "%identity"


pub fn[T: THTMLMarqueeElement] HTMLMarqueeElement::into(self : HTMLMarqueeElement) -> T = "%identity"
pub impl THTMLMarqueeElement for HTMLMarqueeElement

pub fn HTMLMarqueeElement::new() -> HTMLMarqueeElement = "webapi_HTMLMarqueeElement" "new"

pub trait THTMLMarqueeElement: TJsValue + TTHTMLElement {
  behavior(self: Self) -> String = _
  set_behavior(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
  direction(self: Self) -> String = _
  set_direction(self: Self, value : String) -> Unit = _
  height(self: Self) -> String = _
  set_height(self: Self, value : String) -> Unit = _
  hspace(self: Self) -> UInt = _
  set_hspace(self: Self, value : UInt) -> Unit = _
  loop_(self: Self) -> Int = _
  set_loop_(self: Self, value : Int) -> Unit = _
  scroll_amount(self: Self) -> UInt = _
  set_scroll_amount(self: Self, value : UInt) -> Unit = _
  scroll_delay(self: Self) -> UInt = _
  set_scroll_delay(self: Self, value : UInt) -> Unit = _
  true_speed(self: Self) -> Bool = _
  set_true_speed(self: Self, value : Bool) -> Unit = _
  vspace(self: Self) -> UInt = _
  set_vspace(self: Self, value : UInt) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  start(self: Self) -> Unit = _
  stop(self: Self) -> Unit = _
}

///|
fn h_t_m_l_marquee_element_behavior_ffi(obj : JsValue) -> String = "webapi_HTMLMarqueeElement" "behavior"

///|
impl THTMLMarqueeElement with behavior(self : Self) -> String {
  h_t_m_l_marquee_element_behavior_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_behavior_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMarqueeElement" "set_behavior"

///|
impl THTMLMarqueeElement with set_behavior(self : Self, value : String) -> Unit {
  h_t_m_l_marquee_element_set_behavior_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLMarqueeElement" "bgColor"

///|
impl THTMLMarqueeElement with bg_color(self : Self) -> String {
  h_t_m_l_marquee_element_bg_color_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMarqueeElement" "set_bgColor"

///|
impl THTMLMarqueeElement with set_bg_color(self : Self, value : String) -> Unit {
  h_t_m_l_marquee_element_set_bg_color_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_direction_ffi(obj : JsValue) -> String = "webapi_HTMLMarqueeElement" "direction"

///|
impl THTMLMarqueeElement with direction(self : Self) -> String {
  h_t_m_l_marquee_element_direction_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_direction_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMarqueeElement" "set_direction"

///|
impl THTMLMarqueeElement with set_direction(self : Self, value : String) -> Unit {
  h_t_m_l_marquee_element_set_direction_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_height_ffi(obj : JsValue) -> String = "webapi_HTMLMarqueeElement" "height"

///|
impl THTMLMarqueeElement with height(self : Self) -> String {
  h_t_m_l_marquee_element_height_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMarqueeElement" "set_height"

///|
impl THTMLMarqueeElement with set_height(self : Self, value : String) -> Unit {
  h_t_m_l_marquee_element_set_height_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_hspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "hspace"

///|
impl THTMLMarqueeElement with hspace(self : Self) -> UInt {
  h_t_m_l_marquee_element_hspace_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_hspace_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLMarqueeElement" "set_hspace"

///|
impl THTMLMarqueeElement with set_hspace(self : Self, value : UInt) -> Unit {
  h_t_m_l_marquee_element_set_hspace_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_loop_ffi(obj : JsValue) -> Int = "webapi_HTMLMarqueeElement" "loop"

///|
impl THTMLMarqueeElement with loop_(self : Self) -> Int {
  h_t_m_l_marquee_element_loop_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_loop_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLMarqueeElement" "set_loop"

///|
impl THTMLMarqueeElement with set_loop_(self : Self, value : Int) -> Unit {
  h_t_m_l_marquee_element_set_loop_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_scroll_amount_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "scrollAmount"

///|
impl THTMLMarqueeElement with scroll_amount(self : Self) -> UInt {
  h_t_m_l_marquee_element_scroll_amount_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_scroll_amount_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollAmount"

///|
impl THTMLMarqueeElement with set_scroll_amount(self : Self, value : UInt) -> Unit {
  h_t_m_l_marquee_element_set_scroll_amount_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_scroll_delay_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "scrollDelay"

///|
impl THTMLMarqueeElement with scroll_delay(self : Self) -> UInt {
  h_t_m_l_marquee_element_scroll_delay_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_scroll_delay_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollDelay"

///|
impl THTMLMarqueeElement with set_scroll_delay(self : Self, value : UInt) -> Unit {
  h_t_m_l_marquee_element_set_scroll_delay_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_true_speed_ffi(obj : JsValue) -> Bool = "webapi_HTMLMarqueeElement" "trueSpeed"

///|
impl THTMLMarqueeElement with true_speed(self : Self) -> Bool {
  h_t_m_l_marquee_element_true_speed_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_true_speed_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMarqueeElement" "set_trueSpeed"

///|
impl THTMLMarqueeElement with set_true_speed(self : Self, value : Bool) -> Unit {
  h_t_m_l_marquee_element_set_true_speed_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_vspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "vspace"

///|
impl THTMLMarqueeElement with vspace(self : Self) -> UInt {
  h_t_m_l_marquee_element_vspace_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_vspace_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLMarqueeElement" "set_vspace"

///|
impl THTMLMarqueeElement with set_vspace(self : Self, value : UInt) -> Unit {
  h_t_m_l_marquee_element_set_vspace_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLMarqueeElement" "width"

///|
impl THTMLMarqueeElement with width(self : Self) -> String {
  h_t_m_l_marquee_element_width_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMarqueeElement" "set_width"

///|
impl THTMLMarqueeElement with set_width(self : Self, value : String) -> Unit {
  h_t_m_l_marquee_element_set_width_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_marquee_element_start_ffi(obj : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "start"

///|
impl THTMLMarqueeElement with start(self : Self) -> Unit {
  h_t_m_l_marquee_element_start_ffi(self.to_js())
}

///|
fn h_t_m_l_marquee_element_stop_ffi(obj : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "stop"

///|
impl THTMLMarqueeElement with stop(self : Self) -> Unit {
  h_t_m_l_marquee_element_stop_ffi(self.to_js())
}