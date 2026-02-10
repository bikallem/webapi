///|
extern "js" fn html_element_new_ffi() -> HTMLElement = "() => new HTMLElement()"

///|
extern "js" fn html_element_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
fn html_element_title_ffi(obj : JsValue) -> String {
  html_element_title_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
extern "js" fn html_element_lang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lang"

///|
fn html_element_lang_ffi(obj : JsValue) -> String {
  html_element_lang_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_lang_ffi(obj : JsValue, lang : JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

///|
extern "js" fn html_element_translate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.translate"

///|
fn html_element_translate_ffi(obj : JsValue) -> Bool {
  html_element_translate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_translate_ffi(
  obj : JsValue,
  translate : JsValue,
) -> Unit = "(obj, translate) => { obj.translate = translate; }"

///|
extern "js" fn html_element_dir_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
fn html_element_dir_ffi(obj : JsValue) -> String {
  html_element_dir_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
extern "js" fn html_element_hidden_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
fn html_element_hidden_ffi(obj : JsValue) -> HTMLElementHidden {
  html_element_hidden_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_hidden_ffi(
  obj : JsValue,
  hidden : JsValue,
) -> Unit = "(obj, hidden) => { obj.hidden = hidden; }"

///|
extern "js" fn html_element_inert_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inert"

///|
fn html_element_inert_ffi(obj : JsValue) -> Bool {
  html_element_inert_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_inert_ffi(
  obj : JsValue,
  inert : JsValue,
) -> Unit = "(obj, inert) => { obj.inert = inert; }"

///|
extern "js" fn html_element_click_ffi(obj : JsValue) -> Unit = "(obj) => obj.click()"

///|
extern "js" fn html_element_access_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.accessKey"

///|
fn html_element_access_key_ffi(obj : JsValue) -> String {
  html_element_access_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_access_key_ffi(
  obj : JsValue,
  access_key : JsValue,
) -> Unit = "(obj, accessKey) => { obj.accessKey = accessKey; }"

///|
extern "js" fn html_element_access_key_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.accessKeyLabel"

///|
fn html_element_access_key_label_ffi(obj : JsValue) -> String {
  html_element_access_key_label_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_draggable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.draggable"

///|
fn html_element_draggable_ffi(obj : JsValue) -> Bool {
  html_element_draggable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_draggable_ffi(
  obj : JsValue,
  draggable : JsValue,
) -> Unit = "(obj, draggable) => { obj.draggable = draggable; }"

///|
extern "js" fn html_element_spellcheck_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.spellcheck"

///|
fn html_element_spellcheck_ffi(obj : JsValue) -> Bool {
  html_element_spellcheck_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_spellcheck_ffi(
  obj : JsValue,
  spellcheck : JsValue,
) -> Unit = "(obj, spellcheck) => { obj.spellcheck = spellcheck; }"

///|
extern "js" fn html_element_writing_suggestions_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.writingSuggestions"

///|
fn html_element_writing_suggestions_ffi(obj : JsValue) -> String {
  html_element_writing_suggestions_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  writing_suggestions : JsValue,
) -> Unit = "(obj, writingSuggestions) => { obj.writingSuggestions = writingSuggestions; }"

///|
extern "js" fn html_element_autocapitalize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autocapitalize"

///|
fn html_element_autocapitalize_ffi(obj : JsValue) -> String {
  html_element_autocapitalize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_autocapitalize_ffi(
  obj : JsValue,
  autocapitalize : JsValue,
) -> Unit = "(obj, autocapitalize) => { obj.autocapitalize = autocapitalize; }"

///|
extern "js" fn html_element_autocorrect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autocorrect"

///|
fn html_element_autocorrect_ffi(obj : JsValue) -> Bool {
  html_element_autocorrect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_autocorrect_ffi(
  obj : JsValue,
  autocorrect : JsValue,
) -> Unit = "(obj, autocorrect) => { obj.autocorrect = autocorrect; }"

///|
extern "js" fn html_element_inner_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerText"

///|
fn html_element_inner_text_ffi(obj : JsValue) -> String {
  html_element_inner_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_inner_text_ffi(
  obj : JsValue,
  inner_text : JsValue,
) -> Unit = "(obj, innerText) => { obj.innerText = innerText; }"

///|
extern "js" fn html_element_outer_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerText"

///|
fn html_element_outer_text_ffi(obj : JsValue) -> String {
  html_element_outer_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_outer_text_ffi(
  obj : JsValue,
  outer_text : JsValue,
) -> Unit = "(obj, outerText) => { obj.outerText = outerText; }"

///|
extern "js" fn html_element_attach_internals_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.attachInternals()"

///|
fn html_element_attach_internals_ffi(obj : JsValue) -> ElementInternals {
  html_element_attach_internals_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_show_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.showPopover(options)"

///|
extern "js" fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "(obj) => obj.hidePopover()"

///|
extern "js" fn html_element_toggle_popover_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.togglePopover(options)"

///|
fn html_element_toggle_popover_ffi(obj : JsValue, options : JsValue) -> Bool {
  html_element_toggle_popover_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn html_element_popover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.popover"

///|
fn html_element_popover_ffi(obj : JsValue) -> String {
  html_element_popover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_popover_ffi(
  obj : JsValue,
  popover : JsValue,
) -> Unit = "(obj, popover) => { obj.popover = popover; }"

///|
extern "js" fn html_element_heading_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.headingOffset"

///|
fn html_element_heading_offset_ffi(obj : JsValue) -> UInt {
  html_element_heading_offset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_heading_offset_ffi(
  obj : JsValue,
  heading_offset : JsValue,
) -> Unit = "(obj, headingOffset) => { obj.headingOffset = headingOffset; }"

///|
extern "js" fn html_element_heading_reset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.headingReset"

///|
fn html_element_heading_reset_ffi(obj : JsValue) -> Bool {
  html_element_heading_reset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_heading_reset_ffi(
  obj : JsValue,
  heading_reset : JsValue,
) -> Unit = "(obj, headingReset) => { obj.headingReset = headingReset; }"

///|
extern "js" fn html_element_scroll_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollParent"

///|
fn html_element_scroll_parent_ffi(obj : JsValue) -> Element {
  html_element_scroll_parent_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_offset_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetParent"

///|
fn html_element_offset_parent_ffi(obj : JsValue) -> Element {
  html_element_offset_parent_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_offset_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
fn html_element_offset_top_ffi(obj : JsValue) -> Int {
  html_element_offset_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_offset_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
fn html_element_offset_left_ffi(obj : JsValue) -> Int {
  html_element_offset_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_offset_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetWidth"

///|
fn html_element_offset_width_ffi(obj : JsValue) -> Int {
  html_element_offset_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_offset_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetHeight"

///|
fn html_element_offset_height_ffi(obj : JsValue) -> Int {
  html_element_offset_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn html_element_onabort_ffi(obj : JsValue) -> EventHandler {
  html_element_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn html_element_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
fn html_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn html_element_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
fn html_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn html_element_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
fn html_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn html_element_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
fn html_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn html_element_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
fn html_element_onblur_ffi(obj : JsValue) -> EventHandler {
  html_element_onblur_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn html_element_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
fn html_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  html_element_oncancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn html_element_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
fn html_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn html_element_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
fn html_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn html_element_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn html_element_onchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn html_element_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
fn html_element_onclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn html_element_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn html_element_onclose_ffi(obj : JsValue) -> EventHandler {
  html_element_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn html_element_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
fn html_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  html_element_oncommand_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn html_element_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
fn html_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn html_element_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
fn html_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn html_element_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
fn html_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn html_element_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
fn html_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  html_element_oncopy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn html_element_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
fn html_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  html_element_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn html_element_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
fn html_element_oncut_ffi(obj : JsValue) -> EventHandler {
  html_element_oncut_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn html_element_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
fn html_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  html_element_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn html_element_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
fn html_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrag_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn html_element_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
fn html_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn html_element_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
fn html_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn html_element_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
fn html_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn html_element_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
fn html_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn html_element_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
fn html_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn html_element_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
fn html_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrop_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn html_element_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
fn html_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  html_element_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn html_element_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
fn html_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  html_element_onemptied_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn html_element_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
fn html_element_onended_ffi(obj : JsValue) -> EventHandler {
  html_element_onended_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn html_element_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn html_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  html_element_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn html_element_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
fn html_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  html_element_onfocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn html_element_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
fn html_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  html_element_onformdata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn html_element_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
fn html_element_oninput_ffi(obj : JsValue) -> EventHandler {
  html_element_oninput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn html_element_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
fn html_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  html_element_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn html_element_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
fn html_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn html_element_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
fn html_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn html_element_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
fn html_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn html_element_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
fn html_element_onload_ffi(obj : JsValue) -> EventHandler {
  html_element_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn html_element_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
fn html_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn html_element_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
fn html_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn html_element_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
fn html_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn html_element_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
fn html_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn html_element_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
fn html_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn html_element_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
fn html_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn html_element_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
fn html_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn html_element_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
fn html_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn html_element_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
fn html_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn html_element_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
fn html_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn html_element_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
fn html_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  html_element_onpaste_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn html_element_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
fn html_element_onpause_ffi(obj : JsValue) -> EventHandler {
  html_element_onpause_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn html_element_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
fn html_element_onplay_ffi(obj : JsValue) -> EventHandler {
  html_element_onplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn html_element_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
fn html_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  html_element_onplaying_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn html_element_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
fn html_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  html_element_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn html_element_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
fn html_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onratechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn html_element_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
fn html_element_onreset_ffi(obj : JsValue) -> EventHandler {
  html_element_onreset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn html_element_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
fn html_element_onresize_ffi(obj : JsValue) -> EventHandler {
  html_element_onresize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn html_element_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
fn html_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  html_element_onscroll_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn html_element_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
fn html_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  html_element_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn html_element_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
fn html_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn html_element_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
fn html_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeked_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn html_element_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
fn html_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeking_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn html_element_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
fn html_element_onselect_ffi(obj : JsValue) -> EventHandler {
  html_element_onselect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn html_element_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
fn html_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn html_element_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
fn html_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  html_element_onstalled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn html_element_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
fn html_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  html_element_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn html_element_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
fn html_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  html_element_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn html_element_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
fn html_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn html_element_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
fn html_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn html_element_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
fn html_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn html_element_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
fn html_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  html_element_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn html_element_onwebkitanimationend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
fn html_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn html_element_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
fn html_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn html_element_onwebkitanimationstart_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
fn html_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn html_element_onwebkittransitionend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
fn html_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn html_element_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
fn html_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  html_element_onwheel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn html_element_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
fn html_element_onpointerover_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
extern "js" fn html_element_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
fn html_element_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
extern "js" fn html_element_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
fn html_element_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
extern "js" fn html_element_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
fn html_element_onpointermove_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
extern "js" fn html_element_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
fn html_element_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
extern "js" fn html_element_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
fn html_element_onpointerup_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
extern "js" fn html_element_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
fn html_element_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
extern "js" fn html_element_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
fn html_element_onpointerout_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
extern "js" fn html_element_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
fn html_element_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
extern "js" fn html_element_ongotpointercapture_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
fn html_element_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
extern "js" fn html_element_onlostpointercapture_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
fn html_element_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
extern "js" fn html_element_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
fn html_element_onselectstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
extern "js" fn html_element_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
fn html_element_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
extern "js" fn html_element_content_editable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.contentEditable"

///|
fn html_element_content_editable_ffi(obj : JsValue) -> String {
  html_element_content_editable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_content_editable_ffi(
  obj : JsValue,
  content_editable : JsValue,
) -> Unit = "(obj, contentEditable) => { obj.contentEditable = contentEditable; }"

///|
extern "js" fn html_element_enter_key_hint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.enterKeyHint"

///|
fn html_element_enter_key_hint_ffi(obj : JsValue) -> String {
  html_element_enter_key_hint_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_enter_key_hint_ffi(
  obj : JsValue,
  enter_key_hint : JsValue,
) -> Unit = "(obj, enterKeyHint) => { obj.enterKeyHint = enterKeyHint; }"

///|
extern "js" fn html_element_is_content_editable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isContentEditable"

///|
fn html_element_is_content_editable_ffi(obj : JsValue) -> Bool {
  html_element_is_content_editable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_input_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inputMode"

///|
fn html_element_input_mode_ffi(obj : JsValue) -> String {
  html_element_input_mode_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_input_mode_ffi(
  obj : JsValue,
  input_mode : JsValue,
) -> Unit = "(obj, inputMode) => { obj.inputMode = inputMode; }"

///|
extern "js" fn html_element_dataset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dataset"

///|
fn html_element_dataset_ffi(obj : JsValue) -> DOMStringMap {
  html_element_dataset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_nonce_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nonce"

///|
fn html_element_nonce_ffi(obj : JsValue) -> String {
  html_element_nonce_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
extern "js" fn html_element_autofocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autofocus"

///|
fn html_element_autofocus_ffi(obj : JsValue) -> Bool {
  html_element_autofocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
extern "js" fn html_element_tab_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tabIndex"

///|
fn html_element_tab_index_ffi(obj : JsValue) -> Int {
  html_element_tab_index_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_element_set_tab_index_ffi(
  obj : JsValue,
  tab_index : JsValue,
) -> Unit = "(obj, tabIndex) => { obj.tabIndex = tabIndex; }"

///|
extern "js" fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(options)"

///|
extern "js" fn html_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
extern "js" fn html_element_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
fn html_element_style_ffi(obj : JsValue) -> CSSStyleProperties {
  html_element_style_ffi_js(obj).unsafe_cast()
}
