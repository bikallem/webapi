extern "js" fn window_event_is_undefined_ffi(obj : WindowEvent) -> Bool = "(obj) => obj === undefined"

extern "js" fn window_event_ffi(obj: JsValue) -> JsValue = "(obj) => obj.event"

extern "js" fn window_window_ffi(obj: JsValue) -> JsValue = "(obj) => obj.window"

extern "js" fn window_self_ffi(obj: JsValue) -> JsValue = "(obj) => obj.self"

extern "js" fn window_document_ffi(obj: JsValue) -> JsValue = "(obj) => obj.document"

extern "js" fn window_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn window_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn window_location_ffi(obj: JsValue) -> JsValue = "(obj) => obj.location"

extern "js" fn window_history_ffi(obj: JsValue) -> JsValue = "(obj) => obj.history"

extern "js" fn window_navigation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigation"

extern "js" fn window_custom_elements_ffi(obj: JsValue) -> JsValue = "(obj) => obj.customElements"

extern "js" fn window_locationbar_ffi(obj: JsValue) -> JsValue = "(obj) => obj.locationbar"

extern "js" fn window_menubar_ffi(obj: JsValue) -> JsValue = "(obj) => obj.menubar"

extern "js" fn window_personalbar_ffi(obj: JsValue) -> JsValue = "(obj) => obj.personalbar"

extern "js" fn window_scrollbars_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollbars"

extern "js" fn window_statusbar_ffi(obj: JsValue) -> JsValue = "(obj) => obj.statusbar"

extern "js" fn window_toolbar_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toolbar"

extern "js" fn window_status_ffi(obj: JsValue) -> JsValue = "(obj) => obj.status"

extern "js" fn window_set_status_ffi(obj: JsValue, status: JsValue) -> Unit = "(obj, status) => { obj.status = status; }"

extern "js" fn window_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn window_closed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.closed"

extern "js" fn window_stop_ffi(obj: JsValue) -> Unit = "(obj) => obj.stop()"

extern "js" fn window_focus_ffi(obj: JsValue) -> Unit = "(obj) => obj.focus()"

extern "js" fn window_blur_ffi(obj: JsValue) -> Unit = "(obj) => obj.blur()"

extern "js" fn window_frames_ffi(obj: JsValue) -> JsValue = "(obj) => obj.frames"

extern "js" fn window_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn window_top_ffi(obj: JsValue) -> JsValue = "(obj) => obj.top"

extern "js" fn window_opener_ffi(obj: JsValue) -> JsValue = "(obj) => obj.opener"

extern "js" fn window_set_opener_ffi(obj: JsValue, opener: JsValue) -> Unit = "(obj, opener) => { obj.opener = opener; }"

extern "js" fn window_parent_ffi(obj: JsValue) -> JsValue = "(obj) => obj.parent"

extern "js" fn window_frame_element_ffi(obj: JsValue) -> JsValue = "(obj) => obj.frameElement"

extern "js" fn window_open_ffi(obj: JsValue, url: JsValue, target: JsValue, features: JsValue) -> JsValue = "(obj, url, target, features) => obj.open(url, target, features)"

extern "js" fn window_navigator_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigator"

extern "js" fn window_client_information_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clientInformation"

extern "js" fn window_origin_agent_cluster_ffi(obj: JsValue) -> JsValue = "(obj) => obj.originAgentCluster"

extern "js" fn window_alert_ffi(obj: JsValue) -> Unit = "(obj) => obj.alert()"

extern "js" fn window_alert_2_ffi(obj: JsValue, message: JsValue) -> Unit = "(obj, message) => obj.alert_2(message)"

extern "js" fn window_confirm_ffi(obj: JsValue, message: JsValue) -> JsValue = "(obj, message) => obj.confirm(message)"

extern "js" fn window_prompt_ffi(obj: JsValue, message: JsValue, default: JsValue) -> JsValue = "(obj, message, default) => obj.prompt(message, default)"

extern "js" fn window_print_ffi(obj: JsValue) -> Unit = "(obj) => obj.print()"

extern "js" fn window_post_message_ffi(obj: JsValue, message: JsValue, target_origin: JsValue, transfer: JsValue) -> Unit = "(obj, message, target_origin, transfer) => obj.postMessage(message, target_origin, transfer)"

extern "js" fn window_post_message_2_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage_2(message, options)"

extern "js" fn window_capture_events_ffi(obj: JsValue) -> Unit = "(obj) => obj.captureEvents()"

extern "js" fn window_release_events_ffi(obj: JsValue) -> Unit = "(obj) => obj.releaseEvents()"

extern "js" fn window_external_ffi(obj: JsValue) -> JsValue = "(obj) => obj.external"

extern "js" fn window_get_computed_style_ffi(obj: JsValue, elt: JsValue, pseudo_elt: JsValue) -> JsValue = "(obj, elt, pseudo_elt) => obj.getComputedStyle(elt, pseudo_elt)"

extern "js" fn window_fetch_later_ffi(obj: JsValue, input: JsValue, init: JsValue) -> JsValue = "(obj, input, init) => obj.fetchLater(input, init)"

extern "js" fn window_match_media_ffi(obj: JsValue, query: JsValue) -> JsValue = "(obj, query) => obj.matchMedia(query)"

extern "js" fn window_screen_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screen"

extern "js" fn window_visual_viewport_ffi(obj: JsValue) -> JsValue = "(obj) => obj.visualViewport"

extern "js" fn window_move_to_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.moveTo(x, y)"

extern "js" fn window_move_by_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.moveBy(x, y)"

extern "js" fn window_resize_to_ffi(obj: JsValue, width: JsValue, height: JsValue) -> Unit = "(obj, width, height) => obj.resizeTo(width, height)"

extern "js" fn window_resize_by_ffi(obj: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, x, y) => obj.resizeBy(x, y)"

extern "js" fn window_inner_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.innerWidth"

extern "js" fn window_inner_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.innerHeight"

extern "js" fn window_scroll_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollX"

extern "js" fn window_page_x_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageXOffset"

extern "js" fn window_scroll_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scrollY"

extern "js" fn window_page_y_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pageYOffset"

extern "js" fn window_scroll_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scroll(options)"

extern "js" fn window_scroll_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scroll_2(x, y)"

extern "js" fn window_scroll_to_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scrollTo(options)"

extern "js" fn window_scroll_to_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scrollTo_2(x, y)"

extern "js" fn window_scroll_by_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.scrollBy(options)"

extern "js" fn window_scroll_by_2_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.scrollBy_2(x, y)"

extern "js" fn window_screen_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenX"

extern "js" fn window_screen_left_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenLeft"

extern "js" fn window_screen_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenY"

extern "js" fn window_screen_top_ffi(obj: JsValue) -> JsValue = "(obj) => obj.screenTop"

extern "js" fn window_outer_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.outerWidth"

extern "js" fn window_outer_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.outerHeight"

extern "js" fn window_device_pixel_ratio_ffi(obj: JsValue) -> JsValue = "(obj) => obj.devicePixelRatio"

extern "js" fn window_onabort_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onabort"

extern "js" fn window_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

extern "js" fn window_onauxclick_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onauxclick"

extern "js" fn window_set_onauxclick_ffi(obj: JsValue, onauxclick: JsValue) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

extern "js" fn window_onbeforeinput_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

extern "js" fn window_set_onbeforeinput_ffi(obj: JsValue, onbeforeinput: JsValue) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

extern "js" fn window_onbeforematch_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforematch"

extern "js" fn window_set_onbeforematch_ffi(obj: JsValue, onbeforematch: JsValue) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

extern "js" fn window_onbeforetoggle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

extern "js" fn window_set_onbeforetoggle_ffi(obj: JsValue, onbeforetoggle: JsValue) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

extern "js" fn window_onblur_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onblur"

extern "js" fn window_set_onblur_ffi(obj: JsValue, onblur: JsValue) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

extern "js" fn window_oncancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncancel"

extern "js" fn window_set_oncancel_ffi(obj: JsValue, oncancel: JsValue) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

extern "js" fn window_oncanplay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncanplay"

extern "js" fn window_set_oncanplay_ffi(obj: JsValue, oncanplay: JsValue) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

extern "js" fn window_oncanplaythrough_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

extern "js" fn window_set_oncanplaythrough_ffi(obj: JsValue, oncanplaythrough: JsValue) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

extern "js" fn window_onchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onchange"

extern "js" fn window_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

extern "js" fn window_onclick_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onclick"

extern "js" fn window_set_onclick_ffi(obj: JsValue, onclick: JsValue) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

extern "js" fn window_onclose_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onclose"

extern "js" fn window_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

extern "js" fn window_oncommand_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncommand"

extern "js" fn window_set_oncommand_ffi(obj: JsValue, oncommand: JsValue) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

extern "js" fn window_oncontextlost_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncontextlost"

extern "js" fn window_set_oncontextlost_ffi(obj: JsValue, oncontextlost: JsValue) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

extern "js" fn window_oncontextmenu_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

extern "js" fn window_set_oncontextmenu_ffi(obj: JsValue, oncontextmenu: JsValue) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

extern "js" fn window_oncontextrestored_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

extern "js" fn window_set_oncontextrestored_ffi(obj: JsValue, oncontextrestored: JsValue) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

extern "js" fn window_oncopy_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncopy"

extern "js" fn window_set_oncopy_ffi(obj: JsValue, oncopy: JsValue) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

extern "js" fn window_oncuechange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncuechange"

extern "js" fn window_set_oncuechange_ffi(obj: JsValue, oncuechange: JsValue) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

extern "js" fn window_oncut_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncut"

extern "js" fn window_set_oncut_ffi(obj: JsValue, oncut: JsValue) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

extern "js" fn window_ondblclick_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondblclick"

extern "js" fn window_set_ondblclick_ffi(obj: JsValue, ondblclick: JsValue) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

extern "js" fn window_ondrag_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondrag"

extern "js" fn window_set_ondrag_ffi(obj: JsValue, ondrag: JsValue) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

extern "js" fn window_ondragend_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondragend"

extern "js" fn window_set_ondragend_ffi(obj: JsValue, ondragend: JsValue) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

extern "js" fn window_ondragenter_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondragenter"

extern "js" fn window_set_ondragenter_ffi(obj: JsValue, ondragenter: JsValue) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

extern "js" fn window_ondragleave_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondragleave"

extern "js" fn window_set_ondragleave_ffi(obj: JsValue, ondragleave: JsValue) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

extern "js" fn window_ondragover_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondragover"

extern "js" fn window_set_ondragover_ffi(obj: JsValue, ondragover: JsValue) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

extern "js" fn window_ondragstart_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondragstart"

extern "js" fn window_set_ondragstart_ffi(obj: JsValue, ondragstart: JsValue) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

extern "js" fn window_ondrop_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondrop"

extern "js" fn window_set_ondrop_ffi(obj: JsValue, ondrop: JsValue) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

extern "js" fn window_ondurationchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondurationchange"

extern "js" fn window_set_ondurationchange_ffi(obj: JsValue, ondurationchange: JsValue) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

extern "js" fn window_onemptied_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onemptied"

extern "js" fn window_set_onemptied_ffi(obj: JsValue, onemptied: JsValue) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

extern "js" fn window_onended_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onended"

extern "js" fn window_set_onended_ffi(obj: JsValue, onended: JsValue) -> Unit = "(obj, onended) => { obj.onended = onended; }"

extern "js" fn window_onerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

extern "js" fn window_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

extern "js" fn window_onfocus_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onfocus"

extern "js" fn window_set_onfocus_ffi(obj: JsValue, onfocus: JsValue) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

extern "js" fn window_onformdata_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onformdata"

extern "js" fn window_set_onformdata_ffi(obj: JsValue, onformdata: JsValue) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

extern "js" fn window_oninput_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oninput"

extern "js" fn window_set_oninput_ffi(obj: JsValue, oninput: JsValue) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

extern "js" fn window_oninvalid_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oninvalid"

extern "js" fn window_set_oninvalid_ffi(obj: JsValue, oninvalid: JsValue) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

extern "js" fn window_onkeydown_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onkeydown"

extern "js" fn window_set_onkeydown_ffi(obj: JsValue, onkeydown: JsValue) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

extern "js" fn window_onkeypress_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onkeypress"

extern "js" fn window_set_onkeypress_ffi(obj: JsValue, onkeypress: JsValue) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

extern "js" fn window_onkeyup_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onkeyup"

extern "js" fn window_set_onkeyup_ffi(obj: JsValue, onkeyup: JsValue) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

extern "js" fn window_onload_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onload"

extern "js" fn window_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

extern "js" fn window_onloadeddata_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onloadeddata"

extern "js" fn window_set_onloadeddata_ffi(obj: JsValue, onloadeddata: JsValue) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

extern "js" fn window_onloadedmetadata_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

extern "js" fn window_set_onloadedmetadata_ffi(obj: JsValue, onloadedmetadata: JsValue) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

extern "js" fn window_onloadstart_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onloadstart"

extern "js" fn window_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

extern "js" fn window_onmousedown_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmousedown"

extern "js" fn window_set_onmousedown_ffi(obj: JsValue, onmousedown: JsValue) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

extern "js" fn window_onmouseenter_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmouseenter"

extern "js" fn window_set_onmouseenter_ffi(obj: JsValue, onmouseenter: JsValue) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

extern "js" fn window_onmouseleave_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmouseleave"

extern "js" fn window_set_onmouseleave_ffi(obj: JsValue, onmouseleave: JsValue) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

extern "js" fn window_onmousemove_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmousemove"

extern "js" fn window_set_onmousemove_ffi(obj: JsValue, onmousemove: JsValue) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

extern "js" fn window_onmouseout_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmouseout"

extern "js" fn window_set_onmouseout_ffi(obj: JsValue, onmouseout: JsValue) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

extern "js" fn window_onmouseover_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmouseover"

extern "js" fn window_set_onmouseover_ffi(obj: JsValue, onmouseover: JsValue) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

extern "js" fn window_onmouseup_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmouseup"

extern "js" fn window_set_onmouseup_ffi(obj: JsValue, onmouseup: JsValue) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

extern "js" fn window_onpaste_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpaste"

extern "js" fn window_set_onpaste_ffi(obj: JsValue, onpaste: JsValue) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

extern "js" fn window_onpause_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpause"

extern "js" fn window_set_onpause_ffi(obj: JsValue, onpause: JsValue) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

extern "js" fn window_onplay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onplay"

extern "js" fn window_set_onplay_ffi(obj: JsValue, onplay: JsValue) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

extern "js" fn window_onplaying_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onplaying"

extern "js" fn window_set_onplaying_ffi(obj: JsValue, onplaying: JsValue) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

extern "js" fn window_onprogress_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onprogress"

extern "js" fn window_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

extern "js" fn window_onratechange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onratechange"

extern "js" fn window_set_onratechange_ffi(obj: JsValue, onratechange: JsValue) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

extern "js" fn window_onreset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onreset"

extern "js" fn window_set_onreset_ffi(obj: JsValue, onreset: JsValue) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

extern "js" fn window_onresize_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onresize"

extern "js" fn window_set_onresize_ffi(obj: JsValue, onresize: JsValue) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

extern "js" fn window_onscroll_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onscroll"

extern "js" fn window_set_onscroll_ffi(obj: JsValue, onscroll: JsValue) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

extern "js" fn window_onscrollend_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onscrollend"

extern "js" fn window_set_onscrollend_ffi(obj: JsValue, onscrollend: JsValue) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

extern "js" fn window_onsecuritypolicyviolation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

extern "js" fn window_set_onsecuritypolicyviolation_ffi(obj: JsValue, onsecuritypolicyviolation: JsValue) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

extern "js" fn window_onseeked_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onseeked"

extern "js" fn window_set_onseeked_ffi(obj: JsValue, onseeked: JsValue) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

extern "js" fn window_onseeking_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onseeking"

extern "js" fn window_set_onseeking_ffi(obj: JsValue, onseeking: JsValue) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

extern "js" fn window_onselect_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onselect"

extern "js" fn window_set_onselect_ffi(obj: JsValue, onselect: JsValue) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

extern "js" fn window_onslotchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onslotchange"

extern "js" fn window_set_onslotchange_ffi(obj: JsValue, onslotchange: JsValue) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

extern "js" fn window_onstalled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onstalled"

extern "js" fn window_set_onstalled_ffi(obj: JsValue, onstalled: JsValue) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

extern "js" fn window_onsubmit_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onsubmit"

extern "js" fn window_set_onsubmit_ffi(obj: JsValue, onsubmit: JsValue) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

extern "js" fn window_onsuspend_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onsuspend"

extern "js" fn window_set_onsuspend_ffi(obj: JsValue, onsuspend: JsValue) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

extern "js" fn window_ontimeupdate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

extern "js" fn window_set_ontimeupdate_ffi(obj: JsValue, ontimeupdate: JsValue) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

extern "js" fn window_ontoggle_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ontoggle"

extern "js" fn window_set_ontoggle_ffi(obj: JsValue, ontoggle: JsValue) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

extern "js" fn window_onvolumechange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onvolumechange"

extern "js" fn window_set_onvolumechange_ffi(obj: JsValue, onvolumechange: JsValue) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

extern "js" fn window_onwaiting_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwaiting"

extern "js" fn window_set_onwaiting_ffi(obj: JsValue, onwaiting: JsValue) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

extern "js" fn window_onwebkitanimationend_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

extern "js" fn window_set_onwebkitanimationend_ffi(obj: JsValue, onwebkitanimationend: JsValue) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

extern "js" fn window_onwebkitanimationiteration_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

extern "js" fn window_set_onwebkitanimationiteration_ffi(obj: JsValue, onwebkitanimationiteration: JsValue) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

extern "js" fn window_onwebkitanimationstart_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwebkitanimationstart"

extern "js" fn window_set_onwebkitanimationstart_ffi(obj: JsValue, onwebkitanimationstart: JsValue) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

extern "js" fn window_onwebkittransitionend_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

extern "js" fn window_set_onwebkittransitionend_ffi(obj: JsValue, onwebkittransitionend: JsValue) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

extern "js" fn window_onwheel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onwheel"

extern "js" fn window_set_onwheel_ffi(obj: JsValue, onwheel: JsValue) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

extern "js" fn window_onafterprint_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onafterprint"

extern "js" fn window_set_onafterprint_ffi(obj: JsValue, onafterprint: JsValue) -> Unit = "(obj, onafterprint) => { obj.onafterprint = onafterprint; }"

extern "js" fn window_onbeforeprint_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeprint"

extern "js" fn window_set_onbeforeprint_ffi(obj: JsValue, onbeforeprint: JsValue) -> Unit = "(obj, onbeforeprint) => { obj.onbeforeprint = onbeforeprint; }"

extern "js" fn window_onbeforeunload_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onbeforeunload"

extern "js" fn window_set_onbeforeunload_ffi(obj: JsValue, onbeforeunload: JsValue) -> Unit = "(obj, onbeforeunload) => { obj.onbeforeunload = onbeforeunload; }"

extern "js" fn window_onhashchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onhashchange"

extern "js" fn window_set_onhashchange_ffi(obj: JsValue, onhashchange: JsValue) -> Unit = "(obj, onhashchange) => { obj.onhashchange = onhashchange; }"

extern "js" fn window_onlanguagechange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onlanguagechange"

extern "js" fn window_set_onlanguagechange_ffi(obj: JsValue, onlanguagechange: JsValue) -> Unit = "(obj, onlanguagechange) => { obj.onlanguagechange = onlanguagechange; }"

extern "js" fn window_onmessage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

extern "js" fn window_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn window_onmessageerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

extern "js" fn window_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

extern "js" fn window_onoffline_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onoffline"

extern "js" fn window_set_onoffline_ffi(obj: JsValue, onoffline: JsValue) -> Unit = "(obj, onoffline) => { obj.onoffline = onoffline; }"

extern "js" fn window_ononline_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ononline"

extern "js" fn window_set_ononline_ffi(obj: JsValue, ononline: JsValue) -> Unit = "(obj, ononline) => { obj.ononline = ononline; }"

extern "js" fn window_onpagehide_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpagehide"

extern "js" fn window_set_onpagehide_ffi(obj: JsValue, onpagehide: JsValue) -> Unit = "(obj, onpagehide) => { obj.onpagehide = onpagehide; }"

extern "js" fn window_onpagereveal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpagereveal"

extern "js" fn window_set_onpagereveal_ffi(obj: JsValue, onpagereveal: JsValue) -> Unit = "(obj, onpagereveal) => { obj.onpagereveal = onpagereveal; }"

extern "js" fn window_onpageshow_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpageshow"

extern "js" fn window_set_onpageshow_ffi(obj: JsValue, onpageshow: JsValue) -> Unit = "(obj, onpageshow) => { obj.onpageshow = onpageshow; }"

extern "js" fn window_onpageswap_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpageswap"

extern "js" fn window_set_onpageswap_ffi(obj: JsValue, onpageswap: JsValue) -> Unit = "(obj, onpageswap) => { obj.onpageswap = onpageswap; }"

extern "js" fn window_onpopstate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onpopstate"

extern "js" fn window_set_onpopstate_ffi(obj: JsValue, onpopstate: JsValue) -> Unit = "(obj, onpopstate) => { obj.onpopstate = onpopstate; }"

extern "js" fn window_onrejectionhandled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onrejectionhandled"

extern "js" fn window_set_onrejectionhandled_ffi(obj: JsValue, onrejectionhandled: JsValue) -> Unit = "(obj, onrejectionhandled) => { obj.onrejectionhandled = onrejectionhandled; }"

extern "js" fn window_onstorage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onstorage"

extern "js" fn window_set_onstorage_ffi(obj: JsValue, onstorage: JsValue) -> Unit = "(obj, onstorage) => { obj.onstorage = onstorage; }"

extern "js" fn window_onunhandledrejection_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onunhandledrejection"

extern "js" fn window_set_onunhandledrejection_ffi(obj: JsValue, onunhandledrejection: JsValue) -> Unit = "(obj, onunhandledrejection) => { obj.onunhandledrejection = onunhandledrejection; }"

extern "js" fn window_onunload_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onunload"

extern "js" fn window_set_onunload_ffi(obj: JsValue, onunload: JsValue) -> Unit = "(obj, onunload) => { obj.onunload = onunload; }"

extern "js" fn window_origin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.origin"

extern "js" fn window_is_secure_context_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isSecureContext"

extern "js" fn window_cross_origin_isolated_ffi(obj: JsValue) -> JsValue = "(obj) => obj.crossOriginIsolated"

extern "js" fn window_report_error_ffi(obj: JsValue, e: JsValue) -> Unit = "(obj, e) => obj.reportError(e)"

extern "js" fn window_btoa_ffi(obj: JsValue, data: JsValue) -> JsValue = "(obj, data) => obj.btoa(data)"

extern "js" fn window_atob_ffi(obj: JsValue, data: JsValue) -> JsValue = "(obj, data) => obj.atob(data)"

extern "js" fn window_set_timeout_ffi(obj: JsValue, handler: JsValue, timeout: JsValue, arguments: JsValue) -> JsValue = "(obj, handler, timeout, arguments) => obj.setTimeout(handler, timeout, arguments)"

extern "js" fn window_clear_timeout_ffi(obj: JsValue, id: JsValue) -> Unit = "(obj, id) => obj.clearTimeout(id)"

extern "js" fn window_set_interval_ffi(obj: JsValue, handler: JsValue, timeout: JsValue, arguments: JsValue) -> JsValue = "(obj, handler, timeout, arguments) => obj.setInterval(handler, timeout, arguments)"

extern "js" fn window_clear_interval_ffi(obj: JsValue, id: JsValue) -> Unit = "(obj, id) => obj.clearInterval(id)"

extern "js" fn window_queue_microtask_ffi(obj: JsValue, callback: JsValue) -> Unit = "(obj, callback) => obj.queueMicrotask(callback)"

extern "js" fn window_create_image_bitmap_ffi(obj: JsValue, image: JsValue, options: JsValue) -> JsValue = "(obj, image, options) => obj.createImageBitmap(image, options)"

extern "js" fn window_create_image_bitmap_2_ffi(obj: JsValue, image: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, options: JsValue) -> JsValue = "(obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap_2(image, sx, sy, sw, sh, options)"

extern "js" fn window_structured_clone_ffi(obj: JsValue, value: JsValue, options: JsValue) -> JsValue = "(obj, value, options) => obj.structuredClone(value, options)"

extern "js" fn window_fetch_ffi(obj: JsValue, input: JsValue, init: JsValue) -> JsValue = "(obj, input, init) => obj.fetch(input, init)"

extern "js" fn window_performance_ffi(obj: JsValue) -> JsValue = "(obj) => obj.performance"

extern "js" fn window_trusted_types_ffi(obj: JsValue) -> JsValue = "(obj) => obj.trustedTypes"

extern "js" fn window_request_animation_frame_ffi(obj: JsValue, callback: JsValue) -> JsValue = "(obj, callback) => obj.requestAnimationFrame(callback)"

extern "js" fn window_cancel_animation_frame_ffi(obj: JsValue, handle: JsValue) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(handle)"

extern "js" fn window_session_storage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.sessionStorage"

extern "js" fn window_local_storage_ffi(obj: JsValue) -> JsValue = "(obj) => obj.localStorage"