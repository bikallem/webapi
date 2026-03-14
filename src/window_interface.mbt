// Do not edit. This file is generated.
// MoonBit type: Window
// Specifications: cssom.idl, file-system-access.idl, selection-api.idl, dom.idl, requestidlecallback.idl, cssom-view.idl, fetch.idl, html.idl

///|
/// [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window)
#external
pub type Window

///|
pub impl TJsValue for Window with to_js(self : Window) -> JsValue = "%identity"

///|
pub impl FromJsAny for Window with from_js_any(value : JsAny) -> Window = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWindow] Window::into(self : Window) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWindow] Window::unsafe_into(self : Window) -> T = "%identity"

///|
pub impl HasConstructor for Window with constructor_name() {
  "Window"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWindow + HasConstructor] Window::try_into(self : Window) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWindow for Window

///|
pub impl TEventTarget for Window

///|
pub(open) trait TWindowEvent: TJsValue {}

///|
pub impl TWindowEvent for Event

///|
pub impl TWindowEvent for JsUndefined

///|
#external
pub type WindowEvent

///|
pub impl TJsValue for WindowEvent with to_js(self : WindowEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for WindowEvent with from_js_any(value : JsAny) -> WindowEvent = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWindowEvent + FromJsAny] WindowEvent::into(self : WindowEvent) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TWindowEvent + FromJsAny] WindowEvent::unsafe_into(
  self : WindowEvent,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TWindowEvent] WindowEvent::from(value : T) -> WindowEvent = "%identity"

///|
pub fn WindowEvent::is_undefined(self : WindowEvent) -> Bool {
  window_event_is_undefined_ffi(self)
}

///|
pub impl TWindowEvent for WindowEvent

///|
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
  alert_with_message(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> String? = _
  print(self : Self) -> Unit = _
  post_message(
    self : Self,
    message : JsValue,
    target_origin : String,
    transfer? : Array[JsValue],
  ) -> Unit = _
  post_message_with_options(
    self : Self,
    message : JsValue,
    options? : WindowPostMessageOptions,
  ) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  external(self : Self) -> External = _
  get_computed_style(self : Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
  fetch_later(self : Self, input : &TRequestInfo, init? : DeferredRequestInit) -> FetchLaterResult = _
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
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_to_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[JsValue] = _
  scroll_by_xy(self : Self, x : Double, y : Double) -> JsPromise[JsValue] = _
  screen_x(self : Self) -> Int = _
  screen_left(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  screen_top(self : Self) -> Int = _
  outer_width(self : Self) -> Int = _
  outer_height(self : Self) -> Int = _
  device_pixel_ratio(self : Self) -> Double = _
  get_selection_opt(self : Self) -> Selection? = _
  show_open_file_picker(self : Self, options? : OpenFilePickerOptions) -> JsPromise[
    Array[FileSystemFileHandle],
  ] = _
  show_save_file_picker(self : Self, options? : SaveFilePickerOptions) -> JsPromise[
    FileSystemFileHandle,
  ] = _
  show_directory_picker(self : Self, options? : DirectoryPickerOptions) -> JsPromise[
    FileSystemDirectoryHandle,
  ] = _
  request_idle_callback(
    self : Self,
    callback : (IdleDeadline) -> Unit,
    options? : IdleRequestOptions,
  ) -> UInt = _
  cancel_idle_callback(self : Self, handle : UInt) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : (Event) -> JsValue) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : (Event) -> JsValue) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : (Event) -> JsValue) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : (Event) -> JsValue) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : (Event) -> JsValue) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : (Event) -> JsValue) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : (Event) -> JsValue) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : (Event) -> JsValue) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : (Event) -> JsValue) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : (Event) -> JsValue) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : (Event) -> JsValue) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : (Event) -> JsValue) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : (Event) -> JsValue) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : (Event) -> JsValue) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : (Event) -> JsValue) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(
    self : Self,
    onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
  ) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : (Event) -> JsValue) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : (Event) -> JsValue) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : (Event) -> JsValue) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : (Event) -> JsValue) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : (Event) -> JsValue) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : (Event) -> JsValue) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : (Event) -> JsValue) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : (Event) -> JsValue) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : (Event) -> JsValue) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : (Event) -> JsValue) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : (Event) -> JsValue) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : (Event) -> JsValue) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : (Event) -> JsValue) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : (Event) -> JsValue,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : (Event) -> JsValue) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : (Event) -> JsValue) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : (Event) -> JsValue) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(
    self : Self,
    onwebkitanimationend : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(
    self : Self,
    onwebkitanimationstart : (Event) -> JsValue,
  ) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(
    self : Self,
    onwebkittransitionend : (Event) -> JsValue,
  ) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit = _
  ontouchstart(self : Self) -> EventHandler = _
  set_ontouchstart(self : Self, ontouchstart : (Event) -> JsValue) -> Unit = _
  ontouchend(self : Self) -> EventHandler = _
  set_ontouchend(self : Self, ontouchend : (Event) -> JsValue) -> Unit = _
  ontouchmove(self : Self) -> EventHandler = _
  set_ontouchmove(self : Self, ontouchmove : (Event) -> JsValue) -> Unit = _
  ontouchcancel(self : Self) -> EventHandler = _
  set_ontouchcancel(self : Self, ontouchcancel : (Event) -> JsValue) -> Unit = _
  onpointerover(self : Self) -> EventHandler = _
  set_onpointerover(self : Self, onpointerover : (Event) -> JsValue) -> Unit = _
  onpointerenter(self : Self) -> EventHandler = _
  set_onpointerenter(self : Self, onpointerenter : (Event) -> JsValue) -> Unit = _
  onpointerdown(self : Self) -> EventHandler = _
  set_onpointerdown(self : Self, onpointerdown : (Event) -> JsValue) -> Unit = _
  onpointermove(self : Self) -> EventHandler = _
  set_onpointermove(self : Self, onpointermove : (Event) -> JsValue) -> Unit = _
  onpointerrawupdate(self : Self) -> EventHandler = _
  set_onpointerrawupdate(self : Self, onpointerrawupdate : (Event) -> JsValue) -> Unit = _
  onpointerup(self : Self) -> EventHandler = _
  set_onpointerup(self : Self, onpointerup : (Event) -> JsValue) -> Unit = _
  onpointercancel(self : Self) -> EventHandler = _
  set_onpointercancel(self : Self, onpointercancel : (Event) -> JsValue) -> Unit = _
  onpointerout(self : Self) -> EventHandler = _
  set_onpointerout(self : Self, onpointerout : (Event) -> JsValue) -> Unit = _
  onpointerleave(self : Self) -> EventHandler = _
  set_onpointerleave(self : Self, onpointerleave : (Event) -> JsValue) -> Unit = _
  ongotpointercapture(self : Self) -> EventHandler = _
  set_ongotpointercapture(self : Self, ongotpointercapture : (Event) -> JsValue) -> Unit = _
  onlostpointercapture(self : Self) -> EventHandler = _
  set_onlostpointercapture(
    self : Self,
    onlostpointercapture : (Event) -> JsValue,
  ) -> Unit = _
  onselectstart(self : Self) -> EventHandler = _
  set_onselectstart(self : Self, onselectstart : (Event) -> JsValue) -> Unit = _
  onselectionchange(self : Self) -> EventHandler = _
  set_onselectionchange(self : Self, onselectionchange : (Event) -> JsValue) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, onafterprint : (Event) -> JsValue) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, onbeforeprint : (Event) -> JsValue) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, onbeforeunload : (Event) -> String) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, onhashchange : (Event) -> JsValue) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, onlanguagechange : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, onoffline : (Event) -> JsValue) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, ononline : (Event) -> JsValue) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, onpagehide : (Event) -> JsValue) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, onpagereveal : (Event) -> JsValue) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, onpageshow : (Event) -> JsValue) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, onpageswap : (Event) -> JsValue) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, onpopstate : (Event) -> JsValue) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, onrejectionhandled : (Event) -> JsValue) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, onstorage : (Event) -> JsValue) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(
    self : Self,
    onunhandledrejection : (Event) -> JsValue,
  ) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, onunload : (Event) -> JsValue) -> Unit = _
  origin(self : Self) -> String = _
  is_secure_context(self : Self) -> Bool = _
  cross_origin_isolated(self : Self) -> Bool = _
  report_error(self : Self, e : JsValue) -> Unit = _
  btoa(self : Self, data : String) -> String = _
  atob(self : Self, data : String) -> String = _
  set_timeout(
    self : Self,
    handler : &TTimerHandler,
    timeout? : Int,
    arguments : Array[&TJsValue],
  ) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(
    self : Self,
    handler : &TTimerHandler,
    timeout? : Int,
    arguments : Array[&TJsValue],
  ) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : () -> Unit) -> Unit = _
  create_image_bitmap(
    self : Self,
    image : &TImageBitmapSource,
    options? : ImageBitmapOptions,
  ) -> JsPromise[ImageBitmap] = _
  create_image_bitmap_cropped(
    self : Self,
    image : &TImageBitmapSource,
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
  fetch(self : Self, input : &TRequestInfo, init? : RequestInit) -> JsPromise[
    Response,
  ] = _
  performance(self : Self) -> Performance = _
  indexed_db(self : Self) -> IDBFactory = _
  trusted_types(self : Self) -> TrustedTypePolicyFactory = _
  caches(self : Self) -> CacheStorage = _
  request_animation_frame(self : Self, callback : (DOMHighResTimeStamp) -> Unit) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
  session_storage(self : Self) -> Storage = _
  local_storage(self : Self) -> Storage = _
  get_selection(self : Self) -> Selection = _
}

///|
/// [Window.event](https://developer.mozilla.org/en-US/docs/Web/API/Window/event)
impl TWindow with event(self : Self) -> WindowEvent {
  window_event_ffi(TJsValue::to_js(self))
}

///|
/// [Window.window](https://developer.mozilla.org/en-US/docs/Web/API/Window/window)
impl TWindow with window(self : Self) -> WindowProxy {
  window_window_ffi(TJsValue::to_js(self))
}

///|
/// [Window.self](https://developer.mozilla.org/en-US/docs/Web/API/Window/self)
impl TWindow with self(self : Self) -> WindowProxy {
  window_self_ffi(TJsValue::to_js(self))
}

///|
/// [Window.document](https://developer.mozilla.org/en-US/docs/Web/API/Window/document)
impl TWindow with document(self : Self) -> Document {
  window_document_ffi(TJsValue::to_js(self))
}

///|
/// [Window.name](https://developer.mozilla.org/en-US/docs/Web/API/Window/name)
impl TWindow with name(self : Self) -> String {
  window_name_ffi(TJsValue::to_js(self))
}

///|
/// [Window.name](https://developer.mozilla.org/en-US/docs/Web/API/Window/name)
impl TWindow with set_name(self : Self, name : String) -> Unit {
  window_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [Window.location](https://developer.mozilla.org/en-US/docs/Web/API/Window/location)
impl TWindow with location(self : Self) -> Location {
  window_location_ffi(TJsValue::to_js(self))
}

///|
/// [Window.history](https://developer.mozilla.org/en-US/docs/Web/API/Window/history)
impl TWindow with history(self : Self) -> History {
  window_history_ffi(TJsValue::to_js(self))
}

///|
/// [Window.navigation](https://developer.mozilla.org/en-US/docs/Web/API/Window/navigation)
impl TWindow with navigation(self : Self) -> Navigation {
  window_navigation_ffi(TJsValue::to_js(self))
}

///|
/// [Window.customElements](https://developer.mozilla.org/en-US/docs/Web/API/Window/customElements)
impl TWindow with custom_elements(self : Self) -> CustomElementRegistry {
  window_custom_elements_ffi(TJsValue::to_js(self))
}

///|
/// [Window.locationbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/locationbar)
impl TWindow with locationbar(self : Self) -> BarProp {
  window_locationbar_ffi(TJsValue::to_js(self))
}

///|
/// [Window.menubar](https://developer.mozilla.org/en-US/docs/Web/API/Window/menubar)
impl TWindow with menubar(self : Self) -> BarProp {
  window_menubar_ffi(TJsValue::to_js(self))
}

///|
/// [Window.personalbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/personalbar)
impl TWindow with personalbar(self : Self) -> BarProp {
  window_personalbar_ffi(TJsValue::to_js(self))
}

///|
/// [Window.scrollbars](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollbars)
impl TWindow with scrollbars(self : Self) -> BarProp {
  window_scrollbars_ffi(TJsValue::to_js(self))
}

///|
/// [Window.statusbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/statusbar)
impl TWindow with statusbar(self : Self) -> BarProp {
  window_statusbar_ffi(TJsValue::to_js(self))
}

///|
/// [Window.toolbar](https://developer.mozilla.org/en-US/docs/Web/API/Window/toolbar)
impl TWindow with toolbar(self : Self) -> BarProp {
  window_toolbar_ffi(TJsValue::to_js(self))
}

///|
/// [Window.status](https://developer.mozilla.org/en-US/docs/Web/API/Window/status)
impl TWindow with status(self : Self) -> String {
  window_status_ffi(TJsValue::to_js(self))
}

///|
/// [Window.status](https://developer.mozilla.org/en-US/docs/Web/API/Window/status)
impl TWindow with set_status(self : Self, status : String) -> Unit {
  window_set_status_ffi(TJsValue::to_js(self), TJsValue::to_js(status))
}

///|
/// [Window.close](https://developer.mozilla.org/en-US/docs/Web/API/Window/close)
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

///|
/// [Window.closed](https://developer.mozilla.org/en-US/docs/Web/API/Window/closed)
impl TWindow with closed(self : Self) -> Bool {
  window_closed_ffi(TJsValue::to_js(self))
}

///|
/// [Window.stop](https://developer.mozilla.org/en-US/docs/Web/API/Window/stop)
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(TJsValue::to_js(self))
}

///|
/// [Window.focus](https://developer.mozilla.org/en-US/docs/Web/API/Window/focus)
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(TJsValue::to_js(self))
}

///|
/// [Window.blur](https://developer.mozilla.org/en-US/docs/Web/API/Window/blur)
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(TJsValue::to_js(self))
}

///|
/// [Window.frames](https://developer.mozilla.org/en-US/docs/Web/API/Window/frames)
impl TWindow with frames(self : Self) -> WindowProxy {
  window_frames_ffi(TJsValue::to_js(self))
}

///|
/// [Window.length](https://developer.mozilla.org/en-US/docs/Web/API/Window/length)
impl TWindow with length(self : Self) -> UInt {
  window_length_ffi(TJsValue::to_js(self))
}

///|
/// [Window.top](https://developer.mozilla.org/en-US/docs/Web/API/Window/top)
impl TWindow with top(self : Self) -> WindowProxy {
  window_top_ffi(TJsValue::to_js(self))
}

///|
/// [Window.opener](https://developer.mozilla.org/en-US/docs/Web/API/Window/opener)
impl TWindow with opener(self : Self) -> JsValue {
  window_opener_ffi(TJsValue::to_js(self))
}

///|
/// [Window.opener](https://developer.mozilla.org/en-US/docs/Web/API/Window/opener)
impl TWindow with set_opener(self : Self, opener : JsValue) -> Unit {
  window_set_opener_ffi(TJsValue::to_js(self), TJsValue::to_js(opener))
}

///|
/// [Window.parent](https://developer.mozilla.org/en-US/docs/Web/API/Window/parent)
impl TWindow with parent(self : Self) -> WindowProxy {
  window_parent_ffi(TJsValue::to_js(self))
}

///|
/// [Window.frameElement](https://developer.mozilla.org/en-US/docs/Web/API/Window/frameElement)
impl TWindow with frame_element(self : Self) -> Element {
  window_frame_element_ffi(TJsValue::to_js(self))
}

///|
/// [Window.open](https://developer.mozilla.org/en-US/docs/Web/API/Window/open)
impl TWindow with open(
  self : Self,
  url? : String,
  target? : String,
  features? : String,
) -> WindowProxy? {
  window_open_ffi(
    TJsValue::to_js(self),
    opt_to_js(url),
    opt_to_js(target),
    opt_to_js(features),
  ).to_option()
}

///|
/// [Window.get](https://developer.mozilla.org/en-US/docs/Web/API/Window/get)
impl TWindow with get(self : Self, name : String) -> JsValue? {
  window_get_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

///|
/// [Window.navigator](https://developer.mozilla.org/en-US/docs/Web/API/Window/navigator)
impl TWindow with navigator(self : Self) -> Navigator {
  window_navigator_ffi(TJsValue::to_js(self))
}

///|
/// [Window.clientInformation](https://developer.mozilla.org/en-US/docs/Web/API/Window/clientInformation)
impl TWindow with client_information(self : Self) -> Navigator {
  window_client_information_ffi(TJsValue::to_js(self))
}

///|
/// [Window.originAgentCluster](https://developer.mozilla.org/en-US/docs/Web/API/Window/originAgentCluster)
impl TWindow with origin_agent_cluster(self : Self) -> Bool {
  window_origin_agent_cluster_ffi(TJsValue::to_js(self))
}

///|
/// [Window.alert](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert)
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(TJsValue::to_js(self))
}

///|
/// [Window.alert](https://developer.mozilla.org/en-US/docs/Web/API/Window/alert)
impl TWindow with alert_with_message(self : Self, message : String) -> Unit {
  window_alert_with_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message))
}

///|
/// [Window.confirm](https://developer.mozilla.org/en-US/docs/Web/API/Window/confirm)
impl TWindow with confirm(self : Self, message? : String) -> Bool {
  window_confirm_ffi(TJsValue::to_js(self), opt_to_js(message))
}

///|
/// [Window.prompt](https://developer.mozilla.org/en-US/docs/Web/API/Window/prompt)
impl TWindow with prompt(self : Self, message? : String, default? : String) -> String? {
  window_prompt_ffi(
    TJsValue::to_js(self),
    opt_to_js(message),
    opt_to_js(default),
  ).to_option_prim()
}

///|
/// [Window.print](https://developer.mozilla.org/en-US/docs/Web/API/Window/print)
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(TJsValue::to_js(self))
}

///|
/// [Window.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/postMessage)
impl TWindow with post_message(
  self : Self,
  message : JsValue,
  target_origin : String,
  transfer? : Array[JsValue],
) -> Unit {
  window_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(target_origin),
    opt_to_js(transfer),
  )
}

///|
/// [Window.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/postMessage)
impl TWindow with post_message_with_options(
  self : Self,
  message : JsValue,
  options? : WindowPostMessageOptions,
) -> Unit {
  window_post_message_with_options_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    opt_to_js(options),
  )
}

///|
/// [Window.captureEvents](https://developer.mozilla.org/en-US/docs/Web/API/Window/captureEvents)
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(TJsValue::to_js(self))
}

///|
/// [Window.releaseEvents](https://developer.mozilla.org/en-US/docs/Web/API/Window/releaseEvents)
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(TJsValue::to_js(self))
}

///|
/// [Window.external](https://developer.mozilla.org/en-US/docs/Web/API/Window/external)
impl TWindow with external(self : Self) -> External {
  window_external_ffi(TJsValue::to_js(self))
}

///|
/// [Window.getComputedStyle](https://developer.mozilla.org/en-US/docs/Web/API/Window/getComputedStyle)
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
/// [Window.fetchLater](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetchLater)
impl TWindow with fetch_later(
  self : Self,
  input : &TRequestInfo,
  init? : DeferredRequestInit,
) -> FetchLaterResult {
  window_fetch_later_ffi(TJsValue::to_js(self), input.to_js(), opt_to_js(init))
}

///|
/// [Window.matchMedia](https://developer.mozilla.org/en-US/docs/Web/API/Window/matchMedia)
impl TWindow with match_media(self : Self, query : CSSOMString) -> MediaQueryList {
  window_match_media_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [Window.screen](https://developer.mozilla.org/en-US/docs/Web/API/Window/screen)
impl TWindow with screen(self : Self) -> Screen {
  window_screen_ffi(TJsValue::to_js(self))
}

///|
/// [Window.visualViewport](https://developer.mozilla.org/en-US/docs/Web/API/Window/visualViewport)
impl TWindow with visual_viewport(self : Self) -> VisualViewport {
  window_visual_viewport_ffi(TJsValue::to_js(self))
}

///|
/// [Window.moveTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/moveTo)
impl TWindow with move_to(self : Self, x : Int, y : Int) -> Unit {
  window_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.moveBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/moveBy)
impl TWindow with move_by(self : Self, x : Int, y : Int) -> Unit {
  window_move_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.resizeTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/resizeTo)
impl TWindow with resize_to(self : Self, width : Int, height : Int) -> Unit {
  window_resize_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
/// [Window.resizeBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/resizeBy)
impl TWindow with resize_by(self : Self, x : Int, y : Int) -> Unit {
  window_resize_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.innerWidth](https://developer.mozilla.org/en-US/docs/Web/API/Window/innerWidth)
impl TWindow with inner_width(self : Self) -> Int {
  window_inner_width_ffi(TJsValue::to_js(self))
}

///|
/// [Window.innerHeight](https://developer.mozilla.org/en-US/docs/Web/API/Window/innerHeight)
impl TWindow with inner_height(self : Self) -> Int {
  window_inner_height_ffi(TJsValue::to_js(self))
}

///|
/// [Window.scrollX](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollX)
impl TWindow with scroll_x(self : Self) -> Double {
  window_scroll_x_ffi(TJsValue::to_js(self))
}

///|
/// [Window.pageXOffset](https://developer.mozilla.org/en-US/docs/Web/API/Window/pageXOffset)
impl TWindow with page_x_offset(self : Self) -> Double {
  window_page_x_offset_ffi(TJsValue::to_js(self))
}

///|
/// [Window.scrollY](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollY)
impl TWindow with scroll_y(self : Self) -> Double {
  window_scroll_y_ffi(TJsValue::to_js(self))
}

///|
/// [Window.pageYOffset](https://developer.mozilla.org/en-US/docs/Web/API/Window/pageYOffset)
impl TWindow with page_y_offset(self : Self) -> Double {
  window_page_y_offset_ffi(TJsValue::to_js(self))
}

///|
/// [Window.scroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/scroll)
impl TWindow with scroll(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  window_scroll_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.scroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/scroll)
impl TWindow with scroll_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  window_scroll_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollTo)
impl TWindow with scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  window_scroll_to_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollTo)
impl TWindow with scroll_to_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  window_scroll_to_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.scrollBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollBy)
impl TWindow with scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[
  JsValue,
] {
  window_scroll_by_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.scrollBy](https://developer.mozilla.org/en-US/docs/Web/API/Window/scrollBy)
impl TWindow with scroll_by_xy(self : Self, x : Double, y : Double) -> JsPromise[
  JsValue,
] {
  window_scroll_by_xy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
/// [Window.screenX](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenX)
impl TWindow with screen_x(self : Self) -> Int {
  window_screen_x_ffi(TJsValue::to_js(self))
}

///|
/// [Window.screenLeft](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenLeft)
impl TWindow with screen_left(self : Self) -> Int {
  window_screen_left_ffi(TJsValue::to_js(self))
}

///|
/// [Window.screenY](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenY)
impl TWindow with screen_y(self : Self) -> Int {
  window_screen_y_ffi(TJsValue::to_js(self))
}

///|
/// [Window.screenTop](https://developer.mozilla.org/en-US/docs/Web/API/Window/screenTop)
impl TWindow with screen_top(self : Self) -> Int {
  window_screen_top_ffi(TJsValue::to_js(self))
}

///|
/// [Window.outerWidth](https://developer.mozilla.org/en-US/docs/Web/API/Window/outerWidth)
impl TWindow with outer_width(self : Self) -> Int {
  window_outer_width_ffi(TJsValue::to_js(self))
}

///|
/// [Window.outerHeight](https://developer.mozilla.org/en-US/docs/Web/API/Window/outerHeight)
impl TWindow with outer_height(self : Self) -> Int {
  window_outer_height_ffi(TJsValue::to_js(self))
}

///|
/// [Window.devicePixelRatio](https://developer.mozilla.org/en-US/docs/Web/API/Window/devicePixelRatio)
impl TWindow with device_pixel_ratio(self : Self) -> Double {
  window_device_pixel_ratio_ffi(TJsValue::to_js(self))
}

///|
/// [Window.getSelection](https://developer.mozilla.org/en-US/docs/Web/API/Window/getSelection)
impl TWindow with get_selection_opt(self : Self) -> Selection? {
  window_get_selection_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [Window.showOpenFilePicker](https://developer.mozilla.org/en-US/docs/Web/API/Window/showOpenFilePicker)
impl TWindow with show_open_file_picker(
  self : Self,
  options? : OpenFilePickerOptions,
) -> JsPromise[Array[FileSystemFileHandle]] {
  window_show_open_file_picker_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.showSaveFilePicker](https://developer.mozilla.org/en-US/docs/Web/API/Window/showSaveFilePicker)
impl TWindow with show_save_file_picker(
  self : Self,
  options? : SaveFilePickerOptions,
) -> JsPromise[FileSystemFileHandle] {
  window_show_save_file_picker_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.showDirectoryPicker](https://developer.mozilla.org/en-US/docs/Web/API/Window/showDirectoryPicker)
impl TWindow with show_directory_picker(
  self : Self,
  options? : DirectoryPickerOptions,
) -> JsPromise[FileSystemDirectoryHandle] {
  window_show_directory_picker_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Window.requestIdleCallback](https://developer.mozilla.org/en-US/docs/Web/API/Window/requestIdleCallback)
impl TWindow with request_idle_callback(
  self : Self,
  callback : (IdleDeadline) -> Unit,
  options? : IdleRequestOptions,
) -> UInt {
  window_request_idle_callback_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(idle_request_callback_ffi(callback)),
    opt_to_js(options),
  )
}

///|
/// [Window.cancelIdleCallback](https://developer.mozilla.org/en-US/docs/Web/API/Window/cancelIdleCallback)
impl TWindow with cancel_idle_callback(self : Self, handle : UInt) -> Unit {
  window_cancel_idle_callback_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handle),
  )
}

///|
/// [Window.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Window/onabort)
impl TWindow with onabort(self : Self) -> EventHandler {
  window_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onabort](https://developer.mozilla.org/en-US/docs/Web/API/Window/onabort)
impl TWindow with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  window_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [Window.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onauxclick)
impl TWindow with onauxclick(self : Self) -> EventHandler {
  window_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onauxclick)
impl TWindow with set_onauxclick(self : Self, onauxclick : (Event) -> JsValue) -> Unit {
  window_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onauxclick)),
  )
}

///|
/// [Window.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeinput)
impl TWindow with onbeforeinput(self : Self) -> EventHandler {
  window_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeinput)
impl TWindow with set_onbeforeinput(
  self : Self,
  onbeforeinput : (Event) -> JsValue,
) -> Unit {
  window_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeinput)),
  )
}

///|
/// [Window.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforematch)
impl TWindow with onbeforematch(self : Self) -> EventHandler {
  window_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforematch)
impl TWindow with set_onbeforematch(
  self : Self,
  onbeforematch : (Event) -> JsValue,
) -> Unit {
  window_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforematch)),
  )
}

///|
/// [Window.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforetoggle)
impl TWindow with onbeforetoggle(self : Self) -> EventHandler {
  window_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforetoggle)
impl TWindow with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : (Event) -> JsValue,
) -> Unit {
  window_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforetoggle)),
  )
}

///|
/// [Window.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Window/onblur)
impl TWindow with onblur(self : Self) -> EventHandler {
  window_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onblur](https://developer.mozilla.org/en-US/docs/Web/API/Window/onblur)
impl TWindow with set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit {
  window_set_onblur_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onblur)),
  )
}

///|
/// [Window.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncancel)
impl TWindow with oncancel(self : Self) -> EventHandler {
  window_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncancel)
impl TWindow with set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit {
  window_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncancel)),
  )
}

///|
/// [Window.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplay)
impl TWindow with oncanplay(self : Self) -> EventHandler {
  window_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplay)
impl TWindow with set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit {
  window_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplay)),
  )
}

///|
/// [Window.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplaythrough)
impl TWindow with oncanplaythrough(self : Self) -> EventHandler {
  window_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncanplaythrough)
impl TWindow with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : (Event) -> JsValue,
) -> Unit {
  window_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplaythrough)),
  )
}

///|
/// [Window.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onchange)
impl TWindow with onchange(self : Self) -> EventHandler {
  window_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onchange)
impl TWindow with set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit {
  window_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
/// [Window.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclick)
impl TWindow with onclick(self : Self) -> EventHandler {
  window_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclick)
impl TWindow with set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit {
  window_set_onclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclick)),
  )
}

///|
/// [Window.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclose)
impl TWindow with onclose(self : Self) -> EventHandler {
  window_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Window/onclose)
impl TWindow with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  window_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [Window.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncommand)
impl TWindow with oncommand(self : Self) -> EventHandler {
  window_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncommand)
impl TWindow with set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit {
  window_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncommand)),
  )
}

///|
/// [Window.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextlost)
impl TWindow with oncontextlost(self : Self) -> EventHandler {
  window_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextlost)
impl TWindow with set_oncontextlost(
  self : Self,
  oncontextlost : (Event) -> JsValue,
) -> Unit {
  window_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextlost)),
  )
}

///|
/// [Window.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextmenu)
impl TWindow with oncontextmenu(self : Self) -> EventHandler {
  window_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextmenu)
impl TWindow with set_oncontextmenu(
  self : Self,
  oncontextmenu : (Event) -> JsValue,
) -> Unit {
  window_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextmenu)),
  )
}

///|
/// [Window.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextrestored)
impl TWindow with oncontextrestored(self : Self) -> EventHandler {
  window_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncontextrestored)
impl TWindow with set_oncontextrestored(
  self : Self,
  oncontextrestored : (Event) -> JsValue,
) -> Unit {
  window_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextrestored)),
  )
}

///|
/// [Window.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncopy)
impl TWindow with oncopy(self : Self) -> EventHandler {
  window_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncopy)
impl TWindow with set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit {
  window_set_oncopy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncopy)),
  )
}

///|
/// [Window.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncuechange)
impl TWindow with oncuechange(self : Self) -> EventHandler {
  window_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncuechange)
impl TWindow with set_oncuechange(self : Self, oncuechange : (Event) -> JsValue) -> Unit {
  window_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncuechange)),
  )
}

///|
/// [Window.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncut)
impl TWindow with oncut(self : Self) -> EventHandler {
  window_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oncut](https://developer.mozilla.org/en-US/docs/Web/API/Window/oncut)
impl TWindow with set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit {
  window_set_oncut_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncut)),
  )
}

///|
/// [Window.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondblclick)
impl TWindow with ondblclick(self : Self) -> EventHandler {
  window_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondblclick)
impl TWindow with set_ondblclick(self : Self, ondblclick : (Event) -> JsValue) -> Unit {
  window_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondblclick)),
  )
}

///|
/// [Window.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrag)
impl TWindow with ondrag(self : Self) -> EventHandler {
  window_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrag)
impl TWindow with set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit {
  window_set_ondrag_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrag)),
  )
}

///|
/// [Window.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragend)
impl TWindow with ondragend(self : Self) -> EventHandler {
  window_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragend)
impl TWindow with set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit {
  window_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragend)),
  )
}

///|
/// [Window.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragenter)
impl TWindow with ondragenter(self : Self) -> EventHandler {
  window_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragenter)
impl TWindow with set_ondragenter(self : Self, ondragenter : (Event) -> JsValue) -> Unit {
  window_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragenter)),
  )
}

///|
/// [Window.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragleave)
impl TWindow with ondragleave(self : Self) -> EventHandler {
  window_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragleave)
impl TWindow with set_ondragleave(self : Self, ondragleave : (Event) -> JsValue) -> Unit {
  window_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragleave)),
  )
}

///|
/// [Window.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragover)
impl TWindow with ondragover(self : Self) -> EventHandler {
  window_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragover)
impl TWindow with set_ondragover(self : Self, ondragover : (Event) -> JsValue) -> Unit {
  window_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragover)),
  )
}

///|
/// [Window.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragstart)
impl TWindow with ondragstart(self : Self) -> EventHandler {
  window_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondragstart)
impl TWindow with set_ondragstart(self : Self, ondragstart : (Event) -> JsValue) -> Unit {
  window_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragstart)),
  )
}

///|
/// [Window.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrop)
impl TWindow with ondrop(self : Self) -> EventHandler {
  window_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondrop)
impl TWindow with set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit {
  window_set_ondrop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrop)),
  )
}

///|
/// [Window.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondurationchange)
impl TWindow with ondurationchange(self : Self) -> EventHandler {
  window_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/ondurationchange)
impl TWindow with set_ondurationchange(
  self : Self,
  ondurationchange : (Event) -> JsValue,
) -> Unit {
  window_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondurationchange)),
  )
}

///|
/// [Window.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Window/onemptied)
impl TWindow with onemptied(self : Self) -> EventHandler {
  window_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/Window/onemptied)
impl TWindow with set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit {
  window_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onemptied)),
  )
}

///|
/// [Window.onended](https://developer.mozilla.org/en-US/docs/Web/API/Window/onended)
impl TWindow with onended(self : Self) -> EventHandler {
  window_onended_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onended](https://developer.mozilla.org/en-US/docs/Web/API/Window/onended)
impl TWindow with set_onended(self : Self, onended : (Event) -> JsValue) -> Unit {
  window_set_onended_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onended)),
  )
}

///|
/// [Window.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onerror)
impl TWindow with onerror(self : Self) -> OnErrorEventHandler {
  window_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onerror)
impl TWindow with set_onerror(
  self : Self,
  onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> Unit {
  window_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_error_event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [Window.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Window/onfocus)
impl TWindow with onfocus(self : Self) -> EventHandler {
  window_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/Window/onfocus)
impl TWindow with set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit {
  window_set_onfocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfocus)),
  )
}

///|
/// [Window.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onformdata)
impl TWindow with onformdata(self : Self) -> EventHandler {
  window_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onformdata)
impl TWindow with set_onformdata(self : Self, onformdata : (Event) -> JsValue) -> Unit {
  window_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onformdata)),
  )
}

///|
/// [Window.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninput)
impl TWindow with oninput(self : Self) -> EventHandler {
  window_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oninput](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninput)
impl TWindow with set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit {
  window_set_oninput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninput)),
  )
}

///|
/// [Window.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninvalid)
impl TWindow with oninvalid(self : Self) -> EventHandler {
  window_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [Window.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/Window/oninvalid)
impl TWindow with set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit {
  window_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninvalid)),
  )
}

///|
/// [Window.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeydown)
impl TWindow with onkeydown(self : Self) -> EventHandler {
  window_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeydown)
impl TWindow with set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit {
  window_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeydown)),
  )
}

///|
/// [Window.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeypress)
impl TWindow with onkeypress(self : Self) -> EventHandler {
  window_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeypress)
impl TWindow with set_onkeypress(self : Self, onkeypress : (Event) -> JsValue) -> Unit {
  window_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeypress)),
  )
}

///|
/// [Window.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeyup)
impl TWindow with onkeyup(self : Self) -> EventHandler {
  window_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onkeyup)
impl TWindow with set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit {
  window_set_onkeyup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeyup)),
  )
}

///|
/// [Window.onload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onload)
impl TWindow with onload(self : Self) -> EventHandler {
  window_onload_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onload)
impl TWindow with set_onload(self : Self, onload : (Event) -> JsValue) -> Unit {
  window_set_onload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onload)),
  )
}

///|
/// [Window.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadeddata)
impl TWindow with onloadeddata(self : Self) -> EventHandler {
  window_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadeddata)
impl TWindow with set_onloadeddata(
  self : Self,
  onloadeddata : (Event) -> JsValue,
) -> Unit {
  window_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadeddata)),
  )
}

///|
/// [Window.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadedmetadata)
impl TWindow with onloadedmetadata(self : Self) -> EventHandler {
  window_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadedmetadata)
impl TWindow with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : (Event) -> JsValue,
) -> Unit {
  window_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadedmetadata)),
  )
}

///|
/// [Window.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadstart)
impl TWindow with onloadstart(self : Self) -> EventHandler {
  window_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onloadstart)
impl TWindow with set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit {
  window_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadstart)),
  )
}

///|
/// [Window.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousedown)
impl TWindow with onmousedown(self : Self) -> EventHandler {
  window_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousedown)
impl TWindow with set_onmousedown(self : Self, onmousedown : (Event) -> JsValue) -> Unit {
  window_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousedown)),
  )
}

///|
/// [Window.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseenter)
impl TWindow with onmouseenter(self : Self) -> EventHandler {
  window_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseenter)
impl TWindow with set_onmouseenter(
  self : Self,
  onmouseenter : (Event) -> JsValue,
) -> Unit {
  window_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseenter)),
  )
}

///|
/// [Window.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseleave)
impl TWindow with onmouseleave(self : Self) -> EventHandler {
  window_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseleave)
impl TWindow with set_onmouseleave(
  self : Self,
  onmouseleave : (Event) -> JsValue,
) -> Unit {
  window_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseleave)),
  )
}

///|
/// [Window.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousemove)
impl TWindow with onmousemove(self : Self) -> EventHandler {
  window_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmousemove)
impl TWindow with set_onmousemove(self : Self, onmousemove : (Event) -> JsValue) -> Unit {
  window_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousemove)),
  )
}

///|
/// [Window.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseout)
impl TWindow with onmouseout(self : Self) -> EventHandler {
  window_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseout)
impl TWindow with set_onmouseout(self : Self, onmouseout : (Event) -> JsValue) -> Unit {
  window_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseout)),
  )
}

///|
/// [Window.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseover)
impl TWindow with onmouseover(self : Self) -> EventHandler {
  window_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseover)
impl TWindow with set_onmouseover(self : Self, onmouseover : (Event) -> JsValue) -> Unit {
  window_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseover)),
  )
}

///|
/// [Window.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseup)
impl TWindow with onmouseup(self : Self) -> EventHandler {
  window_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmouseup)
impl TWindow with set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit {
  window_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseup)),
  )
}

///|
/// [Window.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpaste)
impl TWindow with onpaste(self : Self) -> EventHandler {
  window_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpaste)
impl TWindow with set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit {
  window_set_onpaste_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpaste)),
  )
}

///|
/// [Window.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpause)
impl TWindow with onpause(self : Self) -> EventHandler {
  window_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpause](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpause)
impl TWindow with set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit {
  window_set_onpause_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpause)),
  )
}

///|
/// [Window.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplay)
impl TWindow with onplay(self : Self) -> EventHandler {
  window_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onplay](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplay)
impl TWindow with set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit {
  window_set_onplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplay)),
  )
}

///|
/// [Window.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplaying)
impl TWindow with onplaying(self : Self) -> EventHandler {
  window_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/Window/onplaying)
impl TWindow with set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit {
  window_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplaying)),
  )
}

///|
/// [Window.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onprogress)
impl TWindow with onprogress(self : Self) -> EventHandler {
  window_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/Window/onprogress)
impl TWindow with set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit {
  window_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onprogress)),
  )
}

///|
/// [Window.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onratechange)
impl TWindow with onratechange(self : Self) -> EventHandler {
  window_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onratechange)
impl TWindow with set_onratechange(
  self : Self,
  onratechange : (Event) -> JsValue,
) -> Unit {
  window_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onratechange)),
  )
}

///|
/// [Window.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Window/onreset)
impl TWindow with onreset(self : Self) -> EventHandler {
  window_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onreset](https://developer.mozilla.org/en-US/docs/Web/API/Window/onreset)
impl TWindow with set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit {
  window_set_onreset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreset)),
  )
}

///|
/// [Window.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Window/onresize)
impl TWindow with onresize(self : Self) -> EventHandler {
  window_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onresize](https://developer.mozilla.org/en-US/docs/Web/API/Window/onresize)
impl TWindow with set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit {
  window_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onresize)),
  )
}

///|
/// [Window.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscroll)
impl TWindow with onscroll(self : Self) -> EventHandler {
  window_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscroll)
impl TWindow with set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit {
  window_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscroll)),
  )
}

///|
/// [Window.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscrollend)
impl TWindow with onscrollend(self : Self) -> EventHandler {
  window_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onscrollend)
impl TWindow with set_onscrollend(self : Self, onscrollend : (Event) -> JsValue) -> Unit {
  window_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscrollend)),
  )
}

///|
/// [Window.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsecuritypolicyviolation)
impl TWindow with onsecuritypolicyviolation(self : Self) -> EventHandler {
  window_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsecuritypolicyviolation)
impl TWindow with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : (Event) -> JsValue,
) -> Unit {
  window_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsecuritypolicyviolation)),
  )
}

///|
/// [Window.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeked)
impl TWindow with onseeked(self : Self) -> EventHandler {
  window_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeked)
impl TWindow with set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit {
  window_set_onseeked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeked)),
  )
}

///|
/// [Window.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeking)
impl TWindow with onseeking(self : Self) -> EventHandler {
  window_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/Window/onseeking)
impl TWindow with set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit {
  window_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeking)),
  )
}

///|
/// [Window.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselect)
impl TWindow with onselect(self : Self) -> EventHandler {
  window_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onselect](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselect)
impl TWindow with set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit {
  window_set_onselect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselect)),
  )
}

///|
/// [Window.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onslotchange)
impl TWindow with onslotchange(self : Self) -> EventHandler {
  window_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onslotchange)
impl TWindow with set_onslotchange(
  self : Self,
  onslotchange : (Event) -> JsValue,
) -> Unit {
  window_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onslotchange)),
  )
}

///|
/// [Window.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstalled)
impl TWindow with onstalled(self : Self) -> EventHandler {
  window_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstalled)
impl TWindow with set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit {
  window_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstalled)),
  )
}

///|
/// [Window.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsubmit)
impl TWindow with onsubmit(self : Self) -> EventHandler {
  window_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsubmit)
impl TWindow with set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit {
  window_set_onsubmit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsubmit)),
  )
}

///|
/// [Window.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsuspend)
impl TWindow with onsuspend(self : Self) -> EventHandler {
  window_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onsuspend)
impl TWindow with set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit {
  window_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsuspend)),
  )
}

///|
/// [Window.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontimeupdate)
impl TWindow with ontimeupdate(self : Self) -> EventHandler {
  window_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontimeupdate)
impl TWindow with set_ontimeupdate(
  self : Self,
  ontimeupdate : (Event) -> JsValue,
) -> Unit {
  window_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontimeupdate)),
  )
}

///|
/// [Window.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontoggle)
impl TWindow with ontoggle(self : Self) -> EventHandler {
  window_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontoggle)
impl TWindow with set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit {
  window_set_ontoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontoggle)),
  )
}

///|
/// [Window.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onvolumechange)
impl TWindow with onvolumechange(self : Self) -> EventHandler {
  window_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onvolumechange)
impl TWindow with set_onvolumechange(
  self : Self,
  onvolumechange : (Event) -> JsValue,
) -> Unit {
  window_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onvolumechange)),
  )
}

///|
/// [Window.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwaiting)
impl TWindow with onwaiting(self : Self) -> EventHandler {
  window_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwaiting)
impl TWindow with set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit {
  window_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwaiting)),
  )
}

///|
/// [Window.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationend)
impl TWindow with onwebkitanimationend(self : Self) -> EventHandler {
  window_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationend)
impl TWindow with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : (Event) -> JsValue,
) -> Unit {
  window_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationend)),
  )
}

///|
/// [Window.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationiteration)
impl TWindow with onwebkitanimationiteration(self : Self) -> EventHandler {
  window_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationiteration)
impl TWindow with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : (Event) -> JsValue,
) -> Unit {
  window_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationiteration)),
  )
}

///|
/// [Window.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationstart)
impl TWindow with onwebkitanimationstart(self : Self) -> EventHandler {
  window_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkitanimationstart)
impl TWindow with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : (Event) -> JsValue,
) -> Unit {
  window_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationstart)),
  )
}

///|
/// [Window.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkittransitionend)
impl TWindow with onwebkittransitionend(self : Self) -> EventHandler {
  window_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwebkittransitionend)
impl TWindow with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : (Event) -> JsValue,
) -> Unit {
  window_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkittransitionend)),
  )
}

///|
/// [Window.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwheel)
impl TWindow with onwheel(self : Self) -> EventHandler {
  window_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onwheel)
impl TWindow with set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit {
  window_set_onwheel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwheel)),
  )
}

///|
/// [Window.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchstart)
impl TWindow with ontouchstart(self : Self) -> EventHandler {
  window_ontouchstart_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchstart)
impl TWindow with set_ontouchstart(
  self : Self,
  ontouchstart : (Event) -> JsValue,
) -> Unit {
  window_set_ontouchstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchstart)),
  )
}

///|
/// [Window.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchend)
impl TWindow with ontouchend(self : Self) -> EventHandler {
  window_ontouchend_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchend)
impl TWindow with set_ontouchend(self : Self, ontouchend : (Event) -> JsValue) -> Unit {
  window_set_ontouchend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchend)),
  )
}

///|
/// [Window.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchmove)
impl TWindow with ontouchmove(self : Self) -> EventHandler {
  window_ontouchmove_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchmove)
impl TWindow with set_ontouchmove(self : Self, ontouchmove : (Event) -> JsValue) -> Unit {
  window_set_ontouchmove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchmove)),
  )
}

///|
/// [Window.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchcancel)
impl TWindow with ontouchcancel(self : Self) -> EventHandler {
  window_ontouchcancel_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/ontouchcancel)
impl TWindow with set_ontouchcancel(
  self : Self,
  ontouchcancel : (Event) -> JsValue,
) -> Unit {
  window_set_ontouchcancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchcancel)),
  )
}

///|
/// [Window.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerover)
impl TWindow with onpointerover(self : Self) -> EventHandler {
  window_onpointerover_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerover)
impl TWindow with set_onpointerover(
  self : Self,
  onpointerover : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerover)),
  )
}

///|
/// [Window.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerenter)
impl TWindow with onpointerenter(self : Self) -> EventHandler {
  window_onpointerenter_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerenter)
impl TWindow with set_onpointerenter(
  self : Self,
  onpointerenter : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerenter)),
  )
}

///|
/// [Window.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerdown)
impl TWindow with onpointerdown(self : Self) -> EventHandler {
  window_onpointerdown_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerdown)
impl TWindow with set_onpointerdown(
  self : Self,
  onpointerdown : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerdown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerdown)),
  )
}

///|
/// [Window.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointermove)
impl TWindow with onpointermove(self : Self) -> EventHandler {
  window_onpointermove_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointermove)
impl TWindow with set_onpointermove(
  self : Self,
  onpointermove : (Event) -> JsValue,
) -> Unit {
  window_set_onpointermove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointermove)),
  )
}

///|
/// [Window.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerrawupdate)
impl TWindow with onpointerrawupdate(self : Self) -> EventHandler {
  window_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerrawupdate)
impl TWindow with set_onpointerrawupdate(
  self : Self,
  onpointerrawupdate : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerrawupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerrawupdate)),
  )
}

///|
/// [Window.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerup)
impl TWindow with onpointerup(self : Self) -> EventHandler {
  window_onpointerup_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerup)
impl TWindow with set_onpointerup(self : Self, onpointerup : (Event) -> JsValue) -> Unit {
  window_set_onpointerup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerup)),
  )
}

///|
/// [Window.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointercancel)
impl TWindow with onpointercancel(self : Self) -> EventHandler {
  window_onpointercancel_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointercancel)
impl TWindow with set_onpointercancel(
  self : Self,
  onpointercancel : (Event) -> JsValue,
) -> Unit {
  window_set_onpointercancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointercancel)),
  )
}

///|
/// [Window.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerout)
impl TWindow with onpointerout(self : Self) -> EventHandler {
  window_onpointerout_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerout)
impl TWindow with set_onpointerout(
  self : Self,
  onpointerout : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerout)),
  )
}

///|
/// [Window.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerleave)
impl TWindow with onpointerleave(self : Self) -> EventHandler {
  window_onpointerleave_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpointerleave)
impl TWindow with set_onpointerleave(
  self : Self,
  onpointerleave : (Event) -> JsValue,
) -> Unit {
  window_set_onpointerleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerleave)),
  )
}

///|
/// [Window.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/ongotpointercapture)
impl TWindow with ongotpointercapture(self : Self) -> EventHandler {
  window_ongotpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/ongotpointercapture)
impl TWindow with set_ongotpointercapture(
  self : Self,
  ongotpointercapture : (Event) -> JsValue,
) -> Unit {
  window_set_ongotpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ongotpointercapture)),
  )
}

///|
/// [Window.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlostpointercapture)
impl TWindow with onlostpointercapture(self : Self) -> EventHandler {
  window_onlostpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlostpointercapture)
impl TWindow with set_onlostpointercapture(
  self : Self,
  onlostpointercapture : (Event) -> JsValue,
) -> Unit {
  window_set_onlostpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlostpointercapture)),
  )
}

///|
/// [Window.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectstart)
impl TWindow with onselectstart(self : Self) -> EventHandler {
  window_onselectstart_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectstart)
impl TWindow with set_onselectstart(
  self : Self,
  onselectstart : (Event) -> JsValue,
) -> Unit {
  window_set_onselectstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectstart)),
  )
}

///|
/// [Window.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectionchange)
impl TWindow with onselectionchange(self : Self) -> EventHandler {
  window_onselectionchange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onselectionchange)
impl TWindow with set_onselectionchange(
  self : Self,
  onselectionchange : (Event) -> JsValue,
) -> Unit {
  window_set_onselectionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectionchange)),
  )
}

///|
/// [Window.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onafterprint)
impl TWindow with onafterprint(self : Self) -> EventHandler {
  window_onafterprint_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onafterprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onafterprint)
impl TWindow with set_onafterprint(
  self : Self,
  onafterprint : (Event) -> JsValue,
) -> Unit {
  window_set_onafterprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onafterprint)),
  )
}

///|
/// [Window.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeprint)
impl TWindow with onbeforeprint(self : Self) -> EventHandler {
  window_onbeforeprint_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onbeforeprint](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeprint)
impl TWindow with set_onbeforeprint(
  self : Self,
  onbeforeprint : (Event) -> JsValue,
) -> Unit {
  window_set_onbeforeprint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeprint)),
  )
}

///|
/// [Window.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeunload)
impl TWindow with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onbeforeunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onbeforeunload)
impl TWindow with set_onbeforeunload(
  self : Self,
  onbeforeunload : (Event) -> String,
) -> Unit {
  window_set_onbeforeunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_before_unload_event_handler_non_null_ffi(onbeforeunload)),
  )
}

///|
/// [Window.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onhashchange)
impl TWindow with onhashchange(self : Self) -> EventHandler {
  window_onhashchange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onhashchange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onhashchange)
impl TWindow with set_onhashchange(
  self : Self,
  onhashchange : (Event) -> JsValue,
) -> Unit {
  window_set_onhashchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onhashchange)),
  )
}

///|
/// [Window.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlanguagechange)
impl TWindow with onlanguagechange(self : Self) -> EventHandler {
  window_onlanguagechange_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onlanguagechange](https://developer.mozilla.org/en-US/docs/Web/API/Window/onlanguagechange)
impl TWindow with set_onlanguagechange(
  self : Self,
  onlanguagechange : (Event) -> JsValue,
) -> Unit {
  window_set_onlanguagechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlanguagechange)),
  )
}

///|
/// [Window.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessage)
impl TWindow with onmessage(self : Self) -> EventHandler {
  window_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessage)
impl TWindow with set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit {
  window_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [Window.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessageerror)
impl TWindow with onmessageerror(self : Self) -> EventHandler {
  window_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Window/onmessageerror)
impl TWindow with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  window_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}

///|
/// [Window.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/Window/onoffline)
impl TWindow with onoffline(self : Self) -> EventHandler {
  window_onoffline_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onoffline](https://developer.mozilla.org/en-US/docs/Web/API/Window/onoffline)
impl TWindow with set_onoffline(self : Self, onoffline : (Event) -> JsValue) -> Unit {
  window_set_onoffline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onoffline)),
  )
}

///|
/// [Window.ononline](https://developer.mozilla.org/en-US/docs/Web/API/Window/ononline)
impl TWindow with ononline(self : Self) -> EventHandler {
  window_ononline_ffi(TJsValue::to_js(self))
}

///|
/// [Window.ononline](https://developer.mozilla.org/en-US/docs/Web/API/Window/ononline)
impl TWindow with set_ononline(self : Self, ononline : (Event) -> JsValue) -> Unit {
  window_set_ononline_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ononline)),
  )
}

///|
/// [Window.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagehide)
impl TWindow with onpagehide(self : Self) -> EventHandler {
  window_onpagehide_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpagehide](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagehide)
impl TWindow with set_onpagehide(self : Self, onpagehide : (Event) -> JsValue) -> Unit {
  window_set_onpagehide_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpagehide)),
  )
}

///|
/// [Window.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagereveal)
impl TWindow with onpagereveal(self : Self) -> EventHandler {
  window_onpagereveal_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpagereveal](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpagereveal)
impl TWindow with set_onpagereveal(
  self : Self,
  onpagereveal : (Event) -> JsValue,
) -> Unit {
  window_set_onpagereveal_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpagereveal)),
  )
}

///|
/// [Window.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageshow)
impl TWindow with onpageshow(self : Self) -> EventHandler {
  window_onpageshow_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpageshow](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageshow)
impl TWindow with set_onpageshow(self : Self, onpageshow : (Event) -> JsValue) -> Unit {
  window_set_onpageshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpageshow)),
  )
}

///|
/// [Window.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageswap)
impl TWindow with onpageswap(self : Self) -> EventHandler {
  window_onpageswap_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpageswap](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpageswap)
impl TWindow with set_onpageswap(self : Self, onpageswap : (Event) -> JsValue) -> Unit {
  window_set_onpageswap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpageswap)),
  )
}

///|
/// [Window.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpopstate)
impl TWindow with onpopstate(self : Self) -> EventHandler {
  window_onpopstate_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onpopstate](https://developer.mozilla.org/en-US/docs/Web/API/Window/onpopstate)
impl TWindow with set_onpopstate(self : Self, onpopstate : (Event) -> JsValue) -> Unit {
  window_set_onpopstate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpopstate)),
  )
}

///|
/// [Window.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onrejectionhandled)
impl TWindow with onrejectionhandled(self : Self) -> EventHandler {
  window_onrejectionhandled_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onrejectionhandled](https://developer.mozilla.org/en-US/docs/Web/API/Window/onrejectionhandled)
impl TWindow with set_onrejectionhandled(
  self : Self,
  onrejectionhandled : (Event) -> JsValue,
) -> Unit {
  window_set_onrejectionhandled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onrejectionhandled)),
  )
}

///|
/// [Window.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstorage)
impl TWindow with onstorage(self : Self) -> EventHandler {
  window_onstorage_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onstorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/onstorage)
impl TWindow with set_onstorage(self : Self, onstorage : (Event) -> JsValue) -> Unit {
  window_set_onstorage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstorage)),
  )
}

///|
/// [Window.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunhandledrejection)
impl TWindow with onunhandledrejection(self : Self) -> EventHandler {
  window_onunhandledrejection_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onunhandledrejection](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunhandledrejection)
impl TWindow with set_onunhandledrejection(
  self : Self,
  onunhandledrejection : (Event) -> JsValue,
) -> Unit {
  window_set_onunhandledrejection_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onunhandledrejection)),
  )
}

///|
/// [Window.onunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunload)
impl TWindow with onunload(self : Self) -> EventHandler {
  window_onunload_ffi(TJsValue::to_js(self))
}

///|
/// [Window.onunload](https://developer.mozilla.org/en-US/docs/Web/API/Window/onunload)
impl TWindow with set_onunload(self : Self, onunload : (Event) -> JsValue) -> Unit {
  window_set_onunload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onunload)),
  )
}

///|
/// [Window.origin](https://developer.mozilla.org/en-US/docs/Web/API/Window/origin)
impl TWindow with origin(self : Self) -> String {
  window_origin_ffi(TJsValue::to_js(self))
}

///|
/// [Window.isSecureContext](https://developer.mozilla.org/en-US/docs/Web/API/Window/isSecureContext)
impl TWindow with is_secure_context(self : Self) -> Bool {
  window_is_secure_context_ffi(TJsValue::to_js(self))
}

///|
/// [Window.crossOriginIsolated](https://developer.mozilla.org/en-US/docs/Web/API/Window/crossOriginIsolated)
impl TWindow with cross_origin_isolated(self : Self) -> Bool {
  window_cross_origin_isolated_ffi(TJsValue::to_js(self))
}

///|
/// [Window.reportError](https://developer.mozilla.org/en-US/docs/Web/API/Window/reportError)
impl TWindow with report_error(self : Self, e : JsValue) -> Unit {
  window_report_error_ffi(TJsValue::to_js(self), TJsValue::to_js(e))
}

///|
/// [Window.btoa](https://developer.mozilla.org/en-US/docs/Web/API/Window/btoa)
impl TWindow with btoa(self : Self, data : String) -> String {
  window_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [Window.atob](https://developer.mozilla.org/en-US/docs/Web/API/Window/atob)
impl TWindow with atob(self : Self, data : String) -> String {
  window_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
/// [Window.setTimeout](https://developer.mozilla.org/en-US/docs/Web/API/Window/setTimeout)
impl TWindow with set_timeout(
  self : Self,
  handler : &TTimerHandler,
  timeout? : Int,
  arguments : Array[&TJsValue],
) -> Int {
  window_set_timeout_ffi(
    TJsValue::to_js(self),
    handler.to_js(),
    opt_to_js(timeout),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [Window.clearTimeout](https://developer.mozilla.org/en-US/docs/Web/API/Window/clearTimeout)
impl TWindow with clear_timeout(self : Self, id? : Int) -> Unit {
  window_clear_timeout_ffi(TJsValue::to_js(self), opt_to_js(id))
}

///|
/// [Window.setInterval](https://developer.mozilla.org/en-US/docs/Web/API/Window/setInterval)
impl TWindow with set_interval(
  self : Self,
  handler : &TTimerHandler,
  timeout? : Int,
  arguments : Array[&TJsValue],
) -> Int {
  window_set_interval_ffi(
    TJsValue::to_js(self),
    handler.to_js(),
    opt_to_js(timeout),
    TJsValue::to_js(arguments.map(fn(v : &TJsValue) -> JsValue { v.to_js() })),
  )
}

///|
/// [Window.clearInterval](https://developer.mozilla.org/en-US/docs/Web/API/Window/clearInterval)
impl TWindow with clear_interval(self : Self, id? : Int) -> Unit {
  window_clear_interval_ffi(TJsValue::to_js(self), opt_to_js(id))
}

///|
/// [Window.queueMicrotask](https://developer.mozilla.org/en-US/docs/Web/API/Window/queueMicrotask)
impl TWindow with queue_microtask(self : Self, callback : () -> Unit) -> Unit {
  window_queue_microtask_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(void_function_ffi(callback)),
  )
}

///|
/// [Window.createImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/Window/createImageBitmap)
impl TWindow with create_image_bitmap(
  self : Self,
  image : &TImageBitmapSource,
  options? : ImageBitmapOptions,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    opt_to_js(options),
  )
}

///|
/// [Window.createImageBitmap](https://developer.mozilla.org/en-US/docs/Web/API/Window/createImageBitmap)
impl TWindow with create_image_bitmap_cropped(
  self : Self,
  image : &TImageBitmapSource,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_cropped_ffi(
    TJsValue::to_js(self),
    image.to_js(),
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    opt_to_js(options),
  )
}

///|
/// [Window.structuredClone](https://developer.mozilla.org/en-US/docs/Web/API/Window/structuredClone)
impl TWindow with structured_clone(
  self : Self,
  value : JsValue,
  options? : StructuredSerializeOptions,
) -> JsValue {
  window_structured_clone_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
    opt_to_js(options),
  )
}

///|
/// [Window.fetch](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetch)
impl TWindow with fetch(self : Self, input : &TRequestInfo, init? : RequestInit) -> JsPromise[
  Response,
] {
  window_fetch_ffi(TJsValue::to_js(self), input.to_js(), opt_to_js(init))
}

///|
/// [Window.performance](https://developer.mozilla.org/en-US/docs/Web/API/Window/performance)
impl TWindow with performance(self : Self) -> Performance {
  window_performance_ffi(TJsValue::to_js(self))
}

///|
/// [Window.indexedDB](https://developer.mozilla.org/en-US/docs/Web/API/Window/indexedDB)
impl TWindow with indexed_db(self : Self) -> IDBFactory {
  window_indexed_db_ffi(TJsValue::to_js(self))
}

///|
/// [Window.trustedTypes](https://developer.mozilla.org/en-US/docs/Web/API/Window/trustedTypes)
impl TWindow with trusted_types(self : Self) -> TrustedTypePolicyFactory {
  window_trusted_types_ffi(TJsValue::to_js(self))
}

///|
/// [Window.caches](https://developer.mozilla.org/en-US/docs/Web/API/Window/caches)
impl TWindow with caches(self : Self) -> CacheStorage {
  window_caches_ffi(TJsValue::to_js(self))
}

///|
/// [Window.requestAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/Window/requestAnimationFrame)
impl TWindow with request_animation_frame(
  self : Self,
  callback : (DOMHighResTimeStamp) -> Unit,
) -> UInt {
  window_request_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame_request_callback_ffi(callback)),
  )
}

///|
/// [Window.cancelAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/Window/cancelAnimationFrame)
impl TWindow with cancel_animation_frame(self : Self, handle : UInt) -> Unit {
  window_cancel_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handle),
  )
}

///|
/// [Window.sessionStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage)
impl TWindow with session_storage(self : Self) -> Storage {
  window_session_storage_ffi(TJsValue::to_js(self))
}

///|
/// [Window.localStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage)
impl TWindow with local_storage(self : Self) -> Storage {
  window_local_storage_ffi(TJsValue::to_js(self))
}

///|
impl TWindow with get_selection(self : Self) -> Selection {
  self.get_selection_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "(obj) => obj === undefined"

///|
#cfg(target="js")
extern "js" fn window_event_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.event"

///|
#cfg(target="js")
fn window_event_ffi(obj : JsValue) -> WindowEvent {
  window_event_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_window_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.window"

///|
#cfg(target="js")
fn window_window_ffi(obj : JsValue) -> WindowProxy {
  window_window_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_self_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.self"

///|
#cfg(target="js")
fn window_self_ffi(obj : JsValue) -> WindowProxy {
  window_self_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_document_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.document"

///|
#cfg(target="js")
fn window_document_ffi(obj : JsValue) -> Document {
  window_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn window_name_ffi(obj : JsValue) -> String {
  window_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn window_location_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
#cfg(target="js")
fn window_location_ffi(obj : JsValue) -> Location {
  window_location_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_history_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.history"

///|
#cfg(target="js")
fn window_history_ffi(obj : JsValue) -> History {
  window_history_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_navigation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigation"

///|
#cfg(target="js")
fn window_navigation_ffi(obj : JsValue) -> Navigation {
  window_navigation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_custom_elements_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.customElements"

///|
#cfg(target="js")
fn window_custom_elements_ffi(obj : JsValue) -> CustomElementRegistry {
  window_custom_elements_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_locationbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.locationbar"

///|
#cfg(target="js")
fn window_locationbar_ffi(obj : JsValue) -> BarProp {
  window_locationbar_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_menubar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.menubar"

///|
#cfg(target="js")
fn window_menubar_ffi(obj : JsValue) -> BarProp {
  window_menubar_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_personalbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.personalbar"

///|
#cfg(target="js")
fn window_personalbar_ffi(obj : JsValue) -> BarProp {
  window_personalbar_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scrollbars_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollbars"

///|
#cfg(target="js")
fn window_scrollbars_ffi(obj : JsValue) -> BarProp {
  window_scrollbars_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_statusbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.statusbar"

///|
#cfg(target="js")
fn window_statusbar_ffi(obj : JsValue) -> BarProp {
  window_statusbar_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_toolbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toolbar"

///|
#cfg(target="js")
fn window_toolbar_ffi(obj : JsValue) -> BarProp {
  window_toolbar_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_status_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.status"

///|
#cfg(target="js")
fn window_status_ffi(obj : JsValue) -> String {
  window_status_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_status_ffi(obj : JsValue, status : JsValue) -> Unit = "(obj, status) => { obj.status = status; }"

///|
#cfg(target="js")
extern "js" fn window_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="js")
extern "js" fn window_closed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.closed"

///|
#cfg(target="js")
fn window_closed_ffi(obj : JsValue) -> Bool {
  window_closed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_stop_ffi(obj : JsValue) -> Unit = "(obj) => obj.stop()"

///|
#cfg(target="js")
extern "js" fn window_focus_ffi(obj : JsValue) -> Unit = "(obj) => obj.focus()"

///|
#cfg(target="js")
extern "js" fn window_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
#cfg(target="js")
extern "js" fn window_frames_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frames"

///|
#cfg(target="js")
fn window_frames_ffi(obj : JsValue) -> WindowProxy {
  window_frames_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn window_length_ffi(obj : JsValue) -> UInt {
  window_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.top"

///|
#cfg(target="js")
fn window_top_ffi(obj : JsValue) -> WindowProxy {
  window_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_opener_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.opener"

///|
#cfg(target="js")
fn window_opener_ffi(obj : JsValue) -> JsValue {
  window_opener_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_opener_ffi(obj : JsValue, opener : JsValue) -> Unit = "(obj, opener) => { obj.opener = opener; }"

///|
#cfg(target="js")
extern "js" fn window_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parent"

///|
#cfg(target="js")
fn window_parent_ffi(obj : JsValue) -> WindowProxy {
  window_parent_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_frame_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frameElement"

///|
#cfg(target="js")
fn window_frame_element_ffi(obj : JsValue) -> Element {
  window_frame_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, target, features) => obj.open(url, target, features)"

///|
#cfg(target="js")
extern "js" fn window_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
#cfg(target="js")
extern "js" fn window_navigator_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigator"

///|
#cfg(target="js")
fn window_navigator_ffi(obj : JsValue) -> Navigator {
  window_navigator_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_client_information_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientInformation"

///|
#cfg(target="js")
fn window_client_information_ffi(obj : JsValue) -> Navigator {
  window_client_information_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_origin_agent_cluster_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.originAgentCluster"

///|
#cfg(target="js")
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool {
  window_origin_agent_cluster_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_alert_ffi(obj : JsValue) -> Unit = "(obj) => obj.alert()"

///|
#cfg(target="js")
extern "js" fn window_alert_with_message_ffi(
  obj : JsValue,
  message : JsValue,
) -> Unit = "(obj, message) => obj.alert(message)"

///|
#cfg(target="js")
extern "js" fn window_confirm_ffi_js(
  obj : JsValue,
  message : JsValue,
) -> JsValue = "(obj, message) => obj.confirm(message)"

///|
#cfg(target="js")
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool {
  window_confirm_ffi_js(obj, message).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "(obj, message, _default) => obj.prompt(message, _default)"

///|
#cfg(target="js")
extern "js" fn window_print_ffi(obj : JsValue) -> Unit = "(obj) => obj.print()"

///|
#cfg(target="js")
extern "js" fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, target_origin, transfer) => obj.postMessage(message, target_origin, transfer)"

///|
#cfg(target="js")
extern "js" fn window_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

///|
#cfg(target="js")
extern "js" fn window_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
#cfg(target="js")
extern "js" fn window_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
#cfg(target="js")
extern "js" fn window_external_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.external"

///|
#cfg(target="js")
fn window_external_ffi(obj : JsValue) -> External {
  window_external_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_get_computed_style_ffi_js(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> JsValue = "(obj, elt, pseudo_elt) => obj.getComputedStyle(elt, pseudo_elt)"

///|
#cfg(target="js")
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> CSSStyleProperties {
  window_get_computed_style_ffi_js(obj, elt, pseudo_elt).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_fetch_later_ffi_js(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "(obj, input, init) => obj.fetchLater(input, init)"

///|
#cfg(target="js")
fn window_fetch_later_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> FetchLaterResult {
  window_fetch_later_ffi_js(obj, input, init).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_match_media_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.matchMedia(query)"

///|
#cfg(target="js")
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> MediaQueryList {
  window_match_media_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_screen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screen"

///|
#cfg(target="js")
fn window_screen_ffi(obj : JsValue) -> Screen {
  window_screen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_visual_viewport_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visualViewport"

///|
#cfg(target="js")
fn window_visual_viewport_ffi(obj : JsValue) -> VisualViewport {
  window_visual_viewport_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

///|
#cfg(target="js")
extern "js" fn window_move_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveBy(x, y)"

///|
#cfg(target="js")
extern "js" fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "(obj, width, height) => obj.resizeTo(width, height)"

///|
#cfg(target="js")
extern "js" fn window_resize_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.resizeBy(x, y)"

///|
#cfg(target="js")
extern "js" fn window_inner_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerWidth"

///|
#cfg(target="js")
fn window_inner_width_ffi(obj : JsValue) -> Int {
  window_inner_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_inner_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerHeight"

///|
#cfg(target="js")
fn window_inner_height_ffi(obj : JsValue) -> Int {
  window_inner_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollX"

///|
#cfg(target="js")
fn window_scroll_x_ffi(obj : JsValue) -> Double {
  window_scroll_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_page_x_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageXOffset"

///|
#cfg(target="js")
fn window_page_x_offset_ffi(obj : JsValue) -> Double {
  window_page_x_offset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollY"

///|
#cfg(target="js")
fn window_scroll_y_ffi(obj : JsValue) -> Double {
  window_scroll_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_page_y_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageYOffset"

///|
#cfg(target="js")
fn window_page_y_offset_ffi(obj : JsValue) -> Double {
  window_page_y_offset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scroll(options)"

///|
#cfg(target="js")
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scroll(x, y)"

///|
#cfg(target="js")
fn window_scroll_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_to_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollTo(options)"

///|
#cfg(target="js")
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_to_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_to_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollTo(x, y)"

///|
#cfg(target="js")
fn window_scroll_to_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_to_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_by_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollBy(options)"

///|
#cfg(target="js")
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_by_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_scroll_by_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollBy(x, y)"

///|
#cfg(target="js")
fn window_scroll_by_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_by_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_screen_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
#cfg(target="js")
fn window_screen_x_ffi(obj : JsValue) -> Int {
  window_screen_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_screen_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenLeft"

///|
#cfg(target="js")
fn window_screen_left_ffi(obj : JsValue) -> Int {
  window_screen_left_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_screen_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
#cfg(target="js")
fn window_screen_y_ffi(obj : JsValue) -> Int {
  window_screen_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_screen_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenTop"

///|
#cfg(target="js")
fn window_screen_top_ffi(obj : JsValue) -> Int {
  window_screen_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_outer_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerWidth"

///|
#cfg(target="js")
fn window_outer_width_ffi(obj : JsValue) -> Int {
  window_outer_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_outer_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerHeight"

///|
#cfg(target="js")
fn window_outer_height_ffi(obj : JsValue) -> Int {
  window_outer_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_device_pixel_ratio_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.devicePixelRatio"

///|
#cfg(target="js")
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double {
  window_device_pixel_ratio_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_get_selection_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getSelection()"

///|
#cfg(target="js")
extern "js" fn window_show_open_file_picker_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.showOpenFilePicker(options)"

///|
#cfg(target="js")
fn window_show_open_file_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[FileSystemFileHandle]] {
  window_show_open_file_picker_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_show_save_file_picker_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.showSaveFilePicker(options)"

///|
#cfg(target="js")
fn window_show_save_file_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemFileHandle] {
  window_show_save_file_picker_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_show_directory_picker_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.showDirectoryPicker(options)"

///|
#cfg(target="js")
fn window_show_directory_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  window_show_directory_picker_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_request_idle_callback_ffi_js(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> JsValue = "(obj, callback, options) => obj.requestIdleCallback(callback, options)"

///|
#cfg(target="js")
fn window_request_idle_callback_ffi(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> UInt {
  window_request_idle_callback_ffi_js(obj, callback, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_cancel_idle_callback_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelIdleCallback(handle)"

///|
#cfg(target="js")
extern "js" fn window_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn window_onabort_ffi(obj : JsValue) -> EventHandler {
  window_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn window_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
#cfg(target="js")
fn window_onauxclick_ffi(obj : JsValue) -> EventHandler {
  window_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
#cfg(target="js")
extern "js" fn window_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
#cfg(target="js")
fn window_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
#cfg(target="js")
extern "js" fn window_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
#cfg(target="js")
fn window_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  window_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
#cfg(target="js")
extern "js" fn window_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
#cfg(target="js")
fn window_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  window_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
#cfg(target="js")
extern "js" fn window_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
#cfg(target="js")
fn window_onblur_ffi(obj : JsValue) -> EventHandler {
  window_onblur_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
#cfg(target="js")
extern "js" fn window_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
#cfg(target="js")
fn window_oncancel_ffi(obj : JsValue) -> EventHandler {
  window_oncancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
#cfg(target="js")
extern "js" fn window_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
#cfg(target="js")
fn window_oncanplay_ffi(obj : JsValue) -> EventHandler {
  window_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
#cfg(target="js")
extern "js" fn window_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
#cfg(target="js")
fn window_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  window_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
#cfg(target="js")
extern "js" fn window_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn window_onchange_ffi(obj : JsValue) -> EventHandler {
  window_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="js")
extern "js" fn window_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
#cfg(target="js")
fn window_onclick_ffi(obj : JsValue) -> EventHandler {
  window_onclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
#cfg(target="js")
extern "js" fn window_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn window_onclose_ffi(obj : JsValue) -> EventHandler {
  window_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn window_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
#cfg(target="js")
fn window_oncommand_ffi(obj : JsValue) -> EventHandler {
  window_oncommand_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
#cfg(target="js")
extern "js" fn window_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
#cfg(target="js")
fn window_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  window_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
#cfg(target="js")
extern "js" fn window_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
#cfg(target="js")
fn window_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  window_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
#cfg(target="js")
extern "js" fn window_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
#cfg(target="js")
fn window_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  window_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
#cfg(target="js")
extern "js" fn window_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
#cfg(target="js")
fn window_oncopy_ffi(obj : JsValue) -> EventHandler {
  window_oncopy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
#cfg(target="js")
extern "js" fn window_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
#cfg(target="js")
fn window_oncuechange_ffi(obj : JsValue) -> EventHandler {
  window_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
#cfg(target="js")
extern "js" fn window_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
#cfg(target="js")
fn window_oncut_ffi(obj : JsValue) -> EventHandler {
  window_oncut_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
#cfg(target="js")
extern "js" fn window_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
#cfg(target="js")
fn window_ondblclick_ffi(obj : JsValue) -> EventHandler {
  window_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
#cfg(target="js")
extern "js" fn window_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
#cfg(target="js")
fn window_ondrag_ffi(obj : JsValue) -> EventHandler {
  window_ondrag_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
#cfg(target="js")
extern "js" fn window_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
#cfg(target="js")
fn window_ondragend_ffi(obj : JsValue) -> EventHandler {
  window_ondragend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
#cfg(target="js")
extern "js" fn window_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
#cfg(target="js")
fn window_ondragenter_ffi(obj : JsValue) -> EventHandler {
  window_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
#cfg(target="js")
extern "js" fn window_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
#cfg(target="js")
fn window_ondragleave_ffi(obj : JsValue) -> EventHandler {
  window_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
#cfg(target="js")
extern "js" fn window_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
#cfg(target="js")
fn window_ondragover_ffi(obj : JsValue) -> EventHandler {
  window_ondragover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
#cfg(target="js")
extern "js" fn window_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
#cfg(target="js")
fn window_ondragstart_ffi(obj : JsValue) -> EventHandler {
  window_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
#cfg(target="js")
extern "js" fn window_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
#cfg(target="js")
fn window_ondrop_ffi(obj : JsValue) -> EventHandler {
  window_ondrop_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
#cfg(target="js")
extern "js" fn window_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
#cfg(target="js")
fn window_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  window_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
#cfg(target="js")
extern "js" fn window_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
#cfg(target="js")
fn window_onemptied_ffi(obj : JsValue) -> EventHandler {
  window_onemptied_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
#cfg(target="js")
extern "js" fn window_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
#cfg(target="js")
fn window_onended_ffi(obj : JsValue) -> EventHandler {
  window_onended_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
#cfg(target="js")
extern "js" fn window_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn window_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  window_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn window_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
#cfg(target="js")
fn window_onfocus_ffi(obj : JsValue) -> EventHandler {
  window_onfocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
#cfg(target="js")
extern "js" fn window_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
#cfg(target="js")
fn window_onformdata_ffi(obj : JsValue) -> EventHandler {
  window_onformdata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
#cfg(target="js")
extern "js" fn window_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
#cfg(target="js")
fn window_oninput_ffi(obj : JsValue) -> EventHandler {
  window_oninput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
#cfg(target="js")
extern "js" fn window_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
#cfg(target="js")
fn window_oninvalid_ffi(obj : JsValue) -> EventHandler {
  window_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
#cfg(target="js")
extern "js" fn window_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
#cfg(target="js")
fn window_onkeydown_ffi(obj : JsValue) -> EventHandler {
  window_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
#cfg(target="js")
extern "js" fn window_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
#cfg(target="js")
fn window_onkeypress_ffi(obj : JsValue) -> EventHandler {
  window_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
#cfg(target="js")
extern "js" fn window_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
#cfg(target="js")
fn window_onkeyup_ffi(obj : JsValue) -> EventHandler {
  window_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
#cfg(target="js")
extern "js" fn window_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn window_onload_ffi(obj : JsValue) -> EventHandler {
  window_onload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
#cfg(target="js")
extern "js" fn window_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
#cfg(target="js")
fn window_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  window_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
#cfg(target="js")
extern "js" fn window_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
#cfg(target="js")
fn window_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  window_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
#cfg(target="js")
extern "js" fn window_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn window_onloadstart_ffi(obj : JsValue) -> EventHandler {
  window_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
#cfg(target="js")
extern "js" fn window_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
#cfg(target="js")
fn window_onmousedown_ffi(obj : JsValue) -> EventHandler {
  window_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
#cfg(target="js")
extern "js" fn window_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
#cfg(target="js")
fn window_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  window_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
#cfg(target="js")
extern "js" fn window_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
#cfg(target="js")
fn window_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  window_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
#cfg(target="js")
extern "js" fn window_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
#cfg(target="js")
fn window_onmousemove_ffi(obj : JsValue) -> EventHandler {
  window_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
#cfg(target="js")
extern "js" fn window_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
#cfg(target="js")
fn window_onmouseout_ffi(obj : JsValue) -> EventHandler {
  window_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
#cfg(target="js")
extern "js" fn window_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
#cfg(target="js")
fn window_onmouseover_ffi(obj : JsValue) -> EventHandler {
  window_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
#cfg(target="js")
extern "js" fn window_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
#cfg(target="js")
fn window_onmouseup_ffi(obj : JsValue) -> EventHandler {
  window_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
#cfg(target="js")
extern "js" fn window_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
#cfg(target="js")
fn window_onpaste_ffi(obj : JsValue) -> EventHandler {
  window_onpaste_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
#cfg(target="js")
extern "js" fn window_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
#cfg(target="js")
fn window_onpause_ffi(obj : JsValue) -> EventHandler {
  window_onpause_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
#cfg(target="js")
extern "js" fn window_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
#cfg(target="js")
fn window_onplay_ffi(obj : JsValue) -> EventHandler {
  window_onplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
#cfg(target="js")
extern "js" fn window_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
#cfg(target="js")
fn window_onplaying_ffi(obj : JsValue) -> EventHandler {
  window_onplaying_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
#cfg(target="js")
extern "js" fn window_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn window_onprogress_ffi(obj : JsValue) -> EventHandler {
  window_onprogress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
#cfg(target="js")
extern "js" fn window_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
#cfg(target="js")
fn window_onratechange_ffi(obj : JsValue) -> EventHandler {
  window_onratechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
#cfg(target="js")
extern "js" fn window_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
#cfg(target="js")
fn window_onreset_ffi(obj : JsValue) -> EventHandler {
  window_onreset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
#cfg(target="js")
extern "js" fn window_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
#cfg(target="js")
fn window_onresize_ffi(obj : JsValue) -> EventHandler {
  window_onresize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
#cfg(target="js")
extern "js" fn window_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
#cfg(target="js")
fn window_onscroll_ffi(obj : JsValue) -> EventHandler {
  window_onscroll_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
#cfg(target="js")
extern "js" fn window_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
#cfg(target="js")
fn window_onscrollend_ffi(obj : JsValue) -> EventHandler {
  window_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
#cfg(target="js")
extern "js" fn window_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
#cfg(target="js")
fn window_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  window_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
#cfg(target="js")
extern "js" fn window_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
#cfg(target="js")
fn window_onseeked_ffi(obj : JsValue) -> EventHandler {
  window_onseeked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
#cfg(target="js")
extern "js" fn window_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
#cfg(target="js")
fn window_onseeking_ffi(obj : JsValue) -> EventHandler {
  window_onseeking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
#cfg(target="js")
extern "js" fn window_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
#cfg(target="js")
fn window_onselect_ffi(obj : JsValue) -> EventHandler {
  window_onselect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
#cfg(target="js")
extern "js" fn window_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
#cfg(target="js")
fn window_onslotchange_ffi(obj : JsValue) -> EventHandler {
  window_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
#cfg(target="js")
extern "js" fn window_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
#cfg(target="js")
fn window_onstalled_ffi(obj : JsValue) -> EventHandler {
  window_onstalled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
#cfg(target="js")
extern "js" fn window_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
#cfg(target="js")
fn window_onsubmit_ffi(obj : JsValue) -> EventHandler {
  window_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
#cfg(target="js")
extern "js" fn window_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
#cfg(target="js")
fn window_onsuspend_ffi(obj : JsValue) -> EventHandler {
  window_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
#cfg(target="js")
extern "js" fn window_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
#cfg(target="js")
fn window_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  window_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
#cfg(target="js")
extern "js" fn window_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
#cfg(target="js")
fn window_ontoggle_ffi(obj : JsValue) -> EventHandler {
  window_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
#cfg(target="js")
extern "js" fn window_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
#cfg(target="js")
fn window_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  window_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
#cfg(target="js")
extern "js" fn window_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
#cfg(target="js")
fn window_onwaiting_ffi(obj : JsValue) -> EventHandler {
  window_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
#cfg(target="js")
extern "js" fn window_onwebkitanimationend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
#cfg(target="js")
fn window_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
#cfg(target="js")
extern "js" fn window_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
#cfg(target="js")
fn window_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
#cfg(target="js")
extern "js" fn window_onwebkitanimationstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
#cfg(target="js")
fn window_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
#cfg(target="js")
extern "js" fn window_onwebkittransitionend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
#cfg(target="js")
fn window_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
#cfg(target="js")
extern "js" fn window_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
#cfg(target="js")
fn window_onwheel_ffi(obj : JsValue) -> EventHandler {
  window_onwheel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
#cfg(target="js")
extern "js" fn window_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
#cfg(target="js")
fn window_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  window_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
#cfg(target="js")
extern "js" fn window_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
#cfg(target="js")
fn window_ontouchend_ffi(obj : JsValue) -> EventHandler {
  window_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
#cfg(target="js")
extern "js" fn window_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
#cfg(target="js")
fn window_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  window_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
#cfg(target="js")
extern "js" fn window_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
#cfg(target="js")
fn window_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  window_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
#cfg(target="js")
fn window_onpointerover_ffi(obj : JsValue) -> EventHandler {
  window_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
#cfg(target="js")
fn window_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  window_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
#cfg(target="js")
fn window_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  window_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
#cfg(target="js")
extern "js" fn window_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
#cfg(target="js")
fn window_onpointermove_ffi(obj : JsValue) -> EventHandler {
  window_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
#cfg(target="js")
fn window_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  window_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
#cfg(target="js")
fn window_onpointerup_ffi(obj : JsValue) -> EventHandler {
  window_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
#cfg(target="js")
extern "js" fn window_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
#cfg(target="js")
fn window_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  window_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
#cfg(target="js")
fn window_onpointerout_ffi(obj : JsValue) -> EventHandler {
  window_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
#cfg(target="js")
extern "js" fn window_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
#cfg(target="js")
fn window_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  window_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
#cfg(target="js")
extern "js" fn window_ongotpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
#cfg(target="js")
fn window_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
#cfg(target="js")
extern "js" fn window_onlostpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
#cfg(target="js")
fn window_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
#cfg(target="js")
extern "js" fn window_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
#cfg(target="js")
fn window_onselectstart_ffi(obj : JsValue) -> EventHandler {
  window_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
#cfg(target="js")
extern "js" fn window_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
#cfg(target="js")
fn window_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  window_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
#cfg(target="js")
extern "js" fn window_onafterprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onafterprint"

///|
#cfg(target="js")
fn window_onafterprint_ffi(obj : JsValue) -> EventHandler {
  window_onafterprint_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
#cfg(target="js")
extern "js" fn window_onbeforeprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

///|
#cfg(target="js")
fn window_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeprint_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
#cfg(target="js")
extern "js" fn window_onbeforeunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

///|
#cfg(target="js")
fn window_onbeforeunload_ffi(obj : JsValue) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
#cfg(target="js")
extern "js" fn window_onhashchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onhashchange"

///|
#cfg(target="js")
fn window_onhashchange_ffi(obj : JsValue) -> EventHandler {
  window_onhashchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
#cfg(target="js")
extern "js" fn window_onlanguagechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

///|
#cfg(target="js")
fn window_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  window_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
#cfg(target="js")
extern "js" fn window_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn window_onmessage_ffi(obj : JsValue) -> EventHandler {
  window_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn window_onmessageerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn window_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  window_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
#cfg(target="js")
extern "js" fn window_onoffline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onoffline"

///|
#cfg(target="js")
fn window_onoffline_ffi(obj : JsValue) -> EventHandler {
  window_onoffline_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
#cfg(target="js")
extern "js" fn window_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
#cfg(target="js")
fn window_ononline_ffi(obj : JsValue) -> EventHandler {
  window_ononline_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
#cfg(target="js")
extern "js" fn window_onpagehide_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagehide"

///|
#cfg(target="js")
fn window_onpagehide_ffi(obj : JsValue) -> EventHandler {
  window_onpagehide_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
#cfg(target="js")
extern "js" fn window_onpagereveal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagereveal"

///|
#cfg(target="js")
fn window_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  window_onpagereveal_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
#cfg(target="js")
extern "js" fn window_onpageshow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageshow"

///|
#cfg(target="js")
fn window_onpageshow_ffi(obj : JsValue) -> EventHandler {
  window_onpageshow_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
#cfg(target="js")
extern "js" fn window_onpageswap_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageswap"

///|
#cfg(target="js")
fn window_onpageswap_ffi(obj : JsValue) -> EventHandler {
  window_onpageswap_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
#cfg(target="js")
extern "js" fn window_onpopstate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpopstate"

///|
#cfg(target="js")
fn window_onpopstate_ffi(obj : JsValue) -> EventHandler {
  window_onpopstate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
#cfg(target="js")
extern "js" fn window_onrejectionhandled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
#cfg(target="js")
fn window_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  window_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
#cfg(target="js")
extern "js" fn window_onstorage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstorage"

///|
#cfg(target="js")
fn window_onstorage_ffi(obj : JsValue) -> EventHandler {
  window_onstorage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
#cfg(target="js")
extern "js" fn window_onunhandledrejection_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
#cfg(target="js")
fn window_onunhandledrejection_ffi(obj : JsValue) -> EventHandler {
  window_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
#cfg(target="js")
extern "js" fn window_onunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunload"

///|
#cfg(target="js")
fn window_onunload_ffi(obj : JsValue) -> EventHandler {
  window_onunload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
#cfg(target="js")
extern "js" fn window_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
#cfg(target="js")
fn window_origin_ffi(obj : JsValue) -> String {
  window_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_is_secure_context_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isSecureContext"

///|
#cfg(target="js")
fn window_is_secure_context_ffi(obj : JsValue) -> Bool {
  window_is_secure_context_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_cross_origin_isolated_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.crossOriginIsolated"

///|
#cfg(target="js")
fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool {
  window_cross_origin_isolated_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "(obj, e) => obj.reportError(e)"

///|
#cfg(target="js")
extern "js" fn window_btoa_ffi_js(obj : JsValue, data : JsValue) -> JsValue = "(obj, data) => obj.btoa(data)"

///|
#cfg(target="js")
fn window_btoa_ffi(obj : JsValue, data : JsValue) -> String {
  window_btoa_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_atob_ffi_js(obj : JsValue, data : JsValue) -> JsValue = "(obj, data) => obj.atob(data)"

///|
#cfg(target="js")
fn window_atob_ffi(obj : JsValue, data : JsValue) -> String {
  window_atob_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_set_timeout_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setTimeout(handler, timeout, ..._arguments)"

///|
#cfg(target="js")
fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  window_set_timeout_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearTimeout(id)"

///|
#cfg(target="js")
extern "js" fn window_set_interval_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setInterval(handler, timeout, ..._arguments)"

///|
#cfg(target="js")
fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  window_set_interval_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearInterval(id)"

///|
#cfg(target="js")
extern "js" fn window_queue_microtask_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.queueMicrotask(callback)"

///|
#cfg(target="js")
extern "js" fn window_create_image_bitmap_ffi_js(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, options) => obj.createImageBitmap(image, options)"

///|
#cfg(target="js")
fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_ffi_js(obj, image, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_create_image_bitmap_cropped_ffi_js(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap(image, sx, sy, sw, sh, options)"

///|
#cfg(target="js")
fn window_create_image_bitmap_cropped_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_cropped_ffi_js(obj, image, sx, sy, sw, sh, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_structured_clone_ffi_js(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "(obj, value, options) => obj.structuredClone(value, options)"

///|
#cfg(target="js")
fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue {
  window_structured_clone_ffi_js(obj, value, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_fetch_ffi_js(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "(obj, input, init) => obj.fetch(input, init)"

///|
#cfg(target="js")
fn window_fetch_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsPromise[Response] {
  window_fetch_ffi_js(obj, input, init).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_performance_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.performance"

///|
#cfg(target="js")
fn window_performance_ffi(obj : JsValue) -> Performance {
  window_performance_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_indexed_db_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.indexedDB"

///|
#cfg(target="js")
fn window_indexed_db_ffi(obj : JsValue) -> IDBFactory {
  window_indexed_db_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_trusted_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.trustedTypes"

///|
#cfg(target="js")
fn window_trusted_types_ffi(obj : JsValue) -> TrustedTypePolicyFactory {
  window_trusted_types_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_caches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.caches"

///|
#cfg(target="js")
fn window_caches_ffi(obj : JsValue) -> CacheStorage {
  window_caches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_request_animation_frame_ffi_js(
  obj : JsValue,
  callback : JsValue,
) -> JsValue = "(obj, callback) => obj.requestAnimationFrame(callback)"

///|
#cfg(target="js")
fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt {
  window_request_animation_frame_ffi_js(obj, callback).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_cancel_animation_frame_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(handle)"

///|
#cfg(target="js")
extern "js" fn window_session_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sessionStorage"

///|
#cfg(target="js")
fn window_session_storage_ffi(obj : JsValue) -> Storage {
  window_session_storage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_local_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.localStorage"

///|
#cfg(target="js")
fn window_local_storage_ffi(obj : JsValue) -> Storage {
  window_local_storage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "JsValue" "isUndefined"

///|
#cfg(target="wasm-gc")
fn window_event_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_event"

///|
#cfg(target="wasm-gc")
fn window_event_ffi(obj : JsValue) -> WindowEvent {
  window_event_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_window_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_window"

///|
#cfg(target="wasm-gc")
fn window_window_ffi(obj : JsValue) -> WindowProxy {
  window_window_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_self_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_self"

///|
#cfg(target="wasm-gc")
fn window_self_ffi(obj : JsValue) -> WindowProxy {
  window_self_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_document_ffi(obj : JsValue) -> Document = "webapi_Window" "get_document"

///|
#cfg(target="wasm-gc")
fn window_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_name"

///|
#cfg(target="wasm-gc")
fn window_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn window_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_Window" "set_name"

///|
#cfg(target="wasm-gc")
fn window_location_ffi(obj : JsValue) -> Location = "webapi_Window" "get_location"

///|
#cfg(target="wasm-gc")
fn window_history_ffi(obj : JsValue) -> History = "webapi_Window" "get_history"

///|
#cfg(target="wasm-gc")
fn window_navigation_ffi(obj : JsValue) -> Navigation = "webapi_Window" "get_navigation"

///|
#cfg(target="wasm-gc")
fn window_custom_elements_ffi(obj : JsValue) -> CustomElementRegistry = "webapi_Window" "get_customElements"

///|
#cfg(target="wasm-gc")
fn window_locationbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_locationbar"

///|
#cfg(target="wasm-gc")
fn window_menubar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_menubar"

///|
#cfg(target="wasm-gc")
fn window_personalbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_personalbar"

///|
#cfg(target="wasm-gc")
fn window_scrollbars_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_scrollbars"

///|
#cfg(target="wasm-gc")
fn window_statusbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_statusbar"

///|
#cfg(target="wasm-gc")
fn window_toolbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_toolbar"

///|
#cfg(target="wasm-gc")
fn window_status_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_status"

///|
#cfg(target="wasm-gc")
fn window_status_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_status_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn window_set_status_ffi(obj : JsValue, status : JsValue) -> Unit = "webapi_Window" "set_status"

///|
#cfg(target="wasm-gc")
fn window_close_ffi(obj : JsValue) -> Unit = "webapi_Window" "close"

///|
#cfg(target="wasm-gc")
fn window_closed_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_closed"

///|
#cfg(target="wasm-gc")
fn window_stop_ffi(obj : JsValue) -> Unit = "webapi_Window" "stop"

///|
#cfg(target="wasm-gc")
fn window_focus_ffi(obj : JsValue) -> Unit = "webapi_Window" "focus"

///|
#cfg(target="wasm-gc")
fn window_blur_ffi(obj : JsValue) -> Unit = "webapi_Window" "blur"

///|
#cfg(target="wasm-gc")
fn window_frames_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_frames"

///|
#cfg(target="wasm-gc")
fn window_frames_ffi(obj : JsValue) -> WindowProxy {
  window_frames_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_length_ffi(obj : JsValue) -> UInt = "webapi_Window" "get_length"

///|
#cfg(target="wasm-gc")
fn window_top_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_top"

///|
#cfg(target="wasm-gc")
fn window_top_ffi(obj : JsValue) -> WindowProxy {
  window_top_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_opener_ffi(obj : JsValue) -> JsValue = "webapi_Window" "get_opener"

///|
#cfg(target="wasm-gc")
fn window_set_opener_ffi(obj : JsValue, opener : JsValue) -> Unit = "webapi_Window" "set_opener"

///|
#cfg(target="wasm-gc")
fn window_parent_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_parent"

///|
#cfg(target="wasm-gc")
fn window_parent_ffi(obj : JsValue) -> WindowProxy {
  window_parent_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_frame_element_ffi(obj : JsValue) -> Element = "webapi_Window" "get_frameElement"

///|
#cfg(target="wasm-gc")
fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Window" "open"

///|
#cfg(target="wasm-gc")
fn window_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Window" "get"

///|
#cfg(target="wasm-gc")
fn window_navigator_ffi(obj : JsValue) -> Navigator = "webapi_Window" "get_navigator"

///|
#cfg(target="wasm-gc")
fn window_client_information_ffi(obj : JsValue) -> Navigator = "webapi_Window" "get_clientInformation"

///|
#cfg(target="wasm-gc")
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_originAgentCluster"

///|
#cfg(target="wasm-gc")
fn window_alert_ffi(obj : JsValue) -> Unit = "webapi_Window" "alert"

///|
#cfg(target="wasm-gc")
fn window_alert_with_message_ffi(obj : JsValue, message : JsValue) -> Unit = "webapi_Window" "alert_with_message"

///|
#cfg(target="wasm-gc")
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool = "webapi_Window" "confirm"

///|
#cfg(target="wasm-gc")
fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "webapi_Window" "prompt"

///|
#cfg(target="wasm-gc")
fn window_print_ffi(obj : JsValue) -> Unit = "webapi_Window" "print"

///|
#cfg(target="wasm-gc")
fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
#cfg(target="wasm-gc")
fn window_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Window" "post_message_with_options"

///|
#cfg(target="wasm-gc")
fn window_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "captureEvents"

///|
#cfg(target="wasm-gc")
fn window_release_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "releaseEvents"

///|
#cfg(target="wasm-gc")
fn window_external_ffi(obj : JsValue) -> External = "webapi_Window" "get_external"

///|
#cfg(target="wasm-gc")
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> CSSStyleProperties = "webapi_Window" "getComputedStyle"

///|
#cfg(target="wasm-gc")
fn window_fetch_later_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> FetchLaterResult = "webapi_Window" "fetchLater"

///|
#cfg(target="wasm-gc")
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> MediaQueryList = "webapi_Window" "matchMedia"

///|
#cfg(target="wasm-gc")
fn window_screen_ffi(obj : JsValue) -> Screen = "webapi_Window" "get_screen"

///|
#cfg(target="wasm-gc")
fn window_visual_viewport_ffi(obj : JsValue) -> VisualViewport = "webapi_Window" "get_visualViewport"

///|
#cfg(target="wasm-gc")
fn window_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveTo"

///|
#cfg(target="wasm-gc")
fn window_move_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveBy"

///|
#cfg(target="wasm-gc")
fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "webapi_Window" "resizeTo"

///|
#cfg(target="wasm-gc")
fn window_resize_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "resizeBy"

///|
#cfg(target="wasm-gc")
fn window_inner_width_ffi(obj : JsValue) -> Int = "webapi_Window" "get_innerWidth"

///|
#cfg(target="wasm-gc")
fn window_inner_height_ffi(obj : JsValue) -> Int = "webapi_Window" "get_innerHeight"

///|
#cfg(target="wasm-gc")
fn window_scroll_x_ffi(obj : JsValue) -> Double = "webapi_Window" "get_scrollX"

///|
#cfg(target="wasm-gc")
fn window_page_x_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "get_pageXOffset"

///|
#cfg(target="wasm-gc")
fn window_scroll_y_ffi(obj : JsValue) -> Double = "webapi_Window" "get_scrollY"

///|
#cfg(target="wasm-gc")
fn window_page_y_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "get_pageYOffset"

///|
#cfg(target="wasm-gc")
fn window_scroll_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
#cfg(target="wasm-gc")
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_scroll_xy_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Window" "scroll_xy"

///|
#cfg(target="wasm-gc")
fn window_scroll_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_xy_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_scroll_to_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
#cfg(target="wasm-gc")
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_to_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_scroll_to_xy_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Window" "scroll_to_xy"

///|
#cfg(target="wasm-gc")
fn window_scroll_to_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_to_xy_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_scroll_by_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
#cfg(target="wasm-gc")
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_by_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_scroll_by_xy_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Window" "scroll_by_xy"

///|
#cfg(target="wasm-gc")
fn window_scroll_by_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_by_xy_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_screen_x_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenX"

///|
#cfg(target="wasm-gc")
fn window_screen_left_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenLeft"

///|
#cfg(target="wasm-gc")
fn window_screen_y_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenY"

///|
#cfg(target="wasm-gc")
fn window_screen_top_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenTop"

///|
#cfg(target="wasm-gc")
fn window_outer_width_ffi(obj : JsValue) -> Int = "webapi_Window" "get_outerWidth"

///|
#cfg(target="wasm-gc")
fn window_outer_height_ffi(obj : JsValue) -> Int = "webapi_Window" "get_outerHeight"

///|
#cfg(target="wasm-gc")
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double = "webapi_Window" "get_devicePixelRatio"

///|
#cfg(target="wasm-gc")
fn window_get_selection_ffi(obj : JsValue) -> JsValue = "webapi_Window" "getSelection"

///|
#cfg(target="wasm-gc")
fn window_show_open_file_picker_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "showOpenFilePicker"

///|
#cfg(target="wasm-gc")
fn window_show_open_file_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[Array[FileSystemFileHandle]] {
  window_show_open_file_picker_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_show_save_file_picker_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "showSaveFilePicker"

///|
#cfg(target="wasm-gc")
fn window_show_save_file_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemFileHandle] {
  window_show_save_file_picker_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_show_directory_picker_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "showDirectoryPicker"

///|
#cfg(target="wasm-gc")
fn window_show_directory_picker_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  window_show_directory_picker_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_request_idle_callback_ffi(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> UInt = "webapi_Window" "requestIdleCallback"

///|
#cfg(target="wasm-gc")
fn window_cancel_idle_callback_ffi(obj : JsValue, handle : JsValue) -> Unit = "webapi_Window" "cancelIdleCallback"

///|
#cfg(target="wasm-gc")
fn window_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onabort"

///|
#cfg(target="wasm-gc")
fn window_onabort_ffi(obj : JsValue) -> EventHandler {
  window_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_Window" "set_onabort"

///|
#cfg(target="wasm-gc")
fn window_onauxclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onauxclick"

///|
#cfg(target="wasm-gc")
fn window_onauxclick_ffi(obj : JsValue) -> EventHandler {
  window_onauxclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_Window" "set_onauxclick"

///|
#cfg(target="wasm-gc")
fn window_onbeforeinput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn window_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeinput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onbeforeinput_ffi(obj : JsValue, onbeforeinput : JsValue) -> Unit = "webapi_Window" "set_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn window_onbeforematch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onbeforematch"

///|
#cfg(target="wasm-gc")
fn window_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  window_onbeforematch_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onbeforematch_ffi(obj : JsValue, onbeforematch : JsValue) -> Unit = "webapi_Window" "set_onbeforematch"

///|
#cfg(target="wasm-gc")
fn window_onbeforetoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn window_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  window_onbeforetoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_Window" "set_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn window_onblur_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onblur"

///|
#cfg(target="wasm-gc")
fn window_onblur_ffi(obj : JsValue) -> EventHandler {
  window_onblur_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_Window" "set_onblur"

///|
#cfg(target="wasm-gc")
fn window_oncancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncancel"

///|
#cfg(target="wasm-gc")
fn window_oncancel_ffi(obj : JsValue) -> EventHandler {
  window_oncancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_Window" "set_oncancel"

///|
#cfg(target="wasm-gc")
fn window_oncanplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncanplay"

///|
#cfg(target="wasm-gc")
fn window_oncanplay_ffi(obj : JsValue) -> EventHandler {
  window_oncanplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_Window" "set_oncanplay"

///|
#cfg(target="wasm-gc")
fn window_oncanplaythrough_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn window_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  window_oncanplaythrough_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_Window" "set_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn window_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onchange"

///|
#cfg(target="wasm-gc")
fn window_onchange_ffi(obj : JsValue) -> EventHandler {
  window_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_Window" "set_onchange"

///|
#cfg(target="wasm-gc")
fn window_onclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onclick"

///|
#cfg(target="wasm-gc")
fn window_onclick_ffi(obj : JsValue) -> EventHandler {
  window_onclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_Window" "set_onclick"

///|
#cfg(target="wasm-gc")
fn window_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onclose"

///|
#cfg(target="wasm-gc")
fn window_onclose_ffi(obj : JsValue) -> EventHandler {
  window_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_Window" "set_onclose"

///|
#cfg(target="wasm-gc")
fn window_oncommand_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncommand"

///|
#cfg(target="wasm-gc")
fn window_oncommand_ffi(obj : JsValue) -> EventHandler {
  window_oncommand_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_Window" "set_oncommand"

///|
#cfg(target="wasm-gc")
fn window_oncontextlost_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncontextlost"

///|
#cfg(target="wasm-gc")
fn window_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  window_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncontextlost_ffi(obj : JsValue, oncontextlost : JsValue) -> Unit = "webapi_Window" "set_oncontextlost"

///|
#cfg(target="wasm-gc")
fn window_oncontextmenu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn window_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  window_oncontextmenu_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncontextmenu_ffi(obj : JsValue, oncontextmenu : JsValue) -> Unit = "webapi_Window" "set_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn window_oncontextrestored_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn window_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  window_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_Window" "set_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn window_oncopy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncopy"

///|
#cfg(target="wasm-gc")
fn window_oncopy_ffi(obj : JsValue) -> EventHandler {
  window_oncopy_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_Window" "set_oncopy"

///|
#cfg(target="wasm-gc")
fn window_oncuechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncuechange"

///|
#cfg(target="wasm-gc")
fn window_oncuechange_ffi(obj : JsValue) -> EventHandler {
  window_oncuechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncuechange_ffi(obj : JsValue, oncuechange : JsValue) -> Unit = "webapi_Window" "set_oncuechange"

///|
#cfg(target="wasm-gc")
fn window_oncut_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oncut"

///|
#cfg(target="wasm-gc")
fn window_oncut_ffi(obj : JsValue) -> EventHandler {
  window_oncut_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_Window" "set_oncut"

///|
#cfg(target="wasm-gc")
fn window_ondblclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondblclick"

///|
#cfg(target="wasm-gc")
fn window_ondblclick_ffi(obj : JsValue) -> EventHandler {
  window_ondblclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_Window" "set_ondblclick"

///|
#cfg(target="wasm-gc")
fn window_ondrag_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondrag"

///|
#cfg(target="wasm-gc")
fn window_ondrag_ffi(obj : JsValue) -> EventHandler {
  window_ondrag_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_Window" "set_ondrag"

///|
#cfg(target="wasm-gc")
fn window_ondragend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondragend"

///|
#cfg(target="wasm-gc")
fn window_ondragend_ffi(obj : JsValue) -> EventHandler {
  window_ondragend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_Window" "set_ondragend"

///|
#cfg(target="wasm-gc")
fn window_ondragenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondragenter"

///|
#cfg(target="wasm-gc")
fn window_ondragenter_ffi(obj : JsValue) -> EventHandler {
  window_ondragenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondragenter_ffi(obj : JsValue, ondragenter : JsValue) -> Unit = "webapi_Window" "set_ondragenter"

///|
#cfg(target="wasm-gc")
fn window_ondragleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondragleave"

///|
#cfg(target="wasm-gc")
fn window_ondragleave_ffi(obj : JsValue) -> EventHandler {
  window_ondragleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondragleave_ffi(obj : JsValue, ondragleave : JsValue) -> Unit = "webapi_Window" "set_ondragleave"

///|
#cfg(target="wasm-gc")
fn window_ondragover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondragover"

///|
#cfg(target="wasm-gc")
fn window_ondragover_ffi(obj : JsValue) -> EventHandler {
  window_ondragover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_Window" "set_ondragover"

///|
#cfg(target="wasm-gc")
fn window_ondragstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondragstart"

///|
#cfg(target="wasm-gc")
fn window_ondragstart_ffi(obj : JsValue) -> EventHandler {
  window_ondragstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondragstart_ffi(obj : JsValue, ondragstart : JsValue) -> Unit = "webapi_Window" "set_ondragstart"

///|
#cfg(target="wasm-gc")
fn window_ondrop_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondrop"

///|
#cfg(target="wasm-gc")
fn window_ondrop_ffi(obj : JsValue) -> EventHandler {
  window_ondrop_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_Window" "set_ondrop"

///|
#cfg(target="wasm-gc")
fn window_ondurationchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ondurationchange"

///|
#cfg(target="wasm-gc")
fn window_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  window_ondurationchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_Window" "set_ondurationchange"

///|
#cfg(target="wasm-gc")
fn window_onemptied_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onemptied"

///|
#cfg(target="wasm-gc")
fn window_onemptied_ffi(obj : JsValue) -> EventHandler {
  window_onemptied_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_Window" "set_onemptied"

///|
#cfg(target="wasm-gc")
fn window_onended_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onended"

///|
#cfg(target="wasm-gc")
fn window_onended_ffi(obj : JsValue) -> EventHandler {
  window_onended_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_Window" "set_onended"

///|
#cfg(target="wasm-gc")
fn window_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onerror"

///|
#cfg(target="wasm-gc")
fn window_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  window_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_Window" "set_onerror"

///|
#cfg(target="wasm-gc")
fn window_onfocus_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onfocus"

///|
#cfg(target="wasm-gc")
fn window_onfocus_ffi(obj : JsValue) -> EventHandler {
  window_onfocus_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_Window" "set_onfocus"

///|
#cfg(target="wasm-gc")
fn window_onformdata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onformdata"

///|
#cfg(target="wasm-gc")
fn window_onformdata_ffi(obj : JsValue) -> EventHandler {
  window_onformdata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_Window" "set_onformdata"

///|
#cfg(target="wasm-gc")
fn window_oninput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oninput"

///|
#cfg(target="wasm-gc")
fn window_oninput_ffi(obj : JsValue) -> EventHandler {
  window_oninput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_Window" "set_oninput"

///|
#cfg(target="wasm-gc")
fn window_oninvalid_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_oninvalid"

///|
#cfg(target="wasm-gc")
fn window_oninvalid_ffi(obj : JsValue) -> EventHandler {
  window_oninvalid_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_Window" "set_oninvalid"

///|
#cfg(target="wasm-gc")
fn window_onkeydown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onkeydown"

///|
#cfg(target="wasm-gc")
fn window_onkeydown_ffi(obj : JsValue) -> EventHandler {
  window_onkeydown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_Window" "set_onkeydown"

///|
#cfg(target="wasm-gc")
fn window_onkeypress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onkeypress"

///|
#cfg(target="wasm-gc")
fn window_onkeypress_ffi(obj : JsValue) -> EventHandler {
  window_onkeypress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_Window" "set_onkeypress"

///|
#cfg(target="wasm-gc")
fn window_onkeyup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onkeyup"

///|
#cfg(target="wasm-gc")
fn window_onkeyup_ffi(obj : JsValue) -> EventHandler {
  window_onkeyup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_Window" "set_onkeyup"

///|
#cfg(target="wasm-gc")
fn window_onload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onload"

///|
#cfg(target="wasm-gc")
fn window_onload_ffi(obj : JsValue) -> EventHandler {
  window_onload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_Window" "set_onload"

///|
#cfg(target="wasm-gc")
fn window_onloadeddata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onloadeddata"

///|
#cfg(target="wasm-gc")
fn window_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  window_onloadeddata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onloadeddata_ffi(obj : JsValue, onloadeddata : JsValue) -> Unit = "webapi_Window" "set_onloadeddata"

///|
#cfg(target="wasm-gc")
fn window_onloadedmetadata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn window_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  window_onloadedmetadata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_Window" "set_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn window_onloadstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn window_onloadstart_ffi(obj : JsValue) -> EventHandler {
  window_onloadstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onloadstart_ffi(obj : JsValue, onloadstart : JsValue) -> Unit = "webapi_Window" "set_onloadstart"

///|
#cfg(target="wasm-gc")
fn window_onmousedown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmousedown"

///|
#cfg(target="wasm-gc")
fn window_onmousedown_ffi(obj : JsValue) -> EventHandler {
  window_onmousedown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmousedown_ffi(obj : JsValue, onmousedown : JsValue) -> Unit = "webapi_Window" "set_onmousedown"

///|
#cfg(target="wasm-gc")
fn window_onmouseenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmouseenter"

///|
#cfg(target="wasm-gc")
fn window_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  window_onmouseenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmouseenter_ffi(obj : JsValue, onmouseenter : JsValue) -> Unit = "webapi_Window" "set_onmouseenter"

///|
#cfg(target="wasm-gc")
fn window_onmouseleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmouseleave"

///|
#cfg(target="wasm-gc")
fn window_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  window_onmouseleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmouseleave_ffi(obj : JsValue, onmouseleave : JsValue) -> Unit = "webapi_Window" "set_onmouseleave"

///|
#cfg(target="wasm-gc")
fn window_onmousemove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmousemove"

///|
#cfg(target="wasm-gc")
fn window_onmousemove_ffi(obj : JsValue) -> EventHandler {
  window_onmousemove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmousemove_ffi(obj : JsValue, onmousemove : JsValue) -> Unit = "webapi_Window" "set_onmousemove"

///|
#cfg(target="wasm-gc")
fn window_onmouseout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmouseout"

///|
#cfg(target="wasm-gc")
fn window_onmouseout_ffi(obj : JsValue) -> EventHandler {
  window_onmouseout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_Window" "set_onmouseout"

///|
#cfg(target="wasm-gc")
fn window_onmouseover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmouseover"

///|
#cfg(target="wasm-gc")
fn window_onmouseover_ffi(obj : JsValue) -> EventHandler {
  window_onmouseover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmouseover_ffi(obj : JsValue, onmouseover : JsValue) -> Unit = "webapi_Window" "set_onmouseover"

///|
#cfg(target="wasm-gc")
fn window_onmouseup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmouseup"

///|
#cfg(target="wasm-gc")
fn window_onmouseup_ffi(obj : JsValue) -> EventHandler {
  window_onmouseup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_Window" "set_onmouseup"

///|
#cfg(target="wasm-gc")
fn window_onpaste_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpaste"

///|
#cfg(target="wasm-gc")
fn window_onpaste_ffi(obj : JsValue) -> EventHandler {
  window_onpaste_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_Window" "set_onpaste"

///|
#cfg(target="wasm-gc")
fn window_onpause_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpause"

///|
#cfg(target="wasm-gc")
fn window_onpause_ffi(obj : JsValue) -> EventHandler {
  window_onpause_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_Window" "set_onpause"

///|
#cfg(target="wasm-gc")
fn window_onplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onplay"

///|
#cfg(target="wasm-gc")
fn window_onplay_ffi(obj : JsValue) -> EventHandler {
  window_onplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_Window" "set_onplay"

///|
#cfg(target="wasm-gc")
fn window_onplaying_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onplaying"

///|
#cfg(target="wasm-gc")
fn window_onplaying_ffi(obj : JsValue) -> EventHandler {
  window_onplaying_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_Window" "set_onplaying"

///|
#cfg(target="wasm-gc")
fn window_onprogress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn window_onprogress_ffi(obj : JsValue) -> EventHandler {
  window_onprogress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_Window" "set_onprogress"

///|
#cfg(target="wasm-gc")
fn window_onratechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onratechange"

///|
#cfg(target="wasm-gc")
fn window_onratechange_ffi(obj : JsValue) -> EventHandler {
  window_onratechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onratechange_ffi(obj : JsValue, onratechange : JsValue) -> Unit = "webapi_Window" "set_onratechange"

///|
#cfg(target="wasm-gc")
fn window_onreset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onreset"

///|
#cfg(target="wasm-gc")
fn window_onreset_ffi(obj : JsValue) -> EventHandler {
  window_onreset_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_Window" "set_onreset"

///|
#cfg(target="wasm-gc")
fn window_onresize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onresize"

///|
#cfg(target="wasm-gc")
fn window_onresize_ffi(obj : JsValue) -> EventHandler {
  window_onresize_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_Window" "set_onresize"

///|
#cfg(target="wasm-gc")
fn window_onscroll_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onscroll"

///|
#cfg(target="wasm-gc")
fn window_onscroll_ffi(obj : JsValue) -> EventHandler {
  window_onscroll_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_Window" "set_onscroll"

///|
#cfg(target="wasm-gc")
fn window_onscrollend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onscrollend"

///|
#cfg(target="wasm-gc")
fn window_onscrollend_ffi(obj : JsValue) -> EventHandler {
  window_onscrollend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onscrollend_ffi(obj : JsValue, onscrollend : JsValue) -> Unit = "webapi_Window" "set_onscrollend"

///|
#cfg(target="wasm-gc")
fn window_onsecuritypolicyviolation_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn window_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  window_onsecuritypolicyviolation_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_Window" "set_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn window_onseeked_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onseeked"

///|
#cfg(target="wasm-gc")
fn window_onseeked_ffi(obj : JsValue) -> EventHandler {
  window_onseeked_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_Window" "set_onseeked"

///|
#cfg(target="wasm-gc")
fn window_onseeking_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onseeking"

///|
#cfg(target="wasm-gc")
fn window_onseeking_ffi(obj : JsValue) -> EventHandler {
  window_onseeking_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_Window" "set_onseeking"

///|
#cfg(target="wasm-gc")
fn window_onselect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onselect"

///|
#cfg(target="wasm-gc")
fn window_onselect_ffi(obj : JsValue) -> EventHandler {
  window_onselect_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_Window" "set_onselect"

///|
#cfg(target="wasm-gc")
fn window_onslotchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onslotchange"

///|
#cfg(target="wasm-gc")
fn window_onslotchange_ffi(obj : JsValue) -> EventHandler {
  window_onslotchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onslotchange_ffi(obj : JsValue, onslotchange : JsValue) -> Unit = "webapi_Window" "set_onslotchange"

///|
#cfg(target="wasm-gc")
fn window_onstalled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onstalled"

///|
#cfg(target="wasm-gc")
fn window_onstalled_ffi(obj : JsValue) -> EventHandler {
  window_onstalled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_Window" "set_onstalled"

///|
#cfg(target="wasm-gc")
fn window_onsubmit_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onsubmit"

///|
#cfg(target="wasm-gc")
fn window_onsubmit_ffi(obj : JsValue) -> EventHandler {
  window_onsubmit_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_Window" "set_onsubmit"

///|
#cfg(target="wasm-gc")
fn window_onsuspend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onsuspend"

///|
#cfg(target="wasm-gc")
fn window_onsuspend_ffi(obj : JsValue) -> EventHandler {
  window_onsuspend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_Window" "set_onsuspend"

///|
#cfg(target="wasm-gc")
fn window_ontimeupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn window_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  window_ontimeupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontimeupdate_ffi(obj : JsValue, ontimeupdate : JsValue) -> Unit = "webapi_Window" "set_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn window_ontoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontoggle"

///|
#cfg(target="wasm-gc")
fn window_ontoggle_ffi(obj : JsValue) -> EventHandler {
  window_ontoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_Window" "set_ontoggle"

///|
#cfg(target="wasm-gc")
fn window_onvolumechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onvolumechange"

///|
#cfg(target="wasm-gc")
fn window_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  window_onvolumechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_Window" "set_onvolumechange"

///|
#cfg(target="wasm-gc")
fn window_onwaiting_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwaiting"

///|
#cfg(target="wasm-gc")
fn window_onwaiting_ffi(obj : JsValue) -> EventHandler {
  window_onwaiting_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_Window" "set_onwaiting"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationiteration_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationiteration_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn window_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn window_onwebkittransitionend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn window_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkittransitionend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_Window" "set_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn window_onwheel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onwheel"

///|
#cfg(target="wasm-gc")
fn window_onwheel_ffi(obj : JsValue) -> EventHandler {
  window_onwheel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_Window" "set_onwheel"

///|
#cfg(target="wasm-gc")
fn window_ontouchstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontouchstart"

///|
#cfg(target="wasm-gc")
fn window_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  window_ontouchstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontouchstart_ffi(obj : JsValue, ontouchstart : JsValue) -> Unit = "webapi_Window" "set_ontouchstart"

///|
#cfg(target="wasm-gc")
fn window_ontouchend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontouchend"

///|
#cfg(target="wasm-gc")
fn window_ontouchend_ffi(obj : JsValue) -> EventHandler {
  window_ontouchend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_Window" "set_ontouchend"

///|
#cfg(target="wasm-gc")
fn window_ontouchmove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontouchmove"

///|
#cfg(target="wasm-gc")
fn window_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  window_ontouchmove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontouchmove_ffi(obj : JsValue, ontouchmove : JsValue) -> Unit = "webapi_Window" "set_ontouchmove"

///|
#cfg(target="wasm-gc")
fn window_ontouchcancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn window_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  window_ontouchcancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ontouchcancel_ffi(obj : JsValue, ontouchcancel : JsValue) -> Unit = "webapi_Window" "set_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn window_onpointerover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerover"

///|
#cfg(target="wasm-gc")
fn window_onpointerover_ffi(obj : JsValue) -> EventHandler {
  window_onpointerover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerover_ffi(obj : JsValue, onpointerover : JsValue) -> Unit = "webapi_Window" "set_onpointerover"

///|
#cfg(target="wasm-gc")
fn window_onpointerenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerenter"

///|
#cfg(target="wasm-gc")
fn window_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  window_onpointerenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_Window" "set_onpointerenter"

///|
#cfg(target="wasm-gc")
fn window_onpointerdown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerdown"

///|
#cfg(target="wasm-gc")
fn window_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  window_onpointerdown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerdown_ffi(obj : JsValue, onpointerdown : JsValue) -> Unit = "webapi_Window" "set_onpointerdown"

///|
#cfg(target="wasm-gc")
fn window_onpointermove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointermove"

///|
#cfg(target="wasm-gc")
fn window_onpointermove_ffi(obj : JsValue) -> EventHandler {
  window_onpointermove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointermove_ffi(obj : JsValue, onpointermove : JsValue) -> Unit = "webapi_Window" "set_onpointermove"

///|
#cfg(target="wasm-gc")
fn window_onpointerrawupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn window_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  window_onpointerrawupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_Window" "set_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn window_onpointerup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerup"

///|
#cfg(target="wasm-gc")
fn window_onpointerup_ffi(obj : JsValue) -> EventHandler {
  window_onpointerup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerup_ffi(obj : JsValue, onpointerup : JsValue) -> Unit = "webapi_Window" "set_onpointerup"

///|
#cfg(target="wasm-gc")
fn window_onpointercancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointercancel"

///|
#cfg(target="wasm-gc")
fn window_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  window_onpointercancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_Window" "set_onpointercancel"

///|
#cfg(target="wasm-gc")
fn window_onpointerout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerout"

///|
#cfg(target="wasm-gc")
fn window_onpointerout_ffi(obj : JsValue) -> EventHandler {
  window_onpointerout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerout_ffi(obj : JsValue, onpointerout : JsValue) -> Unit = "webapi_Window" "set_onpointerout"

///|
#cfg(target="wasm-gc")
fn window_onpointerleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpointerleave"

///|
#cfg(target="wasm-gc")
fn window_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  window_onpointerleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_Window" "set_onpointerleave"

///|
#cfg(target="wasm-gc")
fn window_ongotpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn window_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_ongotpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_Window" "set_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn window_onlostpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn window_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_onlostpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_Window" "set_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn window_onselectstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onselectstart"

///|
#cfg(target="wasm-gc")
fn window_onselectstart_ffi(obj : JsValue) -> EventHandler {
  window_onselectstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onselectstart_ffi(obj : JsValue, onselectstart : JsValue) -> Unit = "webapi_Window" "set_onselectstart"

///|
#cfg(target="wasm-gc")
fn window_onselectionchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onselectionchange"

///|
#cfg(target="wasm-gc")
fn window_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  window_onselectionchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_Window" "set_onselectionchange"

///|
#cfg(target="wasm-gc")
fn window_onafterprint_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onafterprint"

///|
#cfg(target="wasm-gc")
fn window_onafterprint_ffi(obj : JsValue) -> EventHandler {
  window_onafterprint_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onafterprint_ffi(obj : JsValue, onafterprint : JsValue) -> Unit = "webapi_Window" "set_onafterprint"

///|
#cfg(target="wasm-gc")
fn window_onbeforeprint_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onbeforeprint"

///|
#cfg(target="wasm-gc")
fn window_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeprint_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onbeforeprint_ffi(obj : JsValue, onbeforeprint : JsValue) -> Unit = "webapi_Window" "set_onbeforeprint"

///|
#cfg(target="wasm-gc")
fn window_onbeforeunload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onbeforeunload"

///|
#cfg(target="wasm-gc")
fn window_onbeforeunload_ffi(obj : JsValue) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "webapi_Window" "set_onbeforeunload"

///|
#cfg(target="wasm-gc")
fn window_onhashchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onhashchange"

///|
#cfg(target="wasm-gc")
fn window_onhashchange_ffi(obj : JsValue) -> EventHandler {
  window_onhashchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onhashchange_ffi(obj : JsValue, onhashchange : JsValue) -> Unit = "webapi_Window" "set_onhashchange"

///|
#cfg(target="wasm-gc")
fn window_onlanguagechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onlanguagechange"

///|
#cfg(target="wasm-gc")
fn window_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  window_onlanguagechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "webapi_Window" "set_onlanguagechange"

///|
#cfg(target="wasm-gc")
fn window_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn window_onmessage_ffi(obj : JsValue) -> EventHandler {
  window_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_Window" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn window_onmessageerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn window_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  window_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_Window" "set_onmessageerror"

///|
#cfg(target="wasm-gc")
fn window_onoffline_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onoffline"

///|
#cfg(target="wasm-gc")
fn window_onoffline_ffi(obj : JsValue) -> EventHandler {
  window_onoffline_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onoffline_ffi(obj : JsValue, onoffline : JsValue) -> Unit = "webapi_Window" "set_onoffline"

///|
#cfg(target="wasm-gc")
fn window_ononline_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_ononline"

///|
#cfg(target="wasm-gc")
fn window_ononline_ffi(obj : JsValue) -> EventHandler {
  window_ononline_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_ononline_ffi(obj : JsValue, ononline : JsValue) -> Unit = "webapi_Window" "set_ononline"

///|
#cfg(target="wasm-gc")
fn window_onpagehide_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpagehide"

///|
#cfg(target="wasm-gc")
fn window_onpagehide_ffi(obj : JsValue) -> EventHandler {
  window_onpagehide_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpagehide_ffi(obj : JsValue, onpagehide : JsValue) -> Unit = "webapi_Window" "set_onpagehide"

///|
#cfg(target="wasm-gc")
fn window_onpagereveal_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpagereveal"

///|
#cfg(target="wasm-gc")
fn window_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  window_onpagereveal_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpagereveal_ffi(obj : JsValue, onpagereveal : JsValue) -> Unit = "webapi_Window" "set_onpagereveal"

///|
#cfg(target="wasm-gc")
fn window_onpageshow_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpageshow"

///|
#cfg(target="wasm-gc")
fn window_onpageshow_ffi(obj : JsValue) -> EventHandler {
  window_onpageshow_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpageshow_ffi(obj : JsValue, onpageshow : JsValue) -> Unit = "webapi_Window" "set_onpageshow"

///|
#cfg(target="wasm-gc")
fn window_onpageswap_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpageswap"

///|
#cfg(target="wasm-gc")
fn window_onpageswap_ffi(obj : JsValue) -> EventHandler {
  window_onpageswap_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpageswap_ffi(obj : JsValue, onpageswap : JsValue) -> Unit = "webapi_Window" "set_onpageswap"

///|
#cfg(target="wasm-gc")
fn window_onpopstate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onpopstate"

///|
#cfg(target="wasm-gc")
fn window_onpopstate_ffi(obj : JsValue) -> EventHandler {
  window_onpopstate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onpopstate_ffi(obj : JsValue, onpopstate : JsValue) -> Unit = "webapi_Window" "set_onpopstate"

///|
#cfg(target="wasm-gc")
fn window_onrejectionhandled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onrejectionhandled"

///|
#cfg(target="wasm-gc")
fn window_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  window_onrejectionhandled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "webapi_Window" "set_onrejectionhandled"

///|
#cfg(target="wasm-gc")
fn window_onstorage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onstorage"

///|
#cfg(target="wasm-gc")
fn window_onstorage_ffi(obj : JsValue) -> EventHandler {
  window_onstorage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onstorage_ffi(obj : JsValue, onstorage : JsValue) -> Unit = "webapi_Window" "set_onstorage"

///|
#cfg(target="wasm-gc")
fn window_onunhandledrejection_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onunhandledrejection"

///|
#cfg(target="wasm-gc")
fn window_onunhandledrejection_ffi(obj : JsValue) -> EventHandler {
  window_onunhandledrejection_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "webapi_Window" "set_onunhandledrejection"

///|
#cfg(target="wasm-gc")
fn window_onunload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_onunload"

///|
#cfg(target="wasm-gc")
fn window_onunload_ffi(obj : JsValue) -> EventHandler {
  window_onunload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_set_onunload_ffi(obj : JsValue, onunload : JsValue) -> Unit = "webapi_Window" "set_onunload"

///|
#cfg(target="wasm-gc")
fn window_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_origin"

///|
#cfg(target="wasm-gc")
fn window_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn window_is_secure_context_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_isSecureContext"

///|
#cfg(target="wasm-gc")
fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_crossOriginIsolated"

///|
#cfg(target="wasm-gc")
fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "webapi_Window" "reportError"

///|
#cfg(target="wasm-gc")
fn window_btoa_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "btoa"

///|
#cfg(target="wasm-gc")
fn window_btoa_ffi(obj : JsValue, data : JsValue) -> String {
  jsvalue_to_string(window_btoa_ffi_wasm(obj, data))
}

///|
#cfg(target="wasm-gc")
fn window_atob_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "atob"

///|
#cfg(target="wasm-gc")
fn window_atob_ffi(obj : JsValue, data : JsValue) -> String {
  jsvalue_to_string(window_atob_ffi_wasm(obj, data))
}

///|
#cfg(target="wasm-gc")
fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "webapi_Window" "setTimeout"

///|
#cfg(target="wasm-gc")
fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearTimeout"

///|
#cfg(target="wasm-gc")
fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "webapi_Window" "setInterval"

///|
#cfg(target="wasm-gc")
fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearInterval"

///|
#cfg(target="wasm-gc")
fn window_queue_microtask_ffi(obj : JsValue, callback : JsValue) -> Unit = "webapi_Window" "queueMicrotask"

///|
#cfg(target="wasm-gc")
fn window_create_image_bitmap_ffi_wasm(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "createImageBitmap"

///|
#cfg(target="wasm-gc")
fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_ffi_wasm(obj, image, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_create_image_bitmap_cropped_ffi_wasm(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "create_image_bitmap_cropped"

///|
#cfg(target="wasm-gc")
fn window_create_image_bitmap_cropped_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_cropped_ffi_wasm(
    obj, image, sx, sy, sw, sh, options,
  ).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "structuredClone"

///|
#cfg(target="wasm-gc")
fn window_fetch_ffi_wasm(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "webapi_Window" "fetch"

///|
#cfg(target="wasm-gc")
fn window_fetch_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsPromise[Response] {
  window_fetch_ffi_wasm(obj, input, init).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_performance_ffi(obj : JsValue) -> Performance = "webapi_Window" "get_performance"

///|
#cfg(target="wasm-gc")
fn window_indexed_db_ffi(obj : JsValue) -> IDBFactory = "webapi_Window" "get_indexedDB"

///|
#cfg(target="wasm-gc")
fn window_trusted_types_ffi(obj : JsValue) -> TrustedTypePolicyFactory = "webapi_Window" "get_trustedTypes"

///|
#cfg(target="wasm-gc")
fn window_caches_ffi(obj : JsValue) -> CacheStorage = "webapi_Window" "get_caches"

///|
#cfg(target="wasm-gc")
fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt = "webapi_Window" "requestAnimationFrame"

///|
#cfg(target="wasm-gc")
fn window_cancel_animation_frame_ffi(obj : JsValue, handle : JsValue) -> Unit = "webapi_Window" "cancelAnimationFrame"

///|
#cfg(target="wasm-gc")
fn window_session_storage_ffi(obj : JsValue) -> Storage = "webapi_Window" "get_sessionStorage"

///|
#cfg(target="wasm-gc")
fn window_local_storage_ffi(obj : JsValue) -> Storage = "webapi_Window" "get_localStorage"
