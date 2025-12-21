///|
#external
pub type Window

///|
pub impl TJsValue for Window with to_js(self : Window) -> JsValue = "%identity"

///|
pub fn[T : TWindow] Window::into(self : Window) -> T = "%identity"

///|
pub impl TWindow for Window

///|
pub impl TEventTarget for Window

///|
pub trait TWindow: TEventTarget {
  close(self : Self) -> Unit = _
  stop(self : Self) -> Unit = _
  focus(self : Self) -> Unit = _
  blur(self : Self) -> Unit = _
  open(self : Self, url? : String, target? : String, features? : String) -> JsValue = _
  alert(self : Self) -> Unit = _
  alert_2(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> JsValue = _
  print(self : Self) -> Unit = _
  post_message(
    self : Self,
    message : JsValue,
    target_origin : String,
    transfer? : Array[JsValue],
  ) -> Unit = _
  post_message_2(
    self : Self,
    message : JsValue,
    options? : WindowPostMessageOptions,
  ) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  get_computed_style(self : Self, elt : Element, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
  match_media(self : Self, query : CSSOMString) -> MediaQueryList = _
  move_to(self : Self, x : Int, y : Int) -> Unit = _
  move_by(self : Self, x : Int, y : Int) -> Unit = _
  resize_to(self : Self, width : Int, height : Int) -> Unit = _
  resize_by(self : Self, x : Int, y : Int) -> Unit = _
  scroll(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_2(self : Self, x : Double, y : Double) -> JsValue = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_to_2(self : Self, x : Double, y : Double) -> JsValue = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsValue = _
  scroll_by_2(self : Self, x : Double, y : Double) -> JsValue = _
}

///|
extern "js" fn window_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_stop_ffi(obj : JsValue) -> Unit = "(obj) => obj.stop(obj)"

///|
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_focus_ffi(obj : JsValue) -> Unit = "(obj) => obj.focus(obj)"

///|
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur(obj)"

///|
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, target, features) => obj.open(obj, url, target, features)"

///|
impl TWindow with open(
  self : Self,
  url? : String = "",
  target? : String = "_blank",
  features? : String = "",
) -> JsValue {
  window_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(target),
    TJsValue::to_js(features),
  )
}

///|
extern "js" fn window_alert_ffi(obj : JsValue) -> Unit = "(obj) => obj.alert(obj)"

///|
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_alert_2_ffi(obj : JsValue, message : JsValue) -> Unit = "(obj, message) => obj.alert_2(obj, message)"

///|
impl TWindow with alert_2(self : Self, message : String) -> Unit {
  window_alert_2_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

///|
extern "js" fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool = "(obj, message) => obj.confirm(obj, message)"

///|
impl TWindow with confirm(self : Self, message? : String = "") -> Bool {
  window_confirm_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

///|
extern "js" fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "(obj, message, default) => obj.prompt(obj, message, default)"

///|
impl TWindow with prompt(
  self : Self,
  message? : String = "",
  default? : String = "",
) -> JsValue {
  window_prompt_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(default),
  )
}

///|
extern "js" fn window_print_ffi(obj : JsValue) -> Unit = "(obj) => obj.print(obj)"

///|
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, target_origin, transfer) => obj.postMessage(obj, message, target_origin, transfer)"

///|
impl TWindow with post_message(
  self : Self,
  message : JsValue,
  target_origin : String,
  transfer? : Array[JsValue] = [],
) -> Unit {
  window_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(target_origin),
    TJsValue::to_js(transfer),
  )
}

///|
extern "js" fn window_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage_2(obj, message, options)"

///|
impl TWindow with post_message_2(
  self : Self,
  message : JsValue,
  options? : WindowPostMessageOptions = WindowPostMessageOptions::empty(),
) -> Unit {
  window_post_message_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn window_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents(obj)"

///|
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents(obj)"

///|
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> CSSStyleProperties = "(obj, elt, pseudo_elt) => obj.getComputedStyle(obj, elt, pseudo_elt)"

///|
impl TWindow with get_computed_style(
  self : Self,
  elt : Element,
  pseudo_elt? : CSSOMString,
) -> CSSStyleProperties {
  window_get_computed_style_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(elt),
    opt_to_js(pseudo_elt),
  )
}

///|
extern "js" fn window_match_media_ffi(
  obj : JsValue,
  query : JsValue,
) -> MediaQueryList = "(obj, query) => obj.matchMedia(obj, query)"

///|
impl TWindow with match_media(self : Self, query : CSSOMString) -> MediaQueryList {
  window_match_media_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
extern "js" fn window_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveTo(obj, x, y)"

///|
impl TWindow with move_to(self : Self, x : Int, y : Int) -> Unit {
  window_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_move_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveBy(obj, x, y)"

///|
impl TWindow with move_by(self : Self, x : Int, y : Int) -> Unit {
  window_move_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "(obj, width, height) => obj.resizeTo(obj, width, height)"

///|
impl TWindow with resize_to(self : Self, width : Int, height : Int) -> Unit {
  window_resize_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn window_resize_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.resizeBy(obj, x, y)"

///|
impl TWindow with resize_by(self : Self, x : Int, y : Int) -> Unit {
  window_resize_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "(obj, options) => obj.scroll(obj, options)"

///|
impl TWindow with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  window_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scroll_2(obj, x, y)"

///|
impl TWindow with scroll_2(self : Self, x : Double, y : Double) -> JsValue {
  window_scroll_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_scroll_to_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollTo(obj, options)"

///|
impl TWindow with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  window_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollTo_2(obj, x, y)"

///|
impl TWindow with scroll_to_2(self : Self, x : Double, y : Double) -> JsValue {
  window_scroll_to_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_scroll_by_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollBy(obj, options)"

///|
impl TWindow with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsValue {
  window_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollBy_2(obj, x, y)"

///|
impl TWindow with scroll_by_2(self : Self, x : Double, y : Double) -> JsValue {
  window_scroll_by_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}
