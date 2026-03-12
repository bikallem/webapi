fn html_element_new_ffi() -> HTMLElement = "webapi_HTMLElement" "new"

fn html_element_title_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_title"

///|
fn html_element_title_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_title_ffi_wasm(obj))
}

fn html_element_set_title_ffi(obj: JsValue, title: JsValue) -> Unit = "webapi_HTMLElement" "set_title"

fn html_element_lang_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_lang"

///|
fn html_element_lang_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_lang_ffi_wasm(obj))
}

fn html_element_set_lang_ffi(obj: JsValue, lang: JsValue) -> Unit = "webapi_HTMLElement" "set_lang"

fn html_element_translate_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_translate"

fn html_element_set_translate_ffi(obj: JsValue, translate: JsValue) -> Unit = "webapi_HTMLElement" "set_translate"

fn html_element_dir_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_dir"

///|
fn html_element_dir_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_dir_ffi_wasm(obj))
}

fn html_element_set_dir_ffi(obj: JsValue, dir: JsValue) -> Unit = "webapi_HTMLElement" "set_dir"

fn html_element_hidden_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_hidden"

///|
fn html_element_hidden_ffi(obj: JsValue) -> HTMLElementHidden {
  html_element_hidden_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_hidden_ffi(obj: JsValue, hidden: JsValue) -> Unit = "webapi_HTMLElement" "set_hidden"

fn html_element_inert_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_inert"

fn html_element_set_inert_ffi(obj: JsValue, inert: JsValue) -> Unit = "webapi_HTMLElement" "set_inert"

fn html_element_click_ffi(obj: JsValue) -> Unit = "webapi_HTMLElement" "click"

fn html_element_access_key_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_accessKey"

///|
fn html_element_access_key_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_access_key_ffi_wasm(obj))
}

fn html_element_set_access_key_ffi(obj: JsValue, access_key: JsValue) -> Unit = "webapi_HTMLElement" "set_accessKey"

fn html_element_access_key_label_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_accessKeyLabel"

///|
fn html_element_access_key_label_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_access_key_label_ffi_wasm(obj))
}

fn html_element_draggable_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_draggable"

fn html_element_set_draggable_ffi(obj: JsValue, draggable: JsValue) -> Unit = "webapi_HTMLElement" "set_draggable"

fn html_element_spellcheck_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_spellcheck"

fn html_element_set_spellcheck_ffi(obj: JsValue, spellcheck: JsValue) -> Unit = "webapi_HTMLElement" "set_spellcheck"

fn html_element_writing_suggestions_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_writingSuggestions"

///|
fn html_element_writing_suggestions_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_writing_suggestions_ffi_wasm(obj))
}

fn html_element_set_writing_suggestions_ffi(obj: JsValue, writing_suggestions: JsValue) -> Unit = "webapi_HTMLElement" "set_writingSuggestions"

fn html_element_autocapitalize_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_autocapitalize"

///|
fn html_element_autocapitalize_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_autocapitalize_ffi_wasm(obj))
}

fn html_element_set_autocapitalize_ffi(obj: JsValue, autocapitalize: JsValue) -> Unit = "webapi_HTMLElement" "set_autocapitalize"

fn html_element_autocorrect_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_autocorrect"

fn html_element_set_autocorrect_ffi(obj: JsValue, autocorrect: JsValue) -> Unit = "webapi_HTMLElement" "set_autocorrect"

fn html_element_inner_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_innerText"

///|
fn html_element_inner_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_inner_text_ffi_wasm(obj))
}

fn html_element_set_inner_text_ffi(obj: JsValue, inner_text: JsValue) -> Unit = "webapi_HTMLElement" "set_innerText"

fn html_element_outer_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_outerText"

///|
fn html_element_outer_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_outer_text_ffi_wasm(obj))
}

fn html_element_set_outer_text_ffi(obj: JsValue, outer_text: JsValue) -> Unit = "webapi_HTMLElement" "set_outerText"

fn html_element_attach_internals_ffi(obj: JsValue) -> ElementInternals = "webapi_HTMLElement" "attachInternals"

fn html_element_show_popover_ffi(obj: JsValue, options: JsValue) -> Unit = "webapi_HTMLElement" "showPopover"

fn html_element_hide_popover_ffi(obj: JsValue) -> Unit = "webapi_HTMLElement" "hidePopover"

fn html_element_toggle_popover_ffi(obj: JsValue, options: JsValue) -> Bool = "webapi_HTMLElement" "togglePopover"

fn html_element_popover_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_popover"

///|
fn html_element_popover_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_popover_ffi_wasm(obj))
}

fn html_element_set_popover_ffi(obj: JsValue, popover: JsValue) -> Unit = "webapi_HTMLElement" "set_popover"

fn html_element_heading_offset_ffi(obj: JsValue) -> UInt = "webapi_HTMLElement" "get_headingOffset"

fn html_element_set_heading_offset_ffi(obj: JsValue, heading_offset: JsValue) -> Unit = "webapi_HTMLElement" "set_headingOffset"

fn html_element_heading_reset_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_headingReset"

fn html_element_set_heading_reset_ffi(obj: JsValue, heading_reset: JsValue) -> Unit = "webapi_HTMLElement" "set_headingReset"

fn html_element_scroll_parent_ffi(obj: JsValue) -> Element = "webapi_HTMLElement" "get_scrollParent"

fn html_element_offset_parent_ffi(obj: JsValue) -> Element = "webapi_HTMLElement" "get_offsetParent"

fn html_element_offset_top_ffi(obj: JsValue) -> Int = "webapi_HTMLElement" "get_offsetTop"

fn html_element_offset_left_ffi(obj: JsValue) -> Int = "webapi_HTMLElement" "get_offsetLeft"

fn html_element_offset_width_ffi(obj: JsValue) -> Int = "webapi_HTMLElement" "get_offsetWidth"

fn html_element_offset_height_ffi(obj: JsValue) -> Int = "webapi_HTMLElement" "get_offsetHeight"

fn html_element_onabort_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onabort"

///|
fn html_element_onabort_ffi(obj: JsValue) -> EventHandler {
  html_element_onabort_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "webapi_HTMLElement" "set_onabort"

fn html_element_onauxclick_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onauxclick"

///|
fn html_element_onauxclick_ffi(obj: JsValue) -> EventHandler {
  html_element_onauxclick_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onauxclick_ffi(obj: JsValue, onauxclick: JsValue) -> Unit = "webapi_HTMLElement" "set_onauxclick"

fn html_element_onbeforeinput_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforeinput"

///|
fn html_element_onbeforeinput_ffi(obj: JsValue) -> EventHandler {
  html_element_onbeforeinput_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onbeforeinput_ffi(obj: JsValue, onbeforeinput: JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforeinput"

fn html_element_onbeforematch_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforematch"

///|
fn html_element_onbeforematch_ffi(obj: JsValue) -> EventHandler {
  html_element_onbeforematch_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onbeforematch_ffi(obj: JsValue, onbeforematch: JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforematch"

fn html_element_onbeforetoggle_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforetoggle"

///|
fn html_element_onbeforetoggle_ffi(obj: JsValue) -> EventHandler {
  html_element_onbeforetoggle_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onbeforetoggle_ffi(obj: JsValue, onbeforetoggle: JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforetoggle"

fn html_element_onblur_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onblur"

///|
fn html_element_onblur_ffi(obj: JsValue) -> EventHandler {
  html_element_onblur_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onblur_ffi(obj: JsValue, onblur: JsValue) -> Unit = "webapi_HTMLElement" "set_onblur"

fn html_element_oncancel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncancel"

///|
fn html_element_oncancel_ffi(obj: JsValue) -> EventHandler {
  html_element_oncancel_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncancel_ffi(obj: JsValue, oncancel: JsValue) -> Unit = "webapi_HTMLElement" "set_oncancel"

fn html_element_oncanplay_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncanplay"

///|
fn html_element_oncanplay_ffi(obj: JsValue) -> EventHandler {
  html_element_oncanplay_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncanplay_ffi(obj: JsValue, oncanplay: JsValue) -> Unit = "webapi_HTMLElement" "set_oncanplay"

fn html_element_oncanplaythrough_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncanplaythrough"

///|
fn html_element_oncanplaythrough_ffi(obj: JsValue) -> EventHandler {
  html_element_oncanplaythrough_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncanplaythrough_ffi(obj: JsValue, oncanplaythrough: JsValue) -> Unit = "webapi_HTMLElement" "set_oncanplaythrough"

fn html_element_onchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onchange"

///|
fn html_element_onchange_ffi(obj: JsValue) -> EventHandler {
  html_element_onchange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "webapi_HTMLElement" "set_onchange"

fn html_element_onclick_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onclick"

///|
fn html_element_onclick_ffi(obj: JsValue) -> EventHandler {
  html_element_onclick_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onclick_ffi(obj: JsValue, onclick: JsValue) -> Unit = "webapi_HTMLElement" "set_onclick"

fn html_element_onclose_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onclose"

///|
fn html_element_onclose_ffi(obj: JsValue) -> EventHandler {
  html_element_onclose_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "webapi_HTMLElement" "set_onclose"

fn html_element_oncommand_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncommand"

///|
fn html_element_oncommand_ffi(obj: JsValue) -> EventHandler {
  html_element_oncommand_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncommand_ffi(obj: JsValue, oncommand: JsValue) -> Unit = "webapi_HTMLElement" "set_oncommand"

fn html_element_oncontextlost_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextlost"

///|
fn html_element_oncontextlost_ffi(obj: JsValue) -> EventHandler {
  html_element_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncontextlost_ffi(obj: JsValue, oncontextlost: JsValue) -> Unit = "webapi_HTMLElement" "set_oncontextlost"

fn html_element_oncontextmenu_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextmenu"

///|
fn html_element_oncontextmenu_ffi(obj: JsValue) -> EventHandler {
  html_element_oncontextmenu_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncontextmenu_ffi(obj: JsValue, oncontextmenu: JsValue) -> Unit = "webapi_HTMLElement" "set_oncontextmenu"

fn html_element_oncontextrestored_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextrestored"

///|
fn html_element_oncontextrestored_ffi(obj: JsValue) -> EventHandler {
  html_element_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncontextrestored_ffi(obj: JsValue, oncontextrestored: JsValue) -> Unit = "webapi_HTMLElement" "set_oncontextrestored"

fn html_element_oncopy_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncopy"

///|
fn html_element_oncopy_ffi(obj: JsValue) -> EventHandler {
  html_element_oncopy_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncopy_ffi(obj: JsValue, oncopy: JsValue) -> Unit = "webapi_HTMLElement" "set_oncopy"

fn html_element_oncuechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncuechange"

///|
fn html_element_oncuechange_ffi(obj: JsValue) -> EventHandler {
  html_element_oncuechange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncuechange_ffi(obj: JsValue, oncuechange: JsValue) -> Unit = "webapi_HTMLElement" "set_oncuechange"

fn html_element_oncut_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oncut"

///|
fn html_element_oncut_ffi(obj: JsValue) -> EventHandler {
  html_element_oncut_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oncut_ffi(obj: JsValue, oncut: JsValue) -> Unit = "webapi_HTMLElement" "set_oncut"

fn html_element_ondblclick_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondblclick"

///|
fn html_element_ondblclick_ffi(obj: JsValue) -> EventHandler {
  html_element_ondblclick_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondblclick_ffi(obj: JsValue, ondblclick: JsValue) -> Unit = "webapi_HTMLElement" "set_ondblclick"

fn html_element_ondrag_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondrag"

///|
fn html_element_ondrag_ffi(obj: JsValue) -> EventHandler {
  html_element_ondrag_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondrag_ffi(obj: JsValue, ondrag: JsValue) -> Unit = "webapi_HTMLElement" "set_ondrag"

fn html_element_ondragend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragend"

///|
fn html_element_ondragend_ffi(obj: JsValue) -> EventHandler {
  html_element_ondragend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondragend_ffi(obj: JsValue, ondragend: JsValue) -> Unit = "webapi_HTMLElement" "set_ondragend"

fn html_element_ondragenter_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragenter"

///|
fn html_element_ondragenter_ffi(obj: JsValue) -> EventHandler {
  html_element_ondragenter_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondragenter_ffi(obj: JsValue, ondragenter: JsValue) -> Unit = "webapi_HTMLElement" "set_ondragenter"

fn html_element_ondragleave_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragleave"

///|
fn html_element_ondragleave_ffi(obj: JsValue) -> EventHandler {
  html_element_ondragleave_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondragleave_ffi(obj: JsValue, ondragleave: JsValue) -> Unit = "webapi_HTMLElement" "set_ondragleave"

fn html_element_ondragover_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragover"

///|
fn html_element_ondragover_ffi(obj: JsValue) -> EventHandler {
  html_element_ondragover_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondragover_ffi(obj: JsValue, ondragover: JsValue) -> Unit = "webapi_HTMLElement" "set_ondragover"

fn html_element_ondragstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragstart"

///|
fn html_element_ondragstart_ffi(obj: JsValue) -> EventHandler {
  html_element_ondragstart_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondragstart_ffi(obj: JsValue, ondragstart: JsValue) -> Unit = "webapi_HTMLElement" "set_ondragstart"

fn html_element_ondrop_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondrop"

///|
fn html_element_ondrop_ffi(obj: JsValue) -> EventHandler {
  html_element_ondrop_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondrop_ffi(obj: JsValue, ondrop: JsValue) -> Unit = "webapi_HTMLElement" "set_ondrop"

fn html_element_ondurationchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ondurationchange"

///|
fn html_element_ondurationchange_ffi(obj: JsValue) -> EventHandler {
  html_element_ondurationchange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ondurationchange_ffi(obj: JsValue, ondurationchange: JsValue) -> Unit = "webapi_HTMLElement" "set_ondurationchange"

fn html_element_onemptied_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onemptied"

///|
fn html_element_onemptied_ffi(obj: JsValue) -> EventHandler {
  html_element_onemptied_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onemptied_ffi(obj: JsValue, onemptied: JsValue) -> Unit = "webapi_HTMLElement" "set_onemptied"

fn html_element_onended_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onended"

///|
fn html_element_onended_ffi(obj: JsValue) -> EventHandler {
  html_element_onended_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onended_ffi(obj: JsValue, onended: JsValue) -> Unit = "webapi_HTMLElement" "set_onended"

fn html_element_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onerror"

///|
fn html_element_onerror_ffi(obj: JsValue) -> OnErrorEventHandler {
  html_element_onerror_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_HTMLElement" "set_onerror"

fn html_element_onfocus_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onfocus"

///|
fn html_element_onfocus_ffi(obj: JsValue) -> EventHandler {
  html_element_onfocus_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onfocus_ffi(obj: JsValue, onfocus: JsValue) -> Unit = "webapi_HTMLElement" "set_onfocus"

fn html_element_onformdata_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onformdata"

///|
fn html_element_onformdata_ffi(obj: JsValue) -> EventHandler {
  html_element_onformdata_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onformdata_ffi(obj: JsValue, onformdata: JsValue) -> Unit = "webapi_HTMLElement" "set_onformdata"

fn html_element_oninput_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oninput"

///|
fn html_element_oninput_ffi(obj: JsValue) -> EventHandler {
  html_element_oninput_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oninput_ffi(obj: JsValue, oninput: JsValue) -> Unit = "webapi_HTMLElement" "set_oninput"

fn html_element_oninvalid_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_oninvalid"

///|
fn html_element_oninvalid_ffi(obj: JsValue) -> EventHandler {
  html_element_oninvalid_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_oninvalid_ffi(obj: JsValue, oninvalid: JsValue) -> Unit = "webapi_HTMLElement" "set_oninvalid"

fn html_element_onkeydown_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeydown"

///|
fn html_element_onkeydown_ffi(obj: JsValue) -> EventHandler {
  html_element_onkeydown_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onkeydown_ffi(obj: JsValue, onkeydown: JsValue) -> Unit = "webapi_HTMLElement" "set_onkeydown"

fn html_element_onkeypress_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeypress"

///|
fn html_element_onkeypress_ffi(obj: JsValue) -> EventHandler {
  html_element_onkeypress_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onkeypress_ffi(obj: JsValue, onkeypress: JsValue) -> Unit = "webapi_HTMLElement" "set_onkeypress"

fn html_element_onkeyup_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeyup"

///|
fn html_element_onkeyup_ffi(obj: JsValue) -> EventHandler {
  html_element_onkeyup_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onkeyup_ffi(obj: JsValue, onkeyup: JsValue) -> Unit = "webapi_HTMLElement" "set_onkeyup"

fn html_element_onload_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onload"

///|
fn html_element_onload_ffi(obj: JsValue) -> EventHandler {
  html_element_onload_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "webapi_HTMLElement" "set_onload"

fn html_element_onloadeddata_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadeddata"

///|
fn html_element_onloadeddata_ffi(obj: JsValue) -> EventHandler {
  html_element_onloadeddata_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onloadeddata_ffi(obj: JsValue, onloadeddata: JsValue) -> Unit = "webapi_HTMLElement" "set_onloadeddata"

fn html_element_onloadedmetadata_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadedmetadata"

///|
fn html_element_onloadedmetadata_ffi(obj: JsValue) -> EventHandler {
  html_element_onloadedmetadata_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onloadedmetadata_ffi(obj: JsValue, onloadedmetadata: JsValue) -> Unit = "webapi_HTMLElement" "set_onloadedmetadata"

fn html_element_onloadstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadstart"

///|
fn html_element_onloadstart_ffi(obj: JsValue) -> EventHandler {
  html_element_onloadstart_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "webapi_HTMLElement" "set_onloadstart"

fn html_element_onmousedown_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmousedown"

///|
fn html_element_onmousedown_ffi(obj: JsValue) -> EventHandler {
  html_element_onmousedown_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmousedown_ffi(obj: JsValue, onmousedown: JsValue) -> Unit = "webapi_HTMLElement" "set_onmousedown"

fn html_element_onmouseenter_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseenter"

///|
fn html_element_onmouseenter_ffi(obj: JsValue) -> EventHandler {
  html_element_onmouseenter_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmouseenter_ffi(obj: JsValue, onmouseenter: JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseenter"

fn html_element_onmouseleave_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseleave"

///|
fn html_element_onmouseleave_ffi(obj: JsValue) -> EventHandler {
  html_element_onmouseleave_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmouseleave_ffi(obj: JsValue, onmouseleave: JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseleave"

fn html_element_onmousemove_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmousemove"

///|
fn html_element_onmousemove_ffi(obj: JsValue) -> EventHandler {
  html_element_onmousemove_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmousemove_ffi(obj: JsValue, onmousemove: JsValue) -> Unit = "webapi_HTMLElement" "set_onmousemove"

fn html_element_onmouseout_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseout"

///|
fn html_element_onmouseout_ffi(obj: JsValue) -> EventHandler {
  html_element_onmouseout_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmouseout_ffi(obj: JsValue, onmouseout: JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseout"

fn html_element_onmouseover_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseover"

///|
fn html_element_onmouseover_ffi(obj: JsValue) -> EventHandler {
  html_element_onmouseover_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmouseover_ffi(obj: JsValue, onmouseover: JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseover"

fn html_element_onmouseup_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseup"

///|
fn html_element_onmouseup_ffi(obj: JsValue) -> EventHandler {
  html_element_onmouseup_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onmouseup_ffi(obj: JsValue, onmouseup: JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseup"

fn html_element_onpaste_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpaste"

///|
fn html_element_onpaste_ffi(obj: JsValue) -> EventHandler {
  html_element_onpaste_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpaste_ffi(obj: JsValue, onpaste: JsValue) -> Unit = "webapi_HTMLElement" "set_onpaste"

fn html_element_onpause_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpause"

///|
fn html_element_onpause_ffi(obj: JsValue) -> EventHandler {
  html_element_onpause_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpause_ffi(obj: JsValue, onpause: JsValue) -> Unit = "webapi_HTMLElement" "set_onpause"

fn html_element_onplay_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onplay"

///|
fn html_element_onplay_ffi(obj: JsValue) -> EventHandler {
  html_element_onplay_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onplay_ffi(obj: JsValue, onplay: JsValue) -> Unit = "webapi_HTMLElement" "set_onplay"

fn html_element_onplaying_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onplaying"

///|
fn html_element_onplaying_ffi(obj: JsValue) -> EventHandler {
  html_element_onplaying_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onplaying_ffi(obj: JsValue, onplaying: JsValue) -> Unit = "webapi_HTMLElement" "set_onplaying"

fn html_element_onprogress_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onprogress"

///|
fn html_element_onprogress_ffi(obj: JsValue) -> EventHandler {
  html_element_onprogress_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "webapi_HTMLElement" "set_onprogress"

fn html_element_onratechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onratechange"

///|
fn html_element_onratechange_ffi(obj: JsValue) -> EventHandler {
  html_element_onratechange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onratechange_ffi(obj: JsValue, onratechange: JsValue) -> Unit = "webapi_HTMLElement" "set_onratechange"

fn html_element_onreset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onreset"

///|
fn html_element_onreset_ffi(obj: JsValue) -> EventHandler {
  html_element_onreset_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onreset_ffi(obj: JsValue, onreset: JsValue) -> Unit = "webapi_HTMLElement" "set_onreset"

fn html_element_onresize_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onresize"

///|
fn html_element_onresize_ffi(obj: JsValue) -> EventHandler {
  html_element_onresize_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onresize_ffi(obj: JsValue, onresize: JsValue) -> Unit = "webapi_HTMLElement" "set_onresize"

fn html_element_onscroll_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onscroll"

///|
fn html_element_onscroll_ffi(obj: JsValue) -> EventHandler {
  html_element_onscroll_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onscroll_ffi(obj: JsValue, onscroll: JsValue) -> Unit = "webapi_HTMLElement" "set_onscroll"

fn html_element_onscrollend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onscrollend"

///|
fn html_element_onscrollend_ffi(obj: JsValue) -> EventHandler {
  html_element_onscrollend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onscrollend_ffi(obj: JsValue, onscrollend: JsValue) -> Unit = "webapi_HTMLElement" "set_onscrollend"

fn html_element_onsecuritypolicyviolation_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onsecuritypolicyviolation"

///|
fn html_element_onsecuritypolicyviolation_ffi(obj: JsValue) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onsecuritypolicyviolation_ffi(obj: JsValue, onsecuritypolicyviolation: JsValue) -> Unit = "webapi_HTMLElement" "set_onsecuritypolicyviolation"

fn html_element_onseeked_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onseeked"

///|
fn html_element_onseeked_ffi(obj: JsValue) -> EventHandler {
  html_element_onseeked_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onseeked_ffi(obj: JsValue, onseeked: JsValue) -> Unit = "webapi_HTMLElement" "set_onseeked"

fn html_element_onseeking_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onseeking"

///|
fn html_element_onseeking_ffi(obj: JsValue) -> EventHandler {
  html_element_onseeking_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onseeking_ffi(obj: JsValue, onseeking: JsValue) -> Unit = "webapi_HTMLElement" "set_onseeking"

fn html_element_onselect_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onselect"

///|
fn html_element_onselect_ffi(obj: JsValue) -> EventHandler {
  html_element_onselect_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onselect_ffi(obj: JsValue, onselect: JsValue) -> Unit = "webapi_HTMLElement" "set_onselect"

fn html_element_onslotchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onslotchange"

///|
fn html_element_onslotchange_ffi(obj: JsValue) -> EventHandler {
  html_element_onslotchange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onslotchange_ffi(obj: JsValue, onslotchange: JsValue) -> Unit = "webapi_HTMLElement" "set_onslotchange"

fn html_element_onstalled_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onstalled"

///|
fn html_element_onstalled_ffi(obj: JsValue) -> EventHandler {
  html_element_onstalled_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onstalled_ffi(obj: JsValue, onstalled: JsValue) -> Unit = "webapi_HTMLElement" "set_onstalled"

fn html_element_onsubmit_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onsubmit"

///|
fn html_element_onsubmit_ffi(obj: JsValue) -> EventHandler {
  html_element_onsubmit_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onsubmit_ffi(obj: JsValue, onsubmit: JsValue) -> Unit = "webapi_HTMLElement" "set_onsubmit"

fn html_element_onsuspend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onsuspend"

///|
fn html_element_onsuspend_ffi(obj: JsValue) -> EventHandler {
  html_element_onsuspend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onsuspend_ffi(obj: JsValue, onsuspend: JsValue) -> Unit = "webapi_HTMLElement" "set_onsuspend"

fn html_element_ontimeupdate_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontimeupdate"

///|
fn html_element_ontimeupdate_ffi(obj: JsValue) -> EventHandler {
  html_element_ontimeupdate_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontimeupdate_ffi(obj: JsValue, ontimeupdate: JsValue) -> Unit = "webapi_HTMLElement" "set_ontimeupdate"

fn html_element_ontoggle_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontoggle"

///|
fn html_element_ontoggle_ffi(obj: JsValue) -> EventHandler {
  html_element_ontoggle_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontoggle_ffi(obj: JsValue, ontoggle: JsValue) -> Unit = "webapi_HTMLElement" "set_ontoggle"

fn html_element_onvolumechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onvolumechange"

///|
fn html_element_onvolumechange_ffi(obj: JsValue) -> EventHandler {
  html_element_onvolumechange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onvolumechange_ffi(obj: JsValue, onvolumechange: JsValue) -> Unit = "webapi_HTMLElement" "set_onvolumechange"

fn html_element_onwaiting_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwaiting"

///|
fn html_element_onwaiting_ffi(obj: JsValue) -> EventHandler {
  html_element_onwaiting_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwaiting_ffi(obj: JsValue, onwaiting: JsValue) -> Unit = "webapi_HTMLElement" "set_onwaiting"

fn html_element_onwebkitanimationend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationend"

///|
fn html_element_onwebkitanimationend_ffi(obj: JsValue) -> EventHandler {
  html_element_onwebkitanimationend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwebkitanimationend_ffi(obj: JsValue, onwebkitanimationend: JsValue) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationend"

fn html_element_onwebkitanimationiteration_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationiteration"

///|
fn html_element_onwebkitanimationiteration_ffi(obj: JsValue) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwebkitanimationiteration_ffi(obj: JsValue, onwebkitanimationiteration: JsValue) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationiteration"

fn html_element_onwebkitanimationstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationstart"

///|
fn html_element_onwebkitanimationstart_ffi(obj: JsValue) -> EventHandler {
  html_element_onwebkitanimationstart_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwebkitanimationstart_ffi(obj: JsValue, onwebkitanimationstart: JsValue) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationstart"

fn html_element_onwebkittransitionend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkittransitionend"

///|
fn html_element_onwebkittransitionend_ffi(obj: JsValue) -> EventHandler {
  html_element_onwebkittransitionend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwebkittransitionend_ffi(obj: JsValue, onwebkittransitionend: JsValue) -> Unit = "webapi_HTMLElement" "set_onwebkittransitionend"

fn html_element_onwheel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onwheel"

///|
fn html_element_onwheel_ffi(obj: JsValue) -> EventHandler {
  html_element_onwheel_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onwheel_ffi(obj: JsValue, onwheel: JsValue) -> Unit = "webapi_HTMLElement" "set_onwheel"

fn html_element_ontouchstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchstart"

///|
fn html_element_ontouchstart_ffi(obj: JsValue) -> EventHandler {
  html_element_ontouchstart_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontouchstart_ffi(obj: JsValue, ontouchstart: JsValue) -> Unit = "webapi_HTMLElement" "set_ontouchstart"

fn html_element_ontouchend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchend"

///|
fn html_element_ontouchend_ffi(obj: JsValue) -> EventHandler {
  html_element_ontouchend_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontouchend_ffi(obj: JsValue, ontouchend: JsValue) -> Unit = "webapi_HTMLElement" "set_ontouchend"

fn html_element_ontouchmove_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchmove"

///|
fn html_element_ontouchmove_ffi(obj: JsValue) -> EventHandler {
  html_element_ontouchmove_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontouchmove_ffi(obj: JsValue, ontouchmove: JsValue) -> Unit = "webapi_HTMLElement" "set_ontouchmove"

fn html_element_ontouchcancel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchcancel"

///|
fn html_element_ontouchcancel_ffi(obj: JsValue) -> EventHandler {
  html_element_ontouchcancel_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ontouchcancel_ffi(obj: JsValue, ontouchcancel: JsValue) -> Unit = "webapi_HTMLElement" "set_ontouchcancel"

fn html_element_onpointerover_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerover"

///|
fn html_element_onpointerover_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerover_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerover_ffi(obj: JsValue, onpointerover: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerover"

fn html_element_onpointerenter_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerenter"

///|
fn html_element_onpointerenter_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerenter_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerenter_ffi(obj: JsValue, onpointerenter: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerenter"

fn html_element_onpointerdown_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerdown"

///|
fn html_element_onpointerdown_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerdown_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerdown_ffi(obj: JsValue, onpointerdown: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerdown"

fn html_element_onpointermove_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointermove"

///|
fn html_element_onpointermove_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointermove_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointermove_ffi(obj: JsValue, onpointermove: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointermove"

fn html_element_onpointerrawupdate_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerrawupdate"

///|
fn html_element_onpointerrawupdate_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerrawupdate_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerrawupdate_ffi(obj: JsValue, onpointerrawupdate: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerrawupdate"

fn html_element_onpointerup_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerup"

///|
fn html_element_onpointerup_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerup_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerup_ffi(obj: JsValue, onpointerup: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerup"

fn html_element_onpointercancel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointercancel"

///|
fn html_element_onpointercancel_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointercancel_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointercancel_ffi(obj: JsValue, onpointercancel: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointercancel"

fn html_element_onpointerout_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerout"

///|
fn html_element_onpointerout_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerout_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerout_ffi(obj: JsValue, onpointerout: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerout"

fn html_element_onpointerleave_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerleave"

///|
fn html_element_onpointerleave_ffi(obj: JsValue) -> EventHandler {
  html_element_onpointerleave_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onpointerleave_ffi(obj: JsValue, onpointerleave: JsValue) -> Unit = "webapi_HTMLElement" "set_onpointerleave"

fn html_element_ongotpointercapture_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_ongotpointercapture"

///|
fn html_element_ongotpointercapture_ffi(obj: JsValue) -> EventHandler {
  html_element_ongotpointercapture_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_ongotpointercapture_ffi(obj: JsValue, ongotpointercapture: JsValue) -> Unit = "webapi_HTMLElement" "set_ongotpointercapture"

fn html_element_onlostpointercapture_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onlostpointercapture"

///|
fn html_element_onlostpointercapture_ffi(obj: JsValue) -> EventHandler {
  html_element_onlostpointercapture_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onlostpointercapture_ffi(obj: JsValue, onlostpointercapture: JsValue) -> Unit = "webapi_HTMLElement" "set_onlostpointercapture"

fn html_element_onselectstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onselectstart"

///|
fn html_element_onselectstart_ffi(obj: JsValue) -> EventHandler {
  html_element_onselectstart_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onselectstart_ffi(obj: JsValue, onselectstart: JsValue) -> Unit = "webapi_HTMLElement" "set_onselectstart"

fn html_element_onselectionchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_onselectionchange"

///|
fn html_element_onselectionchange_ffi(obj: JsValue) -> EventHandler {
  html_element_onselectionchange_ffi_wasm(obj).unsafe_cast()
}

fn html_element_set_onselectionchange_ffi(obj: JsValue, onselectionchange: JsValue) -> Unit = "webapi_HTMLElement" "set_onselectionchange"

fn html_element_content_editable_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_contentEditable"

///|
fn html_element_content_editable_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_content_editable_ffi_wasm(obj))
}

fn html_element_set_content_editable_ffi(obj: JsValue, content_editable: JsValue) -> Unit = "webapi_HTMLElement" "set_contentEditable"

fn html_element_enter_key_hint_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_enterKeyHint"

///|
fn html_element_enter_key_hint_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_enter_key_hint_ffi_wasm(obj))
}

fn html_element_set_enter_key_hint_ffi(obj: JsValue, enter_key_hint: JsValue) -> Unit = "webapi_HTMLElement" "set_enterKeyHint"

fn html_element_is_content_editable_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_isContentEditable"

fn html_element_input_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_inputMode"

///|
fn html_element_input_mode_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_input_mode_ffi_wasm(obj))
}

fn html_element_set_input_mode_ffi(obj: JsValue, input_mode: JsValue) -> Unit = "webapi_HTMLElement" "set_inputMode"

fn html_element_dataset_ffi(obj: JsValue) -> DOMStringMap = "webapi_HTMLElement" "get_dataset"

fn html_element_nonce_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLElement" "get_nonce"

///|
fn html_element_nonce_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_element_nonce_ffi_wasm(obj))
}

fn html_element_set_nonce_ffi(obj: JsValue, nonce: JsValue) -> Unit = "webapi_HTMLElement" "set_nonce"

fn html_element_autofocus_ffi(obj: JsValue) -> Bool = "webapi_HTMLElement" "get_autofocus"

fn html_element_set_autofocus_ffi(obj: JsValue, autofocus: JsValue) -> Unit = "webapi_HTMLElement" "set_autofocus"

fn html_element_tab_index_ffi(obj: JsValue) -> Int = "webapi_HTMLElement" "get_tabIndex"

fn html_element_set_tab_index_ffi(obj: JsValue, tab_index: JsValue) -> Unit = "webapi_HTMLElement" "set_tabIndex"

fn html_element_focus_ffi(obj: JsValue, options: JsValue) -> Unit = "webapi_HTMLElement" "focus"

fn html_element_blur_ffi(obj: JsValue) -> Unit = "webapi_HTMLElement" "blur"

fn html_element_style_ffi(obj: JsValue) -> CSSStyleProperties = "webapi_HTMLElement" "get_style"