///|
extern "js" fn svg_element_class_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.className"

///|
fn svg_element_class_name_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_element_class_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_owner_svg_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerSVGElement"

///|
fn svg_element_owner_svg_element_ffi(obj : JsValue) -> SVGSVGElement {
  svg_element_owner_svg_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_viewport_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewportElement"

///|
fn svg_element_viewport_element_ffi(obj : JsValue) -> SVGElement {
  svg_element_viewport_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn svg_element_onabort_ffi(obj : JsValue) -> EventHandler {
  svg_element_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn svg_element_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
fn svg_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
extern "js" fn svg_element_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
fn svg_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
extern "js" fn svg_element_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
fn svg_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
extern "js" fn svg_element_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
fn svg_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
extern "js" fn svg_element_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
fn svg_element_onblur_ffi(obj : JsValue) -> EventHandler {
  svg_element_onblur_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
extern "js" fn svg_element_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
fn svg_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn svg_element_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
fn svg_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
extern "js" fn svg_element_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
fn svg_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
extern "js" fn svg_element_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn svg_element_onchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn svg_element_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
fn svg_element_onclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn svg_element_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn svg_element_onclose_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn svg_element_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
fn svg_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncommand_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
extern "js" fn svg_element_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
fn svg_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
extern "js" fn svg_element_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
fn svg_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
extern "js" fn svg_element_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
fn svg_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
extern "js" fn svg_element_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
fn svg_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncopy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
extern "js" fn svg_element_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
fn svg_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
extern "js" fn svg_element_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
fn svg_element_oncut_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncut_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
extern "js" fn svg_element_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
fn svg_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
extern "js" fn svg_element_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
fn svg_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrag_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
extern "js" fn svg_element_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
fn svg_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
extern "js" fn svg_element_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
fn svg_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
extern "js" fn svg_element_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
fn svg_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
extern "js" fn svg_element_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
fn svg_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
extern "js" fn svg_element_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
fn svg_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
extern "js" fn svg_element_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
fn svg_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrop_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
extern "js" fn svg_element_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
fn svg_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
extern "js" fn svg_element_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
fn svg_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  svg_element_onemptied_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
extern "js" fn svg_element_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
fn svg_element_onended_ffi(obj : JsValue) -> EventHandler {
  svg_element_onended_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
extern "js" fn svg_element_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn svg_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  svg_element_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn svg_element_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
fn svg_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  svg_element_onfocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
extern "js" fn svg_element_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
fn svg_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onformdata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
extern "js" fn svg_element_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
fn svg_element_oninput_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninput_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
extern "js" fn svg_element_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
fn svg_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
extern "js" fn svg_element_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
fn svg_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
extern "js" fn svg_element_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
fn svg_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
extern "js" fn svg_element_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
fn svg_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
extern "js" fn svg_element_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
fn svg_element_onload_ffi(obj : JsValue) -> EventHandler {
  svg_element_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn svg_element_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
fn svg_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
extern "js" fn svg_element_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
fn svg_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
extern "js" fn svg_element_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
fn svg_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn svg_element_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
fn svg_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
extern "js" fn svg_element_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
fn svg_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
extern "js" fn svg_element_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
fn svg_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
extern "js" fn svg_element_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
fn svg_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
extern "js" fn svg_element_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
fn svg_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
extern "js" fn svg_element_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
fn svg_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
extern "js" fn svg_element_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
fn svg_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
extern "js" fn svg_element_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
fn svg_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpaste_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
extern "js" fn svg_element_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
fn svg_element_onpause_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpause_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
extern "js" fn svg_element_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
fn svg_element_onplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplay_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
extern "js" fn svg_element_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
fn svg_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplaying_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
extern "js" fn svg_element_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
fn svg_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn svg_element_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
fn svg_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onratechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
extern "js" fn svg_element_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
fn svg_element_onreset_ffi(obj : JsValue) -> EventHandler {
  svg_element_onreset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
extern "js" fn svg_element_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
fn svg_element_onresize_ffi(obj : JsValue) -> EventHandler {
  svg_element_onresize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn svg_element_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
fn svg_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscroll_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn svg_element_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
fn svg_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
extern "js" fn svg_element_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
fn svg_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
extern "js" fn svg_element_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
fn svg_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeked_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
extern "js" fn svg_element_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
fn svg_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeking_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
extern "js" fn svg_element_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
fn svg_element_onselect_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
extern "js" fn svg_element_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
fn svg_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
extern "js" fn svg_element_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
fn svg_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  svg_element_onstalled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
extern "js" fn svg_element_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
fn svg_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
extern "js" fn svg_element_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
fn svg_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
extern "js" fn svg_element_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
fn svg_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
extern "js" fn svg_element_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
fn svg_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
extern "js" fn svg_element_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
fn svg_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
extern "js" fn svg_element_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
fn svg_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
extern "js" fn svg_element_onwebkitanimationend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
fn svg_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
extern "js" fn svg_element_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
fn svg_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
extern "js" fn svg_element_onwebkitanimationstart_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
fn svg_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
extern "js" fn svg_element_onwebkittransitionend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
fn svg_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
extern "js" fn svg_element_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
fn svg_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwheel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
extern "js" fn svg_element_corresponding_element_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.correspondingElement"

///|
fn svg_element_corresponding_element_ffi(obj : JsValue) -> SVGElement {
  svg_element_corresponding_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_corresponding_use_element_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.correspondingUseElement"

///|
fn svg_element_corresponding_use_element_ffi(obj : JsValue) -> SVGUseElement {
  svg_element_corresponding_use_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_dataset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dataset"

///|
fn svg_element_dataset_ffi(obj : JsValue) -> DOMStringMap {
  svg_element_dataset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_nonce_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nonce"

///|
fn svg_element_nonce_ffi(obj : JsValue) -> String {
  svg_element_nonce_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
extern "js" fn svg_element_autofocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autofocus"

///|
fn svg_element_autofocus_ffi(obj : JsValue) -> Bool {
  svg_element_autofocus_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
extern "js" fn svg_element_tab_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tabIndex"

///|
fn svg_element_tab_index_ffi(obj : JsValue) -> Int {
  svg_element_tab_index_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_element_set_tab_index_ffi(
  obj : JsValue,
  tab_index : JsValue,
) -> Unit = "(obj, tabIndex) => { obj.tabIndex = tabIndex; }"

///|
extern "js" fn svg_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(options)"

///|
extern "js" fn svg_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
extern "js" fn svg_element_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
fn svg_element_style_ffi(obj : JsValue) -> CSSStyleProperties {
  svg_element_style_ffi_js(obj).unsafe_cast()
}
