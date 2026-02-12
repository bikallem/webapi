///|
fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "JsValue" "isUndefined"

///|
fn window_event_ffi(obj : JsValue) -> WindowEvent = "webapi_Window" "get_event"

///|
fn window_window_ffi(obj : JsValue) -> WindowProxy = "webapi_Window" "get_window"

///|
fn window_self_ffi(obj : JsValue) -> WindowProxy = "webapi_Window" "get_self"

///|
fn window_document_ffi(obj : JsValue) -> Document = "webapi_Window" "get_document"

///|
fn window_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_name"

///|
fn window_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_name_ffi_wasm(obj))
}

///|
fn window_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_Window" "set_name"

///|
fn window_location_ffi(obj : JsValue) -> Location = "webapi_Window" "get_location"

///|
fn window_history_ffi(obj : JsValue) -> History = "webapi_Window" "get_history"

///|
fn window_navigation_ffi(obj : JsValue) -> Navigation = "webapi_Window" "get_navigation"

///|
fn window_custom_elements_ffi(obj : JsValue) -> CustomElementRegistry = "webapi_Window" "get_customElements"

///|
fn window_locationbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_locationbar"

///|
fn window_menubar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_menubar"

///|
fn window_personalbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_personalbar"

///|
fn window_scrollbars_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_scrollbars"

///|
fn window_statusbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_statusbar"

///|
fn window_toolbar_ffi(obj : JsValue) -> BarProp = "webapi_Window" "get_toolbar"

///|
fn window_status_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_status"

///|
fn window_status_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_status_ffi_wasm(obj))
}

///|
fn window_set_status_ffi(obj : JsValue, status : JsValue) -> Unit = "webapi_Window" "set_status"

///|
fn window_close_ffi(obj : JsValue) -> Unit = "webapi_Window" "close"

///|
fn window_closed_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_closed"

///|
fn window_stop_ffi(obj : JsValue) -> Unit = "webapi_Window" "stop"

///|
fn window_focus_ffi(obj : JsValue) -> Unit = "webapi_Window" "focus"

///|
fn window_blur_ffi(obj : JsValue) -> Unit = "webapi_Window" "blur"

///|
fn window_frames_ffi(obj : JsValue) -> WindowProxy = "webapi_Window" "get_frames"

///|
fn window_length_ffi(obj : JsValue) -> UInt = "webapi_Window" "get_length"

///|
fn window_top_ffi(obj : JsValue) -> WindowProxy = "webapi_Window" "get_top"

///|
fn window_opener_ffi(obj : JsValue) -> JsValue = "webapi_Window" "get_opener"

///|
fn window_set_opener_ffi(obj : JsValue, opener : JsValue) -> Unit = "webapi_Window" "set_opener"

///|
fn window_parent_ffi(obj : JsValue) -> WindowProxy = "webapi_Window" "get_parent"

///|
fn window_frame_element_ffi(obj : JsValue) -> Element = "webapi_Window" "get_frameElement"

///|
fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Window" "open"

///|
fn window_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Window" "get"

///|
fn window_navigator_ffi(obj : JsValue) -> Navigator = "webapi_Window" "get_navigator"

///|
fn window_client_information_ffi(obj : JsValue) -> Navigator = "webapi_Window" "get_clientInformation"

///|
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_originAgentCluster"

///|
fn window_alert_ffi(obj : JsValue) -> Unit = "webapi_Window" "alert"

///|
fn window_alert_2_ffi(obj : JsValue, message : JsValue) -> Unit = "webapi_Window" "alert_2"

///|
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> Bool = "webapi_Window" "confirm"

///|
fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "webapi_Window" "prompt"

///|
fn window_print_ffi(obj : JsValue) -> Unit = "webapi_Window" "print"

///|
fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
fn window_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Window" "postMessage_2"

///|
fn window_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "captureEvents"

///|
fn window_release_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "releaseEvents"

///|
fn window_external_ffi(obj : JsValue) -> External = "webapi_Window" "get_external"

///|
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> CSSStyleProperties = "webapi_Window" "getComputedStyle"

///|
fn window_fetch_later_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> FetchLaterResult = "webapi_Window" "fetchLater"

///|
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> MediaQueryList = "webapi_Window" "matchMedia"

///|
fn window_screen_ffi(obj : JsValue) -> Screen = "webapi_Window" "get_screen"

///|
fn window_visual_viewport_ffi(obj : JsValue) -> VisualViewport = "webapi_Window" "get_visualViewport"

///|
fn window_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveTo"

///|
fn window_move_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveBy"

///|
fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "webapi_Window" "resizeTo"

///|
fn window_resize_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "resizeBy"

///|
fn window_inner_width_ffi(obj : JsValue) -> Int = "webapi_Window" "get_innerWidth"

///|
fn window_inner_height_ffi(obj : JsValue) -> Int = "webapi_Window" "get_innerHeight"

///|
fn window_scroll_x_ffi(obj : JsValue) -> Double = "webapi_Window" "get_scrollX"

///|
fn window_page_x_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "get_pageXOffset"

///|
fn window_scroll_y_ffi(obj : JsValue) -> Double = "webapi_Window" "get_scrollY"

///|
fn window_page_y_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "get_pageYOffset"

///|
fn window_scroll_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
fn window_scroll_ffi(
  obj : JsValue,
  options : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn window_scroll_2_ffi_wasm(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scroll_2"

///|
fn window_scroll_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_2_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
fn window_scroll_to_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
fn window_scroll_to_ffi(
  obj : JsValue,
  options : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_to_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn window_scroll_to_2_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Window" "scrollTo_2"

///|
fn window_scroll_to_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_to_2_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
fn window_scroll_by_ffi_wasm(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
fn window_scroll_by_ffi(
  obj : JsValue,
  options : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_by_ffi_wasm(obj, options).unsafe_cast()
}

///|
fn window_scroll_by_2_ffi_wasm(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_Window" "scrollBy_2"

///|
fn window_scroll_by_2_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> @js_async.Promise[Unit] {
  window_scroll_by_2_ffi_wasm(obj, x, y).unsafe_cast()
}

///|
fn window_screen_x_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenX"

///|
fn window_screen_left_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenLeft"

///|
fn window_screen_y_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenY"

///|
fn window_screen_top_ffi(obj : JsValue) -> Int = "webapi_Window" "get_screenTop"

///|
fn window_outer_width_ffi(obj : JsValue) -> Int = "webapi_Window" "get_outerWidth"

///|
fn window_outer_height_ffi(obj : JsValue) -> Int = "webapi_Window" "get_outerHeight"

///|
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double = "webapi_Window" "get_devicePixelRatio"

///|
fn window_get_selection_ffi(obj : JsValue) -> JsValue = "webapi_Window" "getSelection"

///|
fn window_request_idle_callback_ffi(
  obj : JsValue,
  callback : JsValue,
  options : JsValue,
) -> UInt = "webapi_Window" "requestIdleCallback"

///|
fn window_cancel_idle_callback_ffi(obj : JsValue, handle : JsValue) -> Unit = "webapi_Window" "cancelIdleCallback"

///|
fn window_onabort_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onabort"

///|
fn window_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_Window" "set_onabort"

///|
fn window_onauxclick_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onauxclick"

///|
fn window_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_Window" "set_onauxclick"

///|
fn window_onbeforeinput_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onbeforeinput"

///|
fn window_set_onbeforeinput_ffi(obj : JsValue, onbeforeinput : JsValue) -> Unit = "webapi_Window" "set_onbeforeinput"

///|
fn window_onbeforematch_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onbeforematch"

///|
fn window_set_onbeforematch_ffi(obj : JsValue, onbeforematch : JsValue) -> Unit = "webapi_Window" "set_onbeforematch"

///|
fn window_onbeforetoggle_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onbeforetoggle"

///|
fn window_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_Window" "set_onbeforetoggle"

///|
fn window_onblur_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onblur"

///|
fn window_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_Window" "set_onblur"

///|
fn window_oncancel_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncancel"

///|
fn window_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_Window" "set_oncancel"

///|
fn window_oncanplay_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncanplay"

///|
fn window_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_Window" "set_oncanplay"

///|
fn window_oncanplaythrough_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncanplaythrough"

///|
fn window_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_Window" "set_oncanplaythrough"

///|
fn window_onchange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onchange"

///|
fn window_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_Window" "set_onchange"

///|
fn window_onclick_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onclick"

///|
fn window_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_Window" "set_onclick"

///|
fn window_onclose_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onclose"

///|
fn window_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_Window" "set_onclose"

///|
fn window_oncommand_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncommand"

///|
fn window_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_Window" "set_oncommand"

///|
fn window_oncontextlost_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncontextlost"

///|
fn window_set_oncontextlost_ffi(obj : JsValue, oncontextlost : JsValue) -> Unit = "webapi_Window" "set_oncontextlost"

///|
fn window_oncontextmenu_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncontextmenu"

///|
fn window_set_oncontextmenu_ffi(obj : JsValue, oncontextmenu : JsValue) -> Unit = "webapi_Window" "set_oncontextmenu"

///|
fn window_oncontextrestored_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncontextrestored"

///|
fn window_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_Window" "set_oncontextrestored"

///|
fn window_oncopy_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncopy"

///|
fn window_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_Window" "set_oncopy"

///|
fn window_oncuechange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncuechange"

///|
fn window_set_oncuechange_ffi(obj : JsValue, oncuechange : JsValue) -> Unit = "webapi_Window" "set_oncuechange"

///|
fn window_oncut_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oncut"

///|
fn window_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_Window" "set_oncut"

///|
fn window_ondblclick_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondblclick"

///|
fn window_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_Window" "set_ondblclick"

///|
fn window_ondrag_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondrag"

///|
fn window_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_Window" "set_ondrag"

///|
fn window_ondragend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondragend"

///|
fn window_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_Window" "set_ondragend"

///|
fn window_ondragenter_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondragenter"

///|
fn window_set_ondragenter_ffi(obj : JsValue, ondragenter : JsValue) -> Unit = "webapi_Window" "set_ondragenter"

///|
fn window_ondragleave_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondragleave"

///|
fn window_set_ondragleave_ffi(obj : JsValue, ondragleave : JsValue) -> Unit = "webapi_Window" "set_ondragleave"

///|
fn window_ondragover_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondragover"

///|
fn window_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_Window" "set_ondragover"

///|
fn window_ondragstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondragstart"

///|
fn window_set_ondragstart_ffi(obj : JsValue, ondragstart : JsValue) -> Unit = "webapi_Window" "set_ondragstart"

///|
fn window_ondrop_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondrop"

///|
fn window_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_Window" "set_ondrop"

///|
fn window_ondurationchange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ondurationchange"

///|
fn window_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_Window" "set_ondurationchange"

///|
fn window_onemptied_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onemptied"

///|
fn window_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_Window" "set_onemptied"

///|
fn window_onended_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onended"

///|
fn window_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_Window" "set_onended"

///|
fn window_onerror_ffi(obj : JsValue) -> OnErrorEventHandlerNonNull = "webapi_Window" "get_onerror"

///|
fn window_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_Window" "set_onerror"

///|
fn window_onfocus_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onfocus"

///|
fn window_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_Window" "set_onfocus"

///|
fn window_onformdata_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onformdata"

///|
fn window_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_Window" "set_onformdata"

///|
fn window_oninput_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oninput"

///|
fn window_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_Window" "set_oninput"

///|
fn window_oninvalid_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_oninvalid"

///|
fn window_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_Window" "set_oninvalid"

///|
fn window_onkeydown_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onkeydown"

///|
fn window_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_Window" "set_onkeydown"

///|
fn window_onkeypress_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onkeypress"

///|
fn window_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_Window" "set_onkeypress"

///|
fn window_onkeyup_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onkeyup"

///|
fn window_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_Window" "set_onkeyup"

///|
fn window_onload_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onload"

///|
fn window_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_Window" "set_onload"

///|
fn window_onloadeddata_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onloadeddata"

///|
fn window_set_onloadeddata_ffi(obj : JsValue, onloadeddata : JsValue) -> Unit = "webapi_Window" "set_onloadeddata"

///|
fn window_onloadedmetadata_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onloadedmetadata"

///|
fn window_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_Window" "set_onloadedmetadata"

///|
fn window_onloadstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onloadstart"

///|
fn window_set_onloadstart_ffi(obj : JsValue, onloadstart : JsValue) -> Unit = "webapi_Window" "set_onloadstart"

///|
fn window_onmousedown_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmousedown"

///|
fn window_set_onmousedown_ffi(obj : JsValue, onmousedown : JsValue) -> Unit = "webapi_Window" "set_onmousedown"

///|
fn window_onmouseenter_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmouseenter"

///|
fn window_set_onmouseenter_ffi(obj : JsValue, onmouseenter : JsValue) -> Unit = "webapi_Window" "set_onmouseenter"

///|
fn window_onmouseleave_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmouseleave"

///|
fn window_set_onmouseleave_ffi(obj : JsValue, onmouseleave : JsValue) -> Unit = "webapi_Window" "set_onmouseleave"

///|
fn window_onmousemove_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmousemove"

///|
fn window_set_onmousemove_ffi(obj : JsValue, onmousemove : JsValue) -> Unit = "webapi_Window" "set_onmousemove"

///|
fn window_onmouseout_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmouseout"

///|
fn window_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_Window" "set_onmouseout"

///|
fn window_onmouseover_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmouseover"

///|
fn window_set_onmouseover_ffi(obj : JsValue, onmouseover : JsValue) -> Unit = "webapi_Window" "set_onmouseover"

///|
fn window_onmouseup_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmouseup"

///|
fn window_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_Window" "set_onmouseup"

///|
fn window_onpaste_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpaste"

///|
fn window_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_Window" "set_onpaste"

///|
fn window_onpause_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpause"

///|
fn window_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_Window" "set_onpause"

///|
fn window_onplay_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onplay"

///|
fn window_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_Window" "set_onplay"

///|
fn window_onplaying_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onplaying"

///|
fn window_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_Window" "set_onplaying"

///|
fn window_onprogress_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onprogress"

///|
fn window_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_Window" "set_onprogress"

///|
fn window_onratechange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onratechange"

///|
fn window_set_onratechange_ffi(obj : JsValue, onratechange : JsValue) -> Unit = "webapi_Window" "set_onratechange"

///|
fn window_onreset_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onreset"

///|
fn window_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_Window" "set_onreset"

///|
fn window_onresize_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onresize"

///|
fn window_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_Window" "set_onresize"

///|
fn window_onscroll_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onscroll"

///|
fn window_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_Window" "set_onscroll"

///|
fn window_onscrollend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onscrollend"

///|
fn window_set_onscrollend_ffi(obj : JsValue, onscrollend : JsValue) -> Unit = "webapi_Window" "set_onscrollend"

///|
fn window_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onsecuritypolicyviolation"

///|
fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_Window" "set_onsecuritypolicyviolation"

///|
fn window_onseeked_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onseeked"

///|
fn window_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_Window" "set_onseeked"

///|
fn window_onseeking_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onseeking"

///|
fn window_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_Window" "set_onseeking"

///|
fn window_onselect_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onselect"

///|
fn window_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_Window" "set_onselect"

///|
fn window_onslotchange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onslotchange"

///|
fn window_set_onslotchange_ffi(obj : JsValue, onslotchange : JsValue) -> Unit = "webapi_Window" "set_onslotchange"

///|
fn window_onstalled_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onstalled"

///|
fn window_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_Window" "set_onstalled"

///|
fn window_onsubmit_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onsubmit"

///|
fn window_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_Window" "set_onsubmit"

///|
fn window_onsuspend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onsuspend"

///|
fn window_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_Window" "set_onsuspend"

///|
fn window_ontimeupdate_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontimeupdate"

///|
fn window_set_ontimeupdate_ffi(obj : JsValue, ontimeupdate : JsValue) -> Unit = "webapi_Window" "set_ontimeupdate"

///|
fn window_ontoggle_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontoggle"

///|
fn window_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_Window" "set_ontoggle"

///|
fn window_onvolumechange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onvolumechange"

///|
fn window_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_Window" "set_onvolumechange"

///|
fn window_onwaiting_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwaiting"

///|
fn window_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_Window" "set_onwaiting"

///|
fn window_onwebkitanimationend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwebkitanimationend"

///|
fn window_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationend"

///|
fn window_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwebkitanimationiteration"

///|
fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationiteration"

///|
fn window_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwebkitanimationstart"

///|
fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationstart"

///|
fn window_onwebkittransitionend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwebkittransitionend"

///|
fn window_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_Window" "set_onwebkittransitionend"

///|
fn window_onwheel_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onwheel"

///|
fn window_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_Window" "set_onwheel"

///|
fn window_ontouchstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontouchstart"

///|
fn window_set_ontouchstart_ffi(obj : JsValue, ontouchstart : JsValue) -> Unit = "webapi_Window" "set_ontouchstart"

///|
fn window_ontouchend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontouchend"

///|
fn window_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_Window" "set_ontouchend"

///|
fn window_ontouchmove_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontouchmove"

///|
fn window_set_ontouchmove_ffi(obj : JsValue, ontouchmove : JsValue) -> Unit = "webapi_Window" "set_ontouchmove"

///|
fn window_ontouchcancel_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ontouchcancel"

///|
fn window_set_ontouchcancel_ffi(obj : JsValue, ontouchcancel : JsValue) -> Unit = "webapi_Window" "set_ontouchcancel"

///|
fn window_onpointerover_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerover"

///|
fn window_set_onpointerover_ffi(obj : JsValue, onpointerover : JsValue) -> Unit = "webapi_Window" "set_onpointerover"

///|
fn window_onpointerenter_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerenter"

///|
fn window_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_Window" "set_onpointerenter"

///|
fn window_onpointerdown_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerdown"

///|
fn window_set_onpointerdown_ffi(obj : JsValue, onpointerdown : JsValue) -> Unit = "webapi_Window" "set_onpointerdown"

///|
fn window_onpointermove_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointermove"

///|
fn window_set_onpointermove_ffi(obj : JsValue, onpointermove : JsValue) -> Unit = "webapi_Window" "set_onpointermove"

///|
fn window_onpointerrawupdate_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerrawupdate"

///|
fn window_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_Window" "set_onpointerrawupdate"

///|
fn window_onpointerup_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerup"

///|
fn window_set_onpointerup_ffi(obj : JsValue, onpointerup : JsValue) -> Unit = "webapi_Window" "set_onpointerup"

///|
fn window_onpointercancel_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointercancel"

///|
fn window_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_Window" "set_onpointercancel"

///|
fn window_onpointerout_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerout"

///|
fn window_set_onpointerout_ffi(obj : JsValue, onpointerout : JsValue) -> Unit = "webapi_Window" "set_onpointerout"

///|
fn window_onpointerleave_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpointerleave"

///|
fn window_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_Window" "set_onpointerleave"

///|
fn window_ongotpointercapture_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ongotpointercapture"

///|
fn window_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_Window" "set_ongotpointercapture"

///|
fn window_onlostpointercapture_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onlostpointercapture"

///|
fn window_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_Window" "set_onlostpointercapture"

///|
fn window_onselectstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onselectstart"

///|
fn window_set_onselectstart_ffi(obj : JsValue, onselectstart : JsValue) -> Unit = "webapi_Window" "set_onselectstart"

///|
fn window_onselectionchange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onselectionchange"

///|
fn window_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_Window" "set_onselectionchange"

///|
fn window_onafterprint_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onafterprint"

///|
fn window_set_onafterprint_ffi(obj : JsValue, onafterprint : JsValue) -> Unit = "webapi_Window" "set_onafterprint"

///|
fn window_onbeforeprint_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onbeforeprint"

///|
fn window_set_onbeforeprint_ffi(obj : JsValue, onbeforeprint : JsValue) -> Unit = "webapi_Window" "set_onbeforeprint"

///|
fn window_onbeforeunload_ffi(
  obj : JsValue,
) -> OnBeforeUnloadEventHandlerNonNull = "webapi_Window" "get_onbeforeunload"

///|
fn window_set_onbeforeunload_ffi(
  obj : JsValue,
  onbeforeunload : JsValue,
) -> Unit = "webapi_Window" "set_onbeforeunload"

///|
fn window_onhashchange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onhashchange"

///|
fn window_set_onhashchange_ffi(obj : JsValue, onhashchange : JsValue) -> Unit = "webapi_Window" "set_onhashchange"

///|
fn window_onlanguagechange_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onlanguagechange"

///|
fn window_set_onlanguagechange_ffi(
  obj : JsValue,
  onlanguagechange : JsValue,
) -> Unit = "webapi_Window" "set_onlanguagechange"

///|
fn window_onmessage_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmessage"

///|
fn window_set_onmessage_ffi(obj : JsValue, onmessage : JsValue) -> Unit = "webapi_Window" "set_onmessage"

///|
fn window_onmessageerror_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onmessageerror"

///|
fn window_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_Window" "set_onmessageerror"

///|
fn window_onoffline_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onoffline"

///|
fn window_set_onoffline_ffi(obj : JsValue, onoffline : JsValue) -> Unit = "webapi_Window" "set_onoffline"

///|
fn window_ononline_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_ononline"

///|
fn window_set_ononline_ffi(obj : JsValue, ononline : JsValue) -> Unit = "webapi_Window" "set_ononline"

///|
fn window_onpagehide_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpagehide"

///|
fn window_set_onpagehide_ffi(obj : JsValue, onpagehide : JsValue) -> Unit = "webapi_Window" "set_onpagehide"

///|
fn window_onpagereveal_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpagereveal"

///|
fn window_set_onpagereveal_ffi(obj : JsValue, onpagereveal : JsValue) -> Unit = "webapi_Window" "set_onpagereveal"

///|
fn window_onpageshow_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpageshow"

///|
fn window_set_onpageshow_ffi(obj : JsValue, onpageshow : JsValue) -> Unit = "webapi_Window" "set_onpageshow"

///|
fn window_onpageswap_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpageswap"

///|
fn window_set_onpageswap_ffi(obj : JsValue, onpageswap : JsValue) -> Unit = "webapi_Window" "set_onpageswap"

///|
fn window_onpopstate_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onpopstate"

///|
fn window_set_onpopstate_ffi(obj : JsValue, onpopstate : JsValue) -> Unit = "webapi_Window" "set_onpopstate"

///|
fn window_onrejectionhandled_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onrejectionhandled"

///|
fn window_set_onrejectionhandled_ffi(
  obj : JsValue,
  onrejectionhandled : JsValue,
) -> Unit = "webapi_Window" "set_onrejectionhandled"

///|
fn window_onstorage_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onstorage"

///|
fn window_set_onstorage_ffi(obj : JsValue, onstorage : JsValue) -> Unit = "webapi_Window" "set_onstorage"

///|
fn window_onunhandledrejection_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onunhandledrejection"

///|
fn window_set_onunhandledrejection_ffi(
  obj : JsValue,
  onunhandledrejection : JsValue,
) -> Unit = "webapi_Window" "set_onunhandledrejection"

///|
fn window_onunload_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Window" "get_onunload"

///|
fn window_set_onunload_ffi(obj : JsValue, onunload : JsValue) -> Unit = "webapi_Window" "set_onunload"

///|
fn window_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Window" "get_origin"

///|
fn window_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(window_origin_ffi_wasm(obj))
}

///|
fn window_is_secure_context_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_isSecureContext"

///|
fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool = "webapi_Window" "get_crossOriginIsolated"

///|
fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "webapi_Window" "reportError"

///|
fn window_btoa_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "btoa"

///|
fn window_btoa_ffi(obj : JsValue, data : JsValue) -> String {
  jsvalue_to_string(window_btoa_ffi_wasm(obj, data))
}

///|
fn window_atob_ffi_wasm(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "atob"

///|
fn window_atob_ffi(obj : JsValue, data : JsValue) -> String {
  jsvalue_to_string(window_atob_ffi_wasm(obj, data))
}

///|
fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "webapi_Window" "setTimeout"

///|
fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearTimeout"

///|
fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> Int = "webapi_Window" "setInterval"

///|
fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearInterval"

///|
fn window_queue_microtask_ffi(obj : JsValue, callback : JsValue) -> Unit = "webapi_Window" "queueMicrotask"

///|
fn window_create_image_bitmap_ffi_wasm(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "createImageBitmap"

///|
fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> @js_async.Promise[ImageBitmap] {
  window_create_image_bitmap_ffi_wasm(obj, image, options).unsafe_cast()
}

///|
fn window_create_image_bitmap_2_ffi_wasm(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "createImageBitmap_2"

///|
fn window_create_image_bitmap_2_ffi(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> @js_async.Promise[ImageBitmap] {
  window_create_image_bitmap_2_ffi_wasm(obj, image, sx, sy, sw, sh, options).unsafe_cast()
}

///|
fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "structuredClone"

///|
fn window_fetch_ffi_wasm(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> JsValue = "webapi_Window" "fetch"

///|
fn window_fetch_ffi(
  obj : JsValue,
  input : JsValue,
  init : JsValue,
) -> @js_async.Promise[Response] {
  window_fetch_ffi_wasm(obj, input, init).unsafe_cast()
}

///|
fn window_performance_ffi(obj : JsValue) -> Performance = "webapi_Window" "get_performance"

///|
fn window_trusted_types_ffi(obj : JsValue) -> TrustedTypePolicyFactory = "webapi_Window" "get_trustedTypes"

///|
fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt = "webapi_Window" "requestAnimationFrame"

///|
fn window_cancel_animation_frame_ffi(obj : JsValue, handle : JsValue) -> Unit = "webapi_Window" "cancelAnimationFrame"

///|
fn window_session_storage_ffi(obj : JsValue) -> Storage = "webapi_Window" "get_sessionStorage"

///|
fn window_local_storage_ffi(obj : JsValue) -> Storage = "webapi_Window" "get_localStorage"
