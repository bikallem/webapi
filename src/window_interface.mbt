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
  open(self : Self, url? : String, target? : String, features? : String) -> WindowProxy = _
  alert(self : Self) -> Unit = _
  alert_2(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> String = _
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
  get_computed_style(self : Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
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
  report_error(self : Self, e : JsValue) -> Unit = _
  btoa(self : Self, data : String) -> String = _
  atob(self : Self, data : String) -> String = _
  set_timeout(
    self : Self,
    handler : TimerHandler,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(
    self : Self,
    handler : TimerHandler,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : VoidFunction) -> Unit = _
  create_image_bitmap(
    self : Self,
    image : ImageBitmapSource,
    options? : ImageBitmapOptions,
  ) -> JsValue = _
  create_image_bitmap_2(
    self : Self,
    image : ImageBitmapSource,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    options? : ImageBitmapOptions,
  ) -> JsValue = _
  structured_clone(
    self : Self,
    value : JsValue,
    options? : StructuredSerializeOptions,
  ) -> JsValue = _
  request_animation_frame(self : Self, callback : FrameRequestCallback) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
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
) -> WindowProxy = "(obj, url, target, features) => obj.open(obj, url, target, features)"

///|
impl TWindow with open(
  self : Self,
  url? : String = "",
  target? : String = "_blank",
  features? : String = "",
) -> WindowProxy {
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
) -> String = "(obj, message, default) => obj.prompt(obj, message, default)"

///|
impl TWindow with prompt(
  self : Self,
  message? : String = "",
  default? : String = "",
) -> String {
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
  elt : &TElement,
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

///|
extern "js" fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "(obj, e) => obj.reportError(obj, e)"

///|
impl TWindow with report_error(self : Self, e : JsValue) -> Unit {
  window_report_error_ffi(TJsValue::to_js(self), TJsValue::to_js(e))
}

///|
extern "js" fn window_btoa_ffi(obj : JsValue, data : JsValue) -> String = "(obj, data) => obj.btoa(obj, data)"

///|
impl TWindow with btoa(self : Self, data : String) -> String {
  window_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn window_atob_ffi(obj : JsValue, data : JsValue) -> String = "(obj, data) => obj.atob(obj, data)"

///|
impl TWindow with atob(self : Self, data : String) -> String {
  window_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "(obj, handler, timeout, arguments) => obj.setTimeout(obj, handler, timeout, arguments)"

///|
impl TWindow with set_timeout(
  self : Self,
  handler : TimerHandler,
  timeout? : Int = 0,
  arguments : JsValue,
) -> Int {
  window_set_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handler),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments),
  )
}

///|
extern "js" fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearTimeout(obj, id)"

///|
impl TWindow with clear_timeout(self : Self, id? : Int = 0) -> Unit {
  window_clear_timeout_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
extern "js" fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "(obj, handler, timeout, arguments) => obj.setInterval(obj, handler, timeout, arguments)"

///|
impl TWindow with set_interval(
  self : Self,
  handler : TimerHandler,
  timeout? : Int = 0,
  arguments : JsValue,
) -> Int {
  window_set_interval_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handler),
    TJsValue::to_js(timeout),
    TJsValue::to_js(arguments),
  )
}

///|
extern "js" fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearInterval(obj, id)"

///|
impl TWindow with clear_interval(self : Self, id? : Int = 0) -> Unit {
  window_clear_interval_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
extern "js" fn window_queue_microtask_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.queueMicrotask(obj, callback)"

///|
impl TWindow with queue_microtask(self : Self, callback : VoidFunction) -> Unit {
  window_queue_microtask_ffi(TJsValue::to_js(self), TJsValue::to_js(callback))
}

///|
extern "js" fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, options) => obj.createImageBitmap(obj, image, options)"

///|
impl TWindow with create_image_bitmap(
  self : Self,
  image : ImageBitmapSource,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsValue {
  window_create_image_bitmap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn window_create_image_bitmap_2_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap_2(obj, image, sx, sy, sw, sh, options)"

///|
impl TWindow with create_image_bitmap_2(
  self : Self,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsValue {
  window_create_image_bitmap_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "(obj, value, options) => obj.structuredClone(obj, value, options)"

///|
impl TWindow with structured_clone(
  self : Self,
  value : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> JsValue {
  window_structured_clone_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt = "(obj, callback) => obj.requestAnimationFrame(obj, callback)"

///|
impl TWindow with request_animation_frame(
  self : Self,
  callback : FrameRequestCallback,
) -> UInt {
  window_request_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
extern "js" fn window_cancel_animation_frame_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(obj, handle)"

///|
impl TWindow with cancel_animation_frame(self : Self, handle : UInt) -> Unit {
  window_cancel_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handle),
  )
}
