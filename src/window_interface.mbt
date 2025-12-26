// Do not edit. This file is generated.
// MoonBit type: Window
// Specifications: cssom-view.idl, cssom.idl, dom.idl, html.idl

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
#external
pub type WindowEvent

///|
pub fn[T : TWindowEvent] WindowEvent::into(self : WindowEvent) -> T = "%identity"

///|
extern "js" fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "(obj) => obj === undefined"

///|
pub fn WindowEvent::is_undefined(self : WindowEvent) -> Bool {
  window_event_is_undefined_ffi(self)
}

///|
pub impl TWindowEvent for WindowEvent with to_js(self : WindowEvent) -> JsValue = "%identity"

///|
pub(open) trait TWindowEvent {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWindowEvent for Event with to_js(self : Event) -> JsValue = "%identity"

///|
pub impl TWindowEvent for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"

///|
pub trait TWindow: TEventTarget {
  event(self : Self) -> WindowEvent = _
  window(self : Self) -> WindowProxy = _
  self(self : Self) -> WindowProxy = _
  document(self : Self) -> Document = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  location(self : Self) -> Location = _
  history(self : Self) -> History = _
  navigation(self : Self) -> Navigation = _
  custom_elements(self : Self) -> CustomElementRegistry = _
  locationbar(self : Self) -> BarProp = _
  menubar(self : Self) -> BarProp = _
  personalbar(self : Self) -> BarProp = _
  scrollbars(self : Self) -> BarProp = _
  statusbar(self : Self) -> BarProp = _
  toolbar(self : Self) -> BarProp = _
  status(self : Self) -> String = _
  set_status(self : Self, status : String) -> Unit = _
  close(self : Self) -> Unit = _
  closed(self : Self) -> Bool = _
  stop(self : Self) -> Unit = _
  focus(self : Self) -> Unit = _
  blur(self : Self) -> Unit = _
  frames(self : Self) -> WindowProxy = _
  length(self : Self) -> UInt = _
  top(self : Self) -> WindowProxy = _
  opener(self : Self) -> JsValue = _
  set_opener(self : Self, opener : JsValue) -> Unit = _
  parent(self : Self) -> WindowProxy = _
  frame_element(self : Self) -> Element = _
  open(self : Self, url? : String, target? : String, features? : String) -> WindowProxy = _
  navigator(self : Self) -> Navigator = _
  client_information(self : Self) -> Navigator = _
  origin_agent_cluster(self : Self) -> Bool = _
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
  external(self : Self) -> External = _
  get_computed_style(self : Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
  match_media(self : Self, query : CSSOMString) -> MediaQueryList = _
  screen(self : Self) -> Screen = _
  visual_viewport(self : Self) -> VisualViewport = _
  move_to(self : Self, x : Int, y : Int) -> Unit = _
  move_by(self : Self, x : Int, y : Int) -> Unit = _
  resize_to(self : Self, width : Int, height : Int) -> Unit = _
  resize_by(self : Self, x : Int, y : Int) -> Unit = _
  inner_width(self : Self) -> Int = _
  inner_height(self : Self) -> Int = _
  scroll_x(self : Self) -> Double = _
  page_x_offset(self : Self) -> Double = _
  scroll_y(self : Self) -> Double = _
  page_y_offset(self : Self) -> Double = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by_2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  screen_x(self : Self) -> Int = _
  screen_left(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  screen_top(self : Self) -> Int = _
  outer_width(self : Self) -> Int = _
  outer_height(self : Self) -> Int = _
  device_pixel_ratio(self : Self) -> Double = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : EventHandler,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, onwebkitanimationend : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : EventHandler,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, onwebkitanimationstart : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, onwebkittransitionend : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : EventHandler) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : EventHandler) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : EventHandler) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : OnBeforeUnloadEventHandler) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : EventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : EventHandler) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : EventHandler) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : EventHandler) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : EventHandler) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : EventHandler) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : EventHandler) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, onunhandledrejection : EventHandler) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : EventHandler) -> Unit = _
  origin(self : Self) -> String = _
  is_secure_context(self : Self) -> Bool = _
  cross_origin_isolated(self : Self) -> Bool = _
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
  ) -> JsPromise[ImageBitmap] = _
  create_image_bitmap_2(
    self : Self,
    image : ImageBitmapSource,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    options? : ImageBitmapOptions,
  ) -> JsPromise[ImageBitmap] = _
  structured_clone(
    self : Self,
    value : JsValue,
    options? : StructuredSerializeOptions,
  ) -> JsValue = _
  performance(self : Self) -> Performance = _
  trusted_types(self : Self) -> TrustedTypePolicyFactory = _
  request_animation_frame(self : Self, callback : FrameRequestCallback) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
  session_storage(self : Self) -> Storage = _
  local_storage(self : Self) -> Storage = _
}

///|
extern "js" fn window_event_ffi(obj : JsValue) -> WindowEvent = "(obj) => obj.event"

///|
impl TWindow with event(self : Self) -> WindowEvent {
  window_event_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_window_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.window"

///|
impl TWindow with window(self : Self) -> WindowProxy {
  window_window_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_self_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.self"

///|
impl TWindow with self(self : Self) -> WindowProxy {
  window_self_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_document_ffi(obj : JsValue) -> Document = "(obj) => obj.document"

///|
impl TWindow with document(self : Self) -> Document {
  window_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TWindow with name(self : Self) -> String {
  window_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl TWindow with set_name(self : Self, name : String) -> Unit {
  window_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn window_location_ffi(obj : JsValue) -> Location = "(obj) => obj.location"

///|
impl TWindow with location(self : Self) -> Location {
  window_location_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_history_ffi(obj : JsValue) -> History = "(obj) => obj.history"

///|
impl TWindow with history(self : Self) -> History {
  window_history_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_navigation_ffi(obj : JsValue) -> Navigation = "(obj) => obj.navigation"

///|
impl TWindow with navigation(self : Self) -> Navigation {
  window_navigation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_custom_elements_ffi(
  obj : JsValue,
) -> CustomElementRegistry = "(obj) => obj.customElements"

///|
impl TWindow with custom_elements(self : Self) -> CustomElementRegistry {
  window_custom_elements_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_locationbar_ffi(obj : JsValue) -> BarProp = "(obj) => obj.locationbar"

///|
impl TWindow with locationbar(self : Self) -> BarProp {
  window_locationbar_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_menubar_ffi(obj : JsValue) -> BarProp = "(obj) => obj.menubar"

///|
impl TWindow with menubar(self : Self) -> BarProp {
  window_menubar_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_personalbar_ffi(obj : JsValue) -> BarProp = "(obj) => obj.personalbar"

///|
impl TWindow with personalbar(self : Self) -> BarProp {
  window_personalbar_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_scrollbars_ffi(obj : JsValue) -> BarProp = "(obj) => obj.scrollbars"

///|
impl TWindow with scrollbars(self : Self) -> BarProp {
  window_scrollbars_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_statusbar_ffi(obj : JsValue) -> BarProp = "(obj) => obj.statusbar"

///|
impl TWindow with statusbar(self : Self) -> BarProp {
  window_statusbar_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_toolbar_ffi(obj : JsValue) -> BarProp = "(obj) => obj.toolbar"

///|
impl TWindow with toolbar(self : Self) -> BarProp {
  window_toolbar_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_status_ffi(obj : JsValue) -> String = "(obj) => obj.status"

///|
impl TWindow with status(self : Self) -> String {
  window_status_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_status_ffi(obj : JsValue, status : JsValue) -> Unit = "(obj, status) => { obj.status = status; }"

///|
impl TWindow with set_status(self : Self, status : String) -> Unit {
  window_set_status_ffi(TJsValue::to_js(self), TJsValue::to_js(status))
}

///|
extern "js" fn window_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_closed_ffi(obj : JsValue) -> Bool = "(obj) => obj.closed"

///|
impl TWindow with closed(self : Self) -> Bool {
  window_closed_ffi(TJsValue::to_js(self))
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
extern "js" fn window_frames_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.frames"

///|
impl TWindow with frames(self : Self) -> WindowProxy {
  window_frames_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TWindow with length(self : Self) -> UInt {
  window_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_top_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.top"

///|
impl TWindow with top(self : Self) -> WindowProxy {
  window_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_opener_ffi(obj : JsValue) -> JsValue = "(obj) => obj.opener"

///|
impl TWindow with opener(self : Self) -> JsValue {
  window_opener_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_opener_ffi(obj : JsValue, opener : JsValue) -> Unit = "(obj, opener) => { obj.opener = opener; }"

///|
impl TWindow with set_opener(self : Self, opener : JsValue) -> Unit {
  window_set_opener_ffi(TJsValue::to_js(self), TJsValue::to_js(opener))
}

///|
extern "js" fn window_parent_ffi(obj : JsValue) -> WindowProxy = "(obj) => obj.parent"

///|
impl TWindow with parent(self : Self) -> WindowProxy {
  window_parent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_frame_element_ffi(obj : JsValue) -> Element = "(obj) => obj.frameElement"

///|
impl TWindow with frame_element(self : Self) -> Element {
  window_frame_element_ffi(TJsValue::to_js(self))
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
extern "js" fn window_navigator_ffi(obj : JsValue) -> Navigator = "(obj) => obj.navigator"

///|
impl TWindow with navigator(self : Self) -> Navigator {
  window_navigator_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_client_information_ffi(obj : JsValue) -> Navigator = "(obj) => obj.clientInformation"

///|
impl TWindow with client_information(self : Self) -> Navigator {
  window_client_information_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool = "(obj) => obj.originAgentCluster"

///|
impl TWindow with origin_agent_cluster(self : Self) -> Bool {
  window_origin_agent_cluster_ffi(TJsValue::to_js(self))
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
extern "js" fn window_external_ffi(obj : JsValue) -> External = "(obj) => obj.external"

///|
impl TWindow with external(self : Self) -> External {
  window_external_ffi(TJsValue::to_js(self))
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
extern "js" fn window_screen_ffi(obj : JsValue) -> Screen = "(obj) => obj.screen"

///|
impl TWindow with screen(self : Self) -> Screen {
  window_screen_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_visual_viewport_ffi(obj : JsValue) -> VisualViewport = "(obj) => obj.visualViewport"

///|
impl TWindow with visual_viewport(self : Self) -> VisualViewport {
  window_visual_viewport_ffi(TJsValue::to_js(self))
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
extern "js" fn window_inner_width_ffi(obj : JsValue) -> Int = "(obj) => obj.innerWidth"

///|
impl TWindow with inner_width(self : Self) -> Int {
  window_inner_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_inner_height_ffi(obj : JsValue) -> Int = "(obj) => obj.innerHeight"

///|
impl TWindow with inner_height(self : Self) -> Int {
  window_inner_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_scroll_x_ffi(obj : JsValue) -> Double = "(obj) => obj.scrollX"

///|
impl TWindow with scroll_x(self : Self) -> Double {
  window_scroll_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_page_x_offset_ffi(obj : JsValue) -> Double = "(obj) => obj.pageXOffset"

///|
impl TWindow with page_x_offset(self : Self) -> Double {
  window_page_x_offset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_scroll_y_ffi(obj : JsValue) -> Double = "(obj) => obj.scrollY"

///|
impl TWindow with scroll_y(self : Self) -> Double {
  window_scroll_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_page_y_offset_ffi(obj : JsValue) -> Double = "(obj) => obj.pageYOffset"

///|
impl TWindow with page_y_offset(self : Self) -> Double {
  window_page_y_offset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_scroll_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Unit] = "(obj, options) => obj.scroll(obj, options)"

///|
impl TWindow with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scroll_2(obj, x, y)"

///|
impl TWindow with scroll_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
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
) -> JsPromise[Unit] = "(obj, options) => obj.scrollTo(obj, options)"

///|
impl TWindow with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scrollTo_2(obj, x, y)"

///|
impl TWindow with scroll_to_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
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
) -> JsPromise[Unit] = "(obj, options) => obj.scrollBy(obj, options)"

///|
impl TWindow with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn window_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[Unit] = "(obj, x, y) => obj.scrollBy_2(obj, x, y)"

///|
impl TWindow with scroll_by_2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_by_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn window_screen_x_ffi(obj : JsValue) -> Int = "(obj) => obj.screenX"

///|
impl TWindow with screen_x(self : Self) -> Int {
  window_screen_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_screen_left_ffi(obj : JsValue) -> Int = "(obj) => obj.screenLeft"

///|
impl TWindow with screen_left(self : Self) -> Int {
  window_screen_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_screen_y_ffi(obj : JsValue) -> Int = "(obj) => obj.screenY"

///|
impl TWindow with screen_y(self : Self) -> Int {
  window_screen_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_screen_top_ffi(obj : JsValue) -> Int = "(obj) => obj.screenTop"

///|
impl TWindow with screen_top(self : Self) -> Int {
  window_screen_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_outer_width_ffi(obj : JsValue) -> Int = "(obj) => obj.outerWidth"

///|
impl TWindow with outer_width(self : Self) -> Int {
  window_outer_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_outer_height_ffi(obj : JsValue) -> Int = "(obj) => obj.outerHeight"

///|
impl TWindow with outer_height(self : Self) -> Int {
  window_outer_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double = "(obj) => obj.devicePixelRatio"

///|
impl TWindow with device_pixel_ratio(self : Self) -> Double {
  window_device_pixel_ratio_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_onabort_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onabort"

///|
impl TWindow with onabort(self : Self) -> EventHandler {
  window_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
impl TWindow with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  window_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
extern "js" fn window_onauxclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onauxclick"

///|
impl TWindow with onauxclick(self : Self) -> EventHandler {
  window_onauxclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
impl TWindow with set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit {
  window_set_onauxclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onauxclick))
}

///|
extern "js" fn window_onbeforeinput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforeinput"

///|
impl TWindow with onbeforeinput(self : Self) -> EventHandler {
  window_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
impl TWindow with set_onbeforeinput(self : Self, onbeforeinput : EventHandler) -> Unit {
  window_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeinput),
  )
}

///|
extern "js" fn window_onbeforematch_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforematch"

///|
impl TWindow with onbeforematch(self : Self) -> EventHandler {
  window_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
impl TWindow with set_onbeforematch(self : Self, onbeforematch : EventHandler) -> Unit {
  window_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforematch),
  )
}

///|
extern "js" fn window_onbeforetoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforetoggle"

///|
impl TWindow with onbeforetoggle(self : Self) -> EventHandler {
  window_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
impl TWindow with set_onbeforetoggle(self : Self, onbeforetoggle : EventHandler) -> Unit {
  window_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforetoggle),
  )
}

///|
extern "js" fn window_onblur_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onblur"

///|
impl TWindow with onblur(self : Self) -> EventHandler {
  window_onblur_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
impl TWindow with set_onblur(self : Self, onblur : EventHandler) -> Unit {
  window_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

///|
extern "js" fn window_oncancel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncancel"

///|
impl TWindow with oncancel(self : Self) -> EventHandler {
  window_oncancel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
impl TWindow with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  window_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

///|
extern "js" fn window_oncanplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplay"

///|
impl TWindow with oncanplay(self : Self) -> EventHandler {
  window_oncanplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
impl TWindow with set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit {
  window_set_oncanplay_ffi(TJsValue::to_js(self), TJsValue::to_js(oncanplay))
}

///|
extern "js" fn window_oncanplaythrough_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplaythrough"

///|
impl TWindow with oncanplaythrough(self : Self) -> EventHandler {
  window_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
impl TWindow with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : EventHandler,
) -> Unit {
  window_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplaythrough),
  )
}

///|
extern "js" fn window_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
impl TWindow with onchange(self : Self) -> EventHandler {
  window_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
impl TWindow with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  window_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

///|
extern "js" fn window_onclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclick"

///|
impl TWindow with onclick(self : Self) -> EventHandler {
  window_onclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
impl TWindow with set_onclick(self : Self, onclick : EventHandler) -> Unit {
  window_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

///|
extern "js" fn window_onclose_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclose"

///|
impl TWindow with onclose(self : Self) -> EventHandler {
  window_onclose_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
impl TWindow with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  window_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
extern "js" fn window_oncommand_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncommand"

///|
impl TWindow with oncommand(self : Self) -> EventHandler {
  window_oncommand_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
impl TWindow with set_oncommand(self : Self, oncommand : EventHandler) -> Unit {
  window_set_oncommand_ffi(TJsValue::to_js(self), TJsValue::to_js(oncommand))
}

///|
extern "js" fn window_oncontextlost_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextlost"

///|
impl TWindow with oncontextlost(self : Self) -> EventHandler {
  window_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
impl TWindow with set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit {
  window_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
extern "js" fn window_oncontextmenu_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextmenu"

///|
impl TWindow with oncontextmenu(self : Self) -> EventHandler {
  window_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
impl TWindow with set_oncontextmenu(self : Self, oncontextmenu : EventHandler) -> Unit {
  window_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextmenu),
  )
}

///|
extern "js" fn window_oncontextrestored_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextrestored"

///|
impl TWindow with oncontextrestored(self : Self) -> EventHandler {
  window_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
impl TWindow with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandler,
) -> Unit {
  window_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}

///|
extern "js" fn window_oncopy_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncopy"

///|
impl TWindow with oncopy(self : Self) -> EventHandler {
  window_oncopy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
impl TWindow with set_oncopy(self : Self, oncopy : EventHandler) -> Unit {
  window_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

///|
extern "js" fn window_oncuechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncuechange"

///|
impl TWindow with oncuechange(self : Self) -> EventHandler {
  window_oncuechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
impl TWindow with set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit {
  window_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}

///|
extern "js" fn window_oncut_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncut"

///|
impl TWindow with oncut(self : Self) -> EventHandler {
  window_oncut_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
impl TWindow with set_oncut(self : Self, oncut : EventHandler) -> Unit {
  window_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

///|
extern "js" fn window_ondblclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondblclick"

///|
impl TWindow with ondblclick(self : Self) -> EventHandler {
  window_ondblclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
impl TWindow with set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit {
  window_set_ondblclick_ffi(TJsValue::to_js(self), TJsValue::to_js(ondblclick))
}

///|
extern "js" fn window_ondrag_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrag"

///|
impl TWindow with ondrag(self : Self) -> EventHandler {
  window_ondrag_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
impl TWindow with set_ondrag(self : Self, ondrag : EventHandler) -> Unit {
  window_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

///|
extern "js" fn window_ondragend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragend"

///|
impl TWindow with ondragend(self : Self) -> EventHandler {
  window_ondragend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
impl TWindow with set_ondragend(self : Self, ondragend : EventHandler) -> Unit {
  window_set_ondragend_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragend))
}

///|
extern "js" fn window_ondragenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragenter"

///|
impl TWindow with ondragenter(self : Self) -> EventHandler {
  window_ondragenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
impl TWindow with set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit {
  window_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragenter),
  )
}

///|
extern "js" fn window_ondragleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragleave"

///|
impl TWindow with ondragleave(self : Self) -> EventHandler {
  window_ondragleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
impl TWindow with set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit {
  window_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragleave),
  )
}

///|
extern "js" fn window_ondragover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragover"

///|
impl TWindow with ondragover(self : Self) -> EventHandler {
  window_ondragover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
impl TWindow with set_ondragover(self : Self, ondragover : EventHandler) -> Unit {
  window_set_ondragover_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragover))
}

///|
extern "js" fn window_ondragstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragstart"

///|
impl TWindow with ondragstart(self : Self) -> EventHandler {
  window_ondragstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
impl TWindow with set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit {
  window_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragstart),
  )
}

///|
extern "js" fn window_ondrop_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrop"

///|
impl TWindow with ondrop(self : Self) -> EventHandler {
  window_ondrop_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
impl TWindow with set_ondrop(self : Self, ondrop : EventHandler) -> Unit {
  window_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

///|
extern "js" fn window_ondurationchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondurationchange"

///|
impl TWindow with ondurationchange(self : Self) -> EventHandler {
  window_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
impl TWindow with set_ondurationchange(
  self : Self,
  ondurationchange : EventHandler,
) -> Unit {
  window_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondurationchange),
  )
}

///|
extern "js" fn window_onemptied_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onemptied"

///|
impl TWindow with onemptied(self : Self) -> EventHandler {
  window_onemptied_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
impl TWindow with set_onemptied(self : Self, onemptied : EventHandler) -> Unit {
  window_set_onemptied_ffi(TJsValue::to_js(self), TJsValue::to_js(onemptied))
}

///|
extern "js" fn window_onended_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onended"

///|
impl TWindow with onended(self : Self) -> EventHandler {
  window_onended_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
impl TWindow with set_onended(self : Self, onended : EventHandler) -> Unit {
  window_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

///|
extern "js" fn window_onerror_ffi(obj : JsValue) -> OnErrorEventHandler = "(obj) => obj.onerror"

///|
impl TWindow with onerror(self : Self) -> OnErrorEventHandler {
  window_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
impl TWindow with set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit {
  window_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
extern "js" fn window_onfocus_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onfocus"

///|
impl TWindow with onfocus(self : Self) -> EventHandler {
  window_onfocus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
impl TWindow with set_onfocus(self : Self, onfocus : EventHandler) -> Unit {
  window_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

///|
extern "js" fn window_onformdata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onformdata"

///|
impl TWindow with onformdata(self : Self) -> EventHandler {
  window_onformdata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
impl TWindow with set_onformdata(self : Self, onformdata : EventHandler) -> Unit {
  window_set_onformdata_ffi(TJsValue::to_js(self), TJsValue::to_js(onformdata))
}

///|
extern "js" fn window_oninput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninput"

///|
impl TWindow with oninput(self : Self) -> EventHandler {
  window_oninput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
impl TWindow with set_oninput(self : Self, oninput : EventHandler) -> Unit {
  window_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

///|
extern "js" fn window_oninvalid_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninvalid"

///|
impl TWindow with oninvalid(self : Self) -> EventHandler {
  window_oninvalid_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
impl TWindow with set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit {
  window_set_oninvalid_ffi(TJsValue::to_js(self), TJsValue::to_js(oninvalid))
}

///|
extern "js" fn window_onkeydown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeydown"

///|
impl TWindow with onkeydown(self : Self) -> EventHandler {
  window_onkeydown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
impl TWindow with set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit {
  window_set_onkeydown_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeydown))
}

///|
extern "js" fn window_onkeypress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeypress"

///|
impl TWindow with onkeypress(self : Self) -> EventHandler {
  window_onkeypress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
impl TWindow with set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit {
  window_set_onkeypress_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeypress))
}

///|
extern "js" fn window_onkeyup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeyup"

///|
impl TWindow with onkeyup(self : Self) -> EventHandler {
  window_onkeyup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
impl TWindow with set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit {
  window_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

///|
extern "js" fn window_onload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onload"

///|
impl TWindow with onload(self : Self) -> EventHandler {
  window_onload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
impl TWindow with set_onload(self : Self, onload : EventHandler) -> Unit {
  window_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
extern "js" fn window_onloadeddata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadeddata"

///|
impl TWindow with onloadeddata(self : Self) -> EventHandler {
  window_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
impl TWindow with set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit {
  window_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadeddata),
  )
}

///|
extern "js" fn window_onloadedmetadata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadedmetadata"

///|
impl TWindow with onloadedmetadata(self : Self) -> EventHandler {
  window_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
impl TWindow with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : EventHandler,
) -> Unit {
  window_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadedmetadata),
  )
}

///|
extern "js" fn window_onloadstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadstart"

///|
impl TWindow with onloadstart(self : Self) -> EventHandler {
  window_onloadstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
impl TWindow with set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit {
  window_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
extern "js" fn window_onmousedown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousedown"

///|
impl TWindow with onmousedown(self : Self) -> EventHandler {
  window_onmousedown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
impl TWindow with set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit {
  window_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousedown),
  )
}

///|
extern "js" fn window_onmouseenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseenter"

///|
impl TWindow with onmouseenter(self : Self) -> EventHandler {
  window_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
impl TWindow with set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit {
  window_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseenter),
  )
}

///|
extern "js" fn window_onmouseleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseleave"

///|
impl TWindow with onmouseleave(self : Self) -> EventHandler {
  window_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
impl TWindow with set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit {
  window_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseleave),
  )
}

///|
extern "js" fn window_onmousemove_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousemove"

///|
impl TWindow with onmousemove(self : Self) -> EventHandler {
  window_onmousemove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
impl TWindow with set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit {
  window_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousemove),
  )
}

///|
extern "js" fn window_onmouseout_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseout"

///|
impl TWindow with onmouseout(self : Self) -> EventHandler {
  window_onmouseout_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
impl TWindow with set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit {
  window_set_onmouseout_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseout))
}

///|
extern "js" fn window_onmouseover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseover"

///|
impl TWindow with onmouseover(self : Self) -> EventHandler {
  window_onmouseover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
impl TWindow with set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit {
  window_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseover),
  )
}

///|
extern "js" fn window_onmouseup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseup"

///|
impl TWindow with onmouseup(self : Self) -> EventHandler {
  window_onmouseup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
impl TWindow with set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit {
  window_set_onmouseup_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseup))
}

///|
extern "js" fn window_onpaste_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpaste"

///|
impl TWindow with onpaste(self : Self) -> EventHandler {
  window_onpaste_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
impl TWindow with set_onpaste(self : Self, onpaste : EventHandler) -> Unit {
  window_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

///|
extern "js" fn window_onpause_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpause"

///|
impl TWindow with onpause(self : Self) -> EventHandler {
  window_onpause_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
impl TWindow with set_onpause(self : Self, onpause : EventHandler) -> Unit {
  window_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

///|
extern "js" fn window_onplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplay"

///|
impl TWindow with onplay(self : Self) -> EventHandler {
  window_onplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
impl TWindow with set_onplay(self : Self, onplay : EventHandler) -> Unit {
  window_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

///|
extern "js" fn window_onplaying_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplaying"

///|
impl TWindow with onplaying(self : Self) -> EventHandler {
  window_onplaying_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
impl TWindow with set_onplaying(self : Self, onplaying : EventHandler) -> Unit {
  window_set_onplaying_ffi(TJsValue::to_js(self), TJsValue::to_js(onplaying))
}

///|
extern "js" fn window_onprogress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onprogress"

///|
impl TWindow with onprogress(self : Self) -> EventHandler {
  window_onprogress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
impl TWindow with set_onprogress(self : Self, onprogress : EventHandler) -> Unit {
  window_set_onprogress_ffi(TJsValue::to_js(self), TJsValue::to_js(onprogress))
}

///|
extern "js" fn window_onratechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onratechange"

///|
impl TWindow with onratechange(self : Self) -> EventHandler {
  window_onratechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
impl TWindow with set_onratechange(self : Self, onratechange : EventHandler) -> Unit {
  window_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onratechange),
  )
}

///|
extern "js" fn window_onreset_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onreset"

///|
impl TWindow with onreset(self : Self) -> EventHandler {
  window_onreset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
impl TWindow with set_onreset(self : Self, onreset : EventHandler) -> Unit {
  window_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

///|
extern "js" fn window_onresize_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onresize"

///|
impl TWindow with onresize(self : Self) -> EventHandler {
  window_onresize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
impl TWindow with set_onresize(self : Self, onresize : EventHandler) -> Unit {
  window_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

///|
extern "js" fn window_onscroll_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscroll"

///|
impl TWindow with onscroll(self : Self) -> EventHandler {
  window_onscroll_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
impl TWindow with set_onscroll(self : Self, onscroll : EventHandler) -> Unit {
  window_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

///|
extern "js" fn window_onscrollend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscrollend"

///|
impl TWindow with onscrollend(self : Self) -> EventHandler {
  window_onscrollend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
impl TWindow with set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit {
  window_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscrollend),
  )
}

///|
extern "js" fn window_onsecuritypolicyviolation_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onsecuritypolicyviolation"

///|
impl TWindow with onsecuritypolicyviolation(self : Self) -> EventHandler {
  window_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
impl TWindow with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : EventHandler,
) -> Unit {
  window_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsecuritypolicyviolation),
  )
}

///|
extern "js" fn window_onseeked_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeked"

///|
impl TWindow with onseeked(self : Self) -> EventHandler {
  window_onseeked_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
impl TWindow with set_onseeked(self : Self, onseeked : EventHandler) -> Unit {
  window_set_onseeked_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeked))
}

///|
extern "js" fn window_onseeking_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeking"

///|
impl TWindow with onseeking(self : Self) -> EventHandler {
  window_onseeking_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
impl TWindow with set_onseeking(self : Self, onseeking : EventHandler) -> Unit {
  window_set_onseeking_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeking))
}

///|
extern "js" fn window_onselect_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onselect"

///|
impl TWindow with onselect(self : Self) -> EventHandler {
  window_onselect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
impl TWindow with set_onselect(self : Self, onselect : EventHandler) -> Unit {
  window_set_onselect_ffi(TJsValue::to_js(self), TJsValue::to_js(onselect))
}

///|
extern "js" fn window_onslotchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onslotchange"

///|
impl TWindow with onslotchange(self : Self) -> EventHandler {
  window_onslotchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
impl TWindow with set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit {
  window_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
extern "js" fn window_onstalled_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstalled"

///|
impl TWindow with onstalled(self : Self) -> EventHandler {
  window_onstalled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
impl TWindow with set_onstalled(self : Self, onstalled : EventHandler) -> Unit {
  window_set_onstalled_ffi(TJsValue::to_js(self), TJsValue::to_js(onstalled))
}

///|
extern "js" fn window_onsubmit_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsubmit"

///|
impl TWindow with onsubmit(self : Self) -> EventHandler {
  window_onsubmit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
impl TWindow with set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit {
  window_set_onsubmit_ffi(TJsValue::to_js(self), TJsValue::to_js(onsubmit))
}

///|
extern "js" fn window_onsuspend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsuspend"

///|
impl TWindow with onsuspend(self : Self) -> EventHandler {
  window_onsuspend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
impl TWindow with set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit {
  window_set_onsuspend_ffi(TJsValue::to_js(self), TJsValue::to_js(onsuspend))
}

///|
extern "js" fn window_ontimeupdate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontimeupdate"

///|
impl TWindow with ontimeupdate(self : Self) -> EventHandler {
  window_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
impl TWindow with set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit {
  window_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeupdate),
  )
}

///|
extern "js" fn window_ontoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontoggle"

///|
impl TWindow with ontoggle(self : Self) -> EventHandler {
  window_ontoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
impl TWindow with set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit {
  window_set_ontoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(ontoggle))
}

///|
extern "js" fn window_onvolumechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onvolumechange"

///|
impl TWindow with onvolumechange(self : Self) -> EventHandler {
  window_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
impl TWindow with set_onvolumechange(self : Self, onvolumechange : EventHandler) -> Unit {
  window_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvolumechange),
  )
}

///|
extern "js" fn window_onwaiting_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwaiting"

///|
impl TWindow with onwaiting(self : Self) -> EventHandler {
  window_onwaiting_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
impl TWindow with set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit {
  window_set_onwaiting_ffi(TJsValue::to_js(self), TJsValue::to_js(onwaiting))
}

///|
extern "js" fn window_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwebkitanimationend"

///|
impl TWindow with onwebkitanimationend(self : Self) -> EventHandler {
  window_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
impl TWindow with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : EventHandler,
) -> Unit {
  window_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationend),
  )
}

///|
extern "js" fn window_onwebkitanimationiteration_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationiteration"

///|
impl TWindow with onwebkitanimationiteration(self : Self) -> EventHandler {
  window_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
impl TWindow with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : EventHandler,
) -> Unit {
  window_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationiteration),
  )
}

///|
extern "js" fn window_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwebkitanimationstart"

///|
impl TWindow with onwebkitanimationstart(self : Self) -> EventHandler {
  window_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
impl TWindow with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : EventHandler,
) -> Unit {
  window_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationstart),
  )
}

///|
extern "js" fn window_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwebkittransitionend"

///|
impl TWindow with onwebkittransitionend(self : Self) -> EventHandler {
  window_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
impl TWindow with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : EventHandler,
) -> Unit {
  window_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkittransitionend),
  )
}

///|
extern "js" fn window_onwheel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwheel"

///|
impl TWindow with onwheel(self : Self) -> EventHandler {
  window_onwheel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
impl TWindow with set_onwheel(self : Self, onwheel : EventHandler) -> Unit {
  window_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

///|
extern "js" fn window_onafterprint_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onafterprint"

///|
impl TWindow with onafterprint(self : Self) -> EventHandler {
  window_onafterprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
impl TWindow with set_onafterprint(self : Self, onafterprint : EventHandler) -> Unit {
  window_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onafterprint),
  )
}

///|
extern "js" fn window_onbeforeprint_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforeprint"

///|
impl TWindow with onbeforeprint(self : Self) -> EventHandler {
  window_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
impl TWindow with set_onbeforeprint(self : Self, onbeforeprint : EventHandler) -> Unit {
  window_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeprint),
  )
}

///|
extern "js" fn window_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandler = "(obj) => obj.onbeforeunload"

///|
impl TWindow with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
impl TWindow with set_onbeforeunload(
  self : Self,
  onbeforeunload : OnBeforeUnloadEventHandler,
) -> Unit {
  window_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeunload),
  )
}

///|
extern "js" fn window_onhashchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onhashchange"

///|
impl TWindow with onhashchange(self : Self) -> EventHandler {
  window_onhashchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
impl TWindow with set_onhashchange(self : Self, onhashchange : EventHandler) -> Unit {
  window_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onhashchange),
  )
}

///|
extern "js" fn window_onlanguagechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onlanguagechange"

///|
impl TWindow with onlanguagechange(self : Self) -> EventHandler {
  window_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
impl TWindow with set_onlanguagechange(
  self : Self,
  onlanguagechange : EventHandler,
) -> Unit {
  window_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlanguagechange),
  )
}

///|
extern "js" fn window_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
impl TWindow with onmessage(self : Self) -> EventHandler {
  window_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
impl TWindow with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  window_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

///|
extern "js" fn window_onmessageerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessageerror"

///|
impl TWindow with onmessageerror(self : Self) -> EventHandler {
  window_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
impl TWindow with set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit {
  window_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}

///|
extern "js" fn window_onoffline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onoffline"

///|
impl TWindow with onoffline(self : Self) -> EventHandler {
  window_onoffline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
impl TWindow with set_onoffline(self : Self, onoffline : EventHandler) -> Unit {
  window_set_onoffline_ffi(TJsValue::to_js(self), TJsValue::to_js(onoffline))
}

///|
extern "js" fn window_ononline_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ononline"

///|
impl TWindow with ononline(self : Self) -> EventHandler {
  window_ononline_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
impl TWindow with set_ononline(self : Self, ononline : EventHandler) -> Unit {
  window_set_ononline_ffi(TJsValue::to_js(self), TJsValue::to_js(ononline))
}

///|
extern "js" fn window_onpagehide_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpagehide"

///|
impl TWindow with onpagehide(self : Self) -> EventHandler {
  window_onpagehide_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
impl TWindow with set_onpagehide(self : Self, onpagehide : EventHandler) -> Unit {
  window_set_onpagehide_ffi(TJsValue::to_js(self), TJsValue::to_js(onpagehide))
}

///|
extern "js" fn window_onpagereveal_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpagereveal"

///|
impl TWindow with onpagereveal(self : Self) -> EventHandler {
  window_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
impl TWindow with set_onpagereveal(self : Self, onpagereveal : EventHandler) -> Unit {
  window_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpagereveal),
  )
}

///|
extern "js" fn window_onpageshow_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageshow"

///|
impl TWindow with onpageshow(self : Self) -> EventHandler {
  window_onpageshow_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
impl TWindow with set_onpageshow(self : Self, onpageshow : EventHandler) -> Unit {
  window_set_onpageshow_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageshow))
}

///|
extern "js" fn window_onpageswap_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpageswap"

///|
impl TWindow with onpageswap(self : Self) -> EventHandler {
  window_onpageswap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
impl TWindow with set_onpageswap(self : Self, onpageswap : EventHandler) -> Unit {
  window_set_onpageswap_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageswap))
}

///|
extern "js" fn window_onpopstate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpopstate"

///|
impl TWindow with onpopstate(self : Self) -> EventHandler {
  window_onpopstate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
impl TWindow with set_onpopstate(self : Self, onpopstate : EventHandler) -> Unit {
  window_set_onpopstate_ffi(TJsValue::to_js(self), TJsValue::to_js(onpopstate))
}

///|
extern "js" fn window_onrejectionhandled_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onrejectionhandled"

///|
impl TWindow with onrejectionhandled(self : Self) -> EventHandler {
  window_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
impl TWindow with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : EventHandler,
) -> Unit {
  window_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onrejectionhandled),
  )
}

///|
extern "js" fn window_onstorage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstorage"

///|
impl TWindow with onstorage(self : Self) -> EventHandler {
  window_onstorage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
impl TWindow with set_onstorage(self : Self, onstorage : EventHandler) -> Unit {
  window_set_onstorage_ffi(TJsValue::to_js(self), TJsValue::to_js(onstorage))
}

///|
extern "js" fn window_onunhandledrejection_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onunhandledrejection"

///|
impl TWindow with onunhandledrejection(self : Self) -> EventHandler {
  window_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
impl TWindow with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : EventHandler,
) -> Unit {
  window_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onunhandledrejection),
  )
}

///|
extern "js" fn window_onunload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onunload"

///|
impl TWindow with onunload(self : Self) -> EventHandler {
  window_onunload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
impl TWindow with set_onunload(self : Self, onunload : EventHandler) -> Unit {
  window_set_onunload_ffi(TJsValue::to_js(self), TJsValue::to_js(onunload))
}

///|
extern "js" fn window_origin_ffi(obj : JsValue) -> String = "(obj) => obj.origin"

///|
impl TWindow with origin(self : Self) -> String {
  window_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_is_secure_context_ffi(obj : JsValue) -> Bool = "(obj) => obj.isSecureContext"

///|
impl TWindow with is_secure_context(self : Self) -> Bool {
  window_is_secure_context_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool = "(obj) => obj.crossOriginIsolated"

///|
impl TWindow with cross_origin_isolated(self : Self) -> Bool {
  window_cross_origin_isolated_ffi(TJsValue::to_js(self))
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
  timeout? : Int = (0 : Int),
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
impl TWindow with clear_timeout(self : Self, id? : Int = (0 : Int)) -> Unit {
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
  timeout? : Int = (0 : Int),
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
impl TWindow with clear_interval(self : Self, id? : Int = (0 : Int)) -> Unit {
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
) -> JsPromise[ImageBitmap] = "(obj, image, options) => obj.createImageBitmap(obj, image, options)"

///|
impl TWindow with create_image_bitmap(
  self : Self,
  image : ImageBitmapSource,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
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
) -> JsPromise[ImageBitmap] = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap_2(obj, image, sx, sy, sw, sh, options)"

///|
impl TWindow with create_image_bitmap_2(
  self : Self,
  image : ImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[ImageBitmap] {
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
extern "js" fn window_performance_ffi(obj : JsValue) -> Performance = "(obj) => obj.performance"

///|
impl TWindow with performance(self : Self) -> Performance {
  window_performance_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_trusted_types_ffi(
  obj : JsValue,
) -> TrustedTypePolicyFactory = "(obj) => obj.trustedTypes"

///|
impl TWindow with trusted_types(self : Self) -> TrustedTypePolicyFactory {
  window_trusted_types_ffi(TJsValue::to_js(self))
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

///|
extern "js" fn window_session_storage_ffi(obj : JsValue) -> Storage = "(obj) => obj.sessionStorage"

///|
impl TWindow with session_storage(self : Self) -> Storage {
  window_session_storage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn window_local_storage_ffi(obj : JsValue) -> Storage = "(obj) => obj.localStorage"

///|
impl TWindow with local_storage(self : Self) -> Storage {
  window_local_storage_ffi(TJsValue::to_js(self))
}
