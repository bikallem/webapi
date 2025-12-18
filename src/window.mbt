// Auto-generated MoonBit bindings for Window interface
// Do not edit manually

#external
pub type Window

pub impl TJsValue for Window with to_js(self: Window) -> JsValue = "%identity"


pub fn[T: TWindow] Window::into(self : Window) -> T = "%identity"
pub impl TWindow for Window

pub trait TWindow: TJsValue + TTEventTarget {
  event(self: Self) -> JsValue = _
  window(self: Self) -> WindowProxy = _
  self(self: Self) -> WindowProxy = _
  document(self: Self) -> &TDocument = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  location(self: Self) -> Location = _
  history(self: Self) -> History = _
  navigation(self: Self) -> Navigation = _
  custom_elements(self: Self) -> CustomElementRegistry = _
  locationbar(self: Self) -> BarProp = _
  menubar(self: Self) -> BarProp = _
  personalbar(self: Self) -> BarProp = _
  scrollbars(self: Self) -> BarProp = _
  statusbar(self: Self) -> BarProp = _
  toolbar(self: Self) -> BarProp = _
  status(self: Self) -> String = _
  set_status(self: Self, value : String) -> Unit = _
  close(self: Self) -> Unit = _
  closed(self: Self) -> Bool = _
  stop(self: Self) -> Unit = _
  focus(self: Self) -> Unit = _
  blur(self: Self) -> Unit = _
  frames(self: Self) -> WindowProxy = _
  length(self: Self) -> UInt = _
  top(self: Self) -> WindowProxy = _
  opener(self: Self) -> JsValue = _
  set_opener(self: Self, value : JsValue) -> Unit = _
  parent(self: Self) -> WindowProxy = _
  frame_element(self: Self) -> &TElement = _
  open(self: Self, url? : String, target? : String, features? : String) -> WindowProxy = _
  navigator(self: Self) -> Navigator = _
  client_information(self: Self) -> Navigator = _
  origin_agent_cluster(self: Self) -> Bool = _
  alert(self: Self) -> Unit = _
  alert(self: Self, message : String) -> Unit = _
  confirm(self: Self, message? : String) -> Bool = _
  prompt(self: Self, message? : String, default? : String) -> String = _
  print(self: Self) -> Unit = _
  post_message(self: Self, message : JsValue, target_origin : String, transfer? : Array[JsValue]) -> Unit = _
  post_message(self: Self, message : JsValue, options? : WindowPostMessageOptions) -> Unit = _
  capture_events(self: Self) -> Unit = _
  release_events(self: Self) -> Unit = _
  external(self: Self) -> External = _
  get_computed_style(self: Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties = _
  match_media(self: Self, query : CSSOMString) -> MediaQueryList = _
  screen(self: Self) -> Screen = _
  visual_viewport(self: Self) -> VisualViewport = _
  move_to(self: Self, x : Int, y : Int) -> Unit = _
  move_by(self: Self, x : Int, y : Int) -> Unit = _
  resize_to(self: Self, width : Int, height : Int) -> Unit = _
  resize_by(self: Self, x : Int, y : Int) -> Unit = _
  inner_width(self: Self) -> Int = _
  inner_height(self: Self) -> Int = _
  scroll_x(self: Self) -> Double = _
  page_x_offset(self: Self) -> Double = _
  scroll_y(self: Self) -> Double = _
  page_y_offset(self: Self) -> Double = _
  scroll(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self: Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by(self: Self, x : Double, y : Double) -> JsPromise[Unit] = _
  screen_x(self: Self) -> Int = _
  screen_left(self: Self) -> Int = _
  screen_y(self: Self) -> Int = _
  screen_top(self: Self) -> Int = _
  outer_width(self: Self) -> Int = _
  outer_height(self: Self) -> Int = _
  device_pixel_ratio(self: Self) -> Double = _
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
impl TWindow with window(self : Self) -> WindowProxy {
  window_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_self_ffi(obj : JsValue) -> JsValue = "webapi_Window" "self"

///|
impl TWindow with self(self : Self) -> WindowProxy {
  window_self_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_document_ffi(obj : JsValue) -> JsValue = "webapi_Window" "document"

///|
impl TWindow with document(self : Self) -> &TDocument {
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
impl TWindow with navigation(self : Self) -> Navigation {
  window_navigation_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_custom_elements_ffi(obj : JsValue) -> JsValue = "webapi_Window" "customElements"

///|
impl TWindow with custom_elements(self : Self) -> CustomElementRegistry {
  window_custom_elements_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_locationbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "locationbar"

///|
impl TWindow with locationbar(self : Self) -> BarProp {
  window_locationbar_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_menubar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "menubar"

///|
impl TWindow with menubar(self : Self) -> BarProp {
  window_menubar_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_personalbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "personalbar"

///|
impl TWindow with personalbar(self : Self) -> BarProp {
  window_personalbar_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_scrollbars_ffi(obj : JsValue) -> JsValue = "webapi_Window" "scrollbars"

///|
impl TWindow with scrollbars(self : Self) -> BarProp {
  window_scrollbars_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_statusbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "statusbar"

///|
impl TWindow with statusbar(self : Self) -> BarProp {
  window_statusbar_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_toolbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "toolbar"

///|
impl TWindow with toolbar(self : Self) -> BarProp {
  window_toolbar_ffi(self.to_js()).unsafe_cast()
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
impl TWindow with frames(self : Self) -> WindowProxy {
  window_frames_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_length_ffi(obj : JsValue) -> UInt = "webapi_Window" "length"

///|
impl TWindow with length(self : Self) -> UInt {
  window_length_ffi(self.to_js())
}

///|
fn window_top_ffi(obj : JsValue) -> JsValue = "webapi_Window" "top"

///|
impl TWindow with top(self : Self) -> WindowProxy {
  window_top_ffi(self.to_js()).unsafe_cast()
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
impl TWindow with parent(self : Self) -> WindowProxy {
  window_parent_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_frame_element_ffi(obj : JsValue) -> JsValue = "webapi_Window" "frameElement"

///|
impl TWindow with frame_element(self : Self) -> &TElement {
  window_frame_element_ffi(self.to_js()).unsafe_cast()
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
impl TWindow with external(self : Self) -> External {
  window_external_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_screen_ffi(obj : JsValue) -> JsValue = "webapi_Window" "screen"

///|
impl TWindow with screen(self : Self) -> Screen {
  window_screen_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_visual_viewport_ffi(obj : JsValue) -> JsValue = "webapi_Window" "visualViewport"

///|
impl TWindow with visual_viewport(self : Self) -> VisualViewport {
  window_visual_viewport_ffi(self.to_js()).unsafe_cast()
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
fn window_close_ffi(obj : JsValue) -> Unit = "webapi_Window" "close"

///|
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(self.to_js())
}

///|
fn window_stop_ffi(obj : JsValue) -> Unit = "webapi_Window" "stop"

///|
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(self.to_js())
}

///|
fn window_focus_ffi(obj : JsValue) -> Unit = "webapi_Window" "focus"

///|
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(self.to_js())
}

///|
fn window_blur_ffi(obj : JsValue) -> Unit = "webapi_Window" "blur"

///|
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(self.to_js())
}

///|
fn window_open_ffi(obj : JsValue, url : JsValue, target : JsValue, features : JsValue) -> JsValue = "webapi_Window" "open"

///|
impl TWindow with open(self : Self, url? : String, target? : String, features? : String) -> WindowProxy {
  window_open_ffi(self.to_js(), TJsValue::to_js(url), TJsValue::to_js(target), TJsValue::to_js(features)).unsafe_cast()
}

///|
fn window_alert_ffi(obj : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(self.to_js())
}

///|
fn window_alert_ffi(obj : JsValue, message : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert(self : Self, message : String) -> Unit {
  window_alert_ffi(self.to_js(), TJsValue::to_js(message))
}

///|
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool = "webapi_Window" "confirm"

///|
impl TWindow with confirm(self : Self, message? : String) -> Bool {
  window_confirm_ffi(self.to_js(), TJsValue::to_js(message))
}

///|
fn window_prompt_ffi(obj : JsValue, message : JsValue, default : JsValue) -> String = "webapi_Window" "prompt"

///|
impl TWindow with prompt(self : Self, message? : String, default? : String) -> String {
  window_prompt_ffi(self.to_js(), TJsValue::to_js(message), TJsValue::to_js(default))
}

///|
fn window_print_ffi(obj : JsValue) -> Unit = "webapi_Window" "print"

///|
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(self.to_js())
}

///|
fn window_post_message_ffi(obj : JsValue, message : JsValue, target_origin : JsValue, transfer : JsValue) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message(self : Self, message : JsValue, target_origin : String, transfer? : Array[JsValue]) -> Unit {
  window_post_message_ffi(self.to_js(), TJsValue::to_js(message), TJsValue::to_js(target_origin), TJsValue::to_js(transfer))
}

///|
fn window_post_message_ffi(obj : JsValue, message : JsValue, options : JsValue) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message(self : Self, message : JsValue, options? : WindowPostMessageOptions) -> Unit {
  window_post_message_ffi(self.to_js(), TJsValue::to_js(message), TJsValue::to_js(options))
}

///|
fn window_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "captureEvents"

///|
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(self.to_js())
}

///|
fn window_release_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "releaseEvents"

///|
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(self.to_js())
}

///|
fn window_get_computed_style_ffi(obj : JsValue, elt : JsValue, pseudo_elt : JsValue) -> JsValue = "webapi_Window" "getComputedStyle"

///|
impl TWindow with get_computed_style(self : Self, elt : &TElement, pseudo_elt? : CSSOMString) -> CSSStyleProperties {
  window_get_computed_style_ffi(self.to_js(), elt.to_js(), TJsValue::to_js(pseudo_elt)).unsafe_cast()
}

///|
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> JsValue = "webapi_Window" "matchMedia"

///|
impl TWindow with match_media(self : Self, query : CSSOMString) -> MediaQueryList {
  window_match_media_ffi(self.to_js(), TJsValue::to_js(query)).unsafe_cast()
}

///|
fn window_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveTo"

///|
impl TWindow with move_to(self : Self, x : Int, y : Int) -> Unit {
  window_move_to_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y))
}

///|
fn window_move_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveBy"

///|
impl TWindow with move_by(self : Self, x : Int, y : Int) -> Unit {
  window_move_by_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y))
}

///|
fn window_resize_to_ffi(obj : JsValue, width : JsValue, height : JsValue) -> Unit = "webapi_Window" "resizeTo"

///|
impl TWindow with resize_to(self : Self, width : Int, height : Int) -> Unit {
  window_resize_to_ffi(self.to_js(), TJsValue::to_js(width), TJsValue::to_js(height))
}

///|
fn window_resize_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "resizeBy"

///|
impl TWindow with resize_by(self : Self, x : Int, y : Int) -> Unit {
  window_resize_by_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y))
}

///|
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  window_scroll_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  window_scroll_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  window_scroll_to_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  window_scroll_to_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

///|
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] {
  window_scroll_by_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by(self : Self, x : Double, y : Double) -> JsPromise[Unit] {
  window_scroll_by_ffi(self.to_js(), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}