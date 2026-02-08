///|
extern "js" fn html_element_new_ffi() -> HTMLElement = "() => new HTMLElement()"

///|
extern "js" fn html_element_title_ffi(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
extern "js" fn html_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
extern "js" fn html_element_lang_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lang"

///|
extern "js" fn html_element_set_lang_ffi(obj : JsValue, lang : JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

///|
extern "js" fn html_element_translate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.translate"

///|
extern "js" fn html_element_set_translate_ffi(
  obj : JsValue,
  translate : JsValue,
) -> Unit = "(obj, translate) => { obj.translate = translate; }"

///|
extern "js" fn html_element_dir_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
extern "js" fn html_element_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
extern "js" fn html_element_hidden_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
extern "js" fn html_element_set_hidden_ffi(
  obj : JsValue,
  hidden : JsValue,
) -> Unit = "(obj, hidden) => { obj.hidden = hidden; }"

///|
extern "js" fn html_element_inert_ffi(obj : JsValue) -> JsValue = "(obj) => obj.inert"

///|
extern "js" fn html_element_set_inert_ffi(
  obj : JsValue,
  inert : JsValue,
) -> Unit = "(obj, inert) => { obj.inert = inert; }"

///|
extern "js" fn html_element_click_ffi(obj : JsValue) -> Unit = "(obj) => obj.click()"

///|
extern "js" fn html_element_access_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.accessKey"

///|
extern "js" fn html_element_set_access_key_ffi(
  obj : JsValue,
  access_key : JsValue,
) -> Unit = "(obj, accessKey) => { obj.accessKey = accessKey; }"

///|
extern "js" fn html_element_access_key_label_ffi(obj : JsValue) -> JsValue = "(obj) => obj.accessKeyLabel"

///|
extern "js" fn html_element_draggable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.draggable"

///|
extern "js" fn html_element_set_draggable_ffi(
  obj : JsValue,
  draggable : JsValue,
) -> Unit = "(obj, draggable) => { obj.draggable = draggable; }"

///|
extern "js" fn html_element_spellcheck_ffi(obj : JsValue) -> JsValue = "(obj) => obj.spellcheck"

///|
extern "js" fn html_element_set_spellcheck_ffi(
  obj : JsValue,
  spellcheck : JsValue,
) -> Unit = "(obj, spellcheck) => { obj.spellcheck = spellcheck; }"

///|
extern "js" fn html_element_writing_suggestions_ffi(obj : JsValue) -> JsValue = "(obj) => obj.writingSuggestions"

///|
extern "js" fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  writing_suggestions : JsValue,
) -> Unit = "(obj, writingSuggestions) => { obj.writingSuggestions = writingSuggestions; }"

///|
extern "js" fn html_element_autocapitalize_ffi(obj : JsValue) -> JsValue = "(obj) => obj.autocapitalize"

///|
extern "js" fn html_element_set_autocapitalize_ffi(
  obj : JsValue,
  autocapitalize : JsValue,
) -> Unit = "(obj, autocapitalize) => { obj.autocapitalize = autocapitalize; }"

///|
extern "js" fn html_element_autocorrect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.autocorrect"

///|
extern "js" fn html_element_set_autocorrect_ffi(
  obj : JsValue,
  autocorrect : JsValue,
) -> Unit = "(obj, autocorrect) => { obj.autocorrect = autocorrect; }"

///|
extern "js" fn html_element_inner_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.innerText"

///|
extern "js" fn html_element_set_inner_text_ffi(
  obj : JsValue,
  inner_text : JsValue,
) -> Unit = "(obj, innerText) => { obj.innerText = innerText; }"

///|
extern "js" fn html_element_outer_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.outerText"

///|
extern "js" fn html_element_set_outer_text_ffi(
  obj : JsValue,
  outer_text : JsValue,
) -> Unit = "(obj, outerText) => { obj.outerText = outerText; }"

///|
extern "js" fn html_element_attach_internals_ffi(obj : JsValue) -> JsValue = "(obj) => obj.attachInternals()"

///|
extern "js" fn html_element_show_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.showPopover(options)"

///|
extern "js" fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "(obj) => obj.hidePopover()"

///|
extern "js" fn html_element_toggle_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.togglePopover(options)"

///|
extern "js" fn html_element_popover_ffi(obj : JsValue) -> JsValue = "(obj) => obj.popover"

///|
extern "js" fn html_element_set_popover_ffi(
  obj : JsValue,
  popover : JsValue,
) -> Unit = "(obj, popover) => { obj.popover = popover; }"

///|
extern "js" fn html_element_heading_offset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.headingOffset"

///|
extern "js" fn html_element_set_heading_offset_ffi(
  obj : JsValue,
  heading_offset : JsValue,
) -> Unit = "(obj, headingOffset) => { obj.headingOffset = headingOffset; }"

///|
extern "js" fn html_element_heading_reset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.headingReset"

///|
extern "js" fn html_element_set_heading_reset_ffi(
  obj : JsValue,
  heading_reset : JsValue,
) -> Unit = "(obj, headingReset) => { obj.headingReset = headingReset; }"

///|
extern "js" fn html_element_scroll_parent_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scrollParent"

///|
extern "js" fn html_element_offset_parent_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetParent"

///|
extern "js" fn html_element_offset_top_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
extern "js" fn html_element_offset_left_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
extern "js" fn html_element_offset_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetWidth"

///|
extern "js" fn html_element_offset_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetHeight"

///|
extern "js" fn html_element_onabort_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
extern "js" fn html_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn html_element_onauxclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
extern "js" fn html_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn html_element_onbeforeinput_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
extern "js" fn html_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn html_element_onbeforematch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
extern "js" fn html_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn html_element_onbeforetoggle_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
extern "js" fn html_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn html_element_onblur_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
extern "js" fn html_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn html_element_oncancel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
extern "js" fn html_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn html_element_oncanplay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
extern "js" fn html_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn html_element_oncanplaythrough_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
extern "js" fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn html_element_onchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
extern "js" fn html_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn html_element_onclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
extern "js" fn html_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn html_element_onclose_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
extern "js" fn html_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn html_element_oncommand_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
extern "js" fn html_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn html_element_oncontextlost_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
extern "js" fn html_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn html_element_oncontextmenu_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
extern "js" fn html_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn html_element_oncontextrestored_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
extern "js" fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn html_element_oncopy_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
extern "js" fn html_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn html_element_oncuechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
extern "js" fn html_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn html_element_oncut_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
extern "js" fn html_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn html_element_ondblclick_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
extern "js" fn html_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn html_element_ondrag_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
extern "js" fn html_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn html_element_ondragend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
extern "js" fn html_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn html_element_ondragenter_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
extern "js" fn html_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn html_element_ondragleave_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
extern "js" fn html_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn html_element_ondragover_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
extern "js" fn html_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn html_element_ondragstart_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
extern "js" fn html_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn html_element_ondrop_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
extern "js" fn html_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn html_element_ondurationchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
extern "js" fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn html_element_onemptied_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
extern "js" fn html_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn html_element_onended_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
extern "js" fn html_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn html_element_onerror_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
extern "js" fn html_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn html_element_onfocus_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
extern "js" fn html_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn html_element_onformdata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
extern "js" fn html_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn html_element_oninput_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
extern "js" fn html_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn html_element_oninvalid_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
extern "js" fn html_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn html_element_onkeydown_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
extern "js" fn html_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn html_element_onkeypress_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
extern "js" fn html_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn html_element_onkeyup_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
extern "js" fn html_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn html_element_onload_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
extern "js" fn html_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn html_element_onloadeddata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
extern "js" fn html_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn html_element_onloadedmetadata_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
extern "js" fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn html_element_onloadstart_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
extern "js" fn html_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn html_element_onmousedown_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
extern "js" fn html_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn html_element_onmouseenter_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
extern "js" fn html_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn html_element_onmouseleave_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
extern "js" fn html_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn html_element_onmousemove_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
extern "js" fn html_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn html_element_onmouseout_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
extern "js" fn html_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn html_element_onmouseover_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
extern "js" fn html_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn html_element_onmouseup_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
extern "js" fn html_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn html_element_onpaste_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
extern "js" fn html_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn html_element_onpause_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
extern "js" fn html_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn html_element_onplay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
extern "js" fn html_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn html_element_onplaying_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
extern "js" fn html_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn html_element_onprogress_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
extern "js" fn html_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn html_element_onratechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
extern "js" fn html_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn html_element_onreset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
extern "js" fn html_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn html_element_onresize_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
extern "js" fn html_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn html_element_onscroll_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
extern "js" fn html_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn html_element_onscrollend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
extern "js" fn html_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn html_element_onsecuritypolicyviolation_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
extern "js" fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn html_element_onseeked_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
extern "js" fn html_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn html_element_onseeking_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
extern "js" fn html_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn html_element_onselect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
extern "js" fn html_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn html_element_onslotchange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
extern "js" fn html_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn html_element_onstalled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
extern "js" fn html_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn html_element_onsubmit_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
extern "js" fn html_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn html_element_onsuspend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
extern "js" fn html_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn html_element_ontimeupdate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
extern "js" fn html_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn html_element_ontoggle_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
extern "js" fn html_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn html_element_onvolumechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
extern "js" fn html_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn html_element_onwaiting_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
extern "js" fn html_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn html_element_onwebkitanimationend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
extern "js" fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn html_element_onwebkitanimationiteration_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
extern "js" fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn html_element_onwebkitanimationstart_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
extern "js" fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn html_element_onwebkittransitionend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
extern "js" fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn html_element_onwheel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
extern "js" fn html_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn html_element_content_editable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.contentEditable"

///|
extern "js" fn html_element_set_content_editable_ffi(
  obj : JsValue,
  content_editable : JsValue,
) -> Unit = "(obj, contentEditable) => { obj.contentEditable = contentEditable; }"

///|
extern "js" fn html_element_enter_key_hint_ffi(obj : JsValue) -> JsValue = "(obj) => obj.enterKeyHint"

///|
extern "js" fn html_element_set_enter_key_hint_ffi(
  obj : JsValue,
  enter_key_hint : JsValue,
) -> Unit = "(obj, enterKeyHint) => { obj.enterKeyHint = enterKeyHint; }"

///|
extern "js" fn html_element_is_content_editable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.isContentEditable"

///|
extern "js" fn html_element_input_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.inputMode"

///|
extern "js" fn html_element_set_input_mode_ffi(
  obj : JsValue,
  input_mode : JsValue,
) -> Unit = "(obj, inputMode) => { obj.inputMode = inputMode; }"

///|
extern "js" fn html_element_dataset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dataset"

///|
extern "js" fn html_element_nonce_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nonce"

///|
extern "js" fn html_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
extern "js" fn html_element_autofocus_ffi(obj : JsValue) -> JsValue = "(obj) => obj.autofocus"

///|
extern "js" fn html_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
extern "js" fn html_element_tab_index_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tabIndex"

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
extern "js" fn html_element_style_ffi(obj : JsValue) -> JsValue = "(obj) => obj.style"
