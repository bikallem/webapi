// Do not edit. This file is generated.
// MoonBit type: SVGElement
// Specifications: SVG.idl

///|
/// [SVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement)
#external
pub type SVGElement

///|
pub impl TJsValue for SVGElement with to_js(self : SVGElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGElement] SVGElement::into(self : SVGElement) -> T = "%identity"

///|
pub impl TSVGElement for SVGElement

///|
pub impl TElement for SVGElement

///|
pub impl TNode for SVGElement

///|
pub impl TEventTarget for SVGElement

///|
/// [SVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement) interface.
pub trait TSVGElement: TElement {
  class_name(self : Self) -> SVGAnimatedString = _
  owner_svg_element(self : Self) -> SVGSVGElement = _
  viewport_element(self : Self) -> SVGElement = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : EventHandler,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, onwebkitanimationend : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : EventHandler,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, onwebkitanimationstart : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, onwebkittransitionend : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : EventHandler) -> Unit = _
  corresponding_element(self : Self) -> SVGElement = _
  corresponding_use_element(self : Self) -> SVGUseElement = _
  dataset(self : Self) -> DOMStringMap = _
  nonce(self : Self) -> String = _
  set_nonce(self : Self, nonce : String) -> Unit = _
  autofocus(self : Self) -> Bool = _
  set_autofocus(self : Self, autofocus : Bool) -> Unit = _
  tab_index(self : Self) -> Int = _
  set_tab_index(self : Self, tab_index : Int) -> Unit = _
  focus(self : Self, options? : FocusOptions) -> Unit = _
  blur(self : Self) -> Unit = _
  style(self : Self) -> CSSStyleProperties = _
}

///|
/// [SVGElement.className](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/className)
impl TSVGElement with class_name(self : Self) -> SVGAnimatedString {
  svg_element_class_name_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ownerSVGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ownerSVGElement)
impl TSVGElement with owner_svg_element(self : Self) -> SVGSVGElement {
  svg_element_owner_svg_element_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.viewportElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/viewportElement)
impl TSVGElement with viewport_element(self : Self) -> SVGElement {
  svg_element_viewport_element_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onabort)
impl TSVGElement with onabort(self : Self) -> EventHandler {
  svg_element_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onabort)
impl TSVGElement with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  svg_element_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with onauxclick(self : Self) -> EventHandler {
  svg_element_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit {
  svg_element_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onauxclick),
  )
}

///|
/// [SVGElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforeinput)
impl TSVGElement with onbeforeinput(self : Self) -> EventHandler {
  svg_element_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforeinput)
impl TSVGElement with set_onbeforeinput(
  self : Self,
  onbeforeinput : EventHandler,
) -> Unit {
  svg_element_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeinput),
  )
}

///|
/// [SVGElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforematch)
impl TSVGElement with onbeforematch(self : Self) -> EventHandler {
  svg_element_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforematch)
impl TSVGElement with set_onbeforematch(
  self : Self,
  onbeforematch : EventHandler,
) -> Unit {
  svg_element_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforematch),
  )
}

///|
/// [SVGElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforetoggle)
impl TSVGElement with onbeforetoggle(self : Self) -> EventHandler {
  svg_element_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforetoggle)
impl TSVGElement with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : EventHandler,
) -> Unit {
  svg_element_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforetoggle),
  )
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with onblur(self : Self) -> EventHandler {
  svg_element_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with set_onblur(self : Self, onblur : EventHandler) -> Unit {
  svg_element_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with oncancel(self : Self) -> EventHandler {
  svg_element_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  svg_element_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with oncanplay(self : Self) -> EventHandler {
  svg_element_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit {
  svg_element_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplay),
  )
}

///|
/// [SVGElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplaythrough)
impl TSVGElement with oncanplaythrough(self : Self) -> EventHandler {
  svg_element_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplaythrough)
impl TSVGElement with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : EventHandler,
) -> Unit {
  svg_element_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplaythrough),
  )
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with onchange(self : Self) -> EventHandler {
  svg_element_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  svg_element_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with onclick(self : Self) -> EventHandler {
  svg_element_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with set_onclick(self : Self, onclick : EventHandler) -> Unit {
  svg_element_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with onclose(self : Self) -> EventHandler {
  svg_element_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  svg_element_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with oncommand(self : Self) -> EventHandler {
  svg_element_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with set_oncommand(self : Self, oncommand : EventHandler) -> Unit {
  svg_element_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncommand),
  )
}

///|
/// [SVGElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextlost)
impl TSVGElement with oncontextlost(self : Self) -> EventHandler {
  svg_element_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextlost)
impl TSVGElement with set_oncontextlost(
  self : Self,
  oncontextlost : EventHandler,
) -> Unit {
  svg_element_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
/// [SVGElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextmenu)
impl TSVGElement with oncontextmenu(self : Self) -> EventHandler {
  svg_element_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextmenu)
impl TSVGElement with set_oncontextmenu(
  self : Self,
  oncontextmenu : EventHandler,
) -> Unit {
  svg_element_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextmenu),
  )
}

///|
/// [SVGElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextrestored)
impl TSVGElement with oncontextrestored(self : Self) -> EventHandler {
  svg_element_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextrestored)
impl TSVGElement with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandler,
) -> Unit {
  svg_element_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with oncopy(self : Self) -> EventHandler {
  svg_element_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with set_oncopy(self : Self, oncopy : EventHandler) -> Unit {
  svg_element_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with oncuechange(self : Self) -> EventHandler {
  svg_element_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit {
  svg_element_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with oncut(self : Self) -> EventHandler {
  svg_element_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with set_oncut(self : Self, oncut : EventHandler) -> Unit {
  svg_element_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with ondblclick(self : Self) -> EventHandler {
  svg_element_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit {
  svg_element_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondblclick),
  )
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with ondrag(self : Self) -> EventHandler {
  svg_element_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with set_ondrag(self : Self, ondrag : EventHandler) -> Unit {
  svg_element_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with ondragend(self : Self) -> EventHandler {
  svg_element_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with set_ondragend(self : Self, ondragend : EventHandler) -> Unit {
  svg_element_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragend),
  )
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with ondragenter(self : Self) -> EventHandler {
  svg_element_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit {
  svg_element_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragenter),
  )
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with ondragleave(self : Self) -> EventHandler {
  svg_element_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit {
  svg_element_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragleave),
  )
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with ondragover(self : Self) -> EventHandler {
  svg_element_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with set_ondragover(self : Self, ondragover : EventHandler) -> Unit {
  svg_element_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragover),
  )
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with ondragstart(self : Self) -> EventHandler {
  svg_element_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit {
  svg_element_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragstart),
  )
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with ondrop(self : Self) -> EventHandler {
  svg_element_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with set_ondrop(self : Self, ondrop : EventHandler) -> Unit {
  svg_element_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

///|
/// [SVGElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondurationchange)
impl TSVGElement with ondurationchange(self : Self) -> EventHandler {
  svg_element_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondurationchange)
impl TSVGElement with set_ondurationchange(
  self : Self,
  ondurationchange : EventHandler,
) -> Unit {
  svg_element_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondurationchange),
  )
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with onemptied(self : Self) -> EventHandler {
  svg_element_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with set_onemptied(self : Self, onemptied : EventHandler) -> Unit {
  svg_element_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onemptied),
  )
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with onended(self : Self) -> EventHandler {
  svg_element_onended_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with set_onended(self : Self, onended : EventHandler) -> Unit {
  svg_element_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with onerror(self : Self) -> OnErrorEventHandler {
  svg_element_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit {
  svg_element_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with onfocus(self : Self) -> EventHandler {
  svg_element_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with set_onfocus(self : Self, onfocus : EventHandler) -> Unit {
  svg_element_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with onformdata(self : Self) -> EventHandler {
  svg_element_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with set_onformdata(self : Self, onformdata : EventHandler) -> Unit {
  svg_element_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onformdata),
  )
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with oninput(self : Self) -> EventHandler {
  svg_element_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with set_oninput(self : Self, oninput : EventHandler) -> Unit {
  svg_element_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with oninvalid(self : Self) -> EventHandler {
  svg_element_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit {
  svg_element_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oninvalid),
  )
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with onkeydown(self : Self) -> EventHandler {
  svg_element_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit {
  svg_element_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeydown),
  )
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with onkeypress(self : Self) -> EventHandler {
  svg_element_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit {
  svg_element_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeypress),
  )
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with onkeyup(self : Self) -> EventHandler {
  svg_element_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit {
  svg_element_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with onload(self : Self) -> EventHandler {
  svg_element_onload_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with set_onload(self : Self, onload : EventHandler) -> Unit {
  svg_element_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with onloadeddata(self : Self) -> EventHandler {
  svg_element_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with set_onloadeddata(self : Self, onloadeddata : EventHandler) -> Unit {
  svg_element_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadeddata),
  )
}

///|
/// [SVGElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadedmetadata)
impl TSVGElement with onloadedmetadata(self : Self) -> EventHandler {
  svg_element_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadedmetadata)
impl TSVGElement with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : EventHandler,
) -> Unit {
  svg_element_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadedmetadata),
  )
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with onloadstart(self : Self) -> EventHandler {
  svg_element_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit {
  svg_element_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with onmousedown(self : Self) -> EventHandler {
  svg_element_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit {
  svg_element_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousedown),
  )
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with onmouseenter(self : Self) -> EventHandler {
  svg_element_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with set_onmouseenter(self : Self, onmouseenter : EventHandler) -> Unit {
  svg_element_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseenter),
  )
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with onmouseleave(self : Self) -> EventHandler {
  svg_element_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with set_onmouseleave(self : Self, onmouseleave : EventHandler) -> Unit {
  svg_element_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseleave),
  )
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with onmousemove(self : Self) -> EventHandler {
  svg_element_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit {
  svg_element_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousemove),
  )
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with onmouseout(self : Self) -> EventHandler {
  svg_element_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit {
  svg_element_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseout),
  )
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with onmouseover(self : Self) -> EventHandler {
  svg_element_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit {
  svg_element_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseover),
  )
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with onmouseup(self : Self) -> EventHandler {
  svg_element_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit {
  svg_element_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseup),
  )
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with onpaste(self : Self) -> EventHandler {
  svg_element_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with set_onpaste(self : Self, onpaste : EventHandler) -> Unit {
  svg_element_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with onpause(self : Self) -> EventHandler {
  svg_element_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with set_onpause(self : Self, onpause : EventHandler) -> Unit {
  svg_element_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with onplay(self : Self) -> EventHandler {
  svg_element_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with set_onplay(self : Self, onplay : EventHandler) -> Unit {
  svg_element_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with onplaying(self : Self) -> EventHandler {
  svg_element_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with set_onplaying(self : Self, onplaying : EventHandler) -> Unit {
  svg_element_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onplaying),
  )
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with onprogress(self : Self) -> EventHandler {
  svg_element_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with set_onprogress(self : Self, onprogress : EventHandler) -> Unit {
  svg_element_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with onratechange(self : Self) -> EventHandler {
  svg_element_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with set_onratechange(self : Self, onratechange : EventHandler) -> Unit {
  svg_element_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onratechange),
  )
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with onreset(self : Self) -> EventHandler {
  svg_element_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with set_onreset(self : Self, onreset : EventHandler) -> Unit {
  svg_element_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with onresize(self : Self) -> EventHandler {
  svg_element_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with set_onresize(self : Self, onresize : EventHandler) -> Unit {
  svg_element_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with onscroll(self : Self) -> EventHandler {
  svg_element_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with set_onscroll(self : Self, onscroll : EventHandler) -> Unit {
  svg_element_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with onscrollend(self : Self) -> EventHandler {
  svg_element_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit {
  svg_element_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscrollend),
  )
}

///|
/// [SVGElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsecuritypolicyviolation)
impl TSVGElement with onsecuritypolicyviolation(self : Self) -> EventHandler {
  svg_element_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsecuritypolicyviolation)
impl TSVGElement with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : EventHandler,
) -> Unit {
  svg_element_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsecuritypolicyviolation),
  )
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with onseeked(self : Self) -> EventHandler {
  svg_element_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with set_onseeked(self : Self, onseeked : EventHandler) -> Unit {
  svg_element_set_onseeked_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeked))
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with onseeking(self : Self) -> EventHandler {
  svg_element_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with set_onseeking(self : Self, onseeking : EventHandler) -> Unit {
  svg_element_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onseeking),
  )
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with onselect(self : Self) -> EventHandler {
  svg_element_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with set_onselect(self : Self, onselect : EventHandler) -> Unit {
  svg_element_set_onselect_ffi(TJsValue::to_js(self), TJsValue::to_js(onselect))
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with onslotchange(self : Self) -> EventHandler {
  svg_element_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with set_onslotchange(self : Self, onslotchange : EventHandler) -> Unit {
  svg_element_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with onstalled(self : Self) -> EventHandler {
  svg_element_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with set_onstalled(self : Self, onstalled : EventHandler) -> Unit {
  svg_element_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstalled),
  )
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with onsubmit(self : Self) -> EventHandler {
  svg_element_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit {
  svg_element_set_onsubmit_ffi(TJsValue::to_js(self), TJsValue::to_js(onsubmit))
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with onsuspend(self : Self) -> EventHandler {
  svg_element_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit {
  svg_element_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsuspend),
  )
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with ontimeupdate(self : Self) -> EventHandler {
  svg_element_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with set_ontimeupdate(self : Self, ontimeupdate : EventHandler) -> Unit {
  svg_element_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeupdate),
  )
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with ontoggle(self : Self) -> EventHandler {
  svg_element_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit {
  svg_element_set_ontoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(ontoggle))
}

///|
/// [SVGElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onvolumechange)
impl TSVGElement with onvolumechange(self : Self) -> EventHandler {
  svg_element_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onvolumechange)
impl TSVGElement with set_onvolumechange(
  self : Self,
  onvolumechange : EventHandler,
) -> Unit {
  svg_element_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvolumechange),
  )
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with onwaiting(self : Self) -> EventHandler {
  svg_element_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit {
  svg_element_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwaiting),
  )
}

///|
/// [SVGElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationend)
impl TSVGElement with onwebkitanimationend(self : Self) -> EventHandler {
  svg_element_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationend)
impl TSVGElement with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : EventHandler,
) -> Unit {
  svg_element_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationend),
  )
}

///|
/// [SVGElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationiteration)
impl TSVGElement with onwebkitanimationiteration(self : Self) -> EventHandler {
  svg_element_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationiteration)
impl TSVGElement with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : EventHandler,
) -> Unit {
  svg_element_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationiteration),
  )
}

///|
/// [SVGElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationstart)
impl TSVGElement with onwebkitanimationstart(self : Self) -> EventHandler {
  svg_element_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationstart)
impl TSVGElement with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : EventHandler,
) -> Unit {
  svg_element_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationstart),
  )
}

///|
/// [SVGElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkittransitionend)
impl TSVGElement with onwebkittransitionend(self : Self) -> EventHandler {
  svg_element_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkittransitionend)
impl TSVGElement with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : EventHandler,
) -> Unit {
  svg_element_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkittransitionend),
  )
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with onwheel(self : Self) -> EventHandler {
  svg_element_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with set_onwheel(self : Self, onwheel : EventHandler) -> Unit {
  svg_element_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

///|
/// [SVGElement.correspondingElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/correspondingElement)
impl TSVGElement with corresponding_element(self : Self) -> SVGElement {
  svg_element_corresponding_element_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.correspondingUseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/correspondingUseElement)
impl TSVGElement with corresponding_use_element(self : Self) -> SVGUseElement {
  svg_element_corresponding_use_element_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.dataset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/dataset)
impl TSVGElement with dataset(self : Self) -> DOMStringMap {
  svg_element_dataset_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/nonce)
impl TSVGElement with nonce(self : Self) -> String {
  svg_element_nonce_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/nonce)
impl TSVGElement with set_nonce(self : Self, nonce : String) -> Unit {
  svg_element_set_nonce_ffi(TJsValue::to_js(self), TJsValue::to_js(nonce))
}

///|
/// [SVGElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/autofocus)
impl TSVGElement with autofocus(self : Self) -> Bool {
  svg_element_autofocus_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/autofocus)
impl TSVGElement with set_autofocus(self : Self, autofocus : Bool) -> Unit {
  svg_element_set_autofocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autofocus),
  )
}

///|
/// [SVGElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/tabIndex)
impl TSVGElement with tab_index(self : Self) -> Int {
  svg_element_tab_index_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/tabIndex)
impl TSVGElement with set_tab_index(self : Self, tab_index : Int) -> Unit {
  svg_element_set_tab_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tab_index),
  )
}

///|
/// [SVGElement.focus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/focus)
impl TSVGElement with focus(
  self : Self,
  options? : FocusOptions = FocusOptions::empty(),
) -> Unit {
  svg_element_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
/// [SVGElement.blur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/blur)
impl TSVGElement with blur(self : Self) -> Unit {
  svg_element_blur_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.style](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/style)
impl TSVGElement with style(self : Self) -> CSSStyleProperties {
  svg_element_style_ffi(TJsValue::to_js(self))
}
