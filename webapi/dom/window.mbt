// Auto-generated MoonBit bindings for Window

// Do not edit manually

//
// WebIDL Interface:
// partial interface Window {
//     [NewObject] MediaQueryList matchMedia(CSSOMString query);
//     [SameObject, Replaceable] readonly attribute Screen screen;
//     [SameObject, Replaceable] readonly attribute VisualViewport? visualViewport;
// 
//     // browsing context
//     undefined moveTo(long x, long y);
//     undefined moveBy(long x, long y);
//     undefined resizeTo(long width, long height);
//     undefined resizeBy(long x, long y);
// 
//     // viewport
//     [Replaceable] readonly attribute long innerWidth;
//     [Replaceable] readonly attribute long innerHeight;
// 
//     // viewport scrolling
//     [Replaceable] readonly attribute double scrollX;
//     [Replaceable] readonly attribute double pageXOffset;
//     [Replaceable] readonly attribute double scrollY;
//     [Replaceable] readonly attribute double pageYOffset;
//     Promise<undefined> scroll(optional ScrollToOptions options = {});
//     Promise<undefined> scroll(unrestricted double x, unrestricted double y);
//     Promise<undefined> scrollTo(optional ScrollToOptions options = {});
//     Promise<undefined> scrollTo(unrestricted double x, unrestricted double y);
//     Promise<undefined> scrollBy(optional ScrollToOptions options = {});
//     Promise<undefined> scrollBy(unrestricted double x, unrestricted double y);
// 
//     // client
//     [Replaceable] readonly attribute long screenX;
//     [Replaceable] readonly attribute long screenLeft;
//     [Replaceable] readonly attribute long screenY;
//     [Replaceable] readonly attribute long screenTop;
//     [Replaceable] readonly attribute long outerWidth;
//     [Replaceable] readonly attribute long outerHeight;
//     [Replaceable] readonly attribute double devicePixelRatio;
// };
// 
// partial interface Window {
//   [NewObject] CSSStyleProperties getComputedStyle(Element elt, optional CSSOMString? pseudoElt);
// };
// 
// partial interface Window {
//   [Replaceable] readonly attribute (Event or undefined) event; // legacy
// };
// 
// [Global=Window,
//  Exposed=Window,
//  LegacyUnenumerableNamedProperties]
// interface Window : EventTarget {
//   // the current browsing context
//   [LegacyUnforgeable] readonly attribute WindowProxy window;
//   [Replaceable] readonly attribute WindowProxy self;
//   [LegacyUnforgeable] readonly attribute Document document;
//   attribute DOMString name;
//   [PutForwards=href, LegacyUnforgeable] readonly attribute Location location;
//   readonly attribute History history;
//   [Replaceable] readonly attribute Navigation navigation;
//   readonly attribute CustomElementRegistry customElements;
//   [Replaceable] readonly attribute BarProp locationbar;
//   [Replaceable] readonly attribute BarProp menubar;
//   [Replaceable] readonly attribute BarProp personalbar;
//   [Replaceable] readonly attribute BarProp scrollbars;
//   [Replaceable] readonly attribute BarProp statusbar;
//   [Replaceable] readonly attribute BarProp toolbar;
//   attribute DOMString status;
//   undefined close();
//   readonly attribute boolean closed;
//   undefined stop();
//   undefined focus();
//   undefined blur();
// 
//   // other browsing contexts
//   [Replaceable] readonly attribute WindowProxy frames;
//   [Replaceable] readonly attribute unsigned long length;
//   [LegacyUnforgeable] readonly attribute WindowProxy? top;
//   attribute any opener;
//   [Replaceable] readonly attribute WindowProxy? parent;
//   readonly attribute Element? frameElement;
//   WindowProxy? open(optional USVString url = "", optional DOMString target = "_blank", optional [LegacyNullToEmptyString] DOMString features = "");
// 
//   // Since this is the global object, the IDL named getter adds a NamedPropertiesObject exotic
//   // object on the prototype chain. Indeed, this does not make the global object an exotic object.
//   // Indexed access is taken care of by the WindowProxy exotic object.
//   getter object (DOMString name);
// 
//   // the user agent
//   readonly attribute Navigator navigator;
//   [Replaceable] readonly attribute Navigator clientInformation; // legacy alias of .navigator
//   readonly attribute boolean originAgentCluster;
// 
//   // user prompts
//   undefined alert();
//   undefined alert(DOMString message);
//   boolean confirm(optional DOMString message = "");
//   DOMString? prompt(optional DOMString message = "", optional DOMString default = "");
//   undefined print();
// 
//   undefined postMessage(any message, USVString targetOrigin, optional sequence<object> transfer = []);
//   undefined postMessage(any message, optional WindowPostMessageOptions options = {});
// 
//   // also has obsolete members
// };
// 
// partial interface Window {
//   undefined captureEvents();
//   undefined releaseEvents();
// 
//   [Replaceable, SameObject] readonly attribute External external;
// };

///|
#external
pub type Window

///|
pub trait TWindow: TJsValue {
  screen(self : Self) -> JsValue = _
  visual_viewport(self : Self) -> JsValue? = _
  inner_width(self : Self) -> Int = _
  inner_height(self : Self) -> Int = _
  scroll_x(self : Self) -> Double = _
  page_x_offset(self : Self) -> Double = _
  scroll_y(self : Self) -> Double = _
  page_y_offset(self : Self) -> Double = _
  screen_x(self : Self) -> Int = _
  screen_left(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  screen_top(self : Self) -> Int = _
  outer_width(self : Self) -> Int = _
  outer_height(self : Self) -> Int = _
  device_pixel_ratio(self : Self) -> Double = _
  event(self : Self) -> JsValue = _
  window(self : Self) -> Window = _
  self_(self : Self) -> Window = _
  document(self : Self) -> Document = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  location(self : Self) -> Location = _
  history(self : Self) -> History = _
  navigation(self : Self) -> JsValue = _
  custom_elements(self : Self) -> JsValue = _
  locationbar(self : Self) -> JsValue = _
  menubar(self : Self) -> JsValue = _
  personalbar(self : Self) -> JsValue = _
  scrollbars(self : Self) -> JsValue = _
  statusbar(self : Self) -> JsValue = _
  toolbar(self : Self) -> JsValue = _
  status(self : Self) -> String = _
  set_status(self : Self, value : String) -> Unit = _
  closed(self : Self) -> Bool = _
  frames(self : Self) -> Window = _
  length(self : Self) -> Int = _
  top(self : Self) -> Window? = _
  opener(self : Self) -> JsValue = _
  set_opener(self : Self, value : JsValue) -> Unit = _
  parent(self : Self) -> Window? = _
  frame_element(self : Self) -> Element? = _
  navigator(self : Self) -> Navigator = _
  client_information(self : Self) -> Navigator = _
  origin_agent_cluster(self : Self) -> Bool = _
  external(self : Self) -> JsValue = _
  match_media(self : Self, query : JsValue) -> JsValue = _
  move_to(self : Self, x : Int, y : Int) -> Unit = _
  move_by(self : Self, x : Int, y : Int) -> Unit = _
  resize_to(self : Self, width : Int, height : Int) -> Unit = _
  resize_by(self : Self, x : Int, y : Int) -> Unit = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  get_computed_style(self : Self, elt : Element, pseudo_elt? : JsValue) -> JsValue = _
  close(self : Self) -> Unit = _
  stop(self : Self) -> Unit = _
  focus(self : Self) -> Unit = _
  blur(self : Self) -> Unit = _
  open(self : Self, url? : String, target? : String, features? : String) -> Window? = _
  alert(self : Self) -> Unit = _
  alert2(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> String? = _
  print(self : Self) -> Unit = _
  post_message(
    self : Self,
    message : JsValue,
    target_origin : String,
    transfer? : Array[JsValue],
  ) -> Unit = _
  post_message2(
    self : Self,
    message : JsValue,
    options? : WindowPostMessageOptions,
  ) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
}

///|
pub impl TWindow for Window

///|
pub impl TJsValue for Window with to_js(self : Window) -> JsValue = "%identity"

///|
pub fn Window::null() -> Window = "JsValue" "null"

///|
pub fn Window::is_null(self : Window) -> Bool = "JsValue" "isNull"

///|
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> JsValue = "webapi_Window" "matchMedia"

///|
impl TWindow with match_media(self : Self, query : JsValue) -> JsValue {
  window_match_media_ffi(TJsValue::to_js(self), query).unsafe_cast()
}

///|
fn window_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveTo"

///|
impl TWindow with move_to(self : Self, x : Int, y : Int) -> Unit {
  window_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_move_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveBy"

///|
impl TWindow with move_by(self : Self, x : Int, y : Int) -> Unit {
  window_move_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "webapi_Window" "resizeTo"

///|
impl TWindow with resize_to(self : Self, width : Int, height : Int) -> Unit {
  window_resize_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
fn window_resize_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "resizeBy"

///|
impl TWindow with resize_by(self : Self, x : Int, y : Int) -> Unit {
  window_resize_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_to_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_to_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_by_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_by_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> JsValue = "webapi_Window" "getComputedStyle"

///|
impl TWindow with get_computed_style(
  self : Self,
  elt : Element,
  pseudo_elt? : JsValue,
) -> JsValue {
  let pseudo_elt_js = opt_to_js(pseudo_elt)
  window_get_computed_style_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(elt),
    pseudo_elt_js,
  ).unsafe_cast()
}

///|
fn window_close_ffi(obj : JsValue) -> Unit = "webapi_Window" "close"

///|
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

///|
fn window_stop_ffi(obj : JsValue) -> Unit = "webapi_Window" "stop"

///|
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(TJsValue::to_js(self))
}

///|
fn window_focus_ffi(obj : JsValue) -> Unit = "webapi_Window" "focus"

///|
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(TJsValue::to_js(self))
}

///|
fn window_blur_ffi(obj : JsValue) -> Unit = "webapi_Window" "blur"

///|
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(TJsValue::to_js(self))
}

///|
fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Window" "open"

///|
impl TWindow with open(
  self : Self,
  url? : String,
  target? : String,
  features? : String,
) -> Window? {
  let url_js = opt_to_js(url)
  let target_js = opt_to_js(target)
  let features_js = opt_to_js(features)
  window_open_ffi(TJsValue::to_js(self), url_js, target_js, features_js).as_option()
}

///|
fn window_alert_ffi(obj : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(TJsValue::to_js(self))
}

///|
fn window_alert_ffi2(obj : JsValue, message : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert2(self : Self, message : String) -> Unit {
  window_alert_ffi2(TJsValue::to_js(self), TJsValue::to_js(message))
}

///|
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> JsValue = "webapi_Window" "confirm"

///|
impl TWindow with confirm(self : Self, message? : String) -> Bool {
  let message_js = opt_to_js(message)
  window_confirm_ffi(TJsValue::to_js(self), message_js).unsafe_cast()
}

///|
fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "webapi_Window" "prompt"

///|
impl TWindow with prompt(self : Self, message? : String, default? : String) -> String? {
  let message_js = opt_to_js(message)
  let default_js = opt_to_js(default)
  window_prompt_ffi(TJsValue::to_js(self), message_js, default_js).as_option()
}

///|
fn window_print_ffi(obj : JsValue) -> Unit = "webapi_Window" "print"

///|
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(TJsValue::to_js(self))
}

///|
fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message(
  self : Self,
  message : JsValue,
  target_origin : String,
  transfer? : Array[JsValue],
) -> Unit {
  let transfer_js = opt_to_js(transfer)
  window_post_message_ffi(
    TJsValue::to_js(self),
    message,
    TJsValue::to_js(target_origin),
    transfer_js,
  )
}

///|
fn window_post_message_ffi2(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message2(
  self : Self,
  message : JsValue,
  options? : WindowPostMessageOptions = WindowPostMessageOptions::empty(),
) -> Unit {
  window_post_message_ffi2(
    TJsValue::to_js(self),
    message,
    TJsValue::to_js(options),
  )
}

///|
fn window_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "captureEvents"

///|
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(TJsValue::to_js(self))
}

///|
fn window_release_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "releaseEvents"

///|
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(TJsValue::to_js(self))
}

///|
fn window_screen_ffi(obj : JsValue) -> JsValue = "webapi_Window" "screen"

///|
impl TWindow with screen(self : Self) -> JsValue {
  window_screen_ffi(self.to_js())
}

///|
fn window_visual_viewport_ffi(obj : JsValue) -> JsValue = "webapi_Window" "visualViewport"

///|
impl TWindow with visual_viewport(self : Self) -> JsValue? {
  window_visual_viewport_ffi(self.to_js()).as_option()
}

///|
fn window_inner_width_ffi(obj : JsValue) -> Int = "webapi_Window" "innerWidth"

///|
impl TWindow with inner_width(self : Self) -> Int {
  window_inner_width_ffi(self.to_js())
}

///|
fn window_inner_height_ffi(obj : JsValue) -> Int = "webapi_Window" "innerHeight"

///|
impl TWindow with inner_height(self : Self) -> Int {
  window_inner_height_ffi(self.to_js())
}

///|
fn window_scroll_x_ffi(obj : JsValue) -> Double = "webapi_Window" "scrollX"

///|
impl TWindow with scroll_x(self : Self) -> Double {
  window_scroll_x_ffi(self.to_js())
}

///|
fn window_page_x_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "pageXOffset"

///|
impl TWindow with page_x_offset(self : Self) -> Double {
  window_page_x_offset_ffi(self.to_js())
}

///|
fn window_scroll_y_ffi(obj : JsValue) -> Double = "webapi_Window" "scrollY"

///|
impl TWindow with scroll_y(self : Self) -> Double {
  window_scroll_y_ffi(self.to_js())
}

///|
fn window_page_y_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "pageYOffset"

///|
impl TWindow with page_y_offset(self : Self) -> Double {
  window_page_y_offset_ffi(self.to_js())
}

///|
fn window_screen_x_ffi(obj : JsValue) -> Int = "webapi_Window" "screenX"

///|
impl TWindow with screen_x(self : Self) -> Int {
  window_screen_x_ffi(self.to_js())
}

///|
fn window_screen_left_ffi(obj : JsValue) -> Int = "webapi_Window" "screenLeft"

///|
impl TWindow with screen_left(self : Self) -> Int {
  window_screen_left_ffi(self.to_js())
}

///|
fn window_screen_y_ffi(obj : JsValue) -> Int = "webapi_Window" "screenY"

///|
impl TWindow with screen_y(self : Self) -> Int {
  window_screen_y_ffi(self.to_js())
}

///|
fn window_screen_top_ffi(obj : JsValue) -> Int = "webapi_Window" "screenTop"

///|
impl TWindow with screen_top(self : Self) -> Int {
  window_screen_top_ffi(self.to_js())
}

///|
fn window_outer_width_ffi(obj : JsValue) -> Int = "webapi_Window" "outerWidth"

///|
impl TWindow with outer_width(self : Self) -> Int {
  window_outer_width_ffi(self.to_js())
}

///|
fn window_outer_height_ffi(obj : JsValue) -> Int = "webapi_Window" "outerHeight"

///|
impl TWindow with outer_height(self : Self) -> Int {
  window_outer_height_ffi(self.to_js())
}

///|
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double = "webapi_Window" "devicePixelRatio"

///|
impl TWindow with device_pixel_ratio(self : Self) -> Double {
  window_device_pixel_ratio_ffi(self.to_js())
}

///|
fn window_event_ffi(obj : JsValue) -> JsValue = "webapi_Window" "event"

///|
impl TWindow with event(self : Self) -> JsValue {
  window_event_ffi(self.to_js())
}

///|
fn window_window_ffi(obj : JsValue) -> JsValue = "webapi_Window" "window"

///|
impl TWindow with window(self : Self) -> Window {
  window_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_self_ffi(obj : JsValue) -> JsValue = "webapi_Window" "self"

///|
impl TWindow with self_(self : Self) -> Window {
  window_self_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_document_ffi(obj : JsValue) -> JsValue = "webapi_Window" "document"

///|
impl TWindow with document(self : Self) -> Document {
  window_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_name_ffi(obj : JsValue) -> String = "webapi_Window" "name"

///|
impl TWindow with name(self : Self) -> String {
  window_name_ffi(self.to_js())
}

///|
fn window_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_Window" "set_name"

///|
impl TWindow with set_name(self : Self, value : String) -> Unit {
  window_set_name_ffi(self.to_js(), value)
}

///|
fn window_location_ffi(obj : JsValue) -> JsValue = "webapi_Window" "location"

///|
impl TWindow with location(self : Self) -> Location {
  window_location_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_history_ffi(obj : JsValue) -> JsValue = "webapi_Window" "history"

///|
impl TWindow with history(self : Self) -> History {
  window_history_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_navigation_ffi(obj : JsValue) -> JsValue = "webapi_Window" "navigation"

///|
impl TWindow with navigation(self : Self) -> JsValue {
  window_navigation_ffi(self.to_js())
}

///|
fn window_custom_elements_ffi(obj : JsValue) -> JsValue = "webapi_Window" "customElements"

///|
impl TWindow with custom_elements(self : Self) -> JsValue {
  window_custom_elements_ffi(self.to_js())
}

///|
fn window_locationbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "locationbar"

///|
impl TWindow with locationbar(self : Self) -> JsValue {
  window_locationbar_ffi(self.to_js())
}

///|
fn window_menubar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "menubar"

///|
impl TWindow with menubar(self : Self) -> JsValue {
  window_menubar_ffi(self.to_js())
}

///|
fn window_personalbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "personalbar"

///|
impl TWindow with personalbar(self : Self) -> JsValue {
  window_personalbar_ffi(self.to_js())
}

///|
fn window_scrollbars_ffi(obj : JsValue) -> JsValue = "webapi_Window" "scrollbars"

///|
impl TWindow with scrollbars(self : Self) -> JsValue {
  window_scrollbars_ffi(self.to_js())
}

///|
fn window_statusbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "statusbar"

///|
impl TWindow with statusbar(self : Self) -> JsValue {
  window_statusbar_ffi(self.to_js())
}

///|
fn window_toolbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "toolbar"

///|
impl TWindow with toolbar(self : Self) -> JsValue {
  window_toolbar_ffi(self.to_js())
}

///|
fn window_status_ffi(obj : JsValue) -> String = "webapi_Window" "status"

///|
impl TWindow with status(self : Self) -> String {
  window_status_ffi(self.to_js())
}

///|
fn window_set_status_ffi(obj : JsValue, value : String) -> Unit = "webapi_Window" "set_status"

///|
impl TWindow with set_status(self : Self, value : String) -> Unit {
  window_set_status_ffi(self.to_js(), value)
}

///|
fn window_closed_ffi(obj : JsValue) -> Bool = "webapi_Window" "closed"

///|
impl TWindow with closed(self : Self) -> Bool {
  window_closed_ffi(self.to_js())
}

///|
fn window_frames_ffi(obj : JsValue) -> JsValue = "webapi_Window" "frames"

///|
impl TWindow with frames(self : Self) -> Window {
  window_frames_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_length_ffi(obj : JsValue) -> Int = "webapi_Window" "length"

///|
impl TWindow with length(self : Self) -> Int {
  window_length_ffi(self.to_js())
}

///|
fn window_top_ffi(obj : JsValue) -> JsValue = "webapi_Window" "top"

///|
impl TWindow with top(self : Self) -> Window? {
  window_top_ffi(self.to_js()).as_option()
}

///|
fn window_opener_ffi(obj : JsValue) -> JsValue = "webapi_Window" "opener"

///|
impl TWindow with opener(self : Self) -> JsValue {
  window_opener_ffi(self.to_js())
}

///|
fn window_set_opener_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_opener"

///|
impl TWindow with set_opener(self : Self, value : JsValue) -> Unit {
  window_set_opener_ffi(self.to_js(), value)
}

///|
fn window_parent_ffi(obj : JsValue) -> JsValue = "webapi_Window" "parent"

///|
impl TWindow with parent(self : Self) -> Window? {
  window_parent_ffi(self.to_js()).as_option()
}

///|
fn window_frame_element_ffi(obj : JsValue) -> JsValue = "webapi_Window" "frameElement"

///|
impl TWindow with frame_element(self : Self) -> Element? {
  window_frame_element_ffi(self.to_js()).as_option()
}

///|
fn window_navigator_ffi(obj : JsValue) -> JsValue = "webapi_Window" "navigator"

///|
impl TWindow with navigator(self : Self) -> Navigator {
  window_navigator_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_client_information_ffi(obj : JsValue) -> JsValue = "webapi_Window" "clientInformation"

///|
impl TWindow with client_information(self : Self) -> Navigator {
  window_client_information_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool = "webapi_Window" "originAgentCluster"

///|
impl TWindow with origin_agent_cluster(self : Self) -> Bool {
  window_origin_agent_cluster_ffi(self.to_js())
}

///|
fn window_external_ffi(obj : JsValue) -> JsValue = "webapi_Window" "external"

///|
impl TWindow with external(self : Self) -> JsValue {
  window_external_ffi(self.to_js())
}
