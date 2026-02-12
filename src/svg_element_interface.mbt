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
  onabort(self : Self) -> EventHandlerNonNull = _
  set_onabort(self : Self, onabort : EventHandlerNonNull) -> Unit = _
  onauxclick(self : Self) -> EventHandlerNonNull = _
  set_onauxclick(self : Self, onauxclick : EventHandlerNonNull) -> Unit = _
  onbeforeinput(self : Self) -> EventHandlerNonNull = _
  set_onbeforeinput(self : Self, onbeforeinput : EventHandlerNonNull) -> Unit = _
  onbeforematch(self : Self) -> EventHandlerNonNull = _
  set_onbeforematch(self : Self, onbeforematch : EventHandlerNonNull) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandlerNonNull = _
  set_onbeforetoggle(self : Self, onbeforetoggle : EventHandlerNonNull) -> Unit = _
  onblur(self : Self) -> EventHandlerNonNull = _
  set_onblur(self : Self, onblur : EventHandlerNonNull) -> Unit = _
  oncancel(self : Self) -> EventHandlerNonNull = _
  set_oncancel(self : Self, oncancel : EventHandlerNonNull) -> Unit = _
  oncanplay(self : Self) -> EventHandlerNonNull = _
  set_oncanplay(self : Self, oncanplay : EventHandlerNonNull) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandlerNonNull = _
  set_oncanplaythrough(self : Self, oncanplaythrough : EventHandlerNonNull) -> Unit = _
  onchange(self : Self) -> EventHandlerNonNull = _
  set_onchange(self : Self, onchange : EventHandlerNonNull) -> Unit = _
  onclick(self : Self) -> EventHandlerNonNull = _
  set_onclick(self : Self, onclick : EventHandlerNonNull) -> Unit = _
  onclose(self : Self) -> EventHandlerNonNull = _
  set_onclose(self : Self, onclose : EventHandlerNonNull) -> Unit = _
  oncommand(self : Self) -> EventHandlerNonNull = _
  set_oncommand(self : Self, oncommand : EventHandlerNonNull) -> Unit = _
  oncontextlost(self : Self) -> EventHandlerNonNull = _
  set_oncontextlost(self : Self, oncontextlost : EventHandlerNonNull) -> Unit = _
  oncontextmenu(self : Self) -> EventHandlerNonNull = _
  set_oncontextmenu(self : Self, oncontextmenu : EventHandlerNonNull) -> Unit = _
  oncontextrestored(self : Self) -> EventHandlerNonNull = _
  set_oncontextrestored(self : Self, oncontextrestored : EventHandlerNonNull) -> Unit = _
  oncopy(self : Self) -> EventHandlerNonNull = _
  set_oncopy(self : Self, oncopy : EventHandlerNonNull) -> Unit = _
  oncuechange(self : Self) -> EventHandlerNonNull = _
  set_oncuechange(self : Self, oncuechange : EventHandlerNonNull) -> Unit = _
  oncut(self : Self) -> EventHandlerNonNull = _
  set_oncut(self : Self, oncut : EventHandlerNonNull) -> Unit = _
  ondblclick(self : Self) -> EventHandlerNonNull = _
  set_ondblclick(self : Self, ondblclick : EventHandlerNonNull) -> Unit = _
  ondrag(self : Self) -> EventHandlerNonNull = _
  set_ondrag(self : Self, ondrag : EventHandlerNonNull) -> Unit = _
  ondragend(self : Self) -> EventHandlerNonNull = _
  set_ondragend(self : Self, ondragend : EventHandlerNonNull) -> Unit = _
  ondragenter(self : Self) -> EventHandlerNonNull = _
  set_ondragenter(self : Self, ondragenter : EventHandlerNonNull) -> Unit = _
  ondragleave(self : Self) -> EventHandlerNonNull = _
  set_ondragleave(self : Self, ondragleave : EventHandlerNonNull) -> Unit = _
  ondragover(self : Self) -> EventHandlerNonNull = _
  set_ondragover(self : Self, ondragover : EventHandlerNonNull) -> Unit = _
  ondragstart(self : Self) -> EventHandlerNonNull = _
  set_ondragstart(self : Self, ondragstart : EventHandlerNonNull) -> Unit = _
  ondrop(self : Self) -> EventHandlerNonNull = _
  set_ondrop(self : Self, ondrop : EventHandlerNonNull) -> Unit = _
  ondurationchange(self : Self) -> EventHandlerNonNull = _
  set_ondurationchange(self : Self, ondurationchange : EventHandlerNonNull) -> Unit = _
  onemptied(self : Self) -> EventHandlerNonNull = _
  set_onemptied(self : Self, onemptied : EventHandlerNonNull) -> Unit = _
  onended(self : Self) -> EventHandlerNonNull = _
  set_onended(self : Self, onended : EventHandlerNonNull) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandlerNonNull = _
  set_onerror(self : Self, onerror : OnErrorEventHandlerNonNull) -> Unit = _
  onfocus(self : Self) -> EventHandlerNonNull = _
  set_onfocus(self : Self, onfocus : EventHandlerNonNull) -> Unit = _
  onformdata(self : Self) -> EventHandlerNonNull = _
  set_onformdata(self : Self, onformdata : EventHandlerNonNull) -> Unit = _
  oninput(self : Self) -> EventHandlerNonNull = _
  set_oninput(self : Self, oninput : EventHandlerNonNull) -> Unit = _
  oninvalid(self : Self) -> EventHandlerNonNull = _
  set_oninvalid(self : Self, oninvalid : EventHandlerNonNull) -> Unit = _
  onkeydown(self : Self) -> EventHandlerNonNull = _
  set_onkeydown(self : Self, onkeydown : EventHandlerNonNull) -> Unit = _
  onkeypress(self : Self) -> EventHandlerNonNull = _
  set_onkeypress(self : Self, onkeypress : EventHandlerNonNull) -> Unit = _
  onkeyup(self : Self) -> EventHandlerNonNull = _
  set_onkeyup(self : Self, onkeyup : EventHandlerNonNull) -> Unit = _
  onload(self : Self) -> EventHandlerNonNull = _
  set_onload(self : Self, onload : EventHandlerNonNull) -> Unit = _
  onloadeddata(self : Self) -> EventHandlerNonNull = _
  set_onloadeddata(self : Self, onloadeddata : EventHandlerNonNull) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandlerNonNull = _
  set_onloadedmetadata(self : Self, onloadedmetadata : EventHandlerNonNull) -> Unit = _
  onloadstart(self : Self) -> EventHandlerNonNull = _
  set_onloadstart(self : Self, onloadstart : EventHandlerNonNull) -> Unit = _
  onmousedown(self : Self) -> EventHandlerNonNull = _
  set_onmousedown(self : Self, onmousedown : EventHandlerNonNull) -> Unit = _
  onmouseenter(self : Self) -> EventHandlerNonNull = _
  set_onmouseenter(self : Self, onmouseenter : EventHandlerNonNull) -> Unit = _
  onmouseleave(self : Self) -> EventHandlerNonNull = _
  set_onmouseleave(self : Self, onmouseleave : EventHandlerNonNull) -> Unit = _
  onmousemove(self : Self) -> EventHandlerNonNull = _
  set_onmousemove(self : Self, onmousemove : EventHandlerNonNull) -> Unit = _
  onmouseout(self : Self) -> EventHandlerNonNull = _
  set_onmouseout(self : Self, onmouseout : EventHandlerNonNull) -> Unit = _
  onmouseover(self : Self) -> EventHandlerNonNull = _
  set_onmouseover(self : Self, onmouseover : EventHandlerNonNull) -> Unit = _
  onmouseup(self : Self) -> EventHandlerNonNull = _
  set_onmouseup(self : Self, onmouseup : EventHandlerNonNull) -> Unit = _
  onpaste(self : Self) -> EventHandlerNonNull = _
  set_onpaste(self : Self, onpaste : EventHandlerNonNull) -> Unit = _
  onpause(self : Self) -> EventHandlerNonNull = _
  set_onpause(self : Self, onpause : EventHandlerNonNull) -> Unit = _
  onplay(self : Self) -> EventHandlerNonNull = _
  set_onplay(self : Self, onplay : EventHandlerNonNull) -> Unit = _
  onplaying(self : Self) -> EventHandlerNonNull = _
  set_onplaying(self : Self, onplaying : EventHandlerNonNull) -> Unit = _
  onprogress(self : Self) -> EventHandlerNonNull = _
  set_onprogress(self : Self, onprogress : EventHandlerNonNull) -> Unit = _
  onratechange(self : Self) -> EventHandlerNonNull = _
  set_onratechange(self : Self, onratechange : EventHandlerNonNull) -> Unit = _
  onreset(self : Self) -> EventHandlerNonNull = _
  set_onreset(self : Self, onreset : EventHandlerNonNull) -> Unit = _
  onresize(self : Self) -> EventHandlerNonNull = _
  set_onresize(self : Self, onresize : EventHandlerNonNull) -> Unit = _
  onscroll(self : Self) -> EventHandlerNonNull = _
  set_onscroll(self : Self, onscroll : EventHandlerNonNull) -> Unit = _
  onscrollend(self : Self) -> EventHandlerNonNull = _
  set_onscrollend(self : Self, onscrollend : EventHandlerNonNull) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandlerNonNull = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : EventHandlerNonNull,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandlerNonNull = _
  set_onseeked(self : Self, onseeked : EventHandlerNonNull) -> Unit = _
  onseeking(self : Self) -> EventHandlerNonNull = _
  set_onseeking(self : Self, onseeking : EventHandlerNonNull) -> Unit = _
  onselect(self : Self) -> EventHandlerNonNull = _
  set_onselect(self : Self, onselect : EventHandlerNonNull) -> Unit = _
  onslotchange(self : Self) -> EventHandlerNonNull = _
  set_onslotchange(self : Self, onslotchange : EventHandlerNonNull) -> Unit = _
  onstalled(self : Self) -> EventHandlerNonNull = _
  set_onstalled(self : Self, onstalled : EventHandlerNonNull) -> Unit = _
  onsubmit(self : Self) -> EventHandlerNonNull = _
  set_onsubmit(self : Self, onsubmit : EventHandlerNonNull) -> Unit = _
  onsuspend(self : Self) -> EventHandlerNonNull = _
  set_onsuspend(self : Self, onsuspend : EventHandlerNonNull) -> Unit = _
  ontimeupdate(self : Self) -> EventHandlerNonNull = _
  set_ontimeupdate(self : Self, ontimeupdate : EventHandlerNonNull) -> Unit = _
  ontoggle(self : Self) -> EventHandlerNonNull = _
  set_ontoggle(self : Self, ontoggle : EventHandlerNonNull) -> Unit = _
  onvolumechange(self : Self) -> EventHandlerNonNull = _
  set_onvolumechange(self : Self, onvolumechange : EventHandlerNonNull) -> Unit = _
  onwaiting(self : Self) -> EventHandlerNonNull = _
  set_onwaiting(self : Self, onwaiting : EventHandlerNonNull) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandlerNonNull = _
  set_onwebkitanimationend(
    self : Self,
    onwebkitanimationend : EventHandlerNonNull,
  ) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandlerNonNull = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : EventHandlerNonNull,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandlerNonNull = _
  set_onwebkitanimationstart(
    self : Self,
    onwebkitanimationstart : EventHandlerNonNull,
  ) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandlerNonNull = _
  set_onwebkittransitionend(
    self : Self,
    onwebkittransitionend : EventHandlerNonNull,
  ) -> Unit = _
  onwheel(self : Self) -> EventHandlerNonNull = _
  set_onwheel(self : Self, onwheel : EventHandlerNonNull) -> Unit = _
  ontouchstart(self : Self) -> EventHandlerNonNull = _
  set_ontouchstart(self : Self, ontouchstart : EventHandlerNonNull) -> Unit = _
  ontouchend(self : Self) -> EventHandlerNonNull = _
  set_ontouchend(self : Self, ontouchend : EventHandlerNonNull) -> Unit = _
  ontouchmove(self : Self) -> EventHandlerNonNull = _
  set_ontouchmove(self : Self, ontouchmove : EventHandlerNonNull) -> Unit = _
  ontouchcancel(self : Self) -> EventHandlerNonNull = _
  set_ontouchcancel(self : Self, ontouchcancel : EventHandlerNonNull) -> Unit = _
  onpointerover(self : Self) -> EventHandlerNonNull = _
  set_onpointerover(self : Self, onpointerover : EventHandlerNonNull) -> Unit = _
  onpointerenter(self : Self) -> EventHandlerNonNull = _
  set_onpointerenter(self : Self, onpointerenter : EventHandlerNonNull) -> Unit = _
  onpointerdown(self : Self) -> EventHandlerNonNull = _
  set_onpointerdown(self : Self, onpointerdown : EventHandlerNonNull) -> Unit = _
  onpointermove(self : Self) -> EventHandlerNonNull = _
  set_onpointermove(self : Self, onpointermove : EventHandlerNonNull) -> Unit = _
  onpointerrawupdate(self : Self) -> EventHandlerNonNull = _
  set_onpointerrawupdate(self : Self, onpointerrawupdate : EventHandlerNonNull) -> Unit = _
  onpointerup(self : Self) -> EventHandlerNonNull = _
  set_onpointerup(self : Self, onpointerup : EventHandlerNonNull) -> Unit = _
  onpointercancel(self : Self) -> EventHandlerNonNull = _
  set_onpointercancel(self : Self, onpointercancel : EventHandlerNonNull) -> Unit = _
  onpointerout(self : Self) -> EventHandlerNonNull = _
  set_onpointerout(self : Self, onpointerout : EventHandlerNonNull) -> Unit = _
  onpointerleave(self : Self) -> EventHandlerNonNull = _
  set_onpointerleave(self : Self, onpointerleave : EventHandlerNonNull) -> Unit = _
  ongotpointercapture(self : Self) -> EventHandlerNonNull = _
  set_ongotpointercapture(
    self : Self,
    ongotpointercapture : EventHandlerNonNull,
  ) -> Unit = _
  onlostpointercapture(self : Self) -> EventHandlerNonNull = _
  set_onlostpointercapture(
    self : Self,
    onlostpointercapture : EventHandlerNonNull,
  ) -> Unit = _
  onselectstart(self : Self) -> EventHandlerNonNull = _
  set_onselectstart(self : Self, onselectstart : EventHandlerNonNull) -> Unit = _
  onselectionchange(self : Self) -> EventHandlerNonNull = _
  set_onselectionchange(self : Self, onselectionchange : EventHandlerNonNull) -> Unit = _
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
impl TSVGElement with onabort(self : Self) -> EventHandlerNonNull {
  svg_element_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onabort)
impl TSVGElement with set_onabort(self : Self, onabort : EventHandlerNonNull) -> Unit {
  svg_element_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with onauxclick(self : Self) -> EventHandlerNonNull {
  svg_element_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with set_onauxclick(
  self : Self,
  onauxclick : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onauxclick),
  )
}

///|
/// [SVGElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforeinput)
impl TSVGElement with onbeforeinput(self : Self) -> EventHandlerNonNull {
  svg_element_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforeinput)
impl TSVGElement with set_onbeforeinput(
  self : Self,
  onbeforeinput : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeinput),
  )
}

///|
/// [SVGElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforematch)
impl TSVGElement with onbeforematch(self : Self) -> EventHandlerNonNull {
  svg_element_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforematch)
impl TSVGElement with set_onbeforematch(
  self : Self,
  onbeforematch : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforematch),
  )
}

///|
/// [SVGElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforetoggle)
impl TSVGElement with onbeforetoggle(self : Self) -> EventHandlerNonNull {
  svg_element_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onbeforetoggle)
impl TSVGElement with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforetoggle),
  )
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with onblur(self : Self) -> EventHandlerNonNull {
  svg_element_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with set_onblur(self : Self, onblur : EventHandlerNonNull) -> Unit {
  svg_element_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with oncancel(self : Self) -> EventHandlerNonNull {
  svg_element_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with set_oncancel(self : Self, oncancel : EventHandlerNonNull) -> Unit {
  svg_element_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with oncanplay(self : Self) -> EventHandlerNonNull {
  svg_element_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with set_oncanplay(
  self : Self,
  oncanplay : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplay),
  )
}

///|
/// [SVGElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplaythrough)
impl TSVGElement with oncanplaythrough(self : Self) -> EventHandlerNonNull {
  svg_element_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplaythrough)
impl TSVGElement with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplaythrough),
  )
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with onchange(self : Self) -> EventHandlerNonNull {
  svg_element_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with set_onchange(self : Self, onchange : EventHandlerNonNull) -> Unit {
  svg_element_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with onclick(self : Self) -> EventHandlerNonNull {
  svg_element_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with set_onclick(self : Self, onclick : EventHandlerNonNull) -> Unit {
  svg_element_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with onclose(self : Self) -> EventHandlerNonNull {
  svg_element_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with set_onclose(self : Self, onclose : EventHandlerNonNull) -> Unit {
  svg_element_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with oncommand(self : Self) -> EventHandlerNonNull {
  svg_element_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with set_oncommand(
  self : Self,
  oncommand : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncommand),
  )
}

///|
/// [SVGElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextlost)
impl TSVGElement with oncontextlost(self : Self) -> EventHandlerNonNull {
  svg_element_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextlost)
impl TSVGElement with set_oncontextlost(
  self : Self,
  oncontextlost : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
/// [SVGElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextmenu)
impl TSVGElement with oncontextmenu(self : Self) -> EventHandlerNonNull {
  svg_element_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextmenu)
impl TSVGElement with set_oncontextmenu(
  self : Self,
  oncontextmenu : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextmenu),
  )
}

///|
/// [SVGElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextrestored)
impl TSVGElement with oncontextrestored(self : Self) -> EventHandlerNonNull {
  svg_element_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncontextrestored)
impl TSVGElement with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with oncopy(self : Self) -> EventHandlerNonNull {
  svg_element_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with set_oncopy(self : Self, oncopy : EventHandlerNonNull) -> Unit {
  svg_element_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with oncuechange(self : Self) -> EventHandlerNonNull {
  svg_element_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with set_oncuechange(
  self : Self,
  oncuechange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with oncut(self : Self) -> EventHandlerNonNull {
  svg_element_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with set_oncut(self : Self, oncut : EventHandlerNonNull) -> Unit {
  svg_element_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with ondblclick(self : Self) -> EventHandlerNonNull {
  svg_element_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with set_ondblclick(
  self : Self,
  ondblclick : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondblclick),
  )
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with ondrag(self : Self) -> EventHandlerNonNull {
  svg_element_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with set_ondrag(self : Self, ondrag : EventHandlerNonNull) -> Unit {
  svg_element_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with ondragend(self : Self) -> EventHandlerNonNull {
  svg_element_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with set_ondragend(
  self : Self,
  ondragend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragend),
  )
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with ondragenter(self : Self) -> EventHandlerNonNull {
  svg_element_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with set_ondragenter(
  self : Self,
  ondragenter : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragenter),
  )
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with ondragleave(self : Self) -> EventHandlerNonNull {
  svg_element_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with set_ondragleave(
  self : Self,
  ondragleave : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragleave),
  )
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with ondragover(self : Self) -> EventHandlerNonNull {
  svg_element_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with set_ondragover(
  self : Self,
  ondragover : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragover),
  )
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with ondragstart(self : Self) -> EventHandlerNonNull {
  svg_element_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with set_ondragstart(
  self : Self,
  ondragstart : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragstart),
  )
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with ondrop(self : Self) -> EventHandlerNonNull {
  svg_element_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with set_ondrop(self : Self, ondrop : EventHandlerNonNull) -> Unit {
  svg_element_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

///|
/// [SVGElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondurationchange)
impl TSVGElement with ondurationchange(self : Self) -> EventHandlerNonNull {
  svg_element_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondurationchange)
impl TSVGElement with set_ondurationchange(
  self : Self,
  ondurationchange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondurationchange),
  )
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with onemptied(self : Self) -> EventHandlerNonNull {
  svg_element_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with set_onemptied(
  self : Self,
  onemptied : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onemptied),
  )
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with onended(self : Self) -> EventHandlerNonNull {
  svg_element_onended_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with set_onended(self : Self, onended : EventHandlerNonNull) -> Unit {
  svg_element_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with onerror(self : Self) -> OnErrorEventHandlerNonNull {
  svg_element_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with set_onerror(
  self : Self,
  onerror : OnErrorEventHandlerNonNull,
) -> Unit {
  svg_element_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with onfocus(self : Self) -> EventHandlerNonNull {
  svg_element_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with set_onfocus(self : Self, onfocus : EventHandlerNonNull) -> Unit {
  svg_element_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with onformdata(self : Self) -> EventHandlerNonNull {
  svg_element_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with set_onformdata(
  self : Self,
  onformdata : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onformdata),
  )
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with oninput(self : Self) -> EventHandlerNonNull {
  svg_element_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with set_oninput(self : Self, oninput : EventHandlerNonNull) -> Unit {
  svg_element_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with oninvalid(self : Self) -> EventHandlerNonNull {
  svg_element_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with set_oninvalid(
  self : Self,
  oninvalid : EventHandlerNonNull,
) -> Unit {
  svg_element_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oninvalid),
  )
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with onkeydown(self : Self) -> EventHandlerNonNull {
  svg_element_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with set_onkeydown(
  self : Self,
  onkeydown : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeydown),
  )
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with onkeypress(self : Self) -> EventHandlerNonNull {
  svg_element_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with set_onkeypress(
  self : Self,
  onkeypress : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeypress),
  )
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with onkeyup(self : Self) -> EventHandlerNonNull {
  svg_element_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with set_onkeyup(self : Self, onkeyup : EventHandlerNonNull) -> Unit {
  svg_element_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with onload(self : Self) -> EventHandlerNonNull {
  svg_element_onload_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with set_onload(self : Self, onload : EventHandlerNonNull) -> Unit {
  svg_element_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with onloadeddata(self : Self) -> EventHandlerNonNull {
  svg_element_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with set_onloadeddata(
  self : Self,
  onloadeddata : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadeddata),
  )
}

///|
/// [SVGElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadedmetadata)
impl TSVGElement with onloadedmetadata(self : Self) -> EventHandlerNonNull {
  svg_element_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadedmetadata)
impl TSVGElement with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadedmetadata),
  )
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with onloadstart(self : Self) -> EventHandlerNonNull {
  svg_element_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with set_onloadstart(
  self : Self,
  onloadstart : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with onmousedown(self : Self) -> EventHandlerNonNull {
  svg_element_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with set_onmousedown(
  self : Self,
  onmousedown : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousedown),
  )
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with onmouseenter(self : Self) -> EventHandlerNonNull {
  svg_element_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with set_onmouseenter(
  self : Self,
  onmouseenter : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseenter),
  )
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with onmouseleave(self : Self) -> EventHandlerNonNull {
  svg_element_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with set_onmouseleave(
  self : Self,
  onmouseleave : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseleave),
  )
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with onmousemove(self : Self) -> EventHandlerNonNull {
  svg_element_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with set_onmousemove(
  self : Self,
  onmousemove : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousemove),
  )
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with onmouseout(self : Self) -> EventHandlerNonNull {
  svg_element_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with set_onmouseout(
  self : Self,
  onmouseout : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseout),
  )
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with onmouseover(self : Self) -> EventHandlerNonNull {
  svg_element_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with set_onmouseover(
  self : Self,
  onmouseover : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseover),
  )
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with onmouseup(self : Self) -> EventHandlerNonNull {
  svg_element_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with set_onmouseup(
  self : Self,
  onmouseup : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseup),
  )
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with onpaste(self : Self) -> EventHandlerNonNull {
  svg_element_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with set_onpaste(self : Self, onpaste : EventHandlerNonNull) -> Unit {
  svg_element_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with onpause(self : Self) -> EventHandlerNonNull {
  svg_element_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with set_onpause(self : Self, onpause : EventHandlerNonNull) -> Unit {
  svg_element_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with onplay(self : Self) -> EventHandlerNonNull {
  svg_element_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with set_onplay(self : Self, onplay : EventHandlerNonNull) -> Unit {
  svg_element_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with onplaying(self : Self) -> EventHandlerNonNull {
  svg_element_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with set_onplaying(
  self : Self,
  onplaying : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onplaying),
  )
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with onprogress(self : Self) -> EventHandlerNonNull {
  svg_element_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with set_onprogress(
  self : Self,
  onprogress : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with onratechange(self : Self) -> EventHandlerNonNull {
  svg_element_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with set_onratechange(
  self : Self,
  onratechange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onratechange),
  )
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with onreset(self : Self) -> EventHandlerNonNull {
  svg_element_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with set_onreset(self : Self, onreset : EventHandlerNonNull) -> Unit {
  svg_element_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with onresize(self : Self) -> EventHandlerNonNull {
  svg_element_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with set_onresize(self : Self, onresize : EventHandlerNonNull) -> Unit {
  svg_element_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with onscroll(self : Self) -> EventHandlerNonNull {
  svg_element_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with set_onscroll(self : Self, onscroll : EventHandlerNonNull) -> Unit {
  svg_element_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with onscrollend(self : Self) -> EventHandlerNonNull {
  svg_element_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with set_onscrollend(
  self : Self,
  onscrollend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscrollend),
  )
}

///|
/// [SVGElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsecuritypolicyviolation)
impl TSVGElement with onsecuritypolicyviolation(self : Self) -> EventHandlerNonNull {
  svg_element_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsecuritypolicyviolation)
impl TSVGElement with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsecuritypolicyviolation),
  )
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with onseeked(self : Self) -> EventHandlerNonNull {
  svg_element_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with set_onseeked(self : Self, onseeked : EventHandlerNonNull) -> Unit {
  svg_element_set_onseeked_ffi(TJsValue::to_js(self), TJsValue::to_js(onseeked))
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with onseeking(self : Self) -> EventHandlerNonNull {
  svg_element_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with set_onseeking(
  self : Self,
  onseeking : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onseeking),
  )
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with onselect(self : Self) -> EventHandlerNonNull {
  svg_element_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with set_onselect(self : Self, onselect : EventHandlerNonNull) -> Unit {
  svg_element_set_onselect_ffi(TJsValue::to_js(self), TJsValue::to_js(onselect))
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with onslotchange(self : Self) -> EventHandlerNonNull {
  svg_element_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with set_onslotchange(
  self : Self,
  onslotchange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with onstalled(self : Self) -> EventHandlerNonNull {
  svg_element_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with set_onstalled(
  self : Self,
  onstalled : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstalled),
  )
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with onsubmit(self : Self) -> EventHandlerNonNull {
  svg_element_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with set_onsubmit(self : Self, onsubmit : EventHandlerNonNull) -> Unit {
  svg_element_set_onsubmit_ffi(TJsValue::to_js(self), TJsValue::to_js(onsubmit))
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with onsuspend(self : Self) -> EventHandlerNonNull {
  svg_element_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with set_onsuspend(
  self : Self,
  onsuspend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsuspend),
  )
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with ontimeupdate(self : Self) -> EventHandlerNonNull {
  svg_element_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with set_ontimeupdate(
  self : Self,
  ontimeupdate : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeupdate),
  )
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with ontoggle(self : Self) -> EventHandlerNonNull {
  svg_element_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with set_ontoggle(self : Self, ontoggle : EventHandlerNonNull) -> Unit {
  svg_element_set_ontoggle_ffi(TJsValue::to_js(self), TJsValue::to_js(ontoggle))
}

///|
/// [SVGElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onvolumechange)
impl TSVGElement with onvolumechange(self : Self) -> EventHandlerNonNull {
  svg_element_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onvolumechange)
impl TSVGElement with set_onvolumechange(
  self : Self,
  onvolumechange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvolumechange),
  )
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with onwaiting(self : Self) -> EventHandlerNonNull {
  svg_element_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with set_onwaiting(
  self : Self,
  onwaiting : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwaiting),
  )
}

///|
/// [SVGElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationend)
impl TSVGElement with onwebkitanimationend(self : Self) -> EventHandlerNonNull {
  svg_element_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationend)
impl TSVGElement with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationend),
  )
}

///|
/// [SVGElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationiteration)
impl TSVGElement with onwebkitanimationiteration(self : Self) -> EventHandlerNonNull {
  svg_element_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationiteration)
impl TSVGElement with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationiteration),
  )
}

///|
/// [SVGElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationstart)
impl TSVGElement with onwebkitanimationstart(self : Self) -> EventHandlerNonNull {
  svg_element_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkitanimationstart)
impl TSVGElement with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationstart),
  )
}

///|
/// [SVGElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkittransitionend)
impl TSVGElement with onwebkittransitionend(self : Self) -> EventHandlerNonNull {
  svg_element_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwebkittransitionend)
impl TSVGElement with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkittransitionend),
  )
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with onwheel(self : Self) -> EventHandlerNonNull {
  svg_element_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with set_onwheel(self : Self, onwheel : EventHandlerNonNull) -> Unit {
  svg_element_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

///|
/// [SVGElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchstart)
impl TSVGElement with ontouchstart(self : Self) -> EventHandlerNonNull {
  svg_element_ontouchstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchstart)
impl TSVGElement with set_ontouchstart(
  self : Self,
  ontouchstart : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ontouchstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontouchstart),
  )
}

///|
/// [SVGElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchend)
impl TSVGElement with ontouchend(self : Self) -> EventHandlerNonNull {
  svg_element_ontouchend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchend)
impl TSVGElement with set_ontouchend(
  self : Self,
  ontouchend : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ontouchend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontouchend),
  )
}

///|
/// [SVGElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchmove)
impl TSVGElement with ontouchmove(self : Self) -> EventHandlerNonNull {
  svg_element_ontouchmove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchmove)
impl TSVGElement with set_ontouchmove(
  self : Self,
  ontouchmove : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ontouchmove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontouchmove),
  )
}

///|
/// [SVGElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchcancel)
impl TSVGElement with ontouchcancel(self : Self) -> EventHandlerNonNull {
  svg_element_ontouchcancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchcancel)
impl TSVGElement with set_ontouchcancel(
  self : Self,
  ontouchcancel : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ontouchcancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontouchcancel),
  )
}

///|
/// [SVGElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerover)
impl TSVGElement with onpointerover(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerover)
impl TSVGElement with set_onpointerover(
  self : Self,
  onpointerover : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerover),
  )
}

///|
/// [SVGElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerenter)
impl TSVGElement with onpointerenter(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerenter)
impl TSVGElement with set_onpointerenter(
  self : Self,
  onpointerenter : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerenter),
  )
}

///|
/// [SVGElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerdown)
impl TSVGElement with onpointerdown(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerdown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerdown)
impl TSVGElement with set_onpointerdown(
  self : Self,
  onpointerdown : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerdown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerdown),
  )
}

///|
/// [SVGElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointermove)
impl TSVGElement with onpointermove(self : Self) -> EventHandlerNonNull {
  svg_element_onpointermove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointermove)
impl TSVGElement with set_onpointermove(
  self : Self,
  onpointermove : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointermove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointermove),
  )
}

///|
/// [SVGElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerrawupdate)
impl TSVGElement with onpointerrawupdate(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerrawupdate)
impl TSVGElement with set_onpointerrawupdate(
  self : Self,
  onpointerrawupdate : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerrawupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerrawupdate),
  )
}

///|
/// [SVGElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerup)
impl TSVGElement with onpointerup(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerup)
impl TSVGElement with set_onpointerup(
  self : Self,
  onpointerup : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerup),
  )
}

///|
/// [SVGElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointercancel)
impl TSVGElement with onpointercancel(self : Self) -> EventHandlerNonNull {
  svg_element_onpointercancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointercancel)
impl TSVGElement with set_onpointercancel(
  self : Self,
  onpointercancel : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointercancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointercancel),
  )
}

///|
/// [SVGElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerout)
impl TSVGElement with onpointerout(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerout_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerout)
impl TSVGElement with set_onpointerout(
  self : Self,
  onpointerout : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerout),
  )
}

///|
/// [SVGElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerleave)
impl TSVGElement with onpointerleave(self : Self) -> EventHandlerNonNull {
  svg_element_onpointerleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerleave)
impl TSVGElement with set_onpointerleave(
  self : Self,
  onpointerleave : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onpointerleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onpointerleave),
  )
}

///|
/// [SVGElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ongotpointercapture)
impl TSVGElement with ongotpointercapture(self : Self) -> EventHandlerNonNull {
  svg_element_ongotpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ongotpointercapture)
impl TSVGElement with set_ongotpointercapture(
  self : Self,
  ongotpointercapture : EventHandlerNonNull,
) -> Unit {
  svg_element_set_ongotpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ongotpointercapture),
  )
}

///|
/// [SVGElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onlostpointercapture)
impl TSVGElement with onlostpointercapture(self : Self) -> EventHandlerNonNull {
  svg_element_onlostpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onlostpointercapture)
impl TSVGElement with set_onlostpointercapture(
  self : Self,
  onlostpointercapture : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onlostpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onlostpointercapture),
  )
}

///|
/// [SVGElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectstart)
impl TSVGElement with onselectstart(self : Self) -> EventHandlerNonNull {
  svg_element_onselectstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectstart)
impl TSVGElement with set_onselectstart(
  self : Self,
  onselectstart : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onselectstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onselectstart),
  )
}

///|
/// [SVGElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectionchange)
impl TSVGElement with onselectionchange(self : Self) -> EventHandlerNonNull {
  svg_element_onselectionchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectionchange)
impl TSVGElement with set_onselectionchange(
  self : Self,
  onselectionchange : EventHandlerNonNull,
) -> Unit {
  svg_element_set_onselectionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onselectionchange),
  )
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
