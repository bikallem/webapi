// Do not edit. This file is generated.
// MoonBit type: Window
// Specifications: cssom.idl, selection-api.idl, dom.idl, requestidlecallback.idl, cssom-view.idl, fetch.idl, html.idl

/// [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window)
#external
pub type Window

pub impl TJsValue for Window with to_js(self: Window) -> JsValue = "%identity"

pub fn[T: TWindow] Window::into(self : Window) -> T = "%identity"

pub impl TWindow for Window

pub impl TEventTarget for Window

/// [WindowEvent](https://developer.mozilla.org/en-US/docs/Web/API/WindowEvent)
#external
pub type WindowEvent

pub fn[T: TWindowEvent] WindowEvent::into(self : WindowEvent) -> T = "%identity"

pub fn WindowEvent::is_undefined(self : WindowEvent) -> Bool { window_event_is_undefined_ffi(self) }

pub impl TWindowEvent for WindowEvent with to_js(self : WindowEvent) -> JsValue = "%identity"

pub(open) trait TWindowEvent {
  to_js(self : Self) -> JsValue
}

pub impl TWindowEvent for Event with to_js(self : Event) -> JsValue = "%identity"

pub impl TWindowEvent for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"

/// [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window) interface.
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
  open(self : Self, url? : String, target? : String, features? : String) -> WindowProxy? = _
  get(self : Self, name : String) -> JsValue? = _
  navigator(self : Self) -> Navigator = _
  client_information(self : Self) -> Navigator = _
  origin_agent_cluster(self : Self) -> Bool = _
  alert(self : Self) -> Unit = _
  alert_2(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> String? = _
  print(self : Self) -> Unit = _
  post_message(self : Self, message : JsValue, target_origin : String, transfer? : Array[JsValue]) -> Unit = _
  post_message_2(self : Self, message : JsValue, options? : WindowPostMessageOptions) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  external(self : Self) -> External = _
  get_computed_style(self : Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
  fetch_later(self : Self, input : RequestInfo, init? : DeferredRequestInit) -> FetchLaterResult = _
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
  scroll(self : Self, options? : ScrollToOptions) -> @js_async.Promise[Unit] = _
  scroll_2(self : Self, x : Double, y : Double) -> @js_async.Promise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> @js_async.Promise[Unit] = _
  scroll_to_2(self : Self, x : Double, y : Double) -> @js_async.Promise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> @js_async.Promise[Unit] = _
  scroll_by_2(self : Self, x : Double, y : Double) -> @js_async.Promise[Unit] = _
  screen_x(self : Self) -> Int = _
  screen_left(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  screen_top(self : Self) -> Int = _
  outer_width(self : Self) -> Int = _
  outer_height(self : Self) -> Int = _
  device_pixel_ratio(self : Self) -> Double = _
  get_selection(self : Self) -> Selection? = _
  request_idle_callback(self : Self, callback : IdleRequestCallback, options? : IdleRequestOptions) -> UInt = _
  cancel_idle_callback(self : Self, handle : UInt) -> Unit = _
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
  set_onsecuritypolicyviolation(self : Self, onsecuritypolicyviolation : EventHandler) -> Unit = _
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
  set_onwebkitanimationiteration(self : Self, onwebkitanimationiteration : EventHandler) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, onwebkitanimationstart : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, onwebkittransitionend : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : EventHandler) -> Unit = _
  ontouchstart(self : Self) -> EventHandler = _
  set_ontouchstart(self : Self, ontouchstart : EventHandler) -> Unit = _
  ontouchend(self : Self) -> EventHandler = _
  set_ontouchend(self : Self, ontouchend : EventHandler) -> Unit = _
  ontouchmove(self : Self) -> EventHandler = _
  set_ontouchmove(self : Self, ontouchmove : EventHandler) -> Unit = _
  ontouchcancel(self : Self) -> EventHandler = _
  set_ontouchcancel(self : Self, ontouchcancel : EventHandler) -> Unit = _
  onpointerover(self : Self) -> EventHandler = _
  set_onpointerover(self : Self, onpointerover : EventHandler) -> Unit = _
  onpointerenter(self : Self) -> EventHandler = _
  set_onpointerenter(self : Self, onpointerenter : EventHandler) -> Unit = _
  onpointerdown(self : Self) -> EventHandler = _
  set_onpointerdown(self : Self, onpointerdown : EventHandler) -> Unit = _
  onpointermove(self : Self) -> EventHandler = _
  set_onpointermove(self : Self, onpointermove : EventHandler) -> Unit = _
  onpointerrawupdate(self : Self) -> EventHandler = _
  set_onpointerrawupdate(self : Self, onpointerrawupdate : EventHandler) -> Unit = _
  onpointerup(self : Self) -> EventHandler = _
  set_onpointerup(self : Self, onpointerup : EventHandler) -> Unit = _
  onpointercancel(self : Self) -> EventHandler = _
  set_onpointercancel(self : Self, onpointercancel : EventHandler) -> Unit = _
  onpointerout(self : Self) -> EventHandler = _
  set_onpointerout(self : Self, onpointerout : EventHandler) -> Unit = _
  onpointerleave(self : Self) -> EventHandler = _
  set_onpointerleave(self : Self, onpointerleave : EventHandler) -> Unit = _
  ongotpointercapture(self : Self) -> EventHandler = _
  set_ongotpointercapture(self : Self, ongotpointercapture : EventHandler) -> Unit = _
  onlostpointercapture(self : Self) -> EventHandler = _
  set_onlostpointercapture(self : Self, onlostpointercapture : EventHandler) -> Unit = _
  onselectstart(self : Self) -> EventHandler = _
  set_onselectstart(self : Self, onselectstart : EventHandler) -> Unit = _
  onselectionchange(self : Self) -> EventHandler = _
  set_onselectionchange(self : Self, onselectionchange : EventHandler) -> Unit = _
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
  set_timeout(self : Self, handler : TimerHandler, timeout? : Int, arguments : Array[&TJsValue]) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(self : Self, handler : TimerHandler, timeout? : Int, arguments : Array[&TJsValue]) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : VoidFunction) -> Unit = _
  create_image_bitmap(self : Self, image : ImageBitmapSource, options? : ImageBitmapOptions) -> @js_async.Promise[ImageBitmap] = _
  create_image_bitmap_2(self : Self, image : ImageBitmapSource, sx : Int, sy : Int, sw : Int, sh : Int, options? : ImageBitmapOptions) -> @js_async.Promise[ImageBitmap] = _
  structured_clone(self : Self, value : JsValue, options? : StructuredSerializeOptions) -> JsValue = _
  fetch(self : Self, input : RequestInfo, init? : RequestInit) -> @js_async.Promise[Response] = _
  performance(self : Self) -> Performance = _
  trusted_types(self : Self) -> TrustedTypePolicyFactory = _
  request_animation_frame(self : Self, callback : FrameRequestCallback) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
  session_storage(self : Self) -> Storage = _
  local_storage(self : Self) -> Storage = _
}

/// [Window.event](https://developer.mozilla.org/en-US/docs/Web/API/Window/event)
impl TWindow with event(self : Self) -> WindowEvent {
  window_event_ffi(TJsValue::to_js(self))
}

/// [Window.window](https://developer.mozilla.org/en-US/docs/Web/API/Window/window)
impl TWindow with window(self : Self) -> WindowProxy {
  window_window_ffi(TJsValue::to_js(self))
}

/// [Window.self](https://developer.mozilla.org/en-US/docs/Web/API/Window/self)
impl TWindow with self(self : Self) -> WindowProxy {
  window_self_ffi(TJsValue::to_js(self))
}

/// [Window.document](https://developer.mozilla.org/en-US/docs/Web/API/Window/document)
impl TWindow with document(self : Self) -> Document {
  window_document_ffi(TJsValue::to_js(self))
}

/// [Window.name](https://developer.mozilla.org/en-US/docs/Web/API/Window/name)
impl TWindow with name(self : Self) -> String {
  window_name_ffi(TJsValue::to_js(self))
}

/// [Window.name](https://developer.mozilla.org/en-US/docs/Web/API/Window/name)
impl TWindow with set_name(self : Self, 
name : String) -> Unit {
  window_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [Window.location](https://developer.mozilla.org/en-US/docs/Web/API/Window/location)
impl TWindow with location(self : Self) -> Location {
  window_location_ffi(TJsValue::to_js(self))
}

/// [Window.history](https://developer.mozilla.org/en-US/docs/Web/API/Window/history)
impl TWindow with history(self : Self) -> History {
  window_history_ffi(TJsValue::to_js(self))
}

/// [Window.navigation](https://developer.mozilla.org/en-US/docs/Web/API/Window/navigation)
impl TWindow with navigation(self : Self) -> Navigation {
  window_navigation_ffi(TJsValue::to_js(self))
}

/// [Window.customElements](https://developer.mozilla.org/en-US/docs/Web/API/Window/customElements)
impl TWindow with custom_elements(self : Self) -> CustomElementRegistry {
  window_custom_elements_ffi(TJsValue::to_js(self))
}

/// [Window.locationbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/locationbar)
impl TWindow with locationbar(self : Self) -> BarProp {
  window_locationbar_ffi(TJsValue::to_js(self))
}

/// [Window.menubar](https://developer.mozilla.org/en-US/docs/Web/API/Window/menubar)
impl TWindow with menubar(self : Self) -> BarProp {
  window_menubar_ffi(TJsValue::to_js(self))
}

/// [Window.personalbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/personalbar)
impl TWindow with personalbar(self : Self) -> BarProp {
  window_personalbar_ffi(TJsValue::to_js(self))
}

/// [Window.scrollbars](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollbars)
impl TWindow with scrollbars(self : Self) -> BarProp {
  window_scrollbars_ffi(TJsValue::to_js(self))
}

/// [Window.statusbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/statusbar)
impl TWindow with statusbar(self : Self) -> BarProp {
  window_statusbar_ffi(TJsValue::to_js(self))
}

/// [Window.toolbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/toolbar)
impl TWindow with toolbar(self : Self) -> BarProp {
  window_toolbar_ffi(TJsValue::to_js(self))
}

/// [Window.status](https://developer.mozilla.org/en-US/docs/Web/API/Window/status)
impl TWindow with status(self : Self) -> String {
  window_status_ffi(TJsValue::to_js(self))
}

/// [Window.status](https://developer.mozilla.org/en-US/docs/Web/API/Window/status)
impl TWindow with set_status(self : Self, 
status : String) -> Unit {
  window_set_status_ffi(TJsValue::to_js(self), TJsValue::to_js(status))
}

/// [Window.close](https://developer.mozilla.org/en-US/docs/Web/API/Window/close)
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

/// [Window.closed](https://developer.mozilla.org/en-US/docs/Web/API/Window/closed)
impl TWindow with closed(self : Self) -> Bool {
  window_closed_ffi(TJsValue::to_js(self))
}

/// [Window.stop](https://developer.mozilla.org/en-US/docs/Web/API/Window/stop)
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(TJsValue::to_js(self))
}

/// [Window.focus](https://developer.mozilla.org/en-US/docs/Web/API/Window/focus)
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(TJsValue::to_js(self))
}

/// [Window.blur](https://developer.mozilla.org/en-US/docs/Web/API/Window/blur)
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(TJsValue::to_js(self))
}

/// [Window.frames](https://developer.mozilla.org/en-US/docs/Web/API/Window/frames)
impl TWindow with frames(self : Self) -> WindowProxy {
  window_frames_ffi(TJsValue::to_js(self))
}

/// [Window.length](https://developer.mozilla.org/en-US/docs/Web/API/Window/length)
impl TWindow with length(self : Self) -> UInt {
  window_length_ffi(TJsValue::to_js(self))
}

/// [Window.top](https://developer.mozilla.org/en-US/docs/Web/API/Window/top)
impl TWindow with top(self : Self) -> WindowProxy {
  window_top_ffi(TJsValue::to_js(self))
}

/// [Window.opener](https://developer.mozilla.org/en-US/docs/Web/API/Window/opener)
impl TWindow with opener(self : Self) -> JsValue {
  window_opener_ffi(TJsValue::to_js(self))
}

/// [Window.opener](https://developer.mozilla.org/en-US/docs/Web/API/Window/opener)
impl TWindow with set_opener(self : Self, 
opener : JsValue) -> Unit {
  window_set_opener_ffi(TJsValue::to_js(self), TJsValue::to_js(opener))
}

/// [Window.parent](https://developer.mozilla.org/en-US/docs/Web/API/Window/parent)
impl TWindow with parent(self : Self) -> WindowProxy {
  window_parent_ffi(TJsValue::to_js(self))
}

/// [Window.frameElement](https://developer.mozilla.org/en-US/docs/Web/API/Window/frameElement)
impl TWindow with frame_element(self : Self) -> Element {
  window_frame_element_ffi(TJsValue::to_js(self))
}

/// [Window.open](https://developer.mozilla.org/en-US/docs/Web/API/Window/open)
impl TWindow with open(self : Self, 
url? : String = "", 
target? : String = "_blank", 
features? : String = "") -> WindowProxy? {
  let result = window_open_ffi(TJsValue::to_js(self), TJsValue::to_js(url), TJsValue::to_js(target), TJsValue::to_js(features))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Window.get](https://developer.mozilla.org/en-US/docs/Web/API/Window/get)
impl TWindow with get(self : Self, 
name : String) -> JsValue? {
  let result = window_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Window.navigator](https://developer.mozilla.org/en-US/docs/Web/API/Window/navigator)
impl TWindow with navigator(self : Self) -> Navigator {
  window_navigator_ffi(TJsValue::to_js(self))
}

/// [Window.clientInformation](https://developer.mozilla.org/en-US/docs/Web/API/Window/clientInformation)
impl TWindow with client_information(self : Self) -> Navigator {
  window_client_information_ffi(TJsValue::to_js(self))
}

/// [Window.originAgentCluster](https://developer.mozilla.org/en-US/docs/Web/API/Window/originAgentCluster)
impl TWindow with origin_agent_cluster(self : Self) -> Bool {
  window_origin_agent_cluster_ffi(TJsValue::to_js(self))
}

/// [Window.alert](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert)
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(TJsValue::to_js(self))
}

/// [Window.alert_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert_2)
impl TWindow with alert_2(self : Self, 
message : String) -> Unit {
  window_alert_2_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

/// [Window.confirm](https://developer.mozilla.org/en-US/docs/Web/API/Window/confirm)
impl TWindow with confirm(self : Self, 
message? : String = "") -> Bool {
  window_confirm_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

/// [Window.prompt](https://developer.mozilla.org/en-US/docs/Web/API/Window/prompt)
impl TWindow with prompt(self : Self, 
message? : String = "", 
default? : String = "") -> String? {
  let result = window_prompt_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(default))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Window.print](https://developer.mozilla.org/en-US/docs/Web/API/Window/print)
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(TJsValue::to_js(self))
}

/// [Window.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/postMessage)
impl TWindow with post_message(self : Self, 
message : JsValue, 
target_origin : String, 
transfer? : Array[JsValue] = []) -> Unit {
  window_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(target_origin), TJsValue::to_js(transfer))
}

/// [Window.postMessage_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/postMessage_2)
impl TWindow with post_message_2(self : Self, 
message : JsValue, 
options? : WindowPostMessageOptions = WindowPostMessageOptions::empty()) -> Unit {
  window_post_message_2_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(options))
}

/// [Window.captureEvents](https://developer.mozilla.org/en-US/docs/Web/API/Window/captureEvents)
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(TJsValue::to_js(self))
}

/// [Window.releaseEvents](https://developer.mozilla.org/en-US/docs/Web/API/Window/releaseEvents)
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(TJsValue::to_js(self))
}

/// [Window.external](https://developer.mozilla.org/en-US/docs/Web/API/Window/external)
impl TWindow with external(self : Self) -> External {
  window_external_ffi(TJsValue::to_js(self))
}

/// [Window.getComputedStyle](https://developer.mozilla.org/en-US/docs/Web/API/Window/getComputedStyle)
impl TWindow with get_computed_style(self : Self, 
elt : &TElement, 
pseudo_elt? : CSSOMString) -> CSSStyleProperties {
  window_get_computed_style_ffi(TJsValue::to_js(self), TJsValue::to_js(elt), opt_to_js(pseudo_elt))
}

/// [Window.fetchLater](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetchLater)
impl TWindow with fetch_later(self : Self, 
input : RequestInfo, 
init? : DeferredRequestInit = DeferredRequestInit::empty()) -> FetchLaterResult {
  window_fetch_later_ffi(TJsValue::to_js(self), TJsValue::to_js(input), TJsValue::to_js(init))
}

/// [Window.matchMedia](https://developer.mozilla.org/en-US/docs/Web/API/Window/matchMedia)
impl TWindow with match_media(self : Self, 
query : CSSOMString) -> MediaQueryList {
  window_match_media_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

/// [Window.screen](https://developer.mozilla.org/en-US/docs/Web/API/Window/screen)
impl TWindow with screen(self : Self) -> Screen {
  window_screen_ffi(TJsValue::to_js(self))
}

/// [Window.visualViewport](https://developer.mozilla.org/en-US/docs/Web/API/Window/visualViewport)
impl TWindow with visual_viewport(self : Self) -> VisualViewport {
  window_visual_viewport_ffi(TJsValue::to_js(self))
}

/// [Window.moveTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/moveTo)
impl TWindow with move_to(self : Self, 
x : Int, 
y : Int) -> Unit {
  window_move_to_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.moveBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/moveBy)
impl TWindow with move_by(self : Self, 
x : Int, 
y : Int) -> Unit {
  window_move_by_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.resizeTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/resizeTo)
impl TWindow with resize_to(self : Self, 
width : Int, 
height : Int) -> Unit {
  window_resize_to_ffi(TJsValue::to_js(self), TJsValue::to_js(width), TJsValue::to_js(height))
}

/// [Window.resizeBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/resizeBy)
impl TWindow with resize_by(self : Self, 
x : Int, 
y : Int) -> Unit {
  window_resize_by_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.innerWidth](https://developer.mozilla.org/en-US/docs/Web/API/Window/innerWidth)
impl TWindow with inner_width(self : Self) -> Int {
  window_inner_width_ffi(TJsValue::to_js(self))
}

/// [Window.innerHeight](https://developer.mozilla.org/en-US/docs/Web/API/Window/innerHeight)
impl TWindow with inner_height(self : Self) -> Int {
  window_inner_height_ffi(TJsValue::to_js(self))
}

/// [Window.scrollX](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollX)
impl TWindow with scroll_x(self : Self) -> Double {
  window_scroll_x_ffi(TJsValue::to_js(self))
}

/// [Window.pageXOffset](https://developer.mozilla.org/en-US/docs/Web/API/Window/pageXOffset)
impl TWindow with page_x_offset(self : Self) -> Double {
  window_page_x_offset_ffi(TJsValue::to_js(self))
}

/// [Window.scrollY](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollY)
impl TWindow with scroll_y(self : Self) -> Double {
  window_scroll_y_ffi(TJsValue::to_js(self))
}

/// [Window.pageYOffset](https://developer.mozilla.org/en-US/docs/Web/API/Window/pageYOffset)
impl TWindow with page_y_offset(self : Self) -> Double {
  window_page_y_offset_ffi(TJsValue::to_js(self))
}

/// [Window.scroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/scroll)
impl TWindow with scroll(self : Self, 
options? : ScrollToOptions = ScrollToOptions::empty()) -> @js_async.Promise[Unit] {
  window_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

/// [Window.scroll_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/scroll_2)
impl TWindow with scroll_2(self : Self, 
x : Double, 
y : Double) -> @js_async.Promise[Unit] {
  window_scroll_2_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollTo)
impl TWindow with scroll_to(self : Self, 
options? : ScrollToOptions = ScrollToOptions::empty()) -> @js_async.Promise[Unit] {
  window_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

/// [Window.scrollTo_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollTo_2)
impl TWindow with scroll_to_2(self : Self, 
x : Double, 
y : Double) -> @js_async.Promise[Unit] {
  window_scroll_to_2_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.scrollBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollBy)
impl TWindow with scroll_by(self : Self, 
options? : ScrollToOptions = ScrollToOptions::empty()) -> @js_async.Promise[Unit] {
  window_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

/// [Window.scrollBy_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollBy_2)
impl TWindow with scroll_by_2(self : Self, 
x : Double, 
y : Double) -> @js_async.Promise[Unit] {
  window_scroll_by_2_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [Window.screenX](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenX)
impl TWindow with screen_x(self : Self) -> Int {
  window_screen_x_ffi(TJsValue::to_js(self))
}

/// [Window.screenLeft](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenLeft)
impl TWindow with screen_left(self : Self) -> Int {
  window_screen_left_ffi(TJsValue::to_js(self))
}

/// [Window.screenY](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenY)
impl TWindow with screen_y(self : Self) -> Int {
  window_screen_y_ffi(TJsValue::to_js(self))
}

/// [Window.screenTop](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenTop)
impl TWindow with screen_top(self : Self) -> Int {
  window_screen_top_ffi(TJsValue::to_js(self))
}

/// [Window.outerWidth](https://developer.mozilla.org/en-US/docs/Web/API/Window/outerWidth)
impl TWindow with outer_width(self : Self) -> Int {
  window_outer_width_ffi(TJsValue::to_js(self))
}

/// [Window.outerHeight](https://developer.mozilla.org/en-US/docs/Web/API/Window/outerHeight)
impl TWindow with outer_height(self : Self) -> Int {
  window_outer_height_ffi(TJsValue::to_js(self))
}

/// [Window.devicePixelRatio](https://developer.mozilla.org/en-US/docs/Web/API/Window/devicePixelRatio)
impl TWindow with device_pixel_ratio(self : Self) -> Double {
  window_device_pixel_ratio_ffi(TJsValue::to_js(self))
}

/// [Window.getSelection](https://developer.mozilla.org/en-US/docs/Web/API/Window/getSelection)
impl TWindow with get_selection(self : Self) -> Selection? {
  let result = window_get_selection_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Window.requestIdleCallback](https://developer.mozilla.org/en-US/docs/Web/API/Window/requestIdleCallback)
impl TWindow with request_idle_callback(self : Self, 
callback : IdleRequestCallback, 
options? : IdleRequestOptions = IdleRequestOptions::empty()) -> UInt {
  window_request_idle_callback_ffi(TJsValue::to_js(self), TJsValue::to_js(callback), TJsValue::to_js(options))
}

/// [Window.cancelIdleCallback](https://developer.mozilla.org/en-US/docs/Web/API/Window/cancelIdleCallback)
impl TWindow with cancel_idle_callback(self : Self, 
handle : UInt) -> Unit {
  window_cancel_idle_callback_ffi(TJsValue::to_js(self), TJsValue::to_js(handle))
}

/// [Window.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Window/onabort)
impl TWindow with onabort(self : Self) -> EventHandler {
  window_onabort_ffi(TJsValue::to_js(self))
}

/// [Window.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Window/onabort)
impl TWindow with set_onabort(self : Self, 
onabort : EventHandler) -> Unit {
  window_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

/// [Window.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onauxclick)
impl TWindow with onauxclick(self : Self) -> EventHandler {
  window_onauxclick_ffi(TJsValue::to_js(self))
}

/// [Window.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onauxclick)
impl TWindow with set_onauxclick(self : Self, 
onauxclick : EventHandler) -> Unit {
  window_set_onauxclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onauxclick))
}

/// [Window.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeinput)
impl TWindow with onbeforeinput(self : Self) -> EventHandler {
  window_onbeforeinput_ffi(TJsValue::to_js(self))
}

/// [Window.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeinput)
impl TWindow with set_onbeforeinput(self : Self, 
onbeforeinput : EventHandler) -> Unit {
  window_set_onbeforeinput_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforeinput))
}

/// [Window.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforematch)
impl TWindow with onbeforematch(self : Self) -> EventHandler {
  window_onbeforematch_ffi(TJsValue::to_js(self))
}

/// [Window.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforematch)
impl TWindow with set_onbeforematch(self : Self, 
onbeforematch : EventHandler) -> Unit {
  window_set_onbeforematch_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforematch))
}

/// [Window.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforetoggle)
impl TWindow with onbeforetoggle(self : Self) -> EventHandler {
  window_onbeforetoggle_ffi(TJsValue::to_js(self))
}

/// [Window.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforetoggle)
impl TWindow with set_onbeforetoggle(self : Self, 
onbeforetoggle : EventHandler) -> Unit {
  window_set_onbeforetoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforetoggle))
}

/// [Window.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Window/onblur)
impl TWindow with onblur(self : Self) -> EventHandler {
  window_onblur_ffi(TJsValue::to_js(self))
}

/// [Window.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Window/onblur)
impl TWindow with set_onblur(self : Self, 
onblur : EventHandler) -> Unit {
  window_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

/// [Window.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncancel)
impl TWindow with oncancel(self : Self) -> EventHandler {
  window_oncancel_ffi(TJsValue::to_js(self))
}

/// [Window.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncancel)
impl TWindow with set_oncancel(self : Self, 
oncancel : EventHandler) -> Unit {
  window_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

/// [Window.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplay)
impl TWindow with oncanplay(self : Self) -> EventHandler {
  window_oncanplay_ffi(TJsValue::to_js(self))
}

/// [Window.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplay)
impl TWindow with set_oncanplay(self : Self, 
oncanplay : EventHandler) -> Unit {
  window_set_oncanplay_ffi(TJsValue::to_js(self), TJsValue::to_js(oncanplay))
}

/// [Window.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplaythrough)
impl TWindow with oncanplaythrough(self : Self) -> EventHandler {
  window_oncanplaythrough_ffi(TJsValue::to_js(self))
}

/// [Window.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplaythrough)
impl TWindow with set_oncanplaythrough(self : Self, 
oncanplaythrough : EventHandler) -> Unit {
  window_set_oncanplaythrough_ffi(TJsValue::to_js(self), TJsValue::to_js(oncanplaythrough))
}

/// [Window.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onchange)
impl TWindow with onchange(self : Self) -> EventHandler {
  window_onchange_ffi(TJsValue::to_js(self))
}

/// [Window.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onchange)
impl TWindow with set_onchange(self : Self, 
onchange : EventHandler) -> Unit {
  window_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

/// [Window.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclick)
impl TWindow with onclick(self : Self) -> EventHandler {
  window_onclick_ffi(TJsValue::to_js(self))
}

/// [Window.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclick)
impl TWindow with set_onclick(self : Self, 
onclick : EventHandler) -> Unit {
  window_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

/// [Window.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclose)
impl TWindow with onclose(self : Self) -> EventHandler {
  window_onclose_ffi(TJsValue::to_js(self))
}

/// [Window.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclose)
impl TWindow with set_onclose(self : Self, 
onclose : EventHandler) -> Unit {
  window_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

/// [Window.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncommand)
impl TWindow with oncommand(self : Self) -> EventHandler {
  window_oncommand_ffi(TJsValue::to_js(self))
}

/// [Window.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncommand)
impl TWindow with set_oncommand(self : Self, 
oncommand : EventHandler) -> Unit {
  window_set_oncommand_ffi(TJsValue::to_js(self), TJsValue::to_js(oncommand))
}

/// [Window.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextlost)
impl TWindow with oncontextlost(self : Self) -> EventHandler {
  window_oncontextlost_ffi(TJsValue::to_js(self))
}

/// [Window.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextlost)
impl TWindow with set_oncontextlost(self : Self, 
oncontextlost : EventHandler) -> Unit {
  window_set_oncontextlost_ffi(TJsValue::to_js(self), TJsValue::to_js(oncontextlost))
}

/// [Window.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextmenu)
impl TWindow with oncontextmenu(self : Self) -> EventHandler {
  window_oncontextmenu_ffi(TJsValue::to_js(self))
}

/// [Window.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextmenu)
impl TWindow with set_oncontextmenu(self : Self, 
oncontextmenu : EventHandler) -> Unit {
  window_set_oncontextmenu_ffi(TJsValue::to_js(self), TJsValue::to_js(oncontextmenu))
}

/// [Window.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextrestored)
impl TWindow with oncontextrestored(self : Self) -> EventHandler {
  window_oncontextrestored_ffi(TJsValue::to_js(self))
}

/// [Window.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextrestored)
impl TWindow with set_oncontextrestored(self : Self, 
oncontextrestored : EventHandler) -> Unit {
  window_set_oncontextrestored_ffi(TJsValue::to_js(self), TJsValue::to_js(oncontextrestored))
}

/// [Window.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncopy)
impl TWindow with oncopy(self : Self) -> EventHandler {
  window_oncopy_ffi(TJsValue::to_js(self))
}

/// [Window.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncopy)
impl TWindow with set_oncopy(self : Self, 
oncopy : EventHandler) -> Unit {
  window_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

/// [Window.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncuechange)
impl TWindow with oncuechange(self : Self) -> EventHandler {
  window_oncuechange_ffi(TJsValue::to_js(self))
}

/// [Window.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncuechange)
impl TWindow with set_oncuechange(self : Self, 
oncuechange : EventHandler) -> Unit {
  window_set_oncuechange_ffi(TJsValue::to_js(self), TJsValue::to_js(oncuechange))
}

/// [Window.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncut)
impl TWindow with oncut(self : Self) -> EventHandler {
  window_oncut_ffi(TJsValue::to_js(self))
}

/// [Window.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncut)
impl TWindow with set_oncut(self : Self, 
oncut : EventHandler) -> Unit {
  window_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

/// [Window.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondblclick)
impl TWindow with ondblclick(self : Self) -> EventHandler {
  window_ondblclick_ffi(TJsValue::to_js(self))
}

/// [Window.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondblclick)
impl TWindow with set_ondblclick(self : Self, 
ondblclick : EventHandler) -> Unit {
  window_set_ondblclick_ffi(TJsValue::to_js(self), TJsValue::to_js(ondblclick))
}

/// [Window.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrag)
impl TWindow with ondrag(self : Self) -> EventHandler {
  window_ondrag_ffi(TJsValue::to_js(self))
}

/// [Window.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrag)
impl TWindow with set_ondrag(self : Self, 
ondrag : EventHandler) -> Unit {
  window_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

/// [Window.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragend)
impl TWindow with ondragend(self : Self) -> EventHandler {
  window_ondragend_ffi(TJsValue::to_js(self))
}

/// [Window.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragend)
impl TWindow with set_ondragend(self : Self, 
ondragend : EventHandler) -> Unit {
  window_set_ondragend_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragend))
}

/// [Window.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragenter)
impl TWindow with ondragenter(self : Self) -> EventHandler {
  window_ondragenter_ffi(TJsValue::to_js(self))
}

/// [Window.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragenter)
impl TWindow with set_ondragenter(self : Self, 
ondragenter : EventHandler) -> Unit {
  window_set_ondragenter_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragenter))
}

/// [Window.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragleave)
impl TWindow with ondragleave(self : Self) -> EventHandler {
  window_ondragleave_ffi(TJsValue::to_js(self))
}

/// [Window.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragleave)
impl TWindow with set_ondragleave(self : Self, 
ondragleave : EventHandler) -> Unit {
  window_set_ondragleave_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragleave))
}

/// [Window.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragover)
impl TWindow with ondragover(self : Self) -> EventHandler {
  window_ondragover_ffi(TJsValue::to_js(self))
}

/// [Window.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragover)
impl TWindow with set_ondragover(self : Self, 
ondragover : EventHandler) -> Unit {
  window_set_ondragover_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragover))
}

/// [Window.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragstart)
impl TWindow with ondragstart(self : Self) -> EventHandler {
  window_ondragstart_ffi(TJsValue::to_js(self))
}

/// [Window.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragstart)
impl TWindow with set_ondragstart(self : Self, 
ondragstart : EventHandler) -> Unit {
  window_set_ondragstart_ffi(TJsValue::to_js(self), TJsValue::to_js(ondragstart))
}

/// [Window.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrop)
impl TWindow with ondrop(self : Self) -> EventHandler {
  window_ondrop_ffi(TJsValue::to_js(self))
}

/// [Window.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrop)
impl TWindow with set_ondrop(self : Self, 
ondrop : EventHandler) -> Unit {
  window_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

/// [Window.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondurationchange)
impl TWindow with ondurationchange(self : Self) -> EventHandler {
  window_ondurationchange_ffi(TJsValue::to_js(self))
}

/// [Window.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondurationchange)
impl TWindow with set_ondurationchange(self : Self, 
ondurationchange : EventHandler) -> Unit {
  window_set_ondurationchange_ffi(TJsValue::to_js(self), TJsValue::to_js(ondurationchange))
}

/// [Window.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Window/onemptied)
impl TWindow with onemptied(self : Self) -> EventHandler {
  window_onemptied_ffi(TJsValue::to_js(self))
}

/// [Window.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Window/onemptied)
impl TWindow with set_onemptied(self : Self, 
onemptied : EventHandler) -> Unit {
  window_set_onemptied_ffi(TJsValue::to_js(self), TJsValue::to_js(onemptied))
}

/// [Window.onended](https://developer.mozilla.org/en-US/docs/Web/API/Window/onended)
impl TWindow with onended(self : Self) -> EventHandler {
  window_onended_ffi(TJsValue::to_js(self))
}

/// [Window.onended](https://developer.mozilla.org/en-US/docs/Web/API/Window/onended)
impl TWindow with set_onended(self : Self, 
onended : EventHandler) -> Unit {
  window_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

/// [Window.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onerror)
impl TWindow with onerror(self : Self) -> OnErrorEventHandler {
  window_onerror_ffi(TJsValue::to_js(self))
}

/// [Window.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onerror)
impl TWindow with set_onerror(self : Self, 
onerror : OnErrorEventHandler) -> Unit {
  window_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

/// [Window.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Window/onfocus)
impl TWindow with onfocus(self : Self) -> EventHandler {
  window_onfocus_ffi(TJsValue::to_js(self))
}

/// [Window.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Window/onfocus)
impl TWindow with set_onfocus(self : Self, 
onfocus : EventHandler) -> Unit {
  window_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

/// [Window.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onformdata)
impl TWindow with onformdata(self : Self) -> EventHandler {
  window_onformdata_ffi(TJsValue::to_js(self))
}

/// [Window.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onformdata)
impl TWindow with set_onformdata(self : Self, 
onformdata : EventHandler) -> Unit {
  window_set_onformdata_ffi(TJsValue::to_js(self), TJsValue::to_js(onformdata))
}

/// [Window.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninput)
impl TWindow with oninput(self : Self) -> EventHandler {
  window_oninput_ffi(TJsValue::to_js(self))
}

/// [Window.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninput)
impl TWindow with set_oninput(self : Self, 
oninput : EventHandler) -> Unit {
  window_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

/// [Window.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninvalid)
impl TWindow with oninvalid(self : Self) -> EventHandler {
  window_oninvalid_ffi(TJsValue::to_js(self))
}

/// [Window.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninvalid)
impl TWindow with set_oninvalid(self : Self, 
oninvalid : EventHandler) -> Unit {
  window_set_oninvalid_ffi(TJsValue::to_js(self), TJsValue::to_js(oninvalid))
}

/// [Window.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeydown)
impl TWindow with onkeydown(self : Self) -> EventHandler {
  window_onkeydown_ffi(TJsValue::to_js(self))
}

/// [Window.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeydown)
impl TWindow with set_onkeydown(self : Self, 
onkeydown : EventHandler) -> Unit {
  window_set_onkeydown_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeydown))
}

/// [Window.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeypress)
impl TWindow with onkeypress(self : Self) -> EventHandler {
  window_onkeypress_ffi(TJsValue::to_js(self))
}

/// [Window.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeypress)
impl TWindow with set_onkeypress(self : Self, 
onkeypress : EventHandler) -> Unit {
  window_set_onkeypress_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeypress))
}

/// [Window.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeyup)
impl TWindow with onkeyup(self : Self) -> EventHandler {
  window_onkeyup_ffi(TJsValue::to_js(self))
}

/// [Window.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeyup)
impl TWindow with set_onkeyup(self : Self, 
onkeyup : EventHandler) -> Unit {
  window_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

/// [Window.onload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onload)
impl TWindow with onload(self : Self) -> EventHandler {
  window_onload_ffi(TJsValue::to_js(self))
}

/// [Window.onload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onload)
impl TWindow with set_onload(self : Self, 
onload : EventHandler) -> Unit {
  window_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

/// [Window.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadeddata)
impl TWindow with onloadeddata(self : Self) -> EventHandler {
  window_onloadeddata_ffi(TJsValue::to_js(self))
}

/// [Window.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadeddata)
impl TWindow with set_onloadeddata(self : Self, 
onloadeddata : EventHandler) -> Unit {
  window_set_onloadeddata_ffi(TJsValue::to_js(self), TJsValue::to_js(onloadeddata))
}

/// [Window.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadedmetadata)
impl TWindow with onloadedmetadata(self : Self) -> EventHandler {
  window_onloadedmetadata_ffi(TJsValue::to_js(self))
}

/// [Window.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadedmetadata)
impl TWindow with set_onloadedmetadata(self : Self, 
onloadedmetadata : EventHandler) -> Unit {
  window_set_onloadedmetadata_ffi(TJsValue::to_js(self), TJsValue::to_js(onloadedmetadata))
}

/// [Window.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadstart)
impl TWindow with onloadstart(self : Self) -> EventHandler {
  window_onloadstart_ffi(TJsValue::to_js(self))
}

/// [Window.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadstart)
impl TWindow with set_onloadstart(self : Self, 
onloadstart : EventHandler) -> Unit {
  window_set_onloadstart_ffi(TJsValue::to_js(self), TJsValue::to_js(onloadstart))
}

/// [Window.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousedown)
impl TWindow with onmousedown(self : Self) -> EventHandler {
  window_onmousedown_ffi(TJsValue::to_js(self))
}

/// [Window.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousedown)
impl TWindow with set_onmousedown(self : Self, 
onmousedown : EventHandler) -> Unit {
  window_set_onmousedown_ffi(TJsValue::to_js(self), TJsValue::to_js(onmousedown))
}

/// [Window.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseenter)
impl TWindow with onmouseenter(self : Self) -> EventHandler {
  window_onmouseenter_ffi(TJsValue::to_js(self))
}

/// [Window.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseenter)
impl TWindow with set_onmouseenter(self : Self, 
onmouseenter : EventHandler) -> Unit {
  window_set_onmouseenter_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseenter))
}

/// [Window.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseleave)
impl TWindow with onmouseleave(self : Self) -> EventHandler {
  window_onmouseleave_ffi(TJsValue::to_js(self))
}

/// [Window.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseleave)
impl TWindow with set_onmouseleave(self : Self, 
onmouseleave : EventHandler) -> Unit {
  window_set_onmouseleave_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseleave))
}

/// [Window.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousemove)
impl TWindow with onmousemove(self : Self) -> EventHandler {
  window_onmousemove_ffi(TJsValue::to_js(self))
}

/// [Window.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousemove)
impl TWindow with set_onmousemove(self : Self, 
onmousemove : EventHandler) -> Unit {
  window_set_onmousemove_ffi(TJsValue::to_js(self), TJsValue::to_js(onmousemove))
}

/// [Window.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseout)
impl TWindow with onmouseout(self : Self) -> EventHandler {
  window_onmouseout_ffi(TJsValue::to_js(self))
}

/// [Window.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseout)
impl TWindow with set_onmouseout(self : Self, 
onmouseout : EventHandler) -> Unit {
  window_set_onmouseout_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseout))
}

/// [Window.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseover)
impl TWindow with onmouseover(self : Self) -> EventHandler {
  window_onmouseover_ffi(TJsValue::to_js(self))
}

/// [Window.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseover)
impl TWindow with set_onmouseover(self : Self, 
onmouseover : EventHandler) -> Unit {
  window_set_onmouseover_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseover))
}

/// [Window.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseup)
impl TWindow with onmouseup(self : Self) -> EventHandler {
  window_onmouseup_ffi(TJsValue::to_js(self))
}

/// [Window.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseup)
impl TWindow with set_onmouseup(self : Self, 
onmouseup : EventHandler) -> Unit {
  window_set_onmouseup_ffi(TJsValue::to_js(self), TJsValue::to_js(onmouseup))
}

/// [Window.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpaste)
impl TWindow with onpaste(self : Self) -> EventHandler {
  window_onpaste_ffi(TJsValue::to_js(self))
}

/// [Window.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpaste)
impl TWindow with set_onpaste(self : Self, 
onpaste : EventHandler) -> Unit {
  window_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

/// [Window.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpause)
impl TWindow with onpause(self : Self) -> EventHandler {
  window_onpause_ffi(TJsValue::to_js(self))
}

/// [Window.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpause)
impl TWindow with set_onpause(self : Self, 
onpause : EventHandler) -> Unit {
  window_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

/// [Window.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplay)
impl TWindow with onplay(self : Self) -> EventHandler {
  window_onplay_ffi(TJsValue::to_js(self))
}

/// [Window.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplay)
impl TWindow with set_onplay(self : Self, 
onplay : EventHandler) -> Unit {
  window_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

/// [Window.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplaying)
impl TWindow with onplaying(self : Self) -> EventHandler {
  window_onplaying_ffi(TJsValue::to_js(self))
}

/// [Window.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplaying)
impl TWindow with set_onplaying(self : Self, 
onplaying : EventHandler) -> Unit {
  window_set_onplaying_ffi(TJsValue::to_js(self), TJsValue::to_js(onplaying))
}

/// [Window.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onprogress)
impl TWindow with onprogress(self : Self) -> EventHandler {
  window_onprogress_ffi(TJsValue::to_js(self))
}

/// [Window.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onprogress)
impl TWindow with set_onprogress(self : Self, 
onprogress : EventHandler) -> Unit {
  window_set_onprogress_ffi(TJsValue::to_js(self), TJsValue::to_js(onprogress))
}

/// [Window.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onratechange)
impl TWindow with onratechange(self : Self) -> EventHandler {
  window_onratechange_ffi(TJsValue::to_js(self))
}

/// [Window.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onratechange)
impl TWindow with set_onratechange(self : Self, 
onratechange : EventHandler) -> Unit {
  window_set_onratechange_ffi(TJsValue::to_js(self), TJsValue::to_js(onratechange))
}

/// [Window.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Window/onreset)
impl TWindow with onreset(self : Self) -> EventHandler {
  window_onreset_ffi(TJsValue::to_js(self))
}

/// [Window.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Window/onreset)
impl TWindow with set_onreset(self : Self, 
onreset : EventHandler) -> Unit {
  window_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

/// [Window.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Window/onresize)
impl TWindow with onresize(self : Self) -> EventHandler {
  window_onresize_ffi(TJsValue::to_js(self))
}

/// [Window.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Window/onresize)
impl TWindow with set_onresize(self : Self, 
onresize : EventHandler) -> Unit {
  window_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

/// [Window.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscroll)
impl TWindow with onscroll(self : Self) -> EventHandler {
  window_onscroll_ffi(TJsValue::to_js(self))
}

/// [Window.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscroll)
impl TWindow with set_onscroll(self : Self, 
onscroll : EventHandler) -> Unit {
  window_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

/// [Window.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscrollend)
impl TWindow with onscrollend(self : Self) -> EventHandler {
  window_onscrollend_ffi(TJsValue::to_js(self))
}

/// [Window.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscrollend)
impl TWindow with set_onscrollend(self : Self, 
onscrollend : EventHandler) -> Unit {
  window_set_onscrollend_ffi(TJsValue::to_js(self), TJsValue::to_js(onscrollend))
}

/// [Window.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsecuritypolicyviolation)
impl TWindow with onsecuritypolicyviolation(self : Self) -> EventHandler {
  window_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

/// [Window.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsecuritypolicyviolation)
impl TWindow with set_onsecuritypolicyviolation(self : Self, 
onsecuritypolicyviolation : EventHandler) -> Unit {
  window_set_onsecuritypolicyviolation_ffi(TJsValue::to_js(self), TJsValue::to_js(onsecuritypolicyviolation))
}

/// [Window.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeked)
impl TWindow with onseeked(self : Self) -> EventHandler {
  window_onseeked_ffi(TJsValue::to_js(self))
}

/// [Window.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeked)
impl TWindow with set_onseeked(self : Self, 
onseeked : EventHandler) -> Unit {
  window_set_onseeked_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeked))
}

/// [Window.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeking)
impl TWindow with onseeking(self : Self) -> EventHandler {
  window_onseeking_ffi(TJsValue::to_js(self))
}

/// [Window.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeking)
impl TWindow with set_onseeking(self : Self, 
onseeking : EventHandler) -> Unit {
  window_set_onseeking_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeking))
}

/// [Window.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselect)
impl TWindow with onselect(self : Self) -> EventHandler {
  window_onselect_ffi(TJsValue::to_js(self))
}

/// [Window.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselect)
impl TWindow with set_onselect(self : Self, 
onselect : EventHandler) -> Unit {
  window_set_onselect_ffi(TJsValue::to_js(self), TJsValue::to_js(onselect))
}

/// [Window.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onslotchange)
impl TWindow with onslotchange(self : Self) -> EventHandler {
  window_onslotchange_ffi(TJsValue::to_js(self))
}

/// [Window.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onslotchange)
impl TWindow with set_onslotchange(self : Self, 
onslotchange : EventHandler) -> Unit {
  window_set_onslotchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onslotchange))
}

/// [Window.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstalled)
impl TWindow with onstalled(self : Self) -> EventHandler {
  window_onstalled_ffi(TJsValue::to_js(self))
}

/// [Window.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstalled)
impl TWindow with set_onstalled(self : Self, 
onstalled : EventHandler) -> Unit {
  window_set_onstalled_ffi(TJsValue::to_js(self), TJsValue::to_js(onstalled))
}

/// [Window.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsubmit)
impl TWindow with onsubmit(self : Self) -> EventHandler {
  window_onsubmit_ffi(TJsValue::to_js(self))
}

/// [Window.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsubmit)
impl TWindow with set_onsubmit(self : Self, 
onsubmit : EventHandler) -> Unit {
  window_set_onsubmit_ffi(TJsValue::to_js(self), TJsValue::to_js(onsubmit))
}

/// [Window.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsuspend)
impl TWindow with onsuspend(self : Self) -> EventHandler {
  window_onsuspend_ffi(TJsValue::to_js(self))
}

/// [Window.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsuspend)
impl TWindow with set_onsuspend(self : Self, 
onsuspend : EventHandler) -> Unit {
  window_set_onsuspend_ffi(TJsValue::to_js(self), TJsValue::to_js(onsuspend))
}

/// [Window.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontimeupdate)
impl TWindow with ontimeupdate(self : Self) -> EventHandler {
  window_ontimeupdate_ffi(TJsValue::to_js(self))
}

/// [Window.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontimeupdate)
impl TWindow with set_ontimeupdate(self : Self, 
ontimeupdate : EventHandler) -> Unit {
  window_set_ontimeupdate_ffi(TJsValue::to_js(self), TJsValue::to_js(ontimeupdate))
}

/// [Window.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontoggle)
impl TWindow with ontoggle(self : Self) -> EventHandler {
  window_ontoggle_ffi(TJsValue::to_js(self))
}

/// [Window.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontoggle)
impl TWindow with set_ontoggle(self : Self, 
ontoggle : EventHandler) -> Unit {
  window_set_ontoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(ontoggle))
}

/// [Window.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onvolumechange)
impl TWindow with onvolumechange(self : Self) -> EventHandler {
  window_onvolumechange_ffi(TJsValue::to_js(self))
}

/// [Window.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onvolumechange)
impl TWindow with set_onvolumechange(self : Self, 
onvolumechange : EventHandler) -> Unit {
  window_set_onvolumechange_ffi(TJsValue::to_js(self), TJsValue::to_js(onvolumechange))
}

/// [Window.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwaiting)
impl TWindow with onwaiting(self : Self) -> EventHandler {
  window_onwaiting_ffi(TJsValue::to_js(self))
}

/// [Window.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwaiting)
impl TWindow with set_onwaiting(self : Self, 
onwaiting : EventHandler) -> Unit {
  window_set_onwaiting_ffi(TJsValue::to_js(self), TJsValue::to_js(onwaiting))
}

/// [Window.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationend)
impl TWindow with onwebkitanimationend(self : Self) -> EventHandler {
  window_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

/// [Window.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationend)
impl TWindow with set_onwebkitanimationend(self : Self, 
onwebkitanimationend : EventHandler) -> Unit {
  window_set_onwebkitanimationend_ffi(TJsValue::to_js(self), TJsValue::to_js(onwebkitanimationend))
}

/// [Window.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationiteration)
impl TWindow with onwebkitanimationiteration(self : Self) -> EventHandler {
  window_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

/// [Window.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationiteration)
impl TWindow with set_onwebkitanimationiteration(self : Self, 
onwebkitanimationiteration : EventHandler) -> Unit {
  window_set_onwebkitanimationiteration_ffi(TJsValue::to_js(self), TJsValue::to_js(onwebkitanimationiteration))
}

/// [Window.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationstart)
impl TWindow with onwebkitanimationstart(self : Self) -> EventHandler {
  window_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

/// [Window.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationstart)
impl TWindow with set_onwebkitanimationstart(self : Self, 
onwebkitanimationstart : EventHandler) -> Unit {
  window_set_onwebkitanimationstart_ffi(TJsValue::to_js(self), TJsValue::to_js(onwebkitanimationstart))
}

/// [Window.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkittransitionend)
impl TWindow with onwebkittransitionend(self : Self) -> EventHandler {
  window_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

/// [Window.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkittransitionend)
impl TWindow with set_onwebkittransitionend(self : Self, 
onwebkittransitionend : EventHandler) -> Unit {
  window_set_onwebkittransitionend_ffi(TJsValue::to_js(self), TJsValue::to_js(onwebkittransitionend))
}

/// [Window.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwheel)
impl TWindow with onwheel(self : Self) -> EventHandler {
  window_onwheel_ffi(TJsValue::to_js(self))
}

/// [Window.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwheel)
impl TWindow with set_onwheel(self : Self, 
onwheel : EventHandler) -> Unit {
  window_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

/// [Window.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchstart)
impl TWindow with ontouchstart(self : Self) -> EventHandler {
  window_ontouchstart_ffi(TJsValue::to_js(self))
}

/// [Window.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchstart)
impl TWindow with set_ontouchstart(self : Self, 
ontouchstart : EventHandler) -> Unit {
  window_set_ontouchstart_ffi(TJsValue::to_js(self), TJsValue::to_js(ontouchstart))
}

/// [Window.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchend)
impl TWindow with ontouchend(self : Self) -> EventHandler {
  window_ontouchend_ffi(TJsValue::to_js(self))
}

/// [Window.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchend)
impl TWindow with set_ontouchend(self : Self, 
ontouchend : EventHandler) -> Unit {
  window_set_ontouchend_ffi(TJsValue::to_js(self), TJsValue::to_js(ontouchend))
}

/// [Window.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchmove)
impl TWindow with ontouchmove(self : Self) -> EventHandler {
  window_ontouchmove_ffi(TJsValue::to_js(self))
}

/// [Window.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchmove)
impl TWindow with set_ontouchmove(self : Self, 
ontouchmove : EventHandler) -> Unit {
  window_set_ontouchmove_ffi(TJsValue::to_js(self), TJsValue::to_js(ontouchmove))
}

/// [Window.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchcancel)
impl TWindow with ontouchcancel(self : Self) -> EventHandler {
  window_ontouchcancel_ffi(TJsValue::to_js(self))
}

/// [Window.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchcancel)
impl TWindow with set_ontouchcancel(self : Self, 
ontouchcancel : EventHandler) -> Unit {
  window_set_ontouchcancel_ffi(TJsValue::to_js(self), TJsValue::to_js(ontouchcancel))
}

/// [Window.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerover)
impl TWindow with onpointerover(self : Self) -> EventHandler {
  window_onpointerover_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerover)
impl TWindow with set_onpointerover(self : Self, 
onpointerover : EventHandler) -> Unit {
  window_set_onpointerover_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerover))
}

/// [Window.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerenter)
impl TWindow with onpointerenter(self : Self) -> EventHandler {
  window_onpointerenter_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerenter)
impl TWindow with set_onpointerenter(self : Self, 
onpointerenter : EventHandler) -> Unit {
  window_set_onpointerenter_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerenter))
}

/// [Window.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerdown)
impl TWindow with onpointerdown(self : Self) -> EventHandler {
  window_onpointerdown_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerdown)
impl TWindow with set_onpointerdown(self : Self, 
onpointerdown : EventHandler) -> Unit {
  window_set_onpointerdown_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerdown))
}

/// [Window.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointermove)
impl TWindow with onpointermove(self : Self) -> EventHandler {
  window_onpointermove_ffi(TJsValue::to_js(self))
}

/// [Window.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointermove)
impl TWindow with set_onpointermove(self : Self, 
onpointermove : EventHandler) -> Unit {
  window_set_onpointermove_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointermove))
}

/// [Window.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerrawupdate)
impl TWindow with onpointerrawupdate(self : Self) -> EventHandler {
  window_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerrawupdate)
impl TWindow with set_onpointerrawupdate(self : Self, 
onpointerrawupdate : EventHandler) -> Unit {
  window_set_onpointerrawupdate_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerrawupdate))
}

/// [Window.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerup)
impl TWindow with onpointerup(self : Self) -> EventHandler {
  window_onpointerup_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerup)
impl TWindow with set_onpointerup(self : Self, 
onpointerup : EventHandler) -> Unit {
  window_set_onpointerup_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerup))
}

/// [Window.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointercancel)
impl TWindow with onpointercancel(self : Self) -> EventHandler {
  window_onpointercancel_ffi(TJsValue::to_js(self))
}

/// [Window.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointercancel)
impl TWindow with set_onpointercancel(self : Self, 
onpointercancel : EventHandler) -> Unit {
  window_set_onpointercancel_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointercancel))
}

/// [Window.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerout)
impl TWindow with onpointerout(self : Self) -> EventHandler {
  window_onpointerout_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerout)
impl TWindow with set_onpointerout(self : Self, 
onpointerout : EventHandler) -> Unit {
  window_set_onpointerout_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerout))
}

/// [Window.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerleave)
impl TWindow with onpointerleave(self : Self) -> EventHandler {
  window_onpointerleave_ffi(TJsValue::to_js(self))
}

/// [Window.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerleave)
impl TWindow with set_onpointerleave(self : Self, 
onpointerleave : EventHandler) -> Unit {
  window_set_onpointerleave_ffi(TJsValue::to_js(self), TJsValue::to_js(onpointerleave))
}

/// [Window.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/ongotpointercapture)
impl TWindow with ongotpointercapture(self : Self) -> EventHandler {
  window_ongotpointercapture_ffi(TJsValue::to_js(self))
}

/// [Window.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/ongotpointercapture)
impl TWindow with set_ongotpointercapture(self : Self, 
ongotpointercapture : EventHandler) -> Unit {
  window_set_ongotpointercapture_ffi(TJsValue::to_js(self), TJsValue::to_js(ongotpointercapture))
}

/// [Window.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlostpointercapture)
impl TWindow with onlostpointercapture(self : Self) -> EventHandler {
  window_onlostpointercapture_ffi(TJsValue::to_js(self))
}

/// [Window.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlostpointercapture)
impl TWindow with set_onlostpointercapture(self : Self, 
onlostpointercapture : EventHandler) -> Unit {
  window_set_onlostpointercapture_ffi(TJsValue::to_js(self), TJsValue::to_js(onlostpointercapture))
}

/// [Window.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectstart)
impl TWindow with onselectstart(self : Self) -> EventHandler {
  window_onselectstart_ffi(TJsValue::to_js(self))
}

/// [Window.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectstart)
impl TWindow with set_onselectstart(self : Self, 
onselectstart : EventHandler) -> Unit {
  window_set_onselectstart_ffi(TJsValue::to_js(self), TJsValue::to_js(onselectstart))
}

/// [Window.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectionchange)
impl TWindow with onselectionchange(self : Self) -> EventHandler {
  window_onselectionchange_ffi(TJsValue::to_js(self))
}

/// [Window.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectionchange)
impl TWindow with set_onselectionchange(self : Self, 
onselectionchange : EventHandler) -> Unit {
  window_set_onselectionchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onselectionchange))
}

/// [Window.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onafterprint)
impl TWindow with onafterprint(self : Self) -> EventHandler {
  window_onafterprint_ffi(TJsValue::to_js(self))
}

/// [Window.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onafterprint)
impl TWindow with set_onafterprint(self : Self, 
onafterprint : EventHandler) -> Unit {
  window_set_onafterprint_ffi(TJsValue::to_js(self), TJsValue::to_js(onafterprint))
}

/// [Window.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeprint)
impl TWindow with onbeforeprint(self : Self) -> EventHandler {
  window_onbeforeprint_ffi(TJsValue::to_js(self))
}

/// [Window.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeprint)
impl TWindow with set_onbeforeprint(self : Self, 
onbeforeprint : EventHandler) -> Unit {
  window_set_onbeforeprint_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforeprint))
}

/// [Window.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeunload)
impl TWindow with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi(TJsValue::to_js(self))
}

/// [Window.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeunload)
impl TWindow with set_onbeforeunload(self : Self, 
onbeforeunload : OnBeforeUnloadEventHandler) -> Unit {
  window_set_onbeforeunload_ffi(TJsValue::to_js(self), TJsValue::to_js(onbeforeunload))
}

/// [Window.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onhashchange)
impl TWindow with onhashchange(self : Self) -> EventHandler {
  window_onhashchange_ffi(TJsValue::to_js(self))
}

/// [Window.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onhashchange)
impl TWindow with set_onhashchange(self : Self, 
onhashchange : EventHandler) -> Unit {
  window_set_onhashchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onhashchange))
}

/// [Window.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlanguagechange)
impl TWindow with onlanguagechange(self : Self) -> EventHandler {
  window_onlanguagechange_ffi(TJsValue::to_js(self))
}

/// [Window.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlanguagechange)
impl TWindow with set_onlanguagechange(self : Self, 
onlanguagechange : EventHandler) -> Unit {
  window_set_onlanguagechange_ffi(TJsValue::to_js(self), TJsValue::to_js(onlanguagechange))
}

/// [Window.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessage)
impl TWindow with onmessage(self : Self) -> EventHandler {
  window_onmessage_ffi(TJsValue::to_js(self))
}

/// [Window.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessage)
impl TWindow with set_onmessage(self : Self, 
onmessage : EventHandler) -> Unit {
  window_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

/// [Window.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessageerror)
impl TWindow with onmessageerror(self : Self) -> EventHandler {
  window_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [Window.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessageerror)
impl TWindow with set_onmessageerror(self : Self, 
onmessageerror : EventHandler) -> Unit {
  window_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessageerror))
}

/// [Window.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/Window/onoffline)
impl TWindow with onoffline(self : Self) -> EventHandler {
  window_onoffline_ffi(TJsValue::to_js(self))
}

/// [Window.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/Window/onoffline)
impl TWindow with set_onoffline(self : Self, 
onoffline : EventHandler) -> Unit {
  window_set_onoffline_ffi(TJsValue::to_js(self), TJsValue::to_js(onoffline))
}

/// [Window.ononline](https://developer.mozilla.org/en-US/docs/Web/API/Window/ononline)
impl TWindow with ononline(self : Self) -> EventHandler {
  window_ononline_ffi(TJsValue::to_js(self))
}

/// [Window.ononline](https://developer.mozilla.org/en-US/docs/Web/API/Window/ononline)
impl TWindow with set_ononline(self : Self, 
ononline : EventHandler) -> Unit {
  window_set_ononline_ffi(TJsValue::to_js(self), TJsValue::to_js(ononline))
}

/// [Window.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagehide)
impl TWindow with onpagehide(self : Self) -> EventHandler {
  window_onpagehide_ffi(TJsValue::to_js(self))
}

/// [Window.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagehide)
impl TWindow with set_onpagehide(self : Self, 
onpagehide : EventHandler) -> Unit {
  window_set_onpagehide_ffi(TJsValue::to_js(self), TJsValue::to_js(onpagehide))
}

/// [Window.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagereveal)
impl TWindow with onpagereveal(self : Self) -> EventHandler {
  window_onpagereveal_ffi(TJsValue::to_js(self))
}

/// [Window.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagereveal)
impl TWindow with set_onpagereveal(self : Self, 
onpagereveal : EventHandler) -> Unit {
  window_set_onpagereveal_ffi(TJsValue::to_js(self), TJsValue::to_js(onpagereveal))
}

/// [Window.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageshow)
impl TWindow with onpageshow(self : Self) -> EventHandler {
  window_onpageshow_ffi(TJsValue::to_js(self))
}

/// [Window.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageshow)
impl TWindow with set_onpageshow(self : Self, 
onpageshow : EventHandler) -> Unit {
  window_set_onpageshow_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageshow))
}

/// [Window.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageswap)
impl TWindow with onpageswap(self : Self) -> EventHandler {
  window_onpageswap_ffi(TJsValue::to_js(self))
}

/// [Window.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageswap)
impl TWindow with set_onpageswap(self : Self, 
onpageswap : EventHandler) -> Unit {
  window_set_onpageswap_ffi(TJsValue::to_js(self), TJsValue::to_js(onpageswap))
}

/// [Window.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpopstate)
impl TWindow with onpopstate(self : Self) -> EventHandler {
  window_onpopstate_ffi(TJsValue::to_js(self))
}

/// [Window.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpopstate)
impl TWindow with set_onpopstate(self : Self, 
onpopstate : EventHandler) -> Unit {
  window_set_onpopstate_ffi(TJsValue::to_js(self), TJsValue::to_js(onpopstate))
}

/// [Window.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onrejectionhandled)
impl TWindow with onrejectionhandled(self : Self) -> EventHandler {
  window_onrejectionhandled_ffi(TJsValue::to_js(self))
}

/// [Window.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onrejectionhandled)
impl TWindow with set_onrejectionhandled(self : Self, 
onrejectionhandled : EventHandler) -> Unit {
  window_set_onrejectionhandled_ffi(TJsValue::to_js(self), TJsValue::to_js(onrejectionhandled))
}

/// [Window.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstorage)
impl TWindow with onstorage(self : Self) -> EventHandler {
  window_onstorage_ffi(TJsValue::to_js(self))
}

/// [Window.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstorage)
impl TWindow with set_onstorage(self : Self, 
onstorage : EventHandler) -> Unit {
  window_set_onstorage_ffi(TJsValue::to_js(self), TJsValue::to_js(onstorage))
}

/// [Window.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunhandledrejection)
impl TWindow with onunhandledrejection(self : Self) -> EventHandler {
  window_onunhandledrejection_ffi(TJsValue::to_js(self))
}

/// [Window.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunhandledrejection)
impl TWindow with set_onunhandledrejection(self : Self, 
onunhandledrejection : EventHandler) -> Unit {
  window_set_onunhandledrejection_ffi(TJsValue::to_js(self), TJsValue::to_js(onunhandledrejection))
}

/// [Window.onunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunload)
impl TWindow with onunload(self : Self) -> EventHandler {
  window_onunload_ffi(TJsValue::to_js(self))
}

/// [Window.onunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunload)
impl TWindow with set_onunload(self : Self, 
onunload : EventHandler) -> Unit {
  window_set_onunload_ffi(TJsValue::to_js(self), TJsValue::to_js(onunload))
}

/// [Window.origin](https://developer.mozilla.org/en-US/docs/Web/API/Window/origin)
impl TWindow with origin(self : Self) -> String {
  window_origin_ffi(TJsValue::to_js(self))
}

/// [Window.isSecureContext](https://developer.mozilla.org/en-US/docs/Web/API/Window/isSecureContext)
impl TWindow with is_secure_context(self : Self) -> Bool {
  window_is_secure_context_ffi(TJsValue::to_js(self))
}

/// [Window.crossOriginIsolated](https://developer.mozilla.org/en-US/docs/Web/API/Window/crossOriginIsolated)
impl TWindow with cross_origin_isolated(self : Self) -> Bool {
  window_cross_origin_isolated_ffi(TJsValue::to_js(self))
}

/// [Window.reportError](https://developer.mozilla.org/en-US/docs/Web/API/Window/reportError)
impl TWindow with report_error(self : Self, 
e : JsValue) -> Unit {
  window_report_error_ffi(TJsValue::to_js(self), TJsValue::to_js(e))
}

/// [Window.btoa](https://developer.mozilla.org/en-US/docs/Web/API/Window/btoa)
impl TWindow with btoa(self : Self, 
data : String) -> String {
  window_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

/// [Window.atob](https://developer.mozilla.org/en-US/docs/Web/API/Window/atob)
impl TWindow with atob(self : Self, 
data : String) -> String {
  window_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

/// [Window.setTimeout](https://developer.mozilla.org/en-US/docs/Web/API/Window/setTimeout)
impl TWindow with set_timeout(self : Self, 
handler : TimerHandler, 
timeout? : Int = (0: Int), 
arguments : Array[&TJsValue]) -> Int {
  window_set_timeout_ffi(TJsValue::to_js(self), TJsValue::to_js(handler), TJsValue::to_js(timeout), TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Window.clearTimeout](https://developer.mozilla.org/en-US/docs/Web/API/Window/clearTimeout)
impl TWindow with clear_timeout(self : Self, 
id? : Int = (0: Int)) -> Unit {
  window_clear_timeout_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

/// [Window.setInterval](https://developer.mozilla.org/en-US/docs/Web/API/Window/setInterval)
impl TWindow with set_interval(self : Self, 
handler : TimerHandler, 
timeout? : Int = (0: Int), 
arguments : Array[&TJsValue]) -> Int {
  window_set_interval_ffi(TJsValue::to_js(self), TJsValue::to_js(handler), TJsValue::to_js(timeout), TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })))
}

/// [Window.clearInterval](https://developer.mozilla.org/en-US/docs/Web/API/Window/clearInterval)
impl TWindow with clear_interval(self : Self, 
id? : Int = (0: Int)) -> Unit {
  window_clear_interval_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

/// [Window.queueMicrotask](https://developer.mozilla.org/en-US/docs/Web/API/Window/queueMicrotask)
impl TWindow with queue_microtask(self : Self, 
callback : VoidFunction) -> Unit {
  window_queue_microtask_ffi(TJsValue::to_js(self), TJsValue::to_js(callback))
}

/// [Window.createImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/Window/createImageBitmap)
impl TWindow with create_image_bitmap(self : Self, 
image : ImageBitmapSource, 
options? : ImageBitmapOptions = ImageBitmapOptions::empty()) -> @js_async.Promise[ImageBitmap] {
  window_create_image_bitmap_ffi(TJsValue::to_js(self), TJsValue::to_js(image), TJsValue::to_js(options))
}

/// [Window.createImageBitmap_2](https://developer.mozilla.org/en-US/docs/Web/API/Window/createImageBitmap_2)
impl TWindow with create_image_bitmap_2(self : Self, 
image : ImageBitmapSource, 
sx : Int, 
sy : Int, 
sw : Int, 
sh : Int, 
options? : ImageBitmapOptions = ImageBitmapOptions::empty()) -> @js_async.Promise[ImageBitmap] {
  window_create_image_bitmap_2_ffi(TJsValue::to_js(self), TJsValue::to_js(image), TJsValue::to_js(sx), TJsValue::to_js(sy), TJsValue::to_js(sw), TJsValue::to_js(sh), TJsValue::to_js(options))
}

/// [Window.structuredClone](https://developer.mozilla.org/en-US/docs/Web/API/Window/structuredClone)
impl TWindow with structured_clone(self : Self, 
value : JsValue, 
options? : StructuredSerializeOptions = StructuredSerializeOptions::empty()) -> JsValue {
  window_structured_clone_ffi(TJsValue::to_js(self), TJsValue::to_js(value), TJsValue::to_js(options))
}

/// [Window.fetch](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetch)
impl TWindow with fetch(self : Self, 
input : RequestInfo, 
init? : RequestInit = RequestInit::empty()) -> @js_async.Promise[Response] {
  window_fetch_ffi(TJsValue::to_js(self), TJsValue::to_js(input), TJsValue::to_js(init))
}

/// [Window.performance](https://developer.mozilla.org/en-US/docs/Web/API/Window/performance)
impl TWindow with performance(self : Self) -> Performance {
  window_performance_ffi(TJsValue::to_js(self))
}

/// [Window.trustedTypes](https://developer.mozilla.org/en-US/docs/Web/API/Window/trustedTypes)
impl TWindow with trusted_types(self : Self) -> TrustedTypePolicyFactory {
  window_trusted_types_ffi(TJsValue::to_js(self))
}

/// [Window.requestAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/Window/requestAnimationFrame)
impl TWindow with request_animation_frame(self : Self, 
callback : FrameRequestCallback) -> UInt {
  window_request_animation_frame_ffi(TJsValue::to_js(self), TJsValue::to_js(callback))
}

/// [Window.cancelAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/Window/cancelAnimationFrame)
impl TWindow with cancel_animation_frame(self : Self, 
handle : UInt) -> Unit {
  window_cancel_animation_frame_ffi(TJsValue::to_js(self), TJsValue::to_js(handle))
}

/// [Window.sessionStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage)
impl TWindow with session_storage(self : Self) -> Storage {
  window_session_storage_ffi(TJsValue::to_js(self))
}

/// [Window.localStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage)
impl TWindow with local_storage(self : Self) -> Storage {
  window_local_storage_ffi(TJsValue::to_js(self))
}