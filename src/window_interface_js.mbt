///|
extern "js" fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "(obj) => obj === undefined"

///|
extern "js" fn window_event_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.event"

///|
fn window_event_ffi(obj : JsValue) -> WindowEvent {
  window_event_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_window_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.window"

///|
fn window_window_ffi(obj : JsValue) -> WindowProxy {
  window_window_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_self_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.self"

///|
fn window_self_ffi(obj : JsValue) -> WindowProxy {
  window_self_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_document_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.document"

///|
fn window_document_ffi(obj : JsValue) -> Document {
  window_document_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn window_name_ffi(obj : JsValue) -> String {
  window_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn window_location_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.location"

///|
fn window_location_ffi(obj : JsValue) -> Location {
  window_location_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_history_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.history"

///|
fn window_history_ffi(obj : JsValue) -> History {
  window_history_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_navigation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigation"

///|
fn window_navigation_ffi(obj : JsValue) -> Navigation {
  window_navigation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_custom_elements_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.customElements"

///|
fn window_custom_elements_ffi(obj : JsValue) -> CustomElementRegistry {
  window_custom_elements_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_locationbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.locationbar"

///|
fn window_locationbar_ffi(obj : JsValue) -> BarProp {
  window_locationbar_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_menubar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.menubar"

///|
fn window_menubar_ffi(obj : JsValue) -> BarProp {
  window_menubar_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_personalbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.personalbar"

///|
fn window_personalbar_ffi(obj : JsValue) -> BarProp {
  window_personalbar_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_scrollbars_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollbars"

///|
fn window_scrollbars_ffi(obj : JsValue) -> BarProp {
  window_scrollbars_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_statusbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.statusbar"

///|
fn window_statusbar_ffi(obj : JsValue) -> BarProp {
  window_statusbar_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_toolbar_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toolbar"

///|
fn window_toolbar_ffi(obj : JsValue) -> BarProp {
  window_toolbar_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_status_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.status"

///|
fn window_status_ffi(obj : JsValue) -> String {
  window_status_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_status_ffi(obj : JsValue, status : JsValue) -> Unit = "(obj, status) => { obj.status = status; }"

///|
extern "js" fn window_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn window_closed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.closed"

///|
fn window_closed_ffi(obj : JsValue) -> Bool {
  window_closed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_stop_ffi(obj : JsValue) -> Unit = "(obj) => obj.stop()"

///|
extern "js" fn window_focus_ffi(obj : JsValue) -> Unit = "(obj) => obj.focus()"

///|
extern "js" fn window_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
extern "js" fn window_frames_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frames"

///|
fn window_frames_ffi(obj : JsValue) -> WindowProxy {
  window_frames_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn window_length_ffi(obj : JsValue) -> UInt {
  window_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.top"

///|
fn window_top_ffi(obj : JsValue) -> WindowProxy {
  window_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_opener_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.opener"

///|
fn window_opener_ffi(obj : JsValue) -> JsValue {
  window_opener_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_opener_ffi(obj : JsValue, opener : JsValue) -> Unit = "(obj, opener) => { obj.opener = opener; }"

///|
extern "js" fn window_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parent"

///|
fn window_parent_ffi(obj : JsValue) -> WindowProxy {
  window_parent_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_frame_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frameElement"

///|
fn window_frame_element_ffi(obj : JsValue) -> Element {
  window_frame_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "(obj, url, target, features) => obj.open(url, target, features)"

///|
extern "js" fn window_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
extern "js" fn window_navigator_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigator"

///|
fn window_navigator_ffi(obj : JsValue) -> Navigator {
  window_navigator_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_client_information_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientInformation"

///|
fn window_client_information_ffi(obj : JsValue) -> Navigator {
  window_client_information_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_origin_agent_cluster_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.originAgentCluster"

///|
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool {
  window_origin_agent_cluster_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_alert_ffi(obj : JsValue) -> Unit = "(obj) => obj.alert()"

///|
extern "js" fn window_alert_with_message_ffi(
  obj : JsValue,
  message : JsValue,
) -> Unit = "(obj, message) => obj.alert(message)"

///|
extern "js" fn window_confirm_ffi_js(
  obj : JsValue,
  message : JsValue,
) -> JsValue = "(obj, message) => obj.confirm(message)"

///|
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool {
  window_confirm_ffi_js(obj, message).unsafe_cast()
}

///|
extern "js" fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "(obj, message, _default) => obj.prompt(message, _default)"

///|
extern "js" fn window_print_ffi(obj : JsValue) -> Unit = "(obj) => obj.print()"

///|
extern "js" fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, target_origin, transfer) => obj.postMessage(message, target_origin, transfer)"

///|
extern "js" fn window_post_message_with_options_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

///|
extern "js" fn window_capture_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.captureEvents()"

///|
extern "js" fn window_release_events_ffi(obj : JsValue) -> Unit = "(obj) => obj.releaseEvents()"

///|
extern "js" fn window_external_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.external"

///|
fn window_external_ffi(obj : JsValue) -> External {
  window_external_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_get_computed_style_ffi_js(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> JsValue = "(obj, elt, pseudo_elt) => obj.getComputedStyle(elt, pseudo_elt)"

///|
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> CSSStyleProperties {
  window_get_computed_style_ffi_js(obj, elt, pseudo_elt).unsafe_cast()
}

///|
extern "js" fn window_fetch_later_ffi_js(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "(obj, input, init) => obj.fetchLater(input, init)"

///|
fn window_fetch_later_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> FetchLaterResult {
  window_fetch_later_ffi_js(obj, input, init).unsafe_cast()
}

///|
extern "js" fn window_match_media_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.matchMedia(query)"

///|
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> MediaQueryList {
  window_match_media_ffi_js(obj, query).unsafe_cast()
}

///|
extern "js" fn window_screen_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screen"

///|
fn window_screen_ffi(obj : JsValue) -> Screen {
  window_screen_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_visual_viewport_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visualViewport"

///|
fn window_visual_viewport_ffi(obj : JsValue) -> VisualViewport {
  window_visual_viewport_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_move_to_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

///|
extern "js" fn window_move_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.moveBy(x, y)"

///|
extern "js" fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "(obj, width, height) => obj.resizeTo(width, height)"

///|
extern "js" fn window_resize_by_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, x, y) => obj.resizeBy(x, y)"

///|
extern "js" fn window_inner_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerWidth"

///|
fn window_inner_width_ffi(obj : JsValue) -> Int {
  window_inner_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_inner_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerHeight"

///|
fn window_inner_height_ffi(obj : JsValue) -> Int {
  window_inner_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_scroll_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollX"

///|
fn window_scroll_x_ffi(obj : JsValue) -> Double {
  window_scroll_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_page_x_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageXOffset"

///|
fn window_page_x_offset_ffi(obj : JsValue) -> Double {
  window_page_x_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_scroll_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollY"

///|
fn window_scroll_y_ffi(obj : JsValue) -> Double {
  window_scroll_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_page_y_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageYOffset"

///|
fn window_page_y_offset_ffi(obj : JsValue) -> Double {
  window_page_y_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_scroll_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scroll(options)"

///|
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn window_scroll_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scroll(x, y)"

///|
fn window_scroll_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn window_scroll_to_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollTo(options)"

///|
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_to_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn window_scroll_to_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollTo(x, y)"

///|
fn window_scroll_to_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_to_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn window_scroll_by_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.scrollBy(options)"

///|
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsPromise[JsValue] {
  window_scroll_by_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn window_scroll_by_xy_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.scrollBy(x, y)"

///|
fn window_scroll_by_xy_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsPromise[JsValue] {
  window_scroll_by_xy_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn window_screen_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
fn window_screen_x_ffi(obj : JsValue) -> Int {
  window_screen_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_screen_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenLeft"

///|
fn window_screen_left_ffi(obj : JsValue) -> Int {
  window_screen_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_screen_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
fn window_screen_y_ffi(obj : JsValue) -> Int {
  window_screen_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_screen_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenTop"

///|
fn window_screen_top_ffi(obj : JsValue) -> Int {
  window_screen_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_outer_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerWidth"

///|
fn window_outer_width_ffi(obj : JsValue) -> Int {
  window_outer_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_outer_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerHeight"

///|
fn window_outer_height_ffi(obj : JsValue) -> Int {
  window_outer_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_device_pixel_ratio_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.devicePixelRatio"

///|
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double {
  window_device_pixel_ratio_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_get_selection_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getSelection()"

///|
extern "js" fn window_request_idle_callback_ffi_js(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> JsValue = "(obj, callback, options) => obj.requestIdleCallback(callback, options)"

///|
fn window_request_idle_callback_ffi(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> UInt {
  window_request_idle_callback_ffi_js(obj, callback, options).unsafe_cast()
}

///|
extern "js" fn window_cancel_idle_callback_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelIdleCallback(handle)"

///|
extern "js" fn window_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn window_onabort_ffi(obj : JsValue) -> EventHandler {
  window_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn window_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
fn window_onauxclick_ffi(obj : JsValue) -> EventHandler {
  window_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn window_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
fn window_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn window_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
fn window_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  window_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn window_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
fn window_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  window_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn window_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
fn window_onblur_ffi(obj : JsValue) -> EventHandler {
  window_onblur_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn window_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
fn window_oncancel_ffi(obj : JsValue) -> EventHandler {
  window_oncancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn window_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
fn window_oncanplay_ffi(obj : JsValue) -> EventHandler {
  window_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn window_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
fn window_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  window_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn window_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn window_onchange_ffi(obj : JsValue) -> EventHandler {
  window_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn window_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
fn window_onclick_ffi(obj : JsValue) -> EventHandler {
  window_onclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn window_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn window_onclose_ffi(obj : JsValue) -> EventHandler {
  window_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn window_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
fn window_oncommand_ffi(obj : JsValue) -> EventHandler {
  window_oncommand_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn window_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
fn window_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  window_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn window_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
fn window_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  window_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn window_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
fn window_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  window_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn window_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
fn window_oncopy_ffi(obj : JsValue) -> EventHandler {
  window_oncopy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn window_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
fn window_oncuechange_ffi(obj : JsValue) -> EventHandler {
  window_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn window_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
fn window_oncut_ffi(obj : JsValue) -> EventHandler {
  window_oncut_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn window_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
fn window_ondblclick_ffi(obj : JsValue) -> EventHandler {
  window_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn window_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
fn window_ondrag_ffi(obj : JsValue) -> EventHandler {
  window_ondrag_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn window_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
fn window_ondragend_ffi(obj : JsValue) -> EventHandler {
  window_ondragend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn window_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
fn window_ondragenter_ffi(obj : JsValue) -> EventHandler {
  window_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn window_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
fn window_ondragleave_ffi(obj : JsValue) -> EventHandler {
  window_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn window_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
fn window_ondragover_ffi(obj : JsValue) -> EventHandler {
  window_ondragover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn window_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
fn window_ondragstart_ffi(obj : JsValue) -> EventHandler {
  window_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn window_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
fn window_ondrop_ffi(obj : JsValue) -> EventHandler {
  window_ondrop_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn window_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
fn window_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  window_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn window_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
fn window_onemptied_ffi(obj : JsValue) -> EventHandler {
  window_onemptied_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn window_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
fn window_onended_ffi(obj : JsValue) -> EventHandler {
  window_onended_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn window_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn window_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  window_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn window_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
fn window_onfocus_ffi(obj : JsValue) -> EventHandler {
  window_onfocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn window_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
fn window_onformdata_ffi(obj : JsValue) -> EventHandler {
  window_onformdata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn window_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
fn window_oninput_ffi(obj : JsValue) -> EventHandler {
  window_oninput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn window_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
fn window_oninvalid_ffi(obj : JsValue) -> EventHandler {
  window_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn window_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
fn window_onkeydown_ffi(obj : JsValue) -> EventHandler {
  window_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn window_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
fn window_onkeypress_ffi(obj : JsValue) -> EventHandler {
  window_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn window_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
fn window_onkeyup_ffi(obj : JsValue) -> EventHandler {
  window_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn window_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
fn window_onload_ffi(obj : JsValue) -> EventHandler {
  window_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn window_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
fn window_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  window_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn window_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
fn window_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  window_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn window_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
fn window_onloadstart_ffi(obj : JsValue) -> EventHandler {
  window_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn window_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
fn window_onmousedown_ffi(obj : JsValue) -> EventHandler {
  window_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn window_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
fn window_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  window_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn window_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
fn window_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  window_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn window_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
fn window_onmousemove_ffi(obj : JsValue) -> EventHandler {
  window_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn window_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
fn window_onmouseout_ffi(obj : JsValue) -> EventHandler {
  window_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn window_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
fn window_onmouseover_ffi(obj : JsValue) -> EventHandler {
  window_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn window_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
fn window_onmouseup_ffi(obj : JsValue) -> EventHandler {
  window_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn window_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
fn window_onpaste_ffi(obj : JsValue) -> EventHandler {
  window_onpaste_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn window_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
fn window_onpause_ffi(obj : JsValue) -> EventHandler {
  window_onpause_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn window_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
fn window_onplay_ffi(obj : JsValue) -> EventHandler {
  window_onplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn window_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
fn window_onplaying_ffi(obj : JsValue) -> EventHandler {
  window_onplaying_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn window_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
fn window_onprogress_ffi(obj : JsValue) -> EventHandler {
  window_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn window_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
fn window_onratechange_ffi(obj : JsValue) -> EventHandler {
  window_onratechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn window_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
fn window_onreset_ffi(obj : JsValue) -> EventHandler {
  window_onreset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn window_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
fn window_onresize_ffi(obj : JsValue) -> EventHandler {
  window_onresize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn window_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
fn window_onscroll_ffi(obj : JsValue) -> EventHandler {
  window_onscroll_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn window_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
fn window_onscrollend_ffi(obj : JsValue) -> EventHandler {
  window_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn window_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
fn window_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  window_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn window_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
fn window_onseeked_ffi(obj : JsValue) -> EventHandler {
  window_onseeked_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn window_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
fn window_onseeking_ffi(obj : JsValue) -> EventHandler {
  window_onseeking_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn window_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
fn window_onselect_ffi(obj : JsValue) -> EventHandler {
  window_onselect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn window_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
fn window_onslotchange_ffi(obj : JsValue) -> EventHandler {
  window_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn window_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
fn window_onstalled_ffi(obj : JsValue) -> EventHandler {
  window_onstalled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn window_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
fn window_onsubmit_ffi(obj : JsValue) -> EventHandler {
  window_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn window_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
fn window_onsuspend_ffi(obj : JsValue) -> EventHandler {
  window_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn window_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
fn window_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  window_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn window_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
fn window_ontoggle_ffi(obj : JsValue) -> EventHandler {
  window_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn window_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
fn window_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  window_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn window_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
fn window_onwaiting_ffi(obj : JsValue) -> EventHandler {
  window_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn window_onwebkitanimationend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
fn window_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn window_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
fn window_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn window_onwebkitanimationstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
fn window_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  window_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn window_onwebkittransitionend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
fn window_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  window_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn window_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
fn window_onwheel_ffi(obj : JsValue) -> EventHandler {
  window_onwheel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn window_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
fn window_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  window_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
extern "js" fn window_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
fn window_ontouchend_ffi(obj : JsValue) -> EventHandler {
  window_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
extern "js" fn window_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
fn window_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  window_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
extern "js" fn window_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
fn window_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  window_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
extern "js" fn window_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
fn window_onpointerover_ffi(obj : JsValue) -> EventHandler {
  window_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
extern "js" fn window_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
fn window_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  window_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
extern "js" fn window_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
fn window_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  window_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
extern "js" fn window_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
fn window_onpointermove_ffi(obj : JsValue) -> EventHandler {
  window_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
extern "js" fn window_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
fn window_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  window_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
extern "js" fn window_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
fn window_onpointerup_ffi(obj : JsValue) -> EventHandler {
  window_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
extern "js" fn window_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
fn window_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  window_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
extern "js" fn window_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
fn window_onpointerout_ffi(obj : JsValue) -> EventHandler {
  window_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
extern "js" fn window_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
fn window_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  window_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
extern "js" fn window_ongotpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
fn window_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
extern "js" fn window_onlostpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
fn window_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  window_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
extern "js" fn window_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
fn window_onselectstart_ffi(obj : JsValue) -> EventHandler {
  window_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
extern "js" fn window_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
fn window_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  window_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
extern "js" fn window_onafterprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onafterprint"

///|
fn window_onafterprint_ffi(obj : JsValue) -> EventHandler {
  window_onafterprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onafterprint_ffi(
  obj : JsValue,
  onafterprint : JsValue,
) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

///|
extern "js" fn window_onbeforeprint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

///|
fn window_onbeforeprint_ffi(obj : JsValue) -> EventHandler {
  window_onbeforeprint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onbeforeprint_ffi(
  obj : JsValue,
  onbeforeprint : JsValue,
) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

///|
extern "js" fn window_onbeforeunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

///|
fn window_onbeforeunload_ffi(obj : JsValue) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

///|
extern "js" fn window_onhashchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onhashchange"

///|
fn window_onhashchange_ffi(obj : JsValue) -> EventHandler {
  window_onhashchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onhashchange_ffi(
  obj : JsValue,
  onhashchange : JsValue,
) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

///|
extern "js" fn window_onlanguagechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

///|
fn window_onlanguagechange_ffi(obj : JsValue) -> EventHandler {
  window_onlanguagechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

///|
extern "js" fn window_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn window_onmessage_ffi(obj : JsValue) -> EventHandler {
  window_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn window_onmessageerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn window_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  window_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
extern "js" fn window_onoffline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onoffline"

///|
fn window_onoffline_ffi(obj : JsValue) -> EventHandler {
  window_onoffline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onoffline_ffi(
  obj : JsValue,
  onoffline : JsValue,
) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

///|
extern "js" fn window_ononline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ononline"

///|
fn window_ononline_ffi(obj : JsValue) -> EventHandler {
  window_ononline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_ononline_ffi(
  obj : JsValue,
  ononline : JsValue,
) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

///|
extern "js" fn window_onpagehide_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagehide"

///|
fn window_onpagehide_ffi(obj : JsValue) -> EventHandler {
  window_onpagehide_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpagehide_ffi(
  obj : JsValue,
  onpagehide : JsValue,
) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

///|
extern "js" fn window_onpagereveal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpagereveal"

///|
fn window_onpagereveal_ffi(obj : JsValue) -> EventHandler {
  window_onpagereveal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpagereveal_ffi(
  obj : JsValue,
  onpagereveal : JsValue,
) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

///|
extern "js" fn window_onpageshow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageshow"

///|
fn window_onpageshow_ffi(obj : JsValue) -> EventHandler {
  window_onpageshow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpageshow_ffi(
  obj : JsValue,
  onpageshow : JsValue,
) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

///|
extern "js" fn window_onpageswap_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpageswap"

///|
fn window_onpageswap_ffi(obj : JsValue) -> EventHandler {
  window_onpageswap_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpageswap_ffi(
  obj : JsValue,
  onpageswap : JsValue,
) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

///|
extern "js" fn window_onpopstate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpopstate"

///|
fn window_onpopstate_ffi(obj : JsValue) -> EventHandler {
  window_onpopstate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onpopstate_ffi(
  obj : JsValue,
  onpopstate : JsValue,
) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

///|
extern "js" fn window_onrejectionhandled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onrejectionhandled"

///|
fn window_onrejectionhandled_ffi(obj : JsValue) -> EventHandler {
  window_onrejectionhandled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

///|
extern "js" fn window_onstorage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstorage"

///|
fn window_onstorage_ffi(obj : JsValue) -> EventHandler {
  window_onstorage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onstorage_ffi(
  obj : JsValue,
  onstorage : JsValue,
) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

///|
extern "js" fn window_onunhandledrejection_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunhandledrejection"

///|
fn window_onunhandledrejection_ffi(obj : JsValue) -> EventHandler {
  window_onunhandledrejection_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

///|
extern "js" fn window_onunload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onunload"

///|
fn window_onunload_ffi(obj : JsValue) -> EventHandler {
  window_onunload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_set_onunload_ffi(
  obj : JsValue,
  onunload : JsValue,
) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

///|
extern "js" fn window_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn window_origin_ffi(obj : JsValue) -> String {
  window_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_is_secure_context_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isSecureContext"

///|
fn window_is_secure_context_ffi(obj : JsValue) -> Bool {
  window_is_secure_context_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_cross_origin_isolated_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.crossOriginIsolated"

///|
fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool {
  window_cross_origin_isolated_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "(obj, e) => obj.reportError(e)"

///|
extern "js" fn window_btoa_ffi_js(obj : JsValue, data : JsValue) -> JsValue = "(obj, data) => obj.btoa(data)"

///|
fn window_btoa_ffi(obj : JsValue, data : JsValue) -> String {
  window_btoa_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn window_atob_ffi_js(obj : JsValue, data : JsValue) -> JsValue = "(obj, data) => obj.atob(data)"

///|
fn window_atob_ffi(obj : JsValue, data : JsValue) -> String {
  window_atob_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn window_set_timeout_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setTimeout(handler, timeout, ..._arguments)"

///|
fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  window_set_timeout_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
extern "js" fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearTimeout(id)"

///|
extern "js" fn window_set_interval_ffi_js(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "(obj, handler, timeout, _arguments) => obj.setInterval(handler, timeout, ..._arguments)"

///|
fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int {
  window_set_interval_ffi_js(obj, handler, timeout, arguments).unsafe_cast()
}

///|
extern "js" fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => obj.clearInterval(id)"

///|
extern "js" fn window_queue_microtask_ffi(
  obj : JsValue,
  callback : JsValue,
) -> Unit = "(obj, callback) => obj.queueMicrotask(callback)"

///|
extern "js" fn window_create_image_bitmap_ffi_js(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "(obj, image, options) => obj.createImageBitmap(image, options)"

///|
fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsPromise[ImageBitmap] {
  window_create_image_bitmap_ffi_js(obj, image, options).unsafe_cast()
}

///|
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
extern "js" fn window_structured_clone_ffi_js(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "(obj, value, options) => obj.structuredClone(value, options)"

///|
fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue {
  window_structured_clone_ffi_js(obj, value, options).unsafe_cast()
}

///|
extern "js" fn window_fetch_ffi_js(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "(obj, input, init) => obj.fetch(input, init)"

///|
fn window_fetch_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsPromise[Response] {
  window_fetch_ffi_js(obj, input, init).unsafe_cast()
}

///|
extern "js" fn window_performance_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.performance"

///|
fn window_performance_ffi(obj : JsValue) -> Performance {
  window_performance_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_trusted_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.trustedTypes"

///|
fn window_trusted_types_ffi(obj : JsValue) -> TrustedTypePolicyFactory {
  window_trusted_types_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_request_animation_frame_ffi_js(
  obj : JsValue,
  callback : JsValue,
) -> JsValue = "(obj, callback) => obj.requestAnimationFrame(callback)"

///|
fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt {
  window_request_animation_frame_ffi_js(obj, callback).unsafe_cast()
}

///|
extern "js" fn window_cancel_animation_frame_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(handle)"

///|
extern "js" fn window_session_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sessionStorage"

///|
fn window_session_storage_ffi(obj : JsValue) -> Storage {
  window_session_storage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn window_local_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.localStorage"

///|
fn window_local_storage_ffi(obj : JsValue) -> Storage {
  window_local_storage_ffi_js(obj).unsafe_cast()
}
