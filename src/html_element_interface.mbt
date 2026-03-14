// Do not edit. This file is generated.
// MoonBit type: HTMLElement
// Specifications: cssom-view.idl, html.idl

///|
/// [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement)
#external
pub type HTMLElement

///|
pub impl TJsValue for HTMLElement with to_js(self : HTMLElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLElement with from_js_any(value : JsAny) -> HTMLElement = "%identity"

///|
pub fn[T : THTMLElement] HTMLElement::into(self : HTMLElement) -> T = "%identity"

///|
pub impl THTMLElement for HTMLElement

///|
pub impl TElement for HTMLElement

///|
pub impl TNode for HTMLElement

///|
pub impl TEventTarget for HTMLElement

///|
pub fn HTMLElement::new() -> HTMLElement {
  html_element_new_ffi()
}

///|
pub(open) trait THTMLElementHidden: TJsValue {}

///|
pub impl THTMLElementHidden for Bool

///|
pub impl THTMLElementHidden for Double

///|
pub impl THTMLElementHidden for String

///|
#external
pub type HTMLElementHidden

///|
pub impl TJsValue for HTMLElementHidden with to_js(self : HTMLElementHidden) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLElementHidden with from_js_any(value : JsAny) -> HTMLElementHidden = "%identity"

///|
pub fn[T : THTMLElementHidden + FromJsAny] HTMLElementHidden::into(
  self : HTMLElementHidden,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLElementHidden] HTMLElementHidden::from(
  value : T,
) -> HTMLElementHidden = "%identity"

///|
pub impl THTMLElementHidden for HTMLElementHidden

///|
pub(open) trait THTMLElementTogglePopoverOptions: TJsValue {}

///|
pub impl THTMLElementTogglePopoverOptions for TogglePopoverOptions

///|
pub impl THTMLElementTogglePopoverOptions for Bool

///|
/// [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement) interface.
pub trait THTMLElement: TElement {
  title(self : Self) -> String = _
  set_title(self : Self, title : String) -> Unit = _
  lang(self : Self) -> String = _
  set_lang(self : Self, lang : String) -> Unit = _
  translate(self : Self) -> Bool = _
  set_translate(self : Self, translate : Bool) -> Unit = _
  dir(self : Self) -> String = _
  set_dir(self : Self, dir : String) -> Unit = _
  hidden(self : Self) -> HTMLElementHidden = _
  set_hidden(self : Self, hidden : &THTMLElementHidden) -> Unit = _
  inert(self : Self) -> Bool = _
  set_inert(self : Self, inert : Bool) -> Unit = _
  click(self : Self) -> Unit = _
  access_key(self : Self) -> String = _
  set_access_key(self : Self, access_key : String) -> Unit = _
  access_key_label(self : Self) -> String = _
  draggable(self : Self) -> Bool = _
  set_draggable(self : Self, draggable : Bool) -> Unit = _
  spellcheck(self : Self) -> Bool = _
  set_spellcheck(self : Self, spellcheck : Bool) -> Unit = _
  writing_suggestions(self : Self) -> String = _
  set_writing_suggestions(self : Self, writing_suggestions : String) -> Unit = _
  autocapitalize(self : Self) -> String = _
  set_autocapitalize(self : Self, autocapitalize : String) -> Unit = _
  autocorrect(self : Self) -> Bool = _
  set_autocorrect(self : Self, autocorrect : Bool) -> Unit = _
  inner_text(self : Self) -> String = _
  set_inner_text(self : Self, inner_text : String) -> Unit = _
  outer_text(self : Self) -> String = _
  set_outer_text(self : Self, outer_text : String) -> Unit = _
  attach_internals(self : Self) -> ElementInternals = _
  show_popover(self : Self, options? : ShowPopoverOptions) -> Unit = _
  hide_popover(self : Self) -> Unit = _
  toggle_popover(self : Self, options? : &THTMLElementTogglePopoverOptions) -> Bool = _
  popover(self : Self) -> String = _
  set_popover(self : Self, popover : String) -> Unit = _
  heading_offset(self : Self) -> UInt = _
  set_heading_offset(self : Self, heading_offset : UInt) -> Unit = _
  heading_reset(self : Self) -> Bool = _
  set_heading_reset(self : Self, heading_reset : Bool) -> Unit = _
  scroll_parent(self : Self) -> Element = _
  offset_parent(self : Self) -> Element = _
  offset_top(self : Self) -> Int = _
  offset_left(self : Self) -> Int = _
  offset_width(self : Self) -> Int = _
  offset_height(self : Self) -> Int = _
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
  content_editable(self : Self) -> String = _
  set_content_editable(self : Self, content_editable : String) -> Unit = _
  enter_key_hint(self : Self) -> String = _
  set_enter_key_hint(self : Self, enter_key_hint : String) -> Unit = _
  is_content_editable(self : Self) -> Bool = _
  input_mode(self : Self) -> String = _
  set_input_mode(self : Self, input_mode : String) -> Unit = _
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
/// [HTMLElement.title](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/title)
impl THTMLElement with title(self : Self) -> String {
  html_element_title_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.title](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/title)
impl THTMLElement with set_title(self : Self, title : String) -> Unit {
  html_element_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
/// [HTMLElement.lang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/lang)
impl THTMLElement with lang(self : Self) -> String {
  html_element_lang_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.lang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/lang)
impl THTMLElement with set_lang(self : Self, lang : String) -> Unit {
  html_element_set_lang_ffi(TJsValue::to_js(self), TJsValue::to_js(lang))
}

///|
/// [HTMLElement.translate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/translate)
impl THTMLElement with translate(self : Self) -> Bool {
  html_element_translate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.translate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/translate)
impl THTMLElement with set_translate(self : Self, translate : Bool) -> Unit {
  html_element_set_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(translate),
  )
}

///|
/// [HTMLElement.dir](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dir)
impl THTMLElement with dir(self : Self) -> String {
  html_element_dir_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.dir](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dir)
impl THTMLElement with set_dir(self : Self, dir : String) -> Unit {
  html_element_set_dir_ffi(TJsValue::to_js(self), TJsValue::to_js(dir))
}

///|
/// [HTMLElement.hidden](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidden)
impl THTMLElement with hidden(self : Self) -> HTMLElementHidden {
  html_element_hidden_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.hidden](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidden)
impl THTMLElement with set_hidden(self : Self, hidden : &THTMLElementHidden) -> Unit {
  html_element_set_hidden_ffi(TJsValue::to_js(self), hidden.to_js())
}

///|
/// [HTMLElement.inert](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inert)
impl THTMLElement with inert(self : Self) -> Bool {
  html_element_inert_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.inert](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inert)
impl THTMLElement with set_inert(self : Self, inert : Bool) -> Unit {
  html_element_set_inert_ffi(TJsValue::to_js(self), TJsValue::to_js(inert))
}

///|
/// [HTMLElement.click](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/click)
impl THTMLElement with click(self : Self) -> Unit {
  html_element_click_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.accessKey](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKey)
impl THTMLElement with access_key(self : Self) -> String {
  html_element_access_key_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.accessKey](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKey)
impl THTMLElement with set_access_key(self : Self, access_key : String) -> Unit {
  html_element_set_access_key_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(access_key),
  )
}

///|
/// [HTMLElement.accessKeyLabel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKeyLabel)
impl THTMLElement with access_key_label(self : Self) -> String {
  html_element_access_key_label_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.draggable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/draggable)
impl THTMLElement with draggable(self : Self) -> Bool {
  html_element_draggable_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.draggable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/draggable)
impl THTMLElement with set_draggable(self : Self, draggable : Bool) -> Unit {
  html_element_set_draggable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(draggable),
  )
}

///|
/// [HTMLElement.spellcheck](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/spellcheck)
impl THTMLElement with spellcheck(self : Self) -> Bool {
  html_element_spellcheck_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.spellcheck](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/spellcheck)
impl THTMLElement with set_spellcheck(self : Self, spellcheck : Bool) -> Unit {
  html_element_set_spellcheck_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(spellcheck),
  )
}

///|
/// [HTMLElement.writingSuggestions](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/writingSuggestions)
impl THTMLElement with writing_suggestions(self : Self) -> String {
  html_element_writing_suggestions_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.writingSuggestions](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/writingSuggestions)
impl THTMLElement with set_writing_suggestions(
  self : Self,
  writing_suggestions : String,
) -> Unit {
  html_element_set_writing_suggestions_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(writing_suggestions),
  )
}

///|
/// [HTMLElement.autocapitalize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocapitalize)
impl THTMLElement with autocapitalize(self : Self) -> String {
  html_element_autocapitalize_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.autocapitalize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocapitalize)
impl THTMLElement with set_autocapitalize(self : Self, autocapitalize : String) -> Unit {
  html_element_set_autocapitalize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocapitalize),
  )
}

///|
/// [HTMLElement.autocorrect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocorrect)
impl THTMLElement with autocorrect(self : Self) -> Bool {
  html_element_autocorrect_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.autocorrect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocorrect)
impl THTMLElement with set_autocorrect(self : Self, autocorrect : Bool) -> Unit {
  html_element_set_autocorrect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocorrect),
  )
}

///|
/// [HTMLElement.innerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/innerText)
impl THTMLElement with inner_text(self : Self) -> String {
  html_element_inner_text_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.innerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/innerText)
impl THTMLElement with set_inner_text(self : Self, inner_text : String) -> Unit {
  html_element_set_inner_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(inner_text),
  )
}

///|
/// [HTMLElement.outerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/outerText)
impl THTMLElement with outer_text(self : Self) -> String {
  html_element_outer_text_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.outerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/outerText)
impl THTMLElement with set_outer_text(self : Self, outer_text : String) -> Unit {
  html_element_set_outer_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(outer_text),
  )
}

///|
/// [HTMLElement.attachInternals](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/attachInternals)
impl THTMLElement with attach_internals(self : Self) -> ElementInternals {
  html_element_attach_internals_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.showPopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/showPopover)
impl THTMLElement with show_popover(self : Self, options? : ShowPopoverOptions) -> Unit {
  html_element_show_popover_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [HTMLElement.hidePopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidePopover)
impl THTMLElement with hide_popover(self : Self) -> Unit {
  html_element_hide_popover_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.togglePopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/togglePopover)
impl THTMLElement with toggle_popover(
  self : Self,
  options? : &THTMLElementTogglePopoverOptions,
) -> Bool {
  html_element_toggle_popover_ffi(
    TJsValue::to_js(self),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [HTMLElement.popover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/popover)
impl THTMLElement with popover(self : Self) -> String {
  html_element_popover_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.popover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/popover)
impl THTMLElement with set_popover(self : Self, popover : String) -> Unit {
  html_element_set_popover_ffi(TJsValue::to_js(self), TJsValue::to_js(popover))
}

///|
/// [HTMLElement.headingOffset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingOffset)
impl THTMLElement with heading_offset(self : Self) -> UInt {
  html_element_heading_offset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.headingOffset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingOffset)
impl THTMLElement with set_heading_offset(self : Self, heading_offset : UInt) -> Unit {
  html_element_set_heading_offset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(heading_offset),
  )
}

///|
/// [HTMLElement.headingReset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingReset)
impl THTMLElement with heading_reset(self : Self) -> Bool {
  html_element_heading_reset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.headingReset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingReset)
impl THTMLElement with set_heading_reset(self : Self, heading_reset : Bool) -> Unit {
  html_element_set_heading_reset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(heading_reset),
  )
}

///|
/// [HTMLElement.scrollParent](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/scrollParent)
impl THTMLElement with scroll_parent(self : Self) -> Element {
  html_element_scroll_parent_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.offsetParent](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetParent)
impl THTMLElement with offset_parent(self : Self) -> Element {
  html_element_offset_parent_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.offsetTop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetTop)
impl THTMLElement with offset_top(self : Self) -> Int {
  html_element_offset_top_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.offsetLeft](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetLeft)
impl THTMLElement with offset_left(self : Self) -> Int {
  html_element_offset_left_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.offsetWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetWidth)
impl THTMLElement with offset_width(self : Self) -> Int {
  html_element_offset_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.offsetHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetHeight)
impl THTMLElement with offset_height(self : Self) -> Int {
  html_element_offset_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onabort)
impl THTMLElement with onabort(self : Self) -> EventHandler {
  html_element_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onabort)
impl THTMLElement with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  html_element_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [HTMLElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onauxclick)
impl THTMLElement with onauxclick(self : Self) -> EventHandler {
  html_element_onauxclick_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onauxclick)
impl THTMLElement with set_onauxclick(
  self : Self,
  onauxclick : (Event) -> JsValue,
) -> Unit {
  html_element_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onauxclick)),
  )
}

///|
/// [HTMLElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforeinput)
impl THTMLElement with onbeforeinput(self : Self) -> EventHandler {
  html_element_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforeinput)
impl THTMLElement with set_onbeforeinput(
  self : Self,
  onbeforeinput : (Event) -> JsValue,
) -> Unit {
  html_element_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforeinput)),
  )
}

///|
/// [HTMLElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforematch)
impl THTMLElement with onbeforematch(self : Self) -> EventHandler {
  html_element_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforematch)
impl THTMLElement with set_onbeforematch(
  self : Self,
  onbeforematch : (Event) -> JsValue,
) -> Unit {
  html_element_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforematch)),
  )
}

///|
/// [HTMLElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforetoggle)
impl THTMLElement with onbeforetoggle(self : Self) -> EventHandler {
  html_element_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforetoggle)
impl THTMLElement with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : (Event) -> JsValue,
) -> Unit {
  html_element_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onbeforetoggle)),
  )
}

///|
/// [HTMLElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onblur)
impl THTMLElement with onblur(self : Self) -> EventHandler {
  html_element_onblur_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onblur)
impl THTMLElement with set_onblur(self : Self, onblur : (Event) -> JsValue) -> Unit {
  html_element_set_onblur_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onblur)),
  )
}

///|
/// [HTMLElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncancel)
impl THTMLElement with oncancel(self : Self) -> EventHandler {
  html_element_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncancel)
impl THTMLElement with set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit {
  html_element_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncancel)),
  )
}

///|
/// [HTMLElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplay)
impl THTMLElement with oncanplay(self : Self) -> EventHandler {
  html_element_oncanplay_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplay)
impl THTMLElement with set_oncanplay(
  self : Self,
  oncanplay : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplay)),
  )
}

///|
/// [HTMLElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplaythrough)
impl THTMLElement with oncanplaythrough(self : Self) -> EventHandler {
  html_element_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplaythrough)
impl THTMLElement with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncanplaythrough)),
  )
}

///|
/// [HTMLElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onchange)
impl THTMLElement with onchange(self : Self) -> EventHandler {
  html_element_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onchange)
impl THTMLElement with set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit {
  html_element_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
/// [HTMLElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclick)
impl THTMLElement with onclick(self : Self) -> EventHandler {
  html_element_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclick)
impl THTMLElement with set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit {
  html_element_set_onclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclick)),
  )
}

///|
/// [HTMLElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclose)
impl THTMLElement with onclose(self : Self) -> EventHandler {
  html_element_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclose)
impl THTMLElement with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  html_element_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [HTMLElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncommand)
impl THTMLElement with oncommand(self : Self) -> EventHandler {
  html_element_oncommand_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncommand)
impl THTMLElement with set_oncommand(
  self : Self,
  oncommand : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncommand)),
  )
}

///|
/// [HTMLElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextlost)
impl THTMLElement with oncontextlost(self : Self) -> EventHandler {
  html_element_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextlost)
impl THTMLElement with set_oncontextlost(
  self : Self,
  oncontextlost : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextlost)),
  )
}

///|
/// [HTMLElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextmenu)
impl THTMLElement with oncontextmenu(self : Self) -> EventHandler {
  html_element_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextmenu)
impl THTMLElement with set_oncontextmenu(
  self : Self,
  oncontextmenu : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextmenu)),
  )
}

///|
/// [HTMLElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextrestored)
impl THTMLElement with oncontextrestored(self : Self) -> EventHandler {
  html_element_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextrestored)
impl THTMLElement with set_oncontextrestored(
  self : Self,
  oncontextrestored : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontextrestored)),
  )
}

///|
/// [HTMLElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncopy)
impl THTMLElement with oncopy(self : Self) -> EventHandler {
  html_element_oncopy_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncopy)
impl THTMLElement with set_oncopy(self : Self, oncopy : (Event) -> JsValue) -> Unit {
  html_element_set_oncopy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncopy)),
  )
}

///|
/// [HTMLElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncuechange)
impl THTMLElement with oncuechange(self : Self) -> EventHandler {
  html_element_oncuechange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncuechange)
impl THTMLElement with set_oncuechange(
  self : Self,
  oncuechange : (Event) -> JsValue,
) -> Unit {
  html_element_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncuechange)),
  )
}

///|
/// [HTMLElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncut)
impl THTMLElement with oncut(self : Self) -> EventHandler {
  html_element_oncut_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncut)
impl THTMLElement with set_oncut(self : Self, oncut : (Event) -> JsValue) -> Unit {
  html_element_set_oncut_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncut)),
  )
}

///|
/// [HTMLElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondblclick)
impl THTMLElement with ondblclick(self : Self) -> EventHandler {
  html_element_ondblclick_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondblclick)
impl THTMLElement with set_ondblclick(
  self : Self,
  ondblclick : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondblclick)),
  )
}

///|
/// [HTMLElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrag)
impl THTMLElement with ondrag(self : Self) -> EventHandler {
  html_element_ondrag_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrag)
impl THTMLElement with set_ondrag(self : Self, ondrag : (Event) -> JsValue) -> Unit {
  html_element_set_ondrag_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrag)),
  )
}

///|
/// [HTMLElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragend)
impl THTMLElement with ondragend(self : Self) -> EventHandler {
  html_element_ondragend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragend)
impl THTMLElement with set_ondragend(
  self : Self,
  ondragend : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragend)),
  )
}

///|
/// [HTMLElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragenter)
impl THTMLElement with ondragenter(self : Self) -> EventHandler {
  html_element_ondragenter_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragenter)
impl THTMLElement with set_ondragenter(
  self : Self,
  ondragenter : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragenter)),
  )
}

///|
/// [HTMLElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragleave)
impl THTMLElement with ondragleave(self : Self) -> EventHandler {
  html_element_ondragleave_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragleave)
impl THTMLElement with set_ondragleave(
  self : Self,
  ondragleave : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragleave)),
  )
}

///|
/// [HTMLElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragover)
impl THTMLElement with ondragover(self : Self) -> EventHandler {
  html_element_ondragover_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragover)
impl THTMLElement with set_ondragover(
  self : Self,
  ondragover : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragover)),
  )
}

///|
/// [HTMLElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragstart)
impl THTMLElement with ondragstart(self : Self) -> EventHandler {
  html_element_ondragstart_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragstart)
impl THTMLElement with set_ondragstart(
  self : Self,
  ondragstart : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondragstart)),
  )
}

///|
/// [HTMLElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrop)
impl THTMLElement with ondrop(self : Self) -> EventHandler {
  html_element_ondrop_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrop)
impl THTMLElement with set_ondrop(self : Self, ondrop : (Event) -> JsValue) -> Unit {
  html_element_set_ondrop_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondrop)),
  )
}

///|
/// [HTMLElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondurationchange)
impl THTMLElement with ondurationchange(self : Self) -> EventHandler {
  html_element_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondurationchange)
impl THTMLElement with set_ondurationchange(
  self : Self,
  ondurationchange : (Event) -> JsValue,
) -> Unit {
  html_element_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondurationchange)),
  )
}

///|
/// [HTMLElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onemptied)
impl THTMLElement with onemptied(self : Self) -> EventHandler {
  html_element_onemptied_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onemptied)
impl THTMLElement with set_onemptied(
  self : Self,
  onemptied : (Event) -> JsValue,
) -> Unit {
  html_element_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onemptied)),
  )
}

///|
/// [HTMLElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onended)
impl THTMLElement with onended(self : Self) -> EventHandler {
  html_element_onended_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onended)
impl THTMLElement with set_onended(self : Self, onended : (Event) -> JsValue) -> Unit {
  html_element_set_onended_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onended)),
  )
}

///|
/// [HTMLElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onerror)
impl THTMLElement with onerror(self : Self) -> OnErrorEventHandler {
  html_element_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onerror)
impl THTMLElement with set_onerror(
  self : Self,
  onerror : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> Unit {
  html_element_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(on_error_event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [HTMLElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onfocus)
impl THTMLElement with onfocus(self : Self) -> EventHandler {
  html_element_onfocus_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onfocus)
impl THTMLElement with set_onfocus(self : Self, onfocus : (Event) -> JsValue) -> Unit {
  html_element_set_onfocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfocus)),
  )
}

///|
/// [HTMLElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onformdata)
impl THTMLElement with onformdata(self : Self) -> EventHandler {
  html_element_onformdata_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onformdata)
impl THTMLElement with set_onformdata(
  self : Self,
  onformdata : (Event) -> JsValue,
) -> Unit {
  html_element_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onformdata)),
  )
}

///|
/// [HTMLElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninput)
impl THTMLElement with oninput(self : Self) -> EventHandler {
  html_element_oninput_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninput)
impl THTMLElement with set_oninput(self : Self, oninput : (Event) -> JsValue) -> Unit {
  html_element_set_oninput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninput)),
  )
}

///|
/// [HTMLElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninvalid)
impl THTMLElement with oninvalid(self : Self) -> EventHandler {
  html_element_oninvalid_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninvalid)
impl THTMLElement with set_oninvalid(
  self : Self,
  oninvalid : (Event) -> JsValue,
) -> Unit {
  html_element_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninvalid)),
  )
}

///|
/// [HTMLElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeydown)
impl THTMLElement with onkeydown(self : Self) -> EventHandler {
  html_element_onkeydown_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeydown)
impl THTMLElement with set_onkeydown(
  self : Self,
  onkeydown : (Event) -> JsValue,
) -> Unit {
  html_element_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeydown)),
  )
}

///|
/// [HTMLElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeypress)
impl THTMLElement with onkeypress(self : Self) -> EventHandler {
  html_element_onkeypress_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeypress)
impl THTMLElement with set_onkeypress(
  self : Self,
  onkeypress : (Event) -> JsValue,
) -> Unit {
  html_element_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeypress)),
  )
}

///|
/// [HTMLElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeyup)
impl THTMLElement with onkeyup(self : Self) -> EventHandler {
  html_element_onkeyup_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeyup)
impl THTMLElement with set_onkeyup(self : Self, onkeyup : (Event) -> JsValue) -> Unit {
  html_element_set_onkeyup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onkeyup)),
  )
}

///|
/// [HTMLElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onload)
impl THTMLElement with onload(self : Self) -> EventHandler {
  html_element_onload_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onload)
impl THTMLElement with set_onload(self : Self, onload : (Event) -> JsValue) -> Unit {
  html_element_set_onload_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onload)),
  )
}

///|
/// [HTMLElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadeddata)
impl THTMLElement with onloadeddata(self : Self) -> EventHandler {
  html_element_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadeddata)
impl THTMLElement with set_onloadeddata(
  self : Self,
  onloadeddata : (Event) -> JsValue,
) -> Unit {
  html_element_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadeddata)),
  )
}

///|
/// [HTMLElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadedmetadata)
impl THTMLElement with onloadedmetadata(self : Self) -> EventHandler {
  html_element_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadedmetadata)
impl THTMLElement with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : (Event) -> JsValue,
) -> Unit {
  html_element_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadedmetadata)),
  )
}

///|
/// [HTMLElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadstart)
impl THTMLElement with onloadstart(self : Self) -> EventHandler {
  html_element_onloadstart_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadstart)
impl THTMLElement with set_onloadstart(
  self : Self,
  onloadstart : (Event) -> JsValue,
) -> Unit {
  html_element_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onloadstart)),
  )
}

///|
/// [HTMLElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousedown)
impl THTMLElement with onmousedown(self : Self) -> EventHandler {
  html_element_onmousedown_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousedown)
impl THTMLElement with set_onmousedown(
  self : Self,
  onmousedown : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousedown)),
  )
}

///|
/// [HTMLElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseenter)
impl THTMLElement with onmouseenter(self : Self) -> EventHandler {
  html_element_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseenter)
impl THTMLElement with set_onmouseenter(
  self : Self,
  onmouseenter : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseenter)),
  )
}

///|
/// [HTMLElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseleave)
impl THTMLElement with onmouseleave(self : Self) -> EventHandler {
  html_element_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseleave)
impl THTMLElement with set_onmouseleave(
  self : Self,
  onmouseleave : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseleave)),
  )
}

///|
/// [HTMLElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousemove)
impl THTMLElement with onmousemove(self : Self) -> EventHandler {
  html_element_onmousemove_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousemove)
impl THTMLElement with set_onmousemove(
  self : Self,
  onmousemove : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmousemove)),
  )
}

///|
/// [HTMLElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseout)
impl THTMLElement with onmouseout(self : Self) -> EventHandler {
  html_element_onmouseout_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseout)
impl THTMLElement with set_onmouseout(
  self : Self,
  onmouseout : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseout)),
  )
}

///|
/// [HTMLElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseover)
impl THTMLElement with onmouseover(self : Self) -> EventHandler {
  html_element_onmouseover_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseover)
impl THTMLElement with set_onmouseover(
  self : Self,
  onmouseover : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseover)),
  )
}

///|
/// [HTMLElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseup)
impl THTMLElement with onmouseup(self : Self) -> EventHandler {
  html_element_onmouseup_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseup)
impl THTMLElement with set_onmouseup(
  self : Self,
  onmouseup : (Event) -> JsValue,
) -> Unit {
  html_element_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmouseup)),
  )
}

///|
/// [HTMLElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpaste)
impl THTMLElement with onpaste(self : Self) -> EventHandler {
  html_element_onpaste_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpaste)
impl THTMLElement with set_onpaste(self : Self, onpaste : (Event) -> JsValue) -> Unit {
  html_element_set_onpaste_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpaste)),
  )
}

///|
/// [HTMLElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpause)
impl THTMLElement with onpause(self : Self) -> EventHandler {
  html_element_onpause_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpause)
impl THTMLElement with set_onpause(self : Self, onpause : (Event) -> JsValue) -> Unit {
  html_element_set_onpause_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpause)),
  )
}

///|
/// [HTMLElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplay)
impl THTMLElement with onplay(self : Self) -> EventHandler {
  html_element_onplay_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplay)
impl THTMLElement with set_onplay(self : Self, onplay : (Event) -> JsValue) -> Unit {
  html_element_set_onplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplay)),
  )
}

///|
/// [HTMLElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplaying)
impl THTMLElement with onplaying(self : Self) -> EventHandler {
  html_element_onplaying_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplaying)
impl THTMLElement with set_onplaying(
  self : Self,
  onplaying : (Event) -> JsValue,
) -> Unit {
  html_element_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onplaying)),
  )
}

///|
/// [HTMLElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onprogress)
impl THTMLElement with onprogress(self : Self) -> EventHandler {
  html_element_onprogress_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onprogress)
impl THTMLElement with set_onprogress(
  self : Self,
  onprogress : (Event) -> JsValue,
) -> Unit {
  html_element_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onprogress)),
  )
}

///|
/// [HTMLElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onratechange)
impl THTMLElement with onratechange(self : Self) -> EventHandler {
  html_element_onratechange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onratechange)
impl THTMLElement with set_onratechange(
  self : Self,
  onratechange : (Event) -> JsValue,
) -> Unit {
  html_element_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onratechange)),
  )
}

///|
/// [HTMLElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onreset)
impl THTMLElement with onreset(self : Self) -> EventHandler {
  html_element_onreset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onreset)
impl THTMLElement with set_onreset(self : Self, onreset : (Event) -> JsValue) -> Unit {
  html_element_set_onreset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreset)),
  )
}

///|
/// [HTMLElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onresize)
impl THTMLElement with onresize(self : Self) -> EventHandler {
  html_element_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onresize)
impl THTMLElement with set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit {
  html_element_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onresize)),
  )
}

///|
/// [HTMLElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscroll)
impl THTMLElement with onscroll(self : Self) -> EventHandler {
  html_element_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscroll)
impl THTMLElement with set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit {
  html_element_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscroll)),
  )
}

///|
/// [HTMLElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscrollend)
impl THTMLElement with onscrollend(self : Self) -> EventHandler {
  html_element_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscrollend)
impl THTMLElement with set_onscrollend(
  self : Self,
  onscrollend : (Event) -> JsValue,
) -> Unit {
  html_element_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscrollend)),
  )
}

///|
/// [HTMLElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsecuritypolicyviolation)
impl THTMLElement with onsecuritypolicyviolation(self : Self) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsecuritypolicyviolation)
impl THTMLElement with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : (Event) -> JsValue,
) -> Unit {
  html_element_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsecuritypolicyviolation)),
  )
}

///|
/// [HTMLElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeked)
impl THTMLElement with onseeked(self : Self) -> EventHandler {
  html_element_onseeked_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeked)
impl THTMLElement with set_onseeked(self : Self, onseeked : (Event) -> JsValue) -> Unit {
  html_element_set_onseeked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeked)),
  )
}

///|
/// [HTMLElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeking)
impl THTMLElement with onseeking(self : Self) -> EventHandler {
  html_element_onseeking_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeking)
impl THTMLElement with set_onseeking(
  self : Self,
  onseeking : (Event) -> JsValue,
) -> Unit {
  html_element_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onseeking)),
  )
}

///|
/// [HTMLElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselect)
impl THTMLElement with onselect(self : Self) -> EventHandler {
  html_element_onselect_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselect)
impl THTMLElement with set_onselect(self : Self, onselect : (Event) -> JsValue) -> Unit {
  html_element_set_onselect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselect)),
  )
}

///|
/// [HTMLElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onslotchange)
impl THTMLElement with onslotchange(self : Self) -> EventHandler {
  html_element_onslotchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onslotchange)
impl THTMLElement with set_onslotchange(
  self : Self,
  onslotchange : (Event) -> JsValue,
) -> Unit {
  html_element_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onslotchange)),
  )
}

///|
/// [HTMLElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onstalled)
impl THTMLElement with onstalled(self : Self) -> EventHandler {
  html_element_onstalled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onstalled)
impl THTMLElement with set_onstalled(
  self : Self,
  onstalled : (Event) -> JsValue,
) -> Unit {
  html_element_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstalled)),
  )
}

///|
/// [HTMLElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsubmit)
impl THTMLElement with onsubmit(self : Self) -> EventHandler {
  html_element_onsubmit_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsubmit)
impl THTMLElement with set_onsubmit(self : Self, onsubmit : (Event) -> JsValue) -> Unit {
  html_element_set_onsubmit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsubmit)),
  )
}

///|
/// [HTMLElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsuspend)
impl THTMLElement with onsuspend(self : Self) -> EventHandler {
  html_element_onsuspend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsuspend)
impl THTMLElement with set_onsuspend(
  self : Self,
  onsuspend : (Event) -> JsValue,
) -> Unit {
  html_element_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsuspend)),
  )
}

///|
/// [HTMLElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontimeupdate)
impl THTMLElement with ontimeupdate(self : Self) -> EventHandler {
  html_element_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontimeupdate)
impl THTMLElement with set_ontimeupdate(
  self : Self,
  ontimeupdate : (Event) -> JsValue,
) -> Unit {
  html_element_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontimeupdate)),
  )
}

///|
/// [HTMLElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontoggle)
impl THTMLElement with ontoggle(self : Self) -> EventHandler {
  html_element_ontoggle_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontoggle)
impl THTMLElement with set_ontoggle(self : Self, ontoggle : (Event) -> JsValue) -> Unit {
  html_element_set_ontoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontoggle)),
  )
}

///|
/// [HTMLElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onvolumechange)
impl THTMLElement with onvolumechange(self : Self) -> EventHandler {
  html_element_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onvolumechange)
impl THTMLElement with set_onvolumechange(
  self : Self,
  onvolumechange : (Event) -> JsValue,
) -> Unit {
  html_element_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onvolumechange)),
  )
}

///|
/// [HTMLElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwaiting)
impl THTMLElement with onwaiting(self : Self) -> EventHandler {
  html_element_onwaiting_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwaiting)
impl THTMLElement with set_onwaiting(
  self : Self,
  onwaiting : (Event) -> JsValue,
) -> Unit {
  html_element_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwaiting)),
  )
}

///|
/// [HTMLElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationend)
impl THTMLElement with onwebkitanimationend(self : Self) -> EventHandler {
  html_element_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationend)
impl THTMLElement with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : (Event) -> JsValue,
) -> Unit {
  html_element_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationend)),
  )
}

///|
/// [HTMLElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationiteration)
impl THTMLElement with onwebkitanimationiteration(self : Self) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationiteration)
impl THTMLElement with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : (Event) -> JsValue,
) -> Unit {
  html_element_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationiteration)),
  )
}

///|
/// [HTMLElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationstart)
impl THTMLElement with onwebkitanimationstart(self : Self) -> EventHandler {
  html_element_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationstart)
impl THTMLElement with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : (Event) -> JsValue,
) -> Unit {
  html_element_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkitanimationstart)),
  )
}

///|
/// [HTMLElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkittransitionend)
impl THTMLElement with onwebkittransitionend(self : Self) -> EventHandler {
  html_element_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkittransitionend)
impl THTMLElement with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : (Event) -> JsValue,
) -> Unit {
  html_element_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwebkittransitionend)),
  )
}

///|
/// [HTMLElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwheel)
impl THTMLElement with onwheel(self : Self) -> EventHandler {
  html_element_onwheel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwheel)
impl THTMLElement with set_onwheel(self : Self, onwheel : (Event) -> JsValue) -> Unit {
  html_element_set_onwheel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onwheel)),
  )
}

///|
/// [HTMLElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchstart)
impl THTMLElement with ontouchstart(self : Self) -> EventHandler {
  html_element_ontouchstart_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontouchstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchstart)
impl THTMLElement with set_ontouchstart(
  self : Self,
  ontouchstart : (Event) -> JsValue,
) -> Unit {
  html_element_set_ontouchstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchstart)),
  )
}

///|
/// [HTMLElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchend)
impl THTMLElement with ontouchend(self : Self) -> EventHandler {
  html_element_ontouchend_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontouchend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchend)
impl THTMLElement with set_ontouchend(
  self : Self,
  ontouchend : (Event) -> JsValue,
) -> Unit {
  html_element_set_ontouchend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchend)),
  )
}

///|
/// [HTMLElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchmove)
impl THTMLElement with ontouchmove(self : Self) -> EventHandler {
  html_element_ontouchmove_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontouchmove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchmove)
impl THTMLElement with set_ontouchmove(
  self : Self,
  ontouchmove : (Event) -> JsValue,
) -> Unit {
  html_element_set_ontouchmove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchmove)),
  )
}

///|
/// [HTMLElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchcancel)
impl THTMLElement with ontouchcancel(self : Self) -> EventHandler {
  html_element_ontouchcancel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ontouchcancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontouchcancel)
impl THTMLElement with set_ontouchcancel(
  self : Self,
  ontouchcancel : (Event) -> JsValue,
) -> Unit {
  html_element_set_ontouchcancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ontouchcancel)),
  )
}

///|
/// [HTMLElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerover)
impl THTMLElement with onpointerover(self : Self) -> EventHandler {
  html_element_onpointerover_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerover)
impl THTMLElement with set_onpointerover(
  self : Self,
  onpointerover : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerover)),
  )
}

///|
/// [HTMLElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerenter)
impl THTMLElement with onpointerenter(self : Self) -> EventHandler {
  html_element_onpointerenter_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerenter)
impl THTMLElement with set_onpointerenter(
  self : Self,
  onpointerenter : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerenter)),
  )
}

///|
/// [HTMLElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerdown)
impl THTMLElement with onpointerdown(self : Self) -> EventHandler {
  html_element_onpointerdown_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerdown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerdown)
impl THTMLElement with set_onpointerdown(
  self : Self,
  onpointerdown : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerdown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerdown)),
  )
}

///|
/// [HTMLElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointermove)
impl THTMLElement with onpointermove(self : Self) -> EventHandler {
  html_element_onpointermove_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointermove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointermove)
impl THTMLElement with set_onpointermove(
  self : Self,
  onpointermove : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointermove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointermove)),
  )
}

///|
/// [HTMLElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerrawupdate)
impl THTMLElement with onpointerrawupdate(self : Self) -> EventHandler {
  html_element_onpointerrawupdate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerrawupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerrawupdate)
impl THTMLElement with set_onpointerrawupdate(
  self : Self,
  onpointerrawupdate : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerrawupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerrawupdate)),
  )
}

///|
/// [HTMLElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerup)
impl THTMLElement with onpointerup(self : Self) -> EventHandler {
  html_element_onpointerup_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerup)
impl THTMLElement with set_onpointerup(
  self : Self,
  onpointerup : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerup)),
  )
}

///|
/// [HTMLElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointercancel)
impl THTMLElement with onpointercancel(self : Self) -> EventHandler {
  html_element_onpointercancel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointercancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointercancel)
impl THTMLElement with set_onpointercancel(
  self : Self,
  onpointercancel : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointercancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointercancel)),
  )
}

///|
/// [HTMLElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerout)
impl THTMLElement with onpointerout(self : Self) -> EventHandler {
  html_element_onpointerout_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerout)
impl THTMLElement with set_onpointerout(
  self : Self,
  onpointerout : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerout)),
  )
}

///|
/// [HTMLElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerleave)
impl THTMLElement with onpointerleave(self : Self) -> EventHandler {
  html_element_onpointerleave_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onpointerleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpointerleave)
impl THTMLElement with set_onpointerleave(
  self : Self,
  onpointerleave : (Event) -> JsValue,
) -> Unit {
  html_element_set_onpointerleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onpointerleave)),
  )
}

///|
/// [HTMLElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ongotpointercapture)
impl THTMLElement with ongotpointercapture(self : Self) -> EventHandler {
  html_element_ongotpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.ongotpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ongotpointercapture)
impl THTMLElement with set_ongotpointercapture(
  self : Self,
  ongotpointercapture : (Event) -> JsValue,
) -> Unit {
  html_element_set_ongotpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ongotpointercapture)),
  )
}

///|
/// [HTMLElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onlostpointercapture)
impl THTMLElement with onlostpointercapture(self : Self) -> EventHandler {
  html_element_onlostpointercapture_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onlostpointercapture](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onlostpointercapture)
impl THTMLElement with set_onlostpointercapture(
  self : Self,
  onlostpointercapture : (Event) -> JsValue,
) -> Unit {
  html_element_set_onlostpointercapture_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onlostpointercapture)),
  )
}

///|
/// [HTMLElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselectstart)
impl THTMLElement with onselectstart(self : Self) -> EventHandler {
  html_element_onselectstart_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onselectstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselectstart)
impl THTMLElement with set_onselectstart(
  self : Self,
  onselectstart : (Event) -> JsValue,
) -> Unit {
  html_element_set_onselectstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectstart)),
  )
}

///|
/// [HTMLElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselectionchange)
impl THTMLElement with onselectionchange(self : Self) -> EventHandler {
  html_element_onselectionchange_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.onselectionchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselectionchange)
impl THTMLElement with set_onselectionchange(
  self : Self,
  onselectionchange : (Event) -> JsValue,
) -> Unit {
  html_element_set_onselectionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onselectionchange)),
  )
}

///|
/// [HTMLElement.contentEditable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/contentEditable)
impl THTMLElement with content_editable(self : Self) -> String {
  html_element_content_editable_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.contentEditable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/contentEditable)
impl THTMLElement with set_content_editable(
  self : Self,
  content_editable : String,
) -> Unit {
  html_element_set_content_editable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(content_editable),
  )
}

///|
/// [HTMLElement.enterKeyHint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/enterKeyHint)
impl THTMLElement with enter_key_hint(self : Self) -> String {
  html_element_enter_key_hint_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.enterKeyHint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/enterKeyHint)
impl THTMLElement with set_enter_key_hint(self : Self, enter_key_hint : String) -> Unit {
  html_element_set_enter_key_hint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(enter_key_hint),
  )
}

///|
/// [HTMLElement.isContentEditable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/isContentEditable)
impl THTMLElement with is_content_editable(self : Self) -> Bool {
  html_element_is_content_editable_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.inputMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inputMode)
impl THTMLElement with input_mode(self : Self) -> String {
  html_element_input_mode_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.inputMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inputMode)
impl THTMLElement with set_input_mode(self : Self, input_mode : String) -> Unit {
  html_element_set_input_mode_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input_mode),
  )
}

///|
/// [HTMLElement.dataset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dataset)
impl THTMLElement with dataset(self : Self) -> DOMStringMap {
  html_element_dataset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/nonce)
impl THTMLElement with nonce(self : Self) -> String {
  html_element_nonce_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/nonce)
impl THTMLElement with set_nonce(self : Self, nonce : String) -> Unit {
  html_element_set_nonce_ffi(TJsValue::to_js(self), TJsValue::to_js(nonce))
}

///|
/// [HTMLElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autofocus)
impl THTMLElement with autofocus(self : Self) -> Bool {
  html_element_autofocus_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autofocus)
impl THTMLElement with set_autofocus(self : Self, autofocus : Bool) -> Unit {
  html_element_set_autofocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autofocus),
  )
}

///|
/// [HTMLElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/tabIndex)
impl THTMLElement with tab_index(self : Self) -> Int {
  html_element_tab_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/tabIndex)
impl THTMLElement with set_tab_index(self : Self, tab_index : Int) -> Unit {
  html_element_set_tab_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tab_index),
  )
}

///|
/// [HTMLElement.focus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/focus)
impl THTMLElement with focus(self : Self, options? : FocusOptions) -> Unit {
  html_element_focus_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [HTMLElement.blur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/blur)
impl THTMLElement with blur(self : Self) -> Unit {
  html_element_blur_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
impl THTMLElement with style(self : Self) -> CSSStyleProperties {
  html_element_style_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_element_new_ffi() -> HTMLElement = "() => new HTMLElement()"

///|
#cfg(target="js")
extern "js" fn html_element_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
#cfg(target="js")
fn html_element_title_ffi(obj : JsValue) -> String {
  html_element_title_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
#cfg(target="js")
extern "js" fn html_element_lang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lang"

///|
#cfg(target="js")
fn html_element_lang_ffi(obj : JsValue) -> String {
  html_element_lang_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_lang_ffi(obj : JsValue, lang : JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

///|
#cfg(target="js")
extern "js" fn html_element_translate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.translate"

///|
#cfg(target="js")
fn html_element_translate_ffi(obj : JsValue) -> Bool {
  html_element_translate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_translate_ffi(
  obj : JsValue,
  translate : JsValue,
) -> Unit = "(obj, translate) => { obj.translate = translate; }"

///|
#cfg(target="js")
extern "js" fn html_element_dir_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
#cfg(target="js")
fn html_element_dir_ffi(obj : JsValue) -> String {
  html_element_dir_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
#cfg(target="js")
extern "js" fn html_element_hidden_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hidden"

///|
#cfg(target="js")
fn html_element_hidden_ffi(obj : JsValue) -> HTMLElementHidden {
  html_element_hidden_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_hidden_ffi(
  obj : JsValue,
  hidden : JsValue,
) -> Unit = "(obj, hidden) => { obj.hidden = hidden; }"

///|
#cfg(target="js")
extern "js" fn html_element_inert_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inert"

///|
#cfg(target="js")
fn html_element_inert_ffi(obj : JsValue) -> Bool {
  html_element_inert_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_inert_ffi(
  obj : JsValue,
  inert : JsValue,
) -> Unit = "(obj, inert) => { obj.inert = inert; }"

///|
#cfg(target="js")
extern "js" fn html_element_click_ffi(obj : JsValue) -> Unit = "(obj) => obj.click()"

///|
#cfg(target="js")
extern "js" fn html_element_access_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.accessKey"

///|
#cfg(target="js")
fn html_element_access_key_ffi(obj : JsValue) -> String {
  html_element_access_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_access_key_ffi(
  obj : JsValue,
  access_key : JsValue,
) -> Unit = "(obj, accessKey) => { obj.accessKey = accessKey; }"

///|
#cfg(target="js")
extern "js" fn html_element_access_key_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.accessKeyLabel"

///|
#cfg(target="js")
fn html_element_access_key_label_ffi(obj : JsValue) -> String {
  html_element_access_key_label_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_draggable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.draggable"

///|
#cfg(target="js")
fn html_element_draggable_ffi(obj : JsValue) -> Bool {
  html_element_draggable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_draggable_ffi(
  obj : JsValue,
  draggable : JsValue,
) -> Unit = "(obj, draggable) => { obj.draggable = draggable; }"

///|
#cfg(target="js")
extern "js" fn html_element_spellcheck_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.spellcheck"

///|
#cfg(target="js")
fn html_element_spellcheck_ffi(obj : JsValue) -> Bool {
  html_element_spellcheck_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_spellcheck_ffi(
  obj : JsValue,
  spellcheck : JsValue,
) -> Unit = "(obj, spellcheck) => { obj.spellcheck = spellcheck; }"

///|
#cfg(target="js")
extern "js" fn html_element_writing_suggestions_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.writingSuggestions"

///|
#cfg(target="js")
fn html_element_writing_suggestions_ffi(obj : JsValue) -> String {
  html_element_writing_suggestions_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  writing_suggestions : JsValue,
) -> Unit = "(obj, writingSuggestions) => { obj.writingSuggestions = writingSuggestions; }"

///|
#cfg(target="js")
extern "js" fn html_element_autocapitalize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autocapitalize"

///|
#cfg(target="js")
fn html_element_autocapitalize_ffi(obj : JsValue) -> String {
  html_element_autocapitalize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_autocapitalize_ffi(
  obj : JsValue,
  autocapitalize : JsValue,
) -> Unit = "(obj, autocapitalize) => { obj.autocapitalize = autocapitalize; }"

///|
#cfg(target="js")
extern "js" fn html_element_autocorrect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autocorrect"

///|
#cfg(target="js")
fn html_element_autocorrect_ffi(obj : JsValue) -> Bool {
  html_element_autocorrect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_autocorrect_ffi(
  obj : JsValue,
  autocorrect : JsValue,
) -> Unit = "(obj, autocorrect) => { obj.autocorrect = autocorrect; }"

///|
#cfg(target="js")
extern "js" fn html_element_inner_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.innerText"

///|
#cfg(target="js")
fn html_element_inner_text_ffi(obj : JsValue) -> String {
  html_element_inner_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_inner_text_ffi(
  obj : JsValue,
  inner_text : JsValue,
) -> Unit = "(obj, innerText) => { obj.innerText = innerText; }"

///|
#cfg(target="js")
extern "js" fn html_element_outer_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.outerText"

///|
#cfg(target="js")
fn html_element_outer_text_ffi(obj : JsValue) -> String {
  html_element_outer_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_outer_text_ffi(
  obj : JsValue,
  outer_text : JsValue,
) -> Unit = "(obj, outerText) => { obj.outerText = outerText; }"

///|
#cfg(target="js")
extern "js" fn html_element_attach_internals_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.attachInternals()"

///|
#cfg(target="js")
fn html_element_attach_internals_ffi(obj : JsValue) -> ElementInternals {
  html_element_attach_internals_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_show_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.showPopover(options)"

///|
#cfg(target="js")
extern "js" fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "(obj) => obj.hidePopover()"

///|
#cfg(target="js")
extern "js" fn html_element_toggle_popover_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.togglePopover(options)"

///|
#cfg(target="js")
fn html_element_toggle_popover_ffi(obj : JsValue, options : JsValue) -> Bool {
  html_element_toggle_popover_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_popover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.popover"

///|
#cfg(target="js")
fn html_element_popover_ffi(obj : JsValue) -> String {
  html_element_popover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_popover_ffi(
  obj : JsValue,
  popover : JsValue,
) -> Unit = "(obj, popover) => { obj.popover = popover; }"

///|
#cfg(target="js")
extern "js" fn html_element_heading_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.headingOffset"

///|
#cfg(target="js")
fn html_element_heading_offset_ffi(obj : JsValue) -> UInt {
  html_element_heading_offset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_heading_offset_ffi(
  obj : JsValue,
  heading_offset : JsValue,
) -> Unit = "(obj, headingOffset) => { obj.headingOffset = headingOffset; }"

///|
#cfg(target="js")
extern "js" fn html_element_heading_reset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.headingReset"

///|
#cfg(target="js")
fn html_element_heading_reset_ffi(obj : JsValue) -> Bool {
  html_element_heading_reset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_heading_reset_ffi(
  obj : JsValue,
  heading_reset : JsValue,
) -> Unit = "(obj, headingReset) => { obj.headingReset = headingReset; }"

///|
#cfg(target="js")
extern "js" fn html_element_scroll_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrollParent"

///|
#cfg(target="js")
fn html_element_scroll_parent_ffi(obj : JsValue) -> Element {
  html_element_scroll_parent_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_offset_parent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetParent"

///|
#cfg(target="js")
fn html_element_offset_parent_ffi(obj : JsValue) -> Element {
  html_element_offset_parent_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_offset_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
#cfg(target="js")
fn html_element_offset_top_ffi(obj : JsValue) -> Int {
  html_element_offset_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_offset_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
#cfg(target="js")
fn html_element_offset_left_ffi(obj : JsValue) -> Int {
  html_element_offset_left_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_offset_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetWidth"

///|
#cfg(target="js")
fn html_element_offset_width_ffi(obj : JsValue) -> Int {
  html_element_offset_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_offset_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetHeight"

///|
#cfg(target="js")
fn html_element_offset_height_ffi(obj : JsValue) -> Int {
  html_element_offset_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn html_element_onabort_ffi(obj : JsValue) -> EventHandler {
  html_element_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn html_element_onauxclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onauxclick"

///|
#cfg(target="js")
fn html_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onauxclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
#cfg(target="js")
extern "js" fn html_element_onbeforeinput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforeinput"

///|
#cfg(target="js")
fn html_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforeinput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
#cfg(target="js")
extern "js" fn html_element_onbeforematch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforematch"

///|
#cfg(target="js")
fn html_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforematch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
#cfg(target="js")
extern "js" fn html_element_onbeforetoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onbeforetoggle"

///|
#cfg(target="js")
fn html_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforetoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
#cfg(target="js")
extern "js" fn html_element_onblur_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onblur"

///|
#cfg(target="js")
fn html_element_onblur_ffi(obj : JsValue) -> EventHandler {
  html_element_onblur_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
#cfg(target="js")
fn html_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  html_element_oncancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncanplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplay"

///|
#cfg(target="js")
fn html_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncanplaythrough_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncanplaythrough"

///|
#cfg(target="js")
fn html_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplaythrough_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
#cfg(target="js")
extern "js" fn html_element_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn html_element_onchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="js")
extern "js" fn html_element_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
#cfg(target="js")
fn html_element_onclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
#cfg(target="js")
extern "js" fn html_element_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn html_element_onclose_ffi(obj : JsValue) -> EventHandler {
  html_element_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncommand_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncommand"

///|
#cfg(target="js")
fn html_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  html_element_oncommand_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncontextlost_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextlost"

///|
#cfg(target="js")
fn html_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextlost_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncontextmenu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextmenu"

///|
#cfg(target="js")
fn html_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextmenu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncontextrestored_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncontextrestored"

///|
#cfg(target="js")
fn html_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextrestored_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncopy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncopy"

///|
#cfg(target="js")
fn html_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  html_element_oncopy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
#cfg(target="js")
fn html_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  html_element_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
#cfg(target="js")
extern "js" fn html_element_oncut_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncut"

///|
#cfg(target="js")
fn html_element_oncut_ffi(obj : JsValue) -> EventHandler {
  html_element_oncut_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondblclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondblclick"

///|
#cfg(target="js")
fn html_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  html_element_ondblclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondrag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrag"

///|
#cfg(target="js")
fn html_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrag_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondragend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragend"

///|
#cfg(target="js")
fn html_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondragenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragenter"

///|
#cfg(target="js")
fn html_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondragleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragleave"

///|
#cfg(target="js")
fn html_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondragover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragover"

///|
#cfg(target="js")
fn html_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondragstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondragstart"

///|
#cfg(target="js")
fn html_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondrop_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondrop"

///|
#cfg(target="js")
fn html_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrop_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
#cfg(target="js")
extern "js" fn html_element_ondurationchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ondurationchange"

///|
#cfg(target="js")
fn html_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  html_element_ondurationchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
#cfg(target="js")
extern "js" fn html_element_onemptied_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onemptied"

///|
#cfg(target="js")
fn html_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  html_element_onemptied_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
#cfg(target="js")
extern "js" fn html_element_onended_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onended"

///|
#cfg(target="js")
fn html_element_onended_ffi(obj : JsValue) -> EventHandler {
  html_element_onended_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
#cfg(target="js")
extern "js" fn html_element_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn html_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  html_element_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn html_element_onfocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfocus"

///|
#cfg(target="js")
fn html_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  html_element_onfocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
#cfg(target="js")
extern "js" fn html_element_onformdata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onformdata"

///|
#cfg(target="js")
fn html_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  html_element_onformdata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
#cfg(target="js")
extern "js" fn html_element_oninput_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninput"

///|
#cfg(target="js")
fn html_element_oninput_ffi(obj : JsValue) -> EventHandler {
  html_element_oninput_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
#cfg(target="js")
extern "js" fn html_element_oninvalid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oninvalid"

///|
#cfg(target="js")
fn html_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  html_element_oninvalid_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
#cfg(target="js")
extern "js" fn html_element_onkeydown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeydown"

///|
#cfg(target="js")
fn html_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeydown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
#cfg(target="js")
extern "js" fn html_element_onkeypress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeypress"

///|
#cfg(target="js")
fn html_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeypress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
#cfg(target="js")
extern "js" fn html_element_onkeyup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onkeyup"

///|
#cfg(target="js")
fn html_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeyup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
#cfg(target="js")
extern "js" fn html_element_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn html_element_onload_ffi(obj : JsValue) -> EventHandler {
  html_element_onload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
#cfg(target="js")
extern "js" fn html_element_onloadeddata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadeddata"

///|
#cfg(target="js")
fn html_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadeddata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
#cfg(target="js")
extern "js" fn html_element_onloadedmetadata_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadedmetadata"

///|
#cfg(target="js")
fn html_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadedmetadata_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
#cfg(target="js")
extern "js" fn html_element_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn html_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmousedown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousedown"

///|
#cfg(target="js")
fn html_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousedown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmouseenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseenter"

///|
#cfg(target="js")
fn html_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmouseleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseleave"

///|
#cfg(target="js")
fn html_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmousemove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmousemove"

///|
#cfg(target="js")
fn html_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousemove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmouseout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseout"

///|
#cfg(target="js")
fn html_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmouseover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseover"

///|
#cfg(target="js")
fn html_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
#cfg(target="js")
extern "js" fn html_element_onmouseup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmouseup"

///|
#cfg(target="js")
fn html_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpaste_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpaste"

///|
#cfg(target="js")
fn html_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  html_element_onpaste_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpause_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpause"

///|
#cfg(target="js")
fn html_element_onpause_ffi(obj : JsValue) -> EventHandler {
  html_element_onpause_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
#cfg(target="js")
extern "js" fn html_element_onplay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplay"

///|
#cfg(target="js")
fn html_element_onplay_ffi(obj : JsValue) -> EventHandler {
  html_element_onplay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
#cfg(target="js")
extern "js" fn html_element_onplaying_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onplaying"

///|
#cfg(target="js")
fn html_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  html_element_onplaying_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
#cfg(target="js")
extern "js" fn html_element_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn html_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  html_element_onprogress_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
#cfg(target="js")
extern "js" fn html_element_onratechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onratechange"

///|
#cfg(target="js")
fn html_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onratechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
#cfg(target="js")
extern "js" fn html_element_onreset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onreset"

///|
#cfg(target="js")
fn html_element_onreset_ffi(obj : JsValue) -> EventHandler {
  html_element_onreset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
#cfg(target="js")
extern "js" fn html_element_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
#cfg(target="js")
fn html_element_onresize_ffi(obj : JsValue) -> EventHandler {
  html_element_onresize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
#cfg(target="js")
extern "js" fn html_element_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
#cfg(target="js")
fn html_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  html_element_onscroll_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
#cfg(target="js")
extern "js" fn html_element_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
#cfg(target="js")
fn html_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  html_element_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
#cfg(target="js")
extern "js" fn html_element_onsecuritypolicyviolation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onsecuritypolicyviolation"

///|
#cfg(target="js")
fn html_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
#cfg(target="js")
extern "js" fn html_element_onseeked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeked"

///|
#cfg(target="js")
fn html_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
#cfg(target="js")
extern "js" fn html_element_onseeking_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onseeking"

///|
#cfg(target="js")
fn html_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeking_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
#cfg(target="js")
extern "js" fn html_element_onselect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselect"

///|
#cfg(target="js")
fn html_element_onselect_ffi(obj : JsValue) -> EventHandler {
  html_element_onselect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
#cfg(target="js")
extern "js" fn html_element_onslotchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onslotchange"

///|
#cfg(target="js")
fn html_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onslotchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
#cfg(target="js")
extern "js" fn html_element_onstalled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onstalled"

///|
#cfg(target="js")
fn html_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  html_element_onstalled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
#cfg(target="js")
extern "js" fn html_element_onsubmit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsubmit"

///|
#cfg(target="js")
fn html_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  html_element_onsubmit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
#cfg(target="js")
extern "js" fn html_element_onsuspend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuspend"

///|
#cfg(target="js")
fn html_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  html_element_onsuspend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontimeupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontimeupdate"

///|
#cfg(target="js")
fn html_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_ontimeupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontoggle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontoggle"

///|
#cfg(target="js")
fn html_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_ontoggle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
#cfg(target="js")
extern "js" fn html_element_onvolumechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onvolumechange"

///|
#cfg(target="js")
fn html_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onvolumechange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwaiting_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwaiting"

///|
#cfg(target="js")
fn html_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  html_element_onwaiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwebkitanimationend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationend"

///|
#cfg(target="js")
fn html_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwebkitanimationiteration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationiteration"

///|
#cfg(target="js")
fn html_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwebkitanimationstart_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkitanimationstart"

///|
#cfg(target="js")
fn html_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwebkittransitionend_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onwebkittransitionend"

///|
#cfg(target="js")
fn html_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkittransitionend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
#cfg(target="js")
extern "js" fn html_element_onwheel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onwheel"

///|
#cfg(target="js")
fn html_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  html_element_onwheel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontouchstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchstart"

///|
#cfg(target="js")
fn html_element_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "(obj, ontouchstart) => { obj.ontouchstart = ontouchstart; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontouchend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchend"

///|
#cfg(target="js")
fn html_element_ontouchend_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontouchend_ffi(
  obj : JsValue,
  ontouchend : JsValue,
) -> Unit = "(obj, ontouchend) => { obj.ontouchend = ontouchend; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontouchmove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchmove"

///|
#cfg(target="js")
fn html_element_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchmove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "(obj, ontouchmove) => { obj.ontouchmove = ontouchmove; }"

///|
#cfg(target="js")
extern "js" fn html_element_ontouchcancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ontouchcancel"

///|
#cfg(target="js")
fn html_element_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchcancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "(obj, ontouchcancel) => { obj.ontouchcancel = ontouchcancel; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerover_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerover"

///|
#cfg(target="js")
fn html_element_onpointerover_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerover_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "(obj, onpointerover) => { obj.onpointerover = onpointerover; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerenter"

///|
#cfg(target="js")
fn html_element_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "(obj, onpointerenter) => { obj.onpointerenter = onpointerenter; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerdown_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerdown"

///|
#cfg(target="js")
fn html_element_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerdown_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "(obj, onpointerdown) => { obj.onpointerdown = onpointerdown; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointermove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointermove"

///|
#cfg(target="js")
fn html_element_onpointermove_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointermove_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "(obj, onpointermove) => { obj.onpointermove = onpointermove; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerrawupdate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerrawupdate"

///|
#cfg(target="js")
fn html_element_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerrawupdate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "(obj, onpointerrawupdate) => { obj.onpointerrawupdate = onpointerrawupdate; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerup_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerup"

///|
#cfg(target="js")
fn html_element_onpointerup_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerup_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "(obj, onpointerup) => { obj.onpointerup = onpointerup; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointercancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointercancel"

///|
#cfg(target="js")
fn html_element_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointercancel_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "(obj, onpointercancel) => { obj.onpointercancel = onpointercancel; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerout_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerout"

///|
#cfg(target="js")
fn html_element_onpointerout_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerout_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "(obj, onpointerout) => { obj.onpointerout = onpointerout; }"

///|
#cfg(target="js")
extern "js" fn html_element_onpointerleave_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onpointerleave"

///|
#cfg(target="js")
fn html_element_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerleave_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "(obj, onpointerleave) => { obj.onpointerleave = onpointerleave; }"

///|
#cfg(target="js")
extern "js" fn html_element_ongotpointercapture_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ongotpointercapture"

///|
#cfg(target="js")
fn html_element_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_ongotpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "(obj, ongotpointercapture) => { obj.ongotpointercapture = ongotpointercapture; }"

///|
#cfg(target="js")
extern "js" fn html_element_onlostpointercapture_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onlostpointercapture"

///|
#cfg(target="js")
fn html_element_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_onlostpointercapture_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "(obj, onlostpointercapture) => { obj.onlostpointercapture = onlostpointercapture; }"

///|
#cfg(target="js")
extern "js" fn html_element_onselectstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectstart"

///|
#cfg(target="js")
fn html_element_onselectstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectstart_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "(obj, onselectstart) => { obj.onselectstart = onselectstart; }"

///|
#cfg(target="js")
extern "js" fn html_element_onselectionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onselectionchange"

///|
#cfg(target="js")
fn html_element_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectionchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "(obj, onselectionchange) => { obj.onselectionchange = onselectionchange; }"

///|
#cfg(target="js")
extern "js" fn html_element_content_editable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.contentEditable"

///|
#cfg(target="js")
fn html_element_content_editable_ffi(obj : JsValue) -> String {
  html_element_content_editable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_content_editable_ffi(
  obj : JsValue,
  content_editable : JsValue,
) -> Unit = "(obj, contentEditable) => { obj.contentEditable = contentEditable; }"

///|
#cfg(target="js")
extern "js" fn html_element_enter_key_hint_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.enterKeyHint"

///|
#cfg(target="js")
fn html_element_enter_key_hint_ffi(obj : JsValue) -> String {
  html_element_enter_key_hint_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_enter_key_hint_ffi(
  obj : JsValue,
  enter_key_hint : JsValue,
) -> Unit = "(obj, enterKeyHint) => { obj.enterKeyHint = enterKeyHint; }"

///|
#cfg(target="js")
extern "js" fn html_element_is_content_editable_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isContentEditable"

///|
#cfg(target="js")
fn html_element_is_content_editable_ffi(obj : JsValue) -> Bool {
  html_element_is_content_editable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_input_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inputMode"

///|
#cfg(target="js")
fn html_element_input_mode_ffi(obj : JsValue) -> String {
  html_element_input_mode_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_input_mode_ffi(
  obj : JsValue,
  input_mode : JsValue,
) -> Unit = "(obj, inputMode) => { obj.inputMode = inputMode; }"

///|
#cfg(target="js")
extern "js" fn html_element_dataset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dataset"

///|
#cfg(target="js")
fn html_element_dataset_ffi(obj : JsValue) -> DOMStringMap {
  html_element_dataset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_nonce_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nonce"

///|
#cfg(target="js")
fn html_element_nonce_ffi(obj : JsValue) -> String {
  html_element_nonce_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
#cfg(target="js")
extern "js" fn html_element_autofocus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autofocus"

///|
#cfg(target="js")
fn html_element_autofocus_ffi(obj : JsValue) -> Bool {
  html_element_autofocus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
#cfg(target="js")
extern "js" fn html_element_tab_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tabIndex"

///|
#cfg(target="js")
fn html_element_tab_index_ffi(obj : JsValue) -> Int {
  html_element_tab_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_element_set_tab_index_ffi(
  obj : JsValue,
  tab_index : JsValue,
) -> Unit = "(obj, tabIndex) => { obj.tabIndex = tabIndex; }"

///|
#cfg(target="js")
extern "js" fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(options)"

///|
#cfg(target="js")
extern "js" fn html_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
#cfg(target="js")
extern "js" fn html_element_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
#cfg(target="js")
fn html_element_style_ffi(obj : JsValue) -> CSSStyleProperties {
  html_element_style_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_new_ffi() -> HTMLElement = "webapi_HTMLElement" "new"

///|
#cfg(target="wasm-gc")
fn html_element_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_title"

///|
#cfg(target="wasm-gc")
fn html_element_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_title_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "webapi_HTMLElement" "set_title"

///|
#cfg(target="wasm-gc")
fn html_element_lang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_lang"

///|
#cfg(target="wasm-gc")
fn html_element_lang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_lang_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_lang_ffi(obj : JsValue, lang : JsValue) -> Unit = "webapi_HTMLElement" "set_lang"

///|
#cfg(target="wasm-gc")
fn html_element_translate_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_translate"

///|
#cfg(target="wasm-gc")
fn html_element_set_translate_ffi(obj : JsValue, translate : JsValue) -> Unit = "webapi_HTMLElement" "set_translate"

///|
#cfg(target="wasm-gc")
fn html_element_dir_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_dir"

///|
#cfg(target="wasm-gc")
fn html_element_dir_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_dir_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "webapi_HTMLElement" "set_dir"

///|
#cfg(target="wasm-gc")
fn html_element_hidden_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_hidden"

///|
#cfg(target="wasm-gc")
fn html_element_hidden_ffi(obj : JsValue) -> HTMLElementHidden {
  html_element_hidden_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_hidden_ffi(obj : JsValue, hidden : JsValue) -> Unit = "webapi_HTMLElement" "set_hidden"

///|
#cfg(target="wasm-gc")
fn html_element_inert_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_inert"

///|
#cfg(target="wasm-gc")
fn html_element_set_inert_ffi(obj : JsValue, inert : JsValue) -> Unit = "webapi_HTMLElement" "set_inert"

///|
#cfg(target="wasm-gc")
fn html_element_click_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "click"

///|
#cfg(target="wasm-gc")
fn html_element_access_key_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_accessKey"

///|
#cfg(target="wasm-gc")
fn html_element_access_key_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_access_key_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_access_key_ffi(obj : JsValue, access_key : JsValue) -> Unit = "webapi_HTMLElement" "set_accessKey"

///|
#cfg(target="wasm-gc")
fn html_element_access_key_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_accessKeyLabel"

///|
#cfg(target="wasm-gc")
fn html_element_access_key_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_access_key_label_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_draggable_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_draggable"

///|
#cfg(target="wasm-gc")
fn html_element_set_draggable_ffi(obj : JsValue, draggable : JsValue) -> Unit = "webapi_HTMLElement" "set_draggable"

///|
#cfg(target="wasm-gc")
fn html_element_spellcheck_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_spellcheck"

///|
#cfg(target="wasm-gc")
fn html_element_set_spellcheck_ffi(obj : JsValue, spellcheck : JsValue) -> Unit = "webapi_HTMLElement" "set_spellcheck"

///|
#cfg(target="wasm-gc")
fn html_element_writing_suggestions_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_writingSuggestions"

///|
#cfg(target="wasm-gc")
fn html_element_writing_suggestions_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_writing_suggestions_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  writing_suggestions : JsValue,
) -> Unit = "webapi_HTMLElement" "set_writingSuggestions"

///|
#cfg(target="wasm-gc")
fn html_element_autocapitalize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_autocapitalize"

///|
#cfg(target="wasm-gc")
fn html_element_autocapitalize_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_autocapitalize_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_autocapitalize_ffi(
  obj : JsValue,
  autocapitalize : JsValue,
) -> Unit = "webapi_HTMLElement" "set_autocapitalize"

///|
#cfg(target="wasm-gc")
fn html_element_autocorrect_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_autocorrect"

///|
#cfg(target="wasm-gc")
fn html_element_set_autocorrect_ffi(
  obj : JsValue,
  autocorrect : JsValue,
) -> Unit = "webapi_HTMLElement" "set_autocorrect"

///|
#cfg(target="wasm-gc")
fn html_element_inner_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_innerText"

///|
#cfg(target="wasm-gc")
fn html_element_inner_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_inner_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_inner_text_ffi(obj : JsValue, inner_text : JsValue) -> Unit = "webapi_HTMLElement" "set_innerText"

///|
#cfg(target="wasm-gc")
fn html_element_outer_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_outerText"

///|
#cfg(target="wasm-gc")
fn html_element_outer_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_outer_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_outer_text_ffi(obj : JsValue, outer_text : JsValue) -> Unit = "webapi_HTMLElement" "set_outerText"

///|
#cfg(target="wasm-gc")
fn html_element_attach_internals_ffi(obj : JsValue) -> ElementInternals = "webapi_HTMLElement" "attachInternals"

///|
#cfg(target="wasm-gc")
fn html_element_show_popover_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_HTMLElement" "showPopover"

///|
#cfg(target="wasm-gc")
fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "hidePopover"

///|
#cfg(target="wasm-gc")
fn html_element_toggle_popover_ffi(obj : JsValue, options : JsValue) -> Bool = "webapi_HTMLElement" "togglePopover"

///|
#cfg(target="wasm-gc")
fn html_element_popover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_popover"

///|
#cfg(target="wasm-gc")
fn html_element_popover_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_popover_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_popover_ffi(obj : JsValue, popover : JsValue) -> Unit = "webapi_HTMLElement" "set_popover"

///|
#cfg(target="wasm-gc")
fn html_element_heading_offset_ffi(obj : JsValue) -> UInt = "webapi_HTMLElement" "get_headingOffset"

///|
#cfg(target="wasm-gc")
fn html_element_set_heading_offset_ffi(
  obj : JsValue,
  heading_offset : JsValue,
) -> Unit = "webapi_HTMLElement" "set_headingOffset"

///|
#cfg(target="wasm-gc")
fn html_element_heading_reset_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_headingReset"

///|
#cfg(target="wasm-gc")
fn html_element_set_heading_reset_ffi(
  obj : JsValue,
  heading_reset : JsValue,
) -> Unit = "webapi_HTMLElement" "set_headingReset"

///|
#cfg(target="wasm-gc")
fn html_element_scroll_parent_ffi(obj : JsValue) -> Element = "webapi_HTMLElement" "get_scrollParent"

///|
#cfg(target="wasm-gc")
fn html_element_offset_parent_ffi(obj : JsValue) -> Element = "webapi_HTMLElement" "get_offsetParent"

///|
#cfg(target="wasm-gc")
fn html_element_offset_top_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "get_offsetTop"

///|
#cfg(target="wasm-gc")
fn html_element_offset_left_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "get_offsetLeft"

///|
#cfg(target="wasm-gc")
fn html_element_offset_width_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "get_offsetWidth"

///|
#cfg(target="wasm-gc")
fn html_element_offset_height_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "get_offsetHeight"

///|
#cfg(target="wasm-gc")
fn html_element_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onabort"

///|
#cfg(target="wasm-gc")
fn html_element_onabort_ffi(obj : JsValue) -> EventHandler {
  html_element_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_HTMLElement" "set_onabort"

///|
#cfg(target="wasm-gc")
fn html_element_onauxclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onauxclick"

///|
#cfg(target="wasm-gc")
fn html_element_onauxclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onauxclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onauxclick_ffi(obj : JsValue, onauxclick : JsValue) -> Unit = "webapi_HTMLElement" "set_onauxclick"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforeinput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforeinput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onbeforeinput"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforematch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforematch"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforematch_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforematch_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onbeforematch"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforetoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn html_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_onbeforetoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onbeforetoggle"

///|
#cfg(target="wasm-gc")
fn html_element_onblur_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onblur"

///|
#cfg(target="wasm-gc")
fn html_element_onblur_ffi(obj : JsValue) -> EventHandler {
  html_element_onblur_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onblur_ffi(obj : JsValue, onblur : JsValue) -> Unit = "webapi_HTMLElement" "set_onblur"

///|
#cfg(target="wasm-gc")
fn html_element_oncancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncancel"

///|
#cfg(target="wasm-gc")
fn html_element_oncancel_ffi(obj : JsValue) -> EventHandler {
  html_element_oncancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_HTMLElement" "set_oncancel"

///|
#cfg(target="wasm-gc")
fn html_element_oncanplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncanplay"

///|
#cfg(target="wasm-gc")
fn html_element_oncanplay_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncanplay_ffi(obj : JsValue, oncanplay : JsValue) -> Unit = "webapi_HTMLElement" "set_oncanplay"

///|
#cfg(target="wasm-gc")
fn html_element_oncanplaythrough_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn html_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler {
  html_element_oncanplaythrough_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncanplaythrough"

///|
#cfg(target="wasm-gc")
fn html_element_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onchange"

///|
#cfg(target="wasm-gc")
fn html_element_onchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_HTMLElement" "set_onchange"

///|
#cfg(target="wasm-gc")
fn html_element_onclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onclick"

///|
#cfg(target="wasm-gc")
fn html_element_onclick_ffi(obj : JsValue) -> EventHandler {
  html_element_onclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_HTMLElement" "set_onclick"

///|
#cfg(target="wasm-gc")
fn html_element_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onclose"

///|
#cfg(target="wasm-gc")
fn html_element_onclose_ffi(obj : JsValue) -> EventHandler {
  html_element_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_HTMLElement" "set_onclose"

///|
#cfg(target="wasm-gc")
fn html_element_oncommand_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncommand"

///|
#cfg(target="wasm-gc")
fn html_element_oncommand_ffi(obj : JsValue) -> EventHandler {
  html_element_oncommand_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncommand_ffi(obj : JsValue, oncommand : JsValue) -> Unit = "webapi_HTMLElement" "set_oncommand"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextlost_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextlost"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextlost_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextlost_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncontextlost"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextmenu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextmenu_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncontextmenu"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextrestored_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn html_element_oncontextrestored_ffi(obj : JsValue) -> EventHandler {
  html_element_oncontextrestored_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncontextrestored"

///|
#cfg(target="wasm-gc")
fn html_element_oncopy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncopy"

///|
#cfg(target="wasm-gc")
fn html_element_oncopy_ffi(obj : JsValue) -> EventHandler {
  html_element_oncopy_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncopy_ffi(obj : JsValue, oncopy : JsValue) -> Unit = "webapi_HTMLElement" "set_oncopy"

///|
#cfg(target="wasm-gc")
fn html_element_oncuechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncuechange"

///|
#cfg(target="wasm-gc")
fn html_element_oncuechange_ffi(obj : JsValue) -> EventHandler {
  html_element_oncuechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncuechange"

///|
#cfg(target="wasm-gc")
fn html_element_oncut_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oncut"

///|
#cfg(target="wasm-gc")
fn html_element_oncut_ffi(obj : JsValue) -> EventHandler {
  html_element_oncut_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oncut_ffi(obj : JsValue, oncut : JsValue) -> Unit = "webapi_HTMLElement" "set_oncut"

///|
#cfg(target="wasm-gc")
fn html_element_ondblclick_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondblclick"

///|
#cfg(target="wasm-gc")
fn html_element_ondblclick_ffi(obj : JsValue) -> EventHandler {
  html_element_ondblclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondblclick_ffi(obj : JsValue, ondblclick : JsValue) -> Unit = "webapi_HTMLElement" "set_ondblclick"

///|
#cfg(target="wasm-gc")
fn html_element_ondrag_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondrag"

///|
#cfg(target="wasm-gc")
fn html_element_ondrag_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrag_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondrag_ffi(obj : JsValue, ondrag : JsValue) -> Unit = "webapi_HTMLElement" "set_ondrag"

///|
#cfg(target="wasm-gc")
fn html_element_ondragend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragend"

///|
#cfg(target="wasm-gc")
fn html_element_ondragend_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondragend_ffi(obj : JsValue, ondragend : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragend"

///|
#cfg(target="wasm-gc")
fn html_element_ondragenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragenter"

///|
#cfg(target="wasm-gc")
fn html_element_ondragenter_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ondragenter"

///|
#cfg(target="wasm-gc")
fn html_element_ondragleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragleave"

///|
#cfg(target="wasm-gc")
fn html_element_ondragleave_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ondragleave"

///|
#cfg(target="wasm-gc")
fn html_element_ondragover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragover"

///|
#cfg(target="wasm-gc")
fn html_element_ondragover_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondragover_ffi(obj : JsValue, ondragover : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragover"

///|
#cfg(target="wasm-gc")
fn html_element_ondragstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondragstart"

///|
#cfg(target="wasm-gc")
fn html_element_ondragstart_ffi(obj : JsValue) -> EventHandler {
  html_element_ondragstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ondragstart"

///|
#cfg(target="wasm-gc")
fn html_element_ondrop_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondrop"

///|
#cfg(target="wasm-gc")
fn html_element_ondrop_ffi(obj : JsValue) -> EventHandler {
  html_element_ondrop_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondrop_ffi(obj : JsValue, ondrop : JsValue) -> Unit = "webapi_HTMLElement" "set_ondrop"

///|
#cfg(target="wasm-gc")
fn html_element_ondurationchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ondurationchange"

///|
#cfg(target="wasm-gc")
fn html_element_ondurationchange_ffi(obj : JsValue) -> EventHandler {
  html_element_ondurationchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ondurationchange"

///|
#cfg(target="wasm-gc")
fn html_element_onemptied_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onemptied"

///|
#cfg(target="wasm-gc")
fn html_element_onemptied_ffi(obj : JsValue) -> EventHandler {
  html_element_onemptied_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onemptied_ffi(obj : JsValue, onemptied : JsValue) -> Unit = "webapi_HTMLElement" "set_onemptied"

///|
#cfg(target="wasm-gc")
fn html_element_onended_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onended"

///|
#cfg(target="wasm-gc")
fn html_element_onended_ffi(obj : JsValue) -> EventHandler {
  html_element_onended_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onended_ffi(obj : JsValue, onended : JsValue) -> Unit = "webapi_HTMLElement" "set_onended"

///|
#cfg(target="wasm-gc")
fn html_element_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onerror"

///|
#cfg(target="wasm-gc")
fn html_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler {
  html_element_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_HTMLElement" "set_onerror"

///|
#cfg(target="wasm-gc")
fn html_element_onfocus_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onfocus"

///|
#cfg(target="wasm-gc")
fn html_element_onfocus_ffi(obj : JsValue) -> EventHandler {
  html_element_onfocus_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onfocus_ffi(obj : JsValue, onfocus : JsValue) -> Unit = "webapi_HTMLElement" "set_onfocus"

///|
#cfg(target="wasm-gc")
fn html_element_onformdata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onformdata"

///|
#cfg(target="wasm-gc")
fn html_element_onformdata_ffi(obj : JsValue) -> EventHandler {
  html_element_onformdata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onformdata_ffi(obj : JsValue, onformdata : JsValue) -> Unit = "webapi_HTMLElement" "set_onformdata"

///|
#cfg(target="wasm-gc")
fn html_element_oninput_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oninput"

///|
#cfg(target="wasm-gc")
fn html_element_oninput_ffi(obj : JsValue) -> EventHandler {
  html_element_oninput_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oninput_ffi(obj : JsValue, oninput : JsValue) -> Unit = "webapi_HTMLElement" "set_oninput"

///|
#cfg(target="wasm-gc")
fn html_element_oninvalid_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_oninvalid"

///|
#cfg(target="wasm-gc")
fn html_element_oninvalid_ffi(obj : JsValue) -> EventHandler {
  html_element_oninvalid_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_oninvalid_ffi(obj : JsValue, oninvalid : JsValue) -> Unit = "webapi_HTMLElement" "set_oninvalid"

///|
#cfg(target="wasm-gc")
fn html_element_onkeydown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeydown"

///|
#cfg(target="wasm-gc")
fn html_element_onkeydown_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeydown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onkeydown_ffi(obj : JsValue, onkeydown : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeydown"

///|
#cfg(target="wasm-gc")
fn html_element_onkeypress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeypress"

///|
#cfg(target="wasm-gc")
fn html_element_onkeypress_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeypress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onkeypress_ffi(obj : JsValue, onkeypress : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeypress"

///|
#cfg(target="wasm-gc")
fn html_element_onkeyup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onkeyup"

///|
#cfg(target="wasm-gc")
fn html_element_onkeyup_ffi(obj : JsValue) -> EventHandler {
  html_element_onkeyup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onkeyup_ffi(obj : JsValue, onkeyup : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeyup"

///|
#cfg(target="wasm-gc")
fn html_element_onload_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onload"

///|
#cfg(target="wasm-gc")
fn html_element_onload_ffi(obj : JsValue) -> EventHandler {
  html_element_onload_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_HTMLElement" "set_onload"

///|
#cfg(target="wasm-gc")
fn html_element_onloadeddata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadeddata"

///|
#cfg(target="wasm-gc")
fn html_element_onloadeddata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadeddata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onloadeddata"

///|
#cfg(target="wasm-gc")
fn html_element_onloadedmetadata_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn html_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadedmetadata_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onloadedmetadata"

///|
#cfg(target="wasm-gc")
fn html_element_onloadstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn html_element_onloadstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onloadstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onloadstart"

///|
#cfg(target="wasm-gc")
fn html_element_onmousedown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmousedown"

///|
#cfg(target="wasm-gc")
fn html_element_onmousedown_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousedown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onmousedown"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseenter"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onmouseenter"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseleave"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onmouseleave"

///|
#cfg(target="wasm-gc")
fn html_element_onmousemove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmousemove"

///|
#cfg(target="wasm-gc")
fn html_element_onmousemove_ffi(obj : JsValue) -> EventHandler {
  html_element_onmousemove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onmousemove"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseout"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseout_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmouseout_ffi(obj : JsValue, onmouseout : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseout"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseover"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseover_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onmouseover"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onmouseup"

///|
#cfg(target="wasm-gc")
fn html_element_onmouseup_ffi(obj : JsValue) -> EventHandler {
  html_element_onmouseup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onmouseup_ffi(obj : JsValue, onmouseup : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseup"

///|
#cfg(target="wasm-gc")
fn html_element_onpaste_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpaste"

///|
#cfg(target="wasm-gc")
fn html_element_onpaste_ffi(obj : JsValue) -> EventHandler {
  html_element_onpaste_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpaste_ffi(obj : JsValue, onpaste : JsValue) -> Unit = "webapi_HTMLElement" "set_onpaste"

///|
#cfg(target="wasm-gc")
fn html_element_onpause_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpause"

///|
#cfg(target="wasm-gc")
fn html_element_onpause_ffi(obj : JsValue) -> EventHandler {
  html_element_onpause_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpause_ffi(obj : JsValue, onpause : JsValue) -> Unit = "webapi_HTMLElement" "set_onpause"

///|
#cfg(target="wasm-gc")
fn html_element_onplay_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onplay"

///|
#cfg(target="wasm-gc")
fn html_element_onplay_ffi(obj : JsValue) -> EventHandler {
  html_element_onplay_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onplay_ffi(obj : JsValue, onplay : JsValue) -> Unit = "webapi_HTMLElement" "set_onplay"

///|
#cfg(target="wasm-gc")
fn html_element_onplaying_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onplaying"

///|
#cfg(target="wasm-gc")
fn html_element_onplaying_ffi(obj : JsValue) -> EventHandler {
  html_element_onplaying_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onplaying_ffi(obj : JsValue, onplaying : JsValue) -> Unit = "webapi_HTMLElement" "set_onplaying"

///|
#cfg(target="wasm-gc")
fn html_element_onprogress_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn html_element_onprogress_ffi(obj : JsValue) -> EventHandler {
  html_element_onprogress_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_HTMLElement" "set_onprogress"

///|
#cfg(target="wasm-gc")
fn html_element_onratechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onratechange"

///|
#cfg(target="wasm-gc")
fn html_element_onratechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onratechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onratechange"

///|
#cfg(target="wasm-gc")
fn html_element_onreset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onreset"

///|
#cfg(target="wasm-gc")
fn html_element_onreset_ffi(obj : JsValue) -> EventHandler {
  html_element_onreset_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onreset_ffi(obj : JsValue, onreset : JsValue) -> Unit = "webapi_HTMLElement" "set_onreset"

///|
#cfg(target="wasm-gc")
fn html_element_onresize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onresize"

///|
#cfg(target="wasm-gc")
fn html_element_onresize_ffi(obj : JsValue) -> EventHandler {
  html_element_onresize_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_HTMLElement" "set_onresize"

///|
#cfg(target="wasm-gc")
fn html_element_onscroll_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onscroll"

///|
#cfg(target="wasm-gc")
fn html_element_onscroll_ffi(obj : JsValue) -> EventHandler {
  html_element_onscroll_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_HTMLElement" "set_onscroll"

///|
#cfg(target="wasm-gc")
fn html_element_onscrollend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onscrollend"

///|
#cfg(target="wasm-gc")
fn html_element_onscrollend_ffi(obj : JsValue) -> EventHandler {
  html_element_onscrollend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onscrollend"

///|
#cfg(target="wasm-gc")
fn html_element_onsecuritypolicyviolation_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn html_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onsecuritypolicyviolation"

///|
#cfg(target="wasm-gc")
fn html_element_onseeked_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onseeked"

///|
#cfg(target="wasm-gc")
fn html_element_onseeked_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeked_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onseeked_ffi(obj : JsValue, onseeked : JsValue) -> Unit = "webapi_HTMLElement" "set_onseeked"

///|
#cfg(target="wasm-gc")
fn html_element_onseeking_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onseeking"

///|
#cfg(target="wasm-gc")
fn html_element_onseeking_ffi(obj : JsValue) -> EventHandler {
  html_element_onseeking_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onseeking_ffi(obj : JsValue, onseeking : JsValue) -> Unit = "webapi_HTMLElement" "set_onseeking"

///|
#cfg(target="wasm-gc")
fn html_element_onselect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onselect"

///|
#cfg(target="wasm-gc")
fn html_element_onselect_ffi(obj : JsValue) -> EventHandler {
  html_element_onselect_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onselect_ffi(obj : JsValue, onselect : JsValue) -> Unit = "webapi_HTMLElement" "set_onselect"

///|
#cfg(target="wasm-gc")
fn html_element_onslotchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onslotchange"

///|
#cfg(target="wasm-gc")
fn html_element_onslotchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onslotchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onslotchange"

///|
#cfg(target="wasm-gc")
fn html_element_onstalled_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onstalled"

///|
#cfg(target="wasm-gc")
fn html_element_onstalled_ffi(obj : JsValue) -> EventHandler {
  html_element_onstalled_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onstalled_ffi(obj : JsValue, onstalled : JsValue) -> Unit = "webapi_HTMLElement" "set_onstalled"

///|
#cfg(target="wasm-gc")
fn html_element_onsubmit_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onsubmit"

///|
#cfg(target="wasm-gc")
fn html_element_onsubmit_ffi(obj : JsValue) -> EventHandler {
  html_element_onsubmit_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onsubmit_ffi(obj : JsValue, onsubmit : JsValue) -> Unit = "webapi_HTMLElement" "set_onsubmit"

///|
#cfg(target="wasm-gc")
fn html_element_onsuspend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onsuspend"

///|
#cfg(target="wasm-gc")
fn html_element_onsuspend_ffi(obj : JsValue) -> EventHandler {
  html_element_onsuspend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onsuspend_ffi(obj : JsValue, onsuspend : JsValue) -> Unit = "webapi_HTMLElement" "set_onsuspend"

///|
#cfg(target="wasm-gc")
fn html_element_ontimeupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn html_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_ontimeupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ontimeupdate"

///|
#cfg(target="wasm-gc")
fn html_element_ontoggle_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontoggle"

///|
#cfg(target="wasm-gc")
fn html_element_ontoggle_ffi(obj : JsValue) -> EventHandler {
  html_element_ontoggle_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontoggle_ffi(obj : JsValue, ontoggle : JsValue) -> Unit = "webapi_HTMLElement" "set_ontoggle"

///|
#cfg(target="wasm-gc")
fn html_element_onvolumechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onvolumechange"

///|
#cfg(target="wasm-gc")
fn html_element_onvolumechange_ffi(obj : JsValue) -> EventHandler {
  html_element_onvolumechange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onvolumechange"

///|
#cfg(target="wasm-gc")
fn html_element_onwaiting_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwaiting"

///|
#cfg(target="wasm-gc")
fn html_element_onwaiting_ffi(obj : JsValue) -> EventHandler {
  html_element_onwaiting_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwaiting_ffi(obj : JsValue, onwaiting : JsValue) -> Unit = "webapi_HTMLElement" "set_onwaiting"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationend"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationiteration_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationiteration_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationiteration"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkitanimationstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkitanimationstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationstart"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkittransitionend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn html_element_onwebkittransitionend_ffi(obj : JsValue) -> EventHandler {
  html_element_onwebkittransitionend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkittransitionend"

///|
#cfg(target="wasm-gc")
fn html_element_onwheel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onwheel"

///|
#cfg(target="wasm-gc")
fn html_element_onwheel_ffi(obj : JsValue) -> EventHandler {
  html_element_onwheel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onwheel_ffi(obj : JsValue, onwheel : JsValue) -> Unit = "webapi_HTMLElement" "set_onwheel"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchstart"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchstart_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontouchstart_ffi(
  obj : JsValue,
  ontouchstart : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ontouchstart"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchend"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchend_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontouchend_ffi(obj : JsValue, ontouchend : JsValue) -> Unit = "webapi_HTMLElement" "set_ontouchend"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchmove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchmove"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchmove_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchmove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontouchmove_ffi(
  obj : JsValue,
  ontouchmove : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ontouchmove"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchcancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn html_element_ontouchcancel_ffi(obj : JsValue) -> EventHandler {
  html_element_ontouchcancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ontouchcancel_ffi(
  obj : JsValue,
  ontouchcancel : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ontouchcancel"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerover_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerover"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerover_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerover_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerover_ffi(
  obj : JsValue,
  onpointerover : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerover"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerenter"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerenter_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerenter_ffi(
  obj : JsValue,
  onpointerenter : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerenter"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerdown_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerdown"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerdown_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerdown_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerdown_ffi(
  obj : JsValue,
  onpointerdown : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerdown"

///|
#cfg(target="wasm-gc")
fn html_element_onpointermove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointermove"

///|
#cfg(target="wasm-gc")
fn html_element_onpointermove_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointermove_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointermove_ffi(
  obj : JsValue,
  onpointermove : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointermove"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerrawupdate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerrawupdate_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerrawupdate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerrawupdate_ffi(
  obj : JsValue,
  onpointerrawupdate : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerrawupdate"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerup_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerup"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerup_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerup_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerup_ffi(
  obj : JsValue,
  onpointerup : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerup"

///|
#cfg(target="wasm-gc")
fn html_element_onpointercancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointercancel"

///|
#cfg(target="wasm-gc")
fn html_element_onpointercancel_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointercancel_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointercancel_ffi(
  obj : JsValue,
  onpointercancel : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointercancel"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerout_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerout"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerout_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerout_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerout_ffi(
  obj : JsValue,
  onpointerout : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerout"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerleave_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onpointerleave"

///|
#cfg(target="wasm-gc")
fn html_element_onpointerleave_ffi(obj : JsValue) -> EventHandler {
  html_element_onpointerleave_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onpointerleave_ffi(
  obj : JsValue,
  onpointerleave : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onpointerleave"

///|
#cfg(target="wasm-gc")
fn html_element_ongotpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn html_element_ongotpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_ongotpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_ongotpointercapture_ffi(
  obj : JsValue,
  ongotpointercapture : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ongotpointercapture"

///|
#cfg(target="wasm-gc")
fn html_element_onlostpointercapture_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn html_element_onlostpointercapture_ffi(obj : JsValue) -> EventHandler {
  html_element_onlostpointercapture_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onlostpointercapture_ffi(
  obj : JsValue,
  onlostpointercapture : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onlostpointercapture"

///|
#cfg(target="wasm-gc")
fn html_element_onselectstart_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onselectstart"

///|
#cfg(target="wasm-gc")
fn html_element_onselectstart_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectstart_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onselectstart_ffi(
  obj : JsValue,
  onselectstart : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onselectstart"

///|
#cfg(target="wasm-gc")
fn html_element_onselectionchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_onselectionchange"

///|
#cfg(target="wasm-gc")
fn html_element_onselectionchange_ffi(obj : JsValue) -> EventHandler {
  html_element_onselectionchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_element_set_onselectionchange_ffi(
  obj : JsValue,
  onselectionchange : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onselectionchange"

///|
#cfg(target="wasm-gc")
fn html_element_content_editable_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_contentEditable"

///|
#cfg(target="wasm-gc")
fn html_element_content_editable_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_content_editable_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_content_editable_ffi(
  obj : JsValue,
  content_editable : JsValue,
) -> Unit = "webapi_HTMLElement" "set_contentEditable"

///|
#cfg(target="wasm-gc")
fn html_element_enter_key_hint_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_enterKeyHint"

///|
#cfg(target="wasm-gc")
fn html_element_enter_key_hint_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_enter_key_hint_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_enter_key_hint_ffi(
  obj : JsValue,
  enter_key_hint : JsValue,
) -> Unit = "webapi_HTMLElement" "set_enterKeyHint"

///|
#cfg(target="wasm-gc")
fn html_element_is_content_editable_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_isContentEditable"

///|
#cfg(target="wasm-gc")
fn html_element_input_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_inputMode"

///|
#cfg(target="wasm-gc")
fn html_element_input_mode_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_input_mode_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_input_mode_ffi(obj : JsValue, input_mode : JsValue) -> Unit = "webapi_HTMLElement" "set_inputMode"

///|
#cfg(target="wasm-gc")
fn html_element_dataset_ffi(obj : JsValue) -> DOMStringMap = "webapi_HTMLElement" "get_dataset"

///|
#cfg(target="wasm-gc")
fn html_element_nonce_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLElement" "get_nonce"

///|
#cfg(target="wasm-gc")
fn html_element_nonce_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_element_nonce_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_element_set_nonce_ffi(obj : JsValue, nonce : JsValue) -> Unit = "webapi_HTMLElement" "set_nonce"

///|
#cfg(target="wasm-gc")
fn html_element_autofocus_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "get_autofocus"

///|
#cfg(target="wasm-gc")
fn html_element_set_autofocus_ffi(obj : JsValue, autofocus : JsValue) -> Unit = "webapi_HTMLElement" "set_autofocus"

///|
#cfg(target="wasm-gc")
fn html_element_tab_index_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "get_tabIndex"

///|
#cfg(target="wasm-gc")
fn html_element_set_tab_index_ffi(obj : JsValue, tab_index : JsValue) -> Unit = "webapi_HTMLElement" "set_tabIndex"

///|
#cfg(target="wasm-gc")
fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_HTMLElement" "focus"

///|
#cfg(target="wasm-gc")
fn html_element_blur_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "blur"

///|
#cfg(target="wasm-gc")
fn html_element_style_ffi(obj : JsValue) -> CSSStyleProperties = "webapi_HTMLElement" "get_style"
