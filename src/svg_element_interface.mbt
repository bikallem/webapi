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
pub impl FromJsAny for SVGElement with from_js_any(value : JsAny) -> SVGElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGElement] SVGElement::into(self : SVGElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGElement] SVGElement::unsafe_into(self : SVGElement) -> T = "%identity"

///|
pub impl HasConstructor for SVGElement with constructor_name() {
  "SVGElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGElement + HasConstructor] SVGElement::try_into(
  self : SVGElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, onauxclick : (Event) -> JsValue) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, onbeforeinput : (Event) -> JsValue) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, onbeforematch : (Event) -> JsValue) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, onbeforetoggle : (Event) -> JsValue) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, oncanplaythrough : (Event) -> JsValue) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, oncontextlost : (Event) -> JsValue) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, oncontextmenu : (Event) -> JsValue) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, oncontextrestored : (Event) -> JsValue) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : (Event) -> JsValue) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, ondblclick : (Event) -> JsValue) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, ondragenter : (Event) -> JsValue) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, ondragleave : (Event) -> JsValue) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, ondragover : (Event) -> JsValue) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, ondragstart : (Event) -> JsValue) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, ondurationchange : (Event) -> JsValue) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, onended : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(
    self : Self,
    onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
  ) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, onformdata : (Event) -> JsValue) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, onkeypress : (Event) -> JsValue) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : (Event) -> JsValue) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, onloadeddata : (Event) -> JsValue) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, onloadedmetadata : (Event) -> JsValue) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, onmousedown : (Event) -> JsValue) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, onmouseenter : (Event) -> JsValue) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, onmouseleave : (Event) -> JsValue) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, onmousemove : (Event) -> JsValue) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, onmouseout : (Event) -> JsValue) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, onmouseover : (Event) -> JsValue) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, onratechange : (Event) -> JsValue) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : (Event) -> JsValue) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(
    self : Self,
    onsecuritypolicyviolation : (Event) -> JsValue,
  ) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, onslotchange : (Event) -> JsValue) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, ontimeupdate : (Event) -> JsValue) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, onvolumechange : (Event) -> JsValue) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(
    self : Self,
    onwebkitanimationend : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(
    self : Self,
    onwebkitanimationiteration : (Event) -> JsValue,
  ) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(
    self : Self,
    onwebkitanimationstart : (Event) -> JsValue,
  ) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(
    self : Self,
    onwebkittransitionend : (Event) -> JsValue,
  ) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit = _
  ontouchstart(self : Self) -> EventHandler = _
  set_ontouchstart(self : Self, ontouchstart : (Event) -> JsValue) -> Unit = _
  ontouchend(self : Self) -> EventHandler = _
  set_ontouchend(self : Self, ontouchend : (Event) -> JsValue) -> Unit = _
  ontouchmove(self : Self) -> EventHandler = _
  set_ontouchmove(self : Self, ontouchmove : (Event) -> JsValue) -> Unit = _
  ontouchcancel(self : Self) -> EventHandler = _
  set_ontouchcancel(self : Self, ontouchcancel : (Event) -> JsValue) -> Unit = _
  onpointerover(self : Self) -> EventHandler = _
  set_onpointerover(self : Self, onpointerover : (Event) -> JsValue) -> Unit = _
  onpointerenter(self : Self) -> EventHandler = _
  set_onpointerenter(self : Self, onpointerenter : (Event) -> JsValue) -> Unit = _
  onpointerdown(self : Self) -> EventHandler = _
  set_onpointerdown(self : Self, onpointerdown : (Event) -> JsValue) -> Unit = _
  onpointermove(self : Self) -> EventHandler = _
  set_onpointermove(self : Self, onpointermove : (Event) -> JsValue) -> Unit = _
  onpointerrawupdate(self : Self) -> EventHandler = _
  set_onpointerrawupdate(self : Self, onpointerrawupdate : (Event) -> JsValue) -> Unit = _
  onpointerup(self : Self) -> EventHandler = _
  set_onpointerup(self : Self, onpointerup : (Event) -> JsValue) -> Unit = _
  onpointercancel(self : Self) -> EventHandler = _
  set_onpointercancel(self : Self, onpointercancel : (Event) -> JsValue) -> Unit = _
  onpointerout(self : Self) -> EventHandler = _
  set_onpointerout(self : Self, onpointerout : (Event) -> JsValue) -> Unit = _
  onpointerleave(self : Self) -> EventHandler = _
  set_onpointerleave(self : Self, onpointerleave : (Event) -> JsValue) -> Unit = _
  ongotpointercapture(self : Self) -> EventHandler = _
  set_ongotpointercapture(self : Self, ongotpointercapture : (Event) -> JsValue) -> Unit = _
  onlostpointercapture(self : Self) -> EventHandler = _
  set_onlostpointercapture(
    self : Self,
    onlostpointercapture : (Event) -> JsValue,
  ) -> Unit = _
  onselectstart(self : Self) -> EventHandler = _
  set_onselectstart(self : Self, onselectstart : (Event) -> JsValue) -> Unit = _
  onselectionchange(self : Self) -> EventHandler = _
  set_onselectionchange(self : Self, onselectionchange : (Event) -> JsValue) -> Unit = _
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
impl TSVGElement with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  svg_element_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with onauxclick(self : Self) -> EventHandler {
  svg_element_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onauxclick)
impl TSVGElement with set_onauxclick(
  self : Self,
  onauxclick : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onauxclick)),
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
  onbeforeinput : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeinput)),
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
  onbeforematch : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforematch)),
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
  onbeforetoggle : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforetoggle)),
  )
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with onblur(self : Self) -> EventHandler {
  svg_element_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onblur)
impl TSVGElement with set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit {
  svg_element_set_onblur_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onblur)),
  )
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with oncancel(self : Self) -> EventHandler {
  svg_element_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncancel)
impl TSVGElement with set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit {
  svg_element_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncancel)),
  )
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with oncanplay(self : Self) -> EventHandler {
  svg_element_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncanplay)
impl TSVGElement with set_oncanplay(self : Self, oncanplay : (Event) -> JsValue) -> Unit {
  svg_element_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplay)),
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
  oncanplaythrough : (Event) -> JsValue,
) -> Unit {
  svg_element_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplaythrough)),
  )
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with onchange(self : Self) -> EventHandler {
  svg_element_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onchange)
impl TSVGElement with set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit {
  svg_element_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with onclick(self : Self) -> EventHandler {
  svg_element_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclick)
impl TSVGElement with set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit {
  svg_element_set_onclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclick)),
  )
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with onclose(self : Self) -> EventHandler {
  svg_element_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onclose)
impl TSVGElement with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  svg_element_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with oncommand(self : Self) -> EventHandler {
  svg_element_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncommand)
impl TSVGElement with set_oncommand(self : Self, oncommand : (Event) -> JsValue) -> Unit {
  svg_element_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncommand)),
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
  oncontextlost : (Event) -> JsValue,
) -> Unit {
  svg_element_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextlost)),
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
  oncontextmenu : (Event) -> JsValue,
) -> Unit {
  svg_element_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextmenu)),
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
  oncontextrestored : (Event) -> JsValue,
) -> Unit {
  svg_element_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextrestored)),
  )
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with oncopy(self : Self) -> EventHandler {
  svg_element_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncopy)
impl TSVGElement with set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit {
  svg_element_set_oncopy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncopy)),
  )
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with oncuechange(self : Self) -> EventHandler {
  svg_element_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncuechange)
impl TSVGElement with set_oncuechange(
  self : Self,
  oncuechange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncuechange)),
  )
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with oncut(self : Self) -> EventHandler {
  svg_element_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oncut)
impl TSVGElement with set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit {
  svg_element_set_oncut_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncut)),
  )
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with ondblclick(self : Self) -> EventHandler {
  svg_element_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondblclick)
impl TSVGElement with set_ondblclick(
  self : Self,
  ondblclick : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondblclick)),
  )
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with ondrag(self : Self) -> EventHandler {
  svg_element_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrag)
impl TSVGElement with set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit {
  svg_element_set_ondrag_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrag)),
  )
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with ondragend(self : Self) -> EventHandler {
  svg_element_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragend)
impl TSVGElement with set_ondragend(self : Self, ondragend : (Event) -> JsValue) -> Unit {
  svg_element_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragend)),
  )
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with ondragenter(self : Self) -> EventHandler {
  svg_element_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragenter)
impl TSVGElement with set_ondragenter(
  self : Self,
  ondragenter : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragenter)),
  )
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with ondragleave(self : Self) -> EventHandler {
  svg_element_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragleave)
impl TSVGElement with set_ondragleave(
  self : Self,
  ondragleave : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragleave)),
  )
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with ondragover(self : Self) -> EventHandler {
  svg_element_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragover)
impl TSVGElement with set_ondragover(
  self : Self,
  ondragover : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragover)),
  )
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with ondragstart(self : Self) -> EventHandler {
  svg_element_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondragstart)
impl TSVGElement with set_ondragstart(
  self : Self,
  ondragstart : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragstart)),
  )
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with ondrop(self : Self) -> EventHandler {
  svg_element_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ondrop)
impl TSVGElement with set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit {
  svg_element_set_ondrop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrop)),
  )
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
  ondurationchange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondurationchange)),
  )
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with onemptied(self : Self) -> EventHandler {
  svg_element_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onemptied)
impl TSVGElement with set_onemptied(self : Self, onemptied : (Event) -> JsValue) -> Unit {
  svg_element_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onemptied)),
  )
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with onended(self : Self) -> EventHandler {
  svg_element_onended_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onended)
impl TSVGElement with set_onended(self : Self, onended : (Event) -> JsValue) -> Unit {
  svg_element_set_onended_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onended)),
  )
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with onerror(self : Self) -> OnErrorEventHandler {
  svg_element_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onerror)
impl TSVGElement with set_onerror(
  self : Self,
  onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> Unit {
  svg_element_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_error_event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with onfocus(self : Self) -> EventHandler {
  svg_element_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onfocus)
impl TSVGElement with set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit {
  svg_element_set_onfocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfocus)),
  )
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with onformdata(self : Self) -> EventHandler {
  svg_element_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onformdata)
impl TSVGElement with set_onformdata(
  self : Self,
  onformdata : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onformdata)),
  )
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with oninput(self : Self) -> EventHandler {
  svg_element_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninput)
impl TSVGElement with set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit {
  svg_element_set_oninput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninput)),
  )
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with oninvalid(self : Self) -> EventHandler {
  svg_element_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/oninvalid)
impl TSVGElement with set_oninvalid(self : Self, oninvalid : (Event) -> JsValue) -> Unit {
  svg_element_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninvalid)),
  )
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with onkeydown(self : Self) -> EventHandler {
  svg_element_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeydown)
impl TSVGElement with set_onkeydown(self : Self, onkeydown : (Event) -> JsValue) -> Unit {
  svg_element_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeydown)),
  )
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with onkeypress(self : Self) -> EventHandler {
  svg_element_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeypress)
impl TSVGElement with set_onkeypress(
  self : Self,
  onkeypress : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeypress)),
  )
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with onkeyup(self : Self) -> EventHandler {
  svg_element_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onkeyup)
impl TSVGElement with set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit {
  svg_element_set_onkeyup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeyup)),
  )
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with onload(self : Self) -> EventHandler {
  svg_element_onload_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onload)
impl TSVGElement with set_onload(self : Self, onload : (Event) -> JsValue) -> Unit {
  svg_element_set_onload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onload)),
  )
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with onloadeddata(self : Self) -> EventHandler {
  svg_element_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadeddata)
impl TSVGElement with set_onloadeddata(
  self : Self,
  onloadeddata : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadeddata)),
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
  onloadedmetadata : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadedmetadata)),
  )
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with onloadstart(self : Self) -> EventHandler {
  svg_element_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onloadstart)
impl TSVGElement with set_onloadstart(
  self : Self,
  onloadstart : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadstart)),
  )
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with onmousedown(self : Self) -> EventHandler {
  svg_element_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousedown)
impl TSVGElement with set_onmousedown(
  self : Self,
  onmousedown : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousedown)),
  )
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with onmouseenter(self : Self) -> EventHandler {
  svg_element_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseenter)
impl TSVGElement with set_onmouseenter(
  self : Self,
  onmouseenter : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseenter)),
  )
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with onmouseleave(self : Self) -> EventHandler {
  svg_element_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseleave)
impl TSVGElement with set_onmouseleave(
  self : Self,
  onmouseleave : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseleave)),
  )
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with onmousemove(self : Self) -> EventHandler {
  svg_element_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmousemove)
impl TSVGElement with set_onmousemove(
  self : Self,
  onmousemove : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousemove)),
  )
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with onmouseout(self : Self) -> EventHandler {
  svg_element_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseout)
impl TSVGElement with set_onmouseout(
  self : Self,
  onmouseout : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseout)),
  )
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with onmouseover(self : Self) -> EventHandler {
  svg_element_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseover)
impl TSVGElement with set_onmouseover(
  self : Self,
  onmouseover : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseover)),
  )
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with onmouseup(self : Self) -> EventHandler {
  svg_element_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onmouseup)
impl TSVGElement with set_onmouseup(self : Self, onmouseup : (Event) -> JsValue) -> Unit {
  svg_element_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseup)),
  )
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with onpaste(self : Self) -> EventHandler {
  svg_element_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpaste)
impl TSVGElement with set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit {
  svg_element_set_onpaste_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpaste)),
  )
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with onpause(self : Self) -> EventHandler {
  svg_element_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpause)
impl TSVGElement with set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit {
  svg_element_set_onpause_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpause)),
  )
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with onplay(self : Self) -> EventHandler {
  svg_element_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplay)
impl TSVGElement with set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit {
  svg_element_set_onplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplay)),
  )
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with onplaying(self : Self) -> EventHandler {
  svg_element_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onplaying)
impl TSVGElement with set_onplaying(self : Self, onplaying : (Event) -> JsValue) -> Unit {
  svg_element_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplaying)),
  )
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with onprogress(self : Self) -> EventHandler {
  svg_element_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onprogress)
impl TSVGElement with set_onprogress(
  self : Self,
  onprogress : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onprogress)),
  )
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with onratechange(self : Self) -> EventHandler {
  svg_element_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onratechange)
impl TSVGElement with set_onratechange(
  self : Self,
  onratechange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onratechange)),
  )
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with onreset(self : Self) -> EventHandler {
  svg_element_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onreset)
impl TSVGElement with set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit {
  svg_element_set_onreset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreset)),
  )
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with onresize(self : Self) -> EventHandler {
  svg_element_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onresize)
impl TSVGElement with set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit {
  svg_element_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onresize)),
  )
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with onscroll(self : Self) -> EventHandler {
  svg_element_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscroll)
impl TSVGElement with set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit {
  svg_element_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscroll)),
  )
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with onscrollend(self : Self) -> EventHandler {
  svg_element_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onscrollend)
impl TSVGElement with set_onscrollend(
  self : Self,
  onscrollend : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscrollend)),
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
  onsecuritypolicyviolation : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsecuritypolicyviolation)),
  )
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with onseeked(self : Self) -> EventHandler {
  svg_element_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeked)
impl TSVGElement with set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit {
  svg_element_set_onseeked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeked)),
  )
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with onseeking(self : Self) -> EventHandler {
  svg_element_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onseeking)
impl TSVGElement with set_onseeking(self : Self, onseeking : (Event) -> JsValue) -> Unit {
  svg_element_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeking)),
  )
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with onselect(self : Self) -> EventHandler {
  svg_element_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselect)
impl TSVGElement with set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit {
  svg_element_set_onselect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselect)),
  )
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with onslotchange(self : Self) -> EventHandler {
  svg_element_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onslotchange)
impl TSVGElement with set_onslotchange(
  self : Self,
  onslotchange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onslotchange)),
  )
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with onstalled(self : Self) -> EventHandler {
  svg_element_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onstalled)
impl TSVGElement with set_onstalled(self : Self, onstalled : (Event) -> JsValue) -> Unit {
  svg_element_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstalled)),
  )
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with onsubmit(self : Self) -> EventHandler {
  svg_element_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsubmit)
impl TSVGElement with set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit {
  svg_element_set_onsubmit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsubmit)),
  )
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with onsuspend(self : Self) -> EventHandler {
  svg_element_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onsuspend)
impl TSVGElement with set_onsuspend(self : Self, onsuspend : (Event) -> JsValue) -> Unit {
  svg_element_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsuspend)),
  )
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with ontimeupdate(self : Self) -> EventHandler {
  svg_element_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontimeupdate)
impl TSVGElement with set_ontimeupdate(
  self : Self,
  ontimeupdate : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontimeupdate)),
  )
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with ontoggle(self : Self) -> EventHandler {
  svg_element_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontoggle)
impl TSVGElement with set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit {
  svg_element_set_ontoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontoggle)),
  )
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
  onvolumechange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onvolumechange)),
  )
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with onwaiting(self : Self) -> EventHandler {
  svg_element_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwaiting)
impl TSVGElement with set_onwaiting(self : Self, onwaiting : (Event) -> JsValue) -> Unit {
  svg_element_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwaiting)),
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
  onwebkitanimationend : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationend)),
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
  onwebkitanimationiteration : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationiteration)),
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
  onwebkitanimationstart : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationstart)),
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
  onwebkittransitionend : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkittransitionend)),
  )
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with onwheel(self : Self) -> EventHandler {
  svg_element_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onwheel)
impl TSVGElement with set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit {
  svg_element_set_onwheel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwheel)),
  )
}

///|
/// [SVGElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchstart)
impl TSVGElement with ontouchstart(self : Self) -> EventHandler {
  svg_element_ontouchstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchstart)
impl TSVGElement with set_ontouchstart(
  self : Self,
  ontouchstart : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ontouchstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchstart)),
  )
}

///|
/// [SVGElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchend)
impl TSVGElement with ontouchend(self : Self) -> EventHandler {
  svg_element_ontouchend_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchend)
impl TSVGElement with set_ontouchend(
  self : Self,
  ontouchend : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ontouchend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchend)),
  )
}

///|
/// [SVGElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchmove)
impl TSVGElement with ontouchmove(self : Self) -> EventHandler {
  svg_element_ontouchmove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchmove)
impl TSVGElement with set_ontouchmove(
  self : Self,
  ontouchmove : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ontouchmove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchmove)),
  )
}

///|
/// [SVGElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchcancel)
impl TSVGElement with ontouchcancel(self : Self) -> EventHandler {
  svg_element_ontouchcancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ontouchcancel)
impl TSVGElement with set_ontouchcancel(
  self : Self,
  ontouchcancel : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ontouchcancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchcancel)),
  )
}

///|
/// [SVGElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerover)
impl TSVGElement with onpointerover(self : Self) -> EventHandler {
  svg_element_onpointerover_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerover)
impl TSVGElement with set_onpointerover(
  self : Self,
  onpointerover : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerover)),
  )
}

///|
/// [SVGElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerenter)
impl TSVGElement with onpointerenter(self : Self) -> EventHandler {
  svg_element_onpointerenter_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerenter)
impl TSVGElement with set_onpointerenter(
  self : Self,
  onpointerenter : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerenter)),
  )
}

///|
/// [SVGElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerdown)
impl TSVGElement with onpointerdown(self : Self) -> EventHandler {
  svg_element_onpointerdown_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerdown)
impl TSVGElement with set_onpointerdown(
  self : Self,
  onpointerdown : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerdown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerdown)),
  )
}

///|
/// [SVGElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointermove)
impl TSVGElement with onpointermove(self : Self) -> EventHandler {
  svg_element_onpointermove_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointermove)
impl TSVGElement with set_onpointermove(
  self : Self,
  onpointermove : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointermove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointermove)),
  )
}

///|
/// [SVGElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerrawupdate)
impl TSVGElement with onpointerrawupdate(self : Self) -> EventHandler {
  svg_element_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerrawupdate)
impl TSVGElement with set_onpointerrawupdate(
  self : Self,
  onpointerrawupdate : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerrawupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerrawupdate)),
  )
}

///|
/// [SVGElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerup)
impl TSVGElement with onpointerup(self : Self) -> EventHandler {
  svg_element_onpointerup_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerup)
impl TSVGElement with set_onpointerup(
  self : Self,
  onpointerup : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerup)),
  )
}

///|
/// [SVGElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointercancel)
impl TSVGElement with onpointercancel(self : Self) -> EventHandler {
  svg_element_onpointercancel_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointercancel)
impl TSVGElement with set_onpointercancel(
  self : Self,
  onpointercancel : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointercancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointercancel)),
  )
}

///|
/// [SVGElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerout)
impl TSVGElement with onpointerout(self : Self) -> EventHandler {
  svg_element_onpointerout_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerout)
impl TSVGElement with set_onpointerout(
  self : Self,
  onpointerout : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerout)),
  )
}

///|
/// [SVGElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerleave)
impl TSVGElement with onpointerleave(self : Self) -> EventHandler {
  svg_element_onpointerleave_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onpointerleave)
impl TSVGElement with set_onpointerleave(
  self : Self,
  onpointerleave : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onpointerleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerleave)),
  )
}

///|
/// [SVGElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ongotpointercapture)
impl TSVGElement with ongotpointercapture(self : Self) -> EventHandler {
  svg_element_ongotpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/ongotpointercapture)
impl TSVGElement with set_ongotpointercapture(
  self : Self,
  ongotpointercapture : (Event) -> JsValue,
) -> Unit {
  svg_element_set_ongotpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ongotpointercapture)),
  )
}

///|
/// [SVGElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onlostpointercapture)
impl TSVGElement with onlostpointercapture(self : Self) -> EventHandler {
  svg_element_onlostpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onlostpointercapture)
impl TSVGElement with set_onlostpointercapture(
  self : Self,
  onlostpointercapture : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onlostpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlostpointercapture)),
  )
}

///|
/// [SVGElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectstart)
impl TSVGElement with onselectstart(self : Self) -> EventHandler {
  svg_element_onselectstart_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectstart)
impl TSVGElement with set_onselectstart(
  self : Self,
  onselectstart : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onselectstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectstart)),
  )
}

///|
/// [SVGElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectionchange)
impl TSVGElement with onselectionchange(self : Self) -> EventHandler {
  svg_element_onselectionchange_ffi(TJsValue::to_js(self))
}

///|
/// [SVGElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/SVGElement/onselectionchange)
impl TSVGElement with set_onselectionchange(
  self : Self,
  onselectionchange : (Event) -> JsValue,
) -> Unit {
  svg_element_set_onselectionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectionchange)),
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
impl TSVGElement with focus(self : Self, options? : FocusOptions) -> Unit {
  svg_element_focus_ffi(TJsValue::to_js(self), opt_to_js(options))
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

///|
#cfg(target="js")
extern "js" fn svg_element_class_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.className"

///|
#cfg(target="js")
fn svg_element_class_name_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_element_class_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_owner_svg_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerSVGElement"

///|
#cfg(target="js")
fn svg_element_owner_svg_element_ffi(obj : JsValue) -> SVGSVGElement {
  svg_element_owner_svg_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_viewport_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewportElement"

///|
#cfg(target="js")
fn svg_element_viewport_element_ffi(obj : JsValue) -> SVGElement {
  svg_element_viewport_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn svg_element_onabort_ffi(obj : JsValue) -> EventHandler {
  svg_element_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
#cfg(target="js")
fn svg_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
#cfg(target="js")
fn svg_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
#cfg(target="js")
fn svg_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
#cfg(target="js")
fn svg_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
#cfg(target="js")
fn svg_element_onblur_ffi(obj : JsValue) -> EventHandler {
  svg_element_onblur_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
#cfg(target="js")
fn svg_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
#cfg(target="js")
fn svg_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
#cfg(target="js")
fn svg_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn svg_element_onchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
#cfg(target="js")
fn svg_element_onclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn svg_element_onclose_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
#cfg(target="js")
fn svg_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncommand_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
#cfg(target="js")
fn svg_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
#cfg(target="js")
fn svg_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
#cfg(target="js")
fn svg_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
#cfg(target="js")
fn svg_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncopy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
#cfg(target="js")
fn svg_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
#cfg(target="js")
fn svg_element_oncut_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncut_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
#cfg(target="js")
fn svg_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
#cfg(target="js")
fn svg_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrag_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
#cfg(target="js")
fn svg_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
#cfg(target="js")
fn svg_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
#cfg(target="js")
fn svg_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
#cfg(target="js")
fn svg_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
#cfg(target="js")
fn svg_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
#cfg(target="js")
fn svg_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrop_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
#cfg(target="js")
fn svg_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
#cfg(target="js")
fn svg_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  svg_element_onemptied_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
#cfg(target="js")
fn svg_element_onended_ffi(obj : JsValue) -> EventHandler {
  svg_element_onended_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn svg_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  svg_element_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
#cfg(target="js")
fn svg_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  svg_element_onfocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
#cfg(target="js")
fn svg_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onformdata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
#cfg(target="js")
fn svg_element_oninput_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
#cfg(target="js")
extern "js" fn svg_element_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
#cfg(target="js")
fn svg_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
#cfg(target="js")
fn svg_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
#cfg(target="js")
fn svg_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
#cfg(target="js")
fn svg_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn svg_element_onload_ffi(obj : JsValue) -> EventHandler {
  svg_element_onload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
#cfg(target="js")
fn svg_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
#cfg(target="js")
fn svg_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn svg_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
#cfg(target="js")
fn svg_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
#cfg(target="js")
fn svg_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
#cfg(target="js")
fn svg_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
#cfg(target="js")
fn svg_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
#cfg(target="js")
fn svg_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
#cfg(target="js")
fn svg_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
#cfg(target="js")
fn svg_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
#cfg(target="js")
fn svg_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpaste_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
#cfg(target="js")
fn svg_element_onpause_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpause_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
#cfg(target="js")
fn svg_element_onplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
#cfg(target="js")
fn svg_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplaying_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn svg_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onprogress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
#cfg(target="js")
fn svg_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onratechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
#cfg(target="js")
fn svg_element_onreset_ffi(obj : JsValue) -> EventHandler {
  svg_element_onreset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
#cfg(target="js")
fn svg_element_onresize_ffi(obj : JsValue) -> EventHandler {
  svg_element_onresize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
#cfg(target="js")
fn svg_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscroll_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
#cfg(target="js")
fn svg_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
#cfg(target="js")
fn svg_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
#cfg(target="js")
fn svg_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
#cfg(target="js")
fn svg_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
#cfg(target="js")
fn svg_element_onselect_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
#cfg(target="js")
fn svg_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
#cfg(target="js")
fn svg_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  svg_element_onstalled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
#cfg(target="js")
fn svg_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
#cfg(target="js")
fn svg_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
#cfg(target="js")
fn svg_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
#cfg(target="js")
fn svg_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
#cfg(target="js")
fn svg_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
#cfg(target="js")
fn svg_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwebkitanimationend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
#cfg(target="js")
fn svg_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
#cfg(target="js")
fn svg_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwebkitanimationstart_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
#cfg(target="js")
fn svg_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwebkittransitionend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
#cfg(target="js")
fn svg_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
#cfg(target="js")
fn svg_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwheel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
#cfg(target="js")
fn svg_element_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
#cfg(target="js")
fn svg_element_ontouchend_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
#cfg(target="js")
fn svg_element_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
#cfg(target="js")
fn svg_element_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
#cfg(target="js")
fn svg_element_onpointerover_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
#cfg(target="js")
fn svg_element_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
#cfg(target="js")
fn svg_element_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
#cfg(target="js")
fn svg_element_onpointermove_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
#cfg(target="js")
fn svg_element_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
#cfg(target="js")
fn svg_element_onpointerup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
#cfg(target="js")
fn svg_element_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
#cfg(target="js")
fn svg_element_onpointerout_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
#cfg(target="js")
fn svg_element_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
#cfg(target="js")
extern "js" fn svg_element_ongotpointercapture_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
#cfg(target="js")
fn svg_element_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  svg_element_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onlostpointercapture_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
#cfg(target="js")
fn svg_element_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  svg_element_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
#cfg(target="js")
fn svg_element_onselectstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
#cfg(target="js")
extern "js" fn svg_element_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
#cfg(target="js")
fn svg_element_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
#cfg(target="js")
extern "js" fn svg_element_corresponding_element_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.correspondingElement"

///|
#cfg(target="js")
fn svg_element_corresponding_element_ffi(obj : JsValue) -> SVGElement {
  svg_element_corresponding_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_corresponding_use_element_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.correspondingUseElement"

///|
#cfg(target="js")
fn svg_element_corresponding_use_element_ffi(obj : JsValue) -> SVGUseElement {
  svg_element_corresponding_use_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_dataset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dataset"

///|
#cfg(target="js")
fn svg_element_dataset_ffi(obj : JsValue) -> DOMStringMap {
  svg_element_dataset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_nonce_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nonce"

///|
#cfg(target="js")
fn svg_element_nonce_ffi(obj : JsValue) -> String {
  svg_element_nonce_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
#cfg(target="js")
extern "js" fn svg_element_autofocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autofocus"

///|
#cfg(target="js")
fn svg_element_autofocus_ffi(obj : JsValue) -> Bool {
  svg_element_autofocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
#cfg(target="js")
extern "js" fn svg_element_tab_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tabIndex"

///|
#cfg(target="js")
fn svg_element_tab_index_ffi(obj : JsValue) -> Int {
  svg_element_tab_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_element_set_tab_index_ffi(
  obj : JsValue,
  tab_index : JsValue,
) -> Unit = "(obj, tabIndex) => { obj.tabIndex = tabIndex; }"

///|
#cfg(target="js")
extern "js" fn svg_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(options)"

///|
#cfg(target="js")
extern "js" fn svg_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
#cfg(target="js")
extern "js" fn svg_element_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
#cfg(target="js")
fn svg_element_style_ffi(obj : JsValue) -> CSSStyleProperties {
  svg_element_style_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_class_name_ffi(obj : JsValue) -> SVGAnimatedString = "webapi_SVGElement" "get_className"

///|
#cfg(target="wasm-gc")
fn svg_element_owner_svg_element_ffi(obj : JsValue) -> SVGSVGElement = "webapi_SVGElement" "get_ownerSVGElement"

///|
#cfg(target="wasm-gc")
fn svg_element_viewport_element_ffi(obj : JsValue) -> SVGElement = "webapi_SVGElement" "get_viewportElement"

///|
#cfg(target="wasm-gc")
fn svg_element_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onabort"

///|
#cfg(target="wasm-gc")
fn svg_element_onabort_ffi(obj : JsValue) -> EventHandler {
  svg_element_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_SVGElement" "set_onabort"

///|
#cfg(target="wasm-gc")
fn svg_element_onauxclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onauxclick"

///|
#cfg(target="wasm-gc")
fn svg_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onauxclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_SVGElement" "set_onauxclick"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforeinput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforeinput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "webapi_SVGElement" "set_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforematch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onbeforematch"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforematch_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "webapi_SVGElement" "set_onbeforematch"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforetoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn svg_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_onbeforetoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_SVGElement" "set_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn svg_element_onblur_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onblur"

///|
#cfg(target="wasm-gc")
fn svg_element_onblur_ffi(obj : JsValue) -> EventHandler {
  svg_element_onblur_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_SVGElement" "set_onblur"

///|
#cfg(target="wasm-gc")
fn svg_element_oncancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncancel"

///|
#cfg(target="wasm-gc")
fn svg_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_SVGElement" "set_oncancel"

///|
#cfg(target="wasm-gc")
fn svg_element_oncanplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncanplay"

///|
#cfg(target="wasm-gc")
fn svg_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_SVGElement" "set_oncanplay"

///|
#cfg(target="wasm-gc")
fn svg_element_oncanplaythrough_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn svg_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncanplaythrough_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_SVGElement" "set_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn svg_element_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_SVGElement" "set_onchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onclick"

///|
#cfg(target="wasm-gc")
fn svg_element_onclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_SVGElement" "set_onclick"

///|
#cfg(target="wasm-gc")
fn svg_element_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onclose"

///|
#cfg(target="wasm-gc")
fn svg_element_onclose_ffi(obj : JsValue) -> EventHandler {
  svg_element_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_SVGElement" "set_onclose"

///|
#cfg(target="wasm-gc")
fn svg_element_oncommand_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncommand"

///|
#cfg(target="wasm-gc")
fn svg_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncommand_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_SVGElement" "set_oncommand"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextlost_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncontextlost"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "webapi_SVGElement" "set_oncontextlost"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextmenu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextmenu_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "webapi_SVGElement" "set_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextrestored_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn svg_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_SVGElement" "set_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn svg_element_oncopy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncopy"

///|
#cfg(target="wasm-gc")
fn svg_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncopy_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_SVGElement" "set_oncopy"

///|
#cfg(target="wasm-gc")
fn svg_element_oncuechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncuechange"

///|
#cfg(target="wasm-gc")
fn svg_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncuechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "webapi_SVGElement" "set_oncuechange"

///|
#cfg(target="wasm-gc")
fn svg_element_oncut_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oncut"

///|
#cfg(target="wasm-gc")
fn svg_element_oncut_ffi(obj : JsValue) -> EventHandler {
  svg_element_oncut_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_SVGElement" "set_oncut"

///|
#cfg(target="wasm-gc")
fn svg_element_ondblclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondblclick"

///|
#cfg(target="wasm-gc")
fn svg_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondblclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_SVGElement" "set_ondblclick"

///|
#cfg(target="wasm-gc")
fn svg_element_ondrag_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondrag"

///|
#cfg(target="wasm-gc")
fn svg_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrag_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_SVGElement" "set_ondrag"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondragend"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_SVGElement" "set_ondragend"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondragenter"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "webapi_SVGElement" "set_ondragenter"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondragleave"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "webapi_SVGElement" "set_ondragleave"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondragover"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_SVGElement" "set_ondragover"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondragstart"

///|
#cfg(target="wasm-gc")
fn svg_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondragstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "webapi_SVGElement" "set_ondragstart"

///|
#cfg(target="wasm-gc")
fn svg_element_ondrop_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondrop"

///|
#cfg(target="wasm-gc")
fn svg_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondrop_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_SVGElement" "set_ondrop"

///|
#cfg(target="wasm-gc")
fn svg_element_ondurationchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ondurationchange"

///|
#cfg(target="wasm-gc")
fn svg_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_ondurationchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_SVGElement" "set_ondurationchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onemptied_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onemptied"

///|
#cfg(target="wasm-gc")
fn svg_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  svg_element_onemptied_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_SVGElement" "set_onemptied"

///|
#cfg(target="wasm-gc")
fn svg_element_onended_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onended"

///|
#cfg(target="wasm-gc")
fn svg_element_onended_ffi(obj : JsValue) -> EventHandler {
  svg_element_onended_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_SVGElement" "set_onended"

///|
#cfg(target="wasm-gc")
fn svg_element_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onerror"

///|
#cfg(target="wasm-gc")
fn svg_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  svg_element_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_SVGElement" "set_onerror"

///|
#cfg(target="wasm-gc")
fn svg_element_onfocus_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onfocus"

///|
#cfg(target="wasm-gc")
fn svg_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  svg_element_onfocus_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_SVGElement" "set_onfocus"

///|
#cfg(target="wasm-gc")
fn svg_element_onformdata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onformdata"

///|
#cfg(target="wasm-gc")
fn svg_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onformdata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_SVGElement" "set_onformdata"

///|
#cfg(target="wasm-gc")
fn svg_element_oninput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oninput"

///|
#cfg(target="wasm-gc")
fn svg_element_oninput_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_SVGElement" "set_oninput"

///|
#cfg(target="wasm-gc")
fn svg_element_oninvalid_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_oninvalid"

///|
#cfg(target="wasm-gc")
fn svg_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  svg_element_oninvalid_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_SVGElement" "set_oninvalid"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeydown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onkeydown"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeydown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_SVGElement" "set_onkeydown"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeypress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onkeypress"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeypress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_SVGElement" "set_onkeypress"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeyup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onkeyup"

///|
#cfg(target="wasm-gc")
fn svg_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onkeyup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_SVGElement" "set_onkeyup"

///|
#cfg(target="wasm-gc")
fn svg_element_onload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onload"

///|
#cfg(target="wasm-gc")
fn svg_element_onload_ffi(obj : JsValue) -> EventHandler {
  svg_element_onload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_SVGElement" "set_onload"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadeddata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onloadeddata"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadeddata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "webapi_SVGElement" "set_onloadeddata"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadedmetadata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadedmetadata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_SVGElement" "set_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onloadstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "webapi_SVGElement" "set_onloadstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onmousedown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmousedown"

///|
#cfg(target="wasm-gc")
fn svg_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousedown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "webapi_SVGElement" "set_onmousedown"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmouseenter"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "webapi_SVGElement" "set_onmouseenter"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmouseleave"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "webapi_SVGElement" "set_onmouseleave"

///|
#cfg(target="wasm-gc")
fn svg_element_onmousemove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmousemove"

///|
#cfg(target="wasm-gc")
fn svg_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmousemove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "webapi_SVGElement" "set_onmousemove"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmouseout"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_SVGElement" "set_onmouseout"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmouseover"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "webapi_SVGElement" "set_onmouseover"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onmouseup"

///|
#cfg(target="wasm-gc")
fn svg_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onmouseup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_SVGElement" "set_onmouseup"

///|
#cfg(target="wasm-gc")
fn svg_element_onpaste_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpaste"

///|
#cfg(target="wasm-gc")
fn svg_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpaste_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_SVGElement" "set_onpaste"

///|
#cfg(target="wasm-gc")
fn svg_element_onpause_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpause"

///|
#cfg(target="wasm-gc")
fn svg_element_onpause_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpause_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_SVGElement" "set_onpause"

///|
#cfg(target="wasm-gc")
fn svg_element_onplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onplay"

///|
#cfg(target="wasm-gc")
fn svg_element_onplay_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_SVGElement" "set_onplay"

///|
#cfg(target="wasm-gc")
fn svg_element_onplaying_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onplaying"

///|
#cfg(target="wasm-gc")
fn svg_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  svg_element_onplaying_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_SVGElement" "set_onplaying"

///|
#cfg(target="wasm-gc")
fn svg_element_onprogress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn svg_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  svg_element_onprogress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_SVGElement" "set_onprogress"

///|
#cfg(target="wasm-gc")
fn svg_element_onratechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onratechange"

///|
#cfg(target="wasm-gc")
fn svg_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onratechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "webapi_SVGElement" "set_onratechange"

///|
#cfg(target="wasm-gc")
fn svg_element_onreset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onreset"

///|
#cfg(target="wasm-gc")
fn svg_element_onreset_ffi(obj : JsValue) -> EventHandler {
  svg_element_onreset_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_SVGElement" "set_onreset"

///|
#cfg(target="wasm-gc")
fn svg_element_onresize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onresize"

///|
#cfg(target="wasm-gc")
fn svg_element_onresize_ffi(obj : JsValue) -> EventHandler {
  svg_element_onresize_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_SVGElement" "set_onresize"

///|
#cfg(target="wasm-gc")
fn svg_element_onscroll_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onscroll"

///|
#cfg(target="wasm-gc")
fn svg_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscroll_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_SVGElement" "set_onscroll"

///|
#cfg(target="wasm-gc")
fn svg_element_onscrollend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onscrollend"

///|
#cfg(target="wasm-gc")
fn svg_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onscrollend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "webapi_SVGElement" "set_onscrollend"

///|
#cfg(target="wasm-gc")
fn svg_element_onsecuritypolicyviolation_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn svg_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsecuritypolicyviolation_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_SVGElement" "set_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn svg_element_onseeked_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onseeked"

///|
#cfg(target="wasm-gc")
fn svg_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeked_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_SVGElement" "set_onseeked"

///|
#cfg(target="wasm-gc")
fn svg_element_onseeking_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onseeking"

///|
#cfg(target="wasm-gc")
fn svg_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  svg_element_onseeking_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_SVGElement" "set_onseeking"

///|
#cfg(target="wasm-gc")
fn svg_element_onselect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onselect"

///|
#cfg(target="wasm-gc")
fn svg_element_onselect_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselect_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_SVGElement" "set_onselect"

///|
#cfg(target="wasm-gc")
fn svg_element_onslotchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onslotchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onslotchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "webapi_SVGElement" "set_onslotchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onstalled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onstalled"

///|
#cfg(target="wasm-gc")
fn svg_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  svg_element_onstalled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_SVGElement" "set_onstalled"

///|
#cfg(target="wasm-gc")
fn svg_element_onsubmit_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onsubmit"

///|
#cfg(target="wasm-gc")
fn svg_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsubmit_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_SVGElement" "set_onsubmit"

///|
#cfg(target="wasm-gc")
fn svg_element_onsuspend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onsuspend"

///|
#cfg(target="wasm-gc")
fn svg_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onsuspend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_SVGElement" "set_onsuspend"

///|
#cfg(target="wasm-gc")
fn svg_element_ontimeupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn svg_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontimeupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "webapi_SVGElement" "set_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn svg_element_ontoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontoggle"

///|
#cfg(target="wasm-gc")
fn svg_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_SVGElement" "set_ontoggle"

///|
#cfg(target="wasm-gc")
fn svg_element_onvolumechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onvolumechange"

///|
#cfg(target="wasm-gc")
fn svg_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onvolumechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_SVGElement" "set_onvolumechange"

///|
#cfg(target="wasm-gc")
fn svg_element_onwaiting_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwaiting"

///|
#cfg(target="wasm-gc")
fn svg_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwaiting_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_SVGElement" "set_onwaiting"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_SVGElement" "set_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationiteration_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationiteration_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_SVGElement" "set_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkitanimationstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_SVGElement" "set_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkittransitionend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn svg_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwebkittransitionend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_SVGElement" "set_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn svg_element_onwheel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onwheel"

///|
#cfg(target="wasm-gc")
fn svg_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  svg_element_onwheel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_SVGElement" "set_onwheel"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontouchstart"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "webapi_SVGElement" "set_ontouchstart"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontouchend"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchend_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_SVGElement" "set_ontouchend"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchmove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontouchmove"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchmove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "webapi_SVGElement" "set_ontouchmove"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchcancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn svg_element_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_ontouchcancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "webapi_SVGElement" "set_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerover"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerover_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerover"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerenter"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerenter"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerdown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerdown"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerdown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerdown"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointermove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointermove"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointermove_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointermove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointermove"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerrawupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerrawupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerup"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerup_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerup"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointercancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointercancel"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointercancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointercancel"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerout"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerout_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerout"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onpointerleave"

///|
#cfg(target="wasm-gc")
fn svg_element_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  svg_element_onpointerleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_SVGElement" "set_onpointerleave"

///|
#cfg(target="wasm-gc")
fn svg_element_ongotpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn svg_element_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  svg_element_ongotpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_SVGElement" "set_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn svg_element_onlostpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn svg_element_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  svg_element_onlostpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_SVGElement" "set_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn svg_element_onselectstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onselectstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onselectstart_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselectstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "webapi_SVGElement" "set_onselectstart"

///|
#cfg(target="wasm-gc")
fn svg_element_onselectionchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_onselectionchange"

///|
#cfg(target="wasm-gc")
fn svg_element_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  svg_element_onselectionchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_SVGElement" "set_onselectionchange"

///|
#cfg(target="wasm-gc")
fn svg_element_corresponding_element_ffi(obj : JsValue) -> SVGElement = "webapi_SVGElement" "get_correspondingElement"

///|
#cfg(target="wasm-gc")
fn svg_element_corresponding_use_element_ffi(obj : JsValue) -> SVGUseElement = "webapi_SVGElement" "get_correspondingUseElement"

///|
#cfg(target="wasm-gc")
fn svg_element_dataset_ffi(obj : JsValue) -> DOMStringMap = "webapi_SVGElement" "get_dataset"

///|
#cfg(target="wasm-gc")
fn svg_element_nonce_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGElement" "get_nonce"

///|
#cfg(target="wasm-gc")
fn svg_element_nonce_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_element_nonce_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svg_element_set_nonce_ffi(obj : JsValue, nonce : JsValue) -> Unit = "webapi_SVGElement" "set_nonce"

///|
#cfg(target="wasm-gc")
fn svg_element_autofocus_ffi(obj : JsValue) -> Bool = "webapi_SVGElement" "get_autofocus"

///|
#cfg(target="wasm-gc")
fn svg_element_set_autofocus_ffi(obj : JsValue, autofocus : JsValue) -> Unit = "webapi_SVGElement" "set_autofocus"

///|
#cfg(target="wasm-gc")
fn svg_element_tab_index_ffi(obj : JsValue) -> Int = "webapi_SVGElement" "get_tabIndex"

///|
#cfg(target="wasm-gc")
fn svg_element_set_tab_index_ffi(obj : JsValue, tab_index : JsValue) -> Unit = "webapi_SVGElement" "set_tabIndex"

///|
#cfg(target="wasm-gc")
fn svg_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_SVGElement" "focus"

///|
#cfg(target="wasm-gc")
fn svg_element_blur_ffi(obj : JsValue) -> Unit = "webapi_SVGElement" "blur"

///|
#cfg(target="wasm-gc")
fn svg_element_style_ffi(obj : JsValue) -> CSSStyleProperties = "webapi_SVGElement" "get_style"
