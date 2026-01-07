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
extern "js" fn html_element_new_ffi() -> HTMLElement = "() => new HTMLElement()"

///|
pub fn HTMLElement::new() -> HTMLElement {
  html_element_new_ffi()
}

///|
/// [HTMLElementHidden](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElementHidden)
#external
pub type HTMLElementHidden

///|
pub fn[T : THTMLElementHidden] HTMLElementHidden::into(
  self : HTMLElementHidden,
) -> T = "%identity"

///|
pub impl THTMLElementHidden for HTMLElementHidden with to_js(
  self : HTMLElementHidden,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLElementHidden {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLElementHidden for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub impl THTMLElementHidden for Double with to_js(self : Double) -> JsValue = "%identity"

///|
pub impl THTMLElementHidden for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait THTMLElementTogglePopoverOptions {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLElementTogglePopoverOptions for TogglePopoverOptions with to_js(
  self : TogglePopoverOptions,
) -> JsValue = "%identity"

///|
pub impl THTMLElementTogglePopoverOptions for Bool with to_js(self : Bool) -> JsValue = "%identity"

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
extern "js" fn html_element_title_ffi(obj : JsValue) -> String = "(obj) => obj.title"

///|
/// [HTMLElement.title](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/title)
impl THTMLElement with title(self : Self) -> String {
  html_element_title_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
/// [HTMLElement.title](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/title)
impl THTMLElement with set_title(self : Self, title : String) -> Unit {
  html_element_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
extern "js" fn html_element_lang_ffi(obj : JsValue) -> String = "(obj) => obj.lang"

///|
/// [HTMLElement.lang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/lang)
impl THTMLElement with lang(self : Self) -> String {
  html_element_lang_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_lang_ffi(obj : JsValue, lang : JsValue) -> Unit = "(obj, lang) => { obj.lang = lang; }"

///|
/// [HTMLElement.lang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/lang)
impl THTMLElement with set_lang(self : Self, lang : String) -> Unit {
  html_element_set_lang_ffi(TJsValue::to_js(self), TJsValue::to_js(lang))
}

///|
extern "js" fn html_element_translate_ffi(obj : JsValue) -> Bool = "(obj) => obj.translate"

///|
/// [HTMLElement.translate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/translate)
impl THTMLElement with translate(self : Self) -> Bool {
  html_element_translate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_translate_ffi(
  obj : JsValue,
  translate : JsValue,
) -> Unit = "(obj, translate) => { obj.translate = translate; }"

///|
/// [HTMLElement.translate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/translate)
impl THTMLElement with set_translate(self : Self, translate : Bool) -> Unit {
  html_element_set_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(translate),
  )
}

///|
extern "js" fn html_element_dir_ffi(obj : JsValue) -> String = "(obj) => obj.dir"

///|
/// [HTMLElement.dir](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dir)
impl THTMLElement with dir(self : Self) -> String {
  html_element_dir_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_dir_ffi(obj : JsValue, dir : JsValue) -> Unit = "(obj, dir) => { obj.dir = dir; }"

///|
/// [HTMLElement.dir](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dir)
impl THTMLElement with set_dir(self : Self, dir : String) -> Unit {
  html_element_set_dir_ffi(TJsValue::to_js(self), TJsValue::to_js(dir))
}

///|
extern "js" fn html_element_hidden_ffi(obj : JsValue) -> HTMLElementHidden = "(obj) => obj.hidden"

///|
/// [HTMLElement.hidden](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidden)
impl THTMLElement with hidden(self : Self) -> HTMLElementHidden {
  html_element_hidden_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_hidden_ffi(
  obj : JsValue,
  hidden : JsValue,
) -> Unit = "(obj, hidden) => { obj.hidden = hidden; }"

///|
/// [HTMLElement.hidden](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidden)
impl THTMLElement with set_hidden(self : Self, hidden : &THTMLElementHidden) -> Unit {
  html_element_set_hidden_ffi(TJsValue::to_js(self), hidden.to_js())
}

///|
extern "js" fn html_element_inert_ffi(obj : JsValue) -> Bool = "(obj) => obj.inert"

///|
/// [HTMLElement.inert](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inert)
impl THTMLElement with inert(self : Self) -> Bool {
  html_element_inert_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_inert_ffi(
  obj : JsValue,
  inert : JsValue,
) -> Unit = "(obj, inert) => { obj.inert = inert; }"

///|
/// [HTMLElement.inert](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inert)
impl THTMLElement with set_inert(self : Self, inert : Bool) -> Unit {
  html_element_set_inert_ffi(TJsValue::to_js(self), TJsValue::to_js(inert))
}

///|
extern "js" fn html_element_click_ffi(obj : JsValue) -> Unit = "(obj) => obj.click()"

///|
/// [HTMLElement.click](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/click)
impl THTMLElement with click(self : Self) -> Unit {
  html_element_click_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_access_key_ffi(obj : JsValue) -> String = "(obj) => obj.accessKey"

///|
/// [HTMLElement.accessKey](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKey)
impl THTMLElement with access_key(self : Self) -> String {
  html_element_access_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_access_key_ffi(
  obj : JsValue,
  access_key : JsValue,
) -> Unit = "(obj, accessKey) => { obj.accessKey = accessKey; }"

///|
/// [HTMLElement.accessKey](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKey)
impl THTMLElement with set_access_key(self : Self, access_key : String) -> Unit {
  html_element_set_access_key_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(access_key),
  )
}

///|
extern "js" fn html_element_access_key_label_ffi(obj : JsValue) -> String = "(obj) => obj.accessKeyLabel"

///|
/// [HTMLElement.accessKeyLabel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/accessKeyLabel)
impl THTMLElement with access_key_label(self : Self) -> String {
  html_element_access_key_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_draggable_ffi(obj : JsValue) -> Bool = "(obj) => obj.draggable"

///|
/// [HTMLElement.draggable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/draggable)
impl THTMLElement with draggable(self : Self) -> Bool {
  html_element_draggable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_draggable_ffi(
  obj : JsValue,
  draggable : JsValue,
) -> Unit = "(obj, draggable) => { obj.draggable = draggable; }"

///|
/// [HTMLElement.draggable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/draggable)
impl THTMLElement with set_draggable(self : Self, draggable : Bool) -> Unit {
  html_element_set_draggable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(draggable),
  )
}

///|
extern "js" fn html_element_spellcheck_ffi(obj : JsValue) -> Bool = "(obj) => obj.spellcheck"

///|
/// [HTMLElement.spellcheck](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/spellcheck)
impl THTMLElement with spellcheck(self : Self) -> Bool {
  html_element_spellcheck_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_spellcheck_ffi(
  obj : JsValue,
  spellcheck : JsValue,
) -> Unit = "(obj, spellcheck) => { obj.spellcheck = spellcheck; }"

///|
/// [HTMLElement.spellcheck](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/spellcheck)
impl THTMLElement with set_spellcheck(self : Self, spellcheck : Bool) -> Unit {
  html_element_set_spellcheck_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(spellcheck),
  )
}

///|
extern "js" fn html_element_writing_suggestions_ffi(obj : JsValue) -> String = "(obj) => obj.writingSuggestions"

///|
/// [HTMLElement.writingSuggestions](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/writingSuggestions)
impl THTMLElement with writing_suggestions(self : Self) -> String {
  html_element_writing_suggestions_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  writing_suggestions : JsValue,
) -> Unit = "(obj, writingSuggestions) => { obj.writingSuggestions = writingSuggestions; }"

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
extern "js" fn html_element_autocapitalize_ffi(obj : JsValue) -> String = "(obj) => obj.autocapitalize"

///|
/// [HTMLElement.autocapitalize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocapitalize)
impl THTMLElement with autocapitalize(self : Self) -> String {
  html_element_autocapitalize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_autocapitalize_ffi(
  obj : JsValue,
  autocapitalize : JsValue,
) -> Unit = "(obj, autocapitalize) => { obj.autocapitalize = autocapitalize; }"

///|
/// [HTMLElement.autocapitalize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocapitalize)
impl THTMLElement with set_autocapitalize(self : Self, autocapitalize : String) -> Unit {
  html_element_set_autocapitalize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocapitalize),
  )
}

///|
extern "js" fn html_element_autocorrect_ffi(obj : JsValue) -> Bool = "(obj) => obj.autocorrect"

///|
/// [HTMLElement.autocorrect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocorrect)
impl THTMLElement with autocorrect(self : Self) -> Bool {
  html_element_autocorrect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_autocorrect_ffi(
  obj : JsValue,
  autocorrect : JsValue,
) -> Unit = "(obj, autocorrect) => { obj.autocorrect = autocorrect; }"

///|
/// [HTMLElement.autocorrect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autocorrect)
impl THTMLElement with set_autocorrect(self : Self, autocorrect : Bool) -> Unit {
  html_element_set_autocorrect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocorrect),
  )
}

///|
extern "js" fn html_element_inner_text_ffi(obj : JsValue) -> String = "(obj) => obj.innerText"

///|
/// [HTMLElement.innerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/innerText)
impl THTMLElement with inner_text(self : Self) -> String {
  html_element_inner_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_inner_text_ffi(
  obj : JsValue,
  inner_text : JsValue,
) -> Unit = "(obj, innerText) => { obj.innerText = innerText; }"

///|
/// [HTMLElement.innerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/innerText)
impl THTMLElement with set_inner_text(self : Self, inner_text : String) -> Unit {
  html_element_set_inner_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(inner_text),
  )
}

///|
extern "js" fn html_element_outer_text_ffi(obj : JsValue) -> String = "(obj) => obj.outerText"

///|
/// [HTMLElement.outerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/outerText)
impl THTMLElement with outer_text(self : Self) -> String {
  html_element_outer_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_outer_text_ffi(
  obj : JsValue,
  outer_text : JsValue,
) -> Unit = "(obj, outerText) => { obj.outerText = outerText; }"

///|
/// [HTMLElement.outerText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/outerText)
impl THTMLElement with set_outer_text(self : Self, outer_text : String) -> Unit {
  html_element_set_outer_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(outer_text),
  )
}

///|
extern "js" fn html_element_attach_internals_ffi(
  obj : JsValue,
) -> ElementInternals = "(obj) => obj.attachInternals()"

///|
/// [HTMLElement.attachInternals](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/attachInternals)
impl THTMLElement with attach_internals(self : Self) -> ElementInternals {
  html_element_attach_internals_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_show_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.showPopover(options)"

///|
/// [HTMLElement.showPopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/showPopover)
impl THTMLElement with show_popover(
  self : Self,
  options? : ShowPopoverOptions = ShowPopoverOptions::empty(),
) -> Unit {
  html_element_show_popover_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "(obj) => obj.hidePopover()"

///|
/// [HTMLElement.hidePopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidePopover)
impl THTMLElement with hide_popover(self : Self) -> Unit {
  html_element_hide_popover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_toggle_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Bool = "(obj, options) => obj.togglePopover(options)"

///|
/// [HTMLElement.togglePopover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/togglePopover)
impl THTMLElement with toggle_popover(
  self : Self,
  options? : &THTMLElementTogglePopoverOptions = TogglePopoverOptions::empty(),
) -> Bool {
  html_element_toggle_popover_ffi(TJsValue::to_js(self), options.to_js())
}

///|
extern "js" fn html_element_popover_ffi(obj : JsValue) -> String = "(obj) => obj.popover"

///|
/// [HTMLElement.popover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/popover)
impl THTMLElement with popover(self : Self) -> String {
  html_element_popover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_popover_ffi(
  obj : JsValue,
  popover : JsValue,
) -> Unit = "(obj, popover) => { obj.popover = popover; }"

///|
/// [HTMLElement.popover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/popover)
impl THTMLElement with set_popover(self : Self, popover : String) -> Unit {
  html_element_set_popover_ffi(TJsValue::to_js(self), TJsValue::to_js(popover))
}

///|
extern "js" fn html_element_heading_offset_ffi(obj : JsValue) -> UInt = "(obj) => obj.headingOffset"

///|
/// [HTMLElement.headingOffset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingOffset)
impl THTMLElement with heading_offset(self : Self) -> UInt {
  html_element_heading_offset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_heading_offset_ffi(
  obj : JsValue,
  heading_offset : JsValue,
) -> Unit = "(obj, headingOffset) => { obj.headingOffset = headingOffset; }"

///|
/// [HTMLElement.headingOffset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingOffset)
impl THTMLElement with set_heading_offset(self : Self, heading_offset : UInt) -> Unit {
  html_element_set_heading_offset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(heading_offset),
  )
}

///|
extern "js" fn html_element_heading_reset_ffi(obj : JsValue) -> Bool = "(obj) => obj.headingReset"

///|
/// [HTMLElement.headingReset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingReset)
impl THTMLElement with heading_reset(self : Self) -> Bool {
  html_element_heading_reset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_heading_reset_ffi(
  obj : JsValue,
  heading_reset : JsValue,
) -> Unit = "(obj, headingReset) => { obj.headingReset = headingReset; }"

///|
/// [HTMLElement.headingReset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/headingReset)
impl THTMLElement with set_heading_reset(self : Self, heading_reset : Bool) -> Unit {
  html_element_set_heading_reset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(heading_reset),
  )
}

///|
extern "js" fn html_element_scroll_parent_ffi(obj : JsValue) -> Element = "(obj) => obj.scrollParent"

///|
/// [HTMLElement.scrollParent](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/scrollParent)
impl THTMLElement with scroll_parent(self : Self) -> Element {
  html_element_scroll_parent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_offset_parent_ffi(obj : JsValue) -> Element = "(obj) => obj.offsetParent"

///|
/// [HTMLElement.offsetParent](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetParent)
impl THTMLElement with offset_parent(self : Self) -> Element {
  html_element_offset_parent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_offset_top_ffi(obj : JsValue) -> Int = "(obj) => obj.offsetTop"

///|
/// [HTMLElement.offsetTop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetTop)
impl THTMLElement with offset_top(self : Self) -> Int {
  html_element_offset_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_offset_left_ffi(obj : JsValue) -> Int = "(obj) => obj.offsetLeft"

///|
/// [HTMLElement.offsetLeft](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetLeft)
impl THTMLElement with offset_left(self : Self) -> Int {
  html_element_offset_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_offset_width_ffi(obj : JsValue) -> Int = "(obj) => obj.offsetWidth"

///|
/// [HTMLElement.offsetWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetWidth)
impl THTMLElement with offset_width(self : Self) -> Int {
  html_element_offset_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_offset_height_ffi(obj : JsValue) -> Int = "(obj) => obj.offsetHeight"

///|
/// [HTMLElement.offsetHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetHeight)
impl THTMLElement with offset_height(self : Self) -> Int {
  html_element_offset_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_onabort_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onabort"

///|
/// [HTMLElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onabort)
impl THTMLElement with onabort(self : Self) -> EventHandler {
  html_element_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
/// [HTMLElement.onabort](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onabort)
impl THTMLElement with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  html_element_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
extern "js" fn html_element_onauxclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onauxclick"

///|
/// [HTMLElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onauxclick)
impl THTMLElement with onauxclick(self : Self) -> EventHandler {
  html_element_onauxclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onauxclick_ffi(
  obj : JsValue,
  onauxclick : JsValue,
) -> Unit = "(obj, onauxclick) => { obj.onauxclick = onauxclick; }"

///|
/// [HTMLElement.onauxclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onauxclick)
impl THTMLElement with set_onauxclick(self : Self, onauxclick : EventHandler) -> Unit {
  html_element_set_onauxclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onauxclick),
  )
}

///|
extern "js" fn html_element_onbeforeinput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforeinput"

///|
/// [HTMLElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforeinput)
impl THTMLElement with onbeforeinput(self : Self) -> EventHandler {
  html_element_onbeforeinput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onbeforeinput_ffi(
  obj : JsValue,
  onbeforeinput : JsValue,
) -> Unit = "(obj, onbeforeinput) => { obj.onbeforeinput = onbeforeinput; }"

///|
/// [HTMLElement.onbeforeinput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforeinput)
impl THTMLElement with set_onbeforeinput(
  self : Self,
  onbeforeinput : EventHandler,
) -> Unit {
  html_element_set_onbeforeinput_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforeinput),
  )
}

///|
extern "js" fn html_element_onbeforematch_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforematch"

///|
/// [HTMLElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforematch)
impl THTMLElement with onbeforematch(self : Self) -> EventHandler {
  html_element_onbeforematch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onbeforematch_ffi(
  obj : JsValue,
  onbeforematch : JsValue,
) -> Unit = "(obj, onbeforematch) => { obj.onbeforematch = onbeforematch; }"

///|
/// [HTMLElement.onbeforematch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforematch)
impl THTMLElement with set_onbeforematch(
  self : Self,
  onbeforematch : EventHandler,
) -> Unit {
  html_element_set_onbeforematch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforematch),
  )
}

///|
extern "js" fn html_element_onbeforetoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onbeforetoggle"

///|
/// [HTMLElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforetoggle)
impl THTMLElement with onbeforetoggle(self : Self) -> EventHandler {
  html_element_onbeforetoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onbeforetoggle_ffi(
  obj : JsValue,
  onbeforetoggle : JsValue,
) -> Unit = "(obj, onbeforetoggle) => { obj.onbeforetoggle = onbeforetoggle; }"

///|
/// [HTMLElement.onbeforetoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onbeforetoggle)
impl THTMLElement with set_onbeforetoggle(
  self : Self,
  onbeforetoggle : EventHandler,
) -> Unit {
  html_element_set_onbeforetoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onbeforetoggle),
  )
}

///|
extern "js" fn html_element_onblur_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onblur"

///|
/// [HTMLElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onblur)
impl THTMLElement with onblur(self : Self) -> EventHandler {
  html_element_onblur_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onblur_ffi(
  obj : JsValue,
  onblur : JsValue,
) -> Unit = "(obj, onblur) => { obj.onblur = onblur; }"

///|
/// [HTMLElement.onblur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onblur)
impl THTMLElement with set_onblur(self : Self, onblur : EventHandler) -> Unit {
  html_element_set_onblur_ffi(TJsValue::to_js(self), TJsValue::to_js(onblur))
}

///|
extern "js" fn html_element_oncancel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncancel"

///|
/// [HTMLElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncancel)
impl THTMLElement with oncancel(self : Self) -> EventHandler {
  html_element_oncancel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
/// [HTMLElement.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncancel)
impl THTMLElement with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  html_element_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncancel),
  )
}

///|
extern "js" fn html_element_oncanplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplay"

///|
/// [HTMLElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplay)
impl THTMLElement with oncanplay(self : Self) -> EventHandler {
  html_element_oncanplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncanplay_ffi(
  obj : JsValue,
  oncanplay : JsValue,
) -> Unit = "(obj, oncanplay) => { obj.oncanplay = oncanplay; }"

///|
/// [HTMLElement.oncanplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplay)
impl THTMLElement with set_oncanplay(self : Self, oncanplay : EventHandler) -> Unit {
  html_element_set_oncanplay_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplay),
  )
}

///|
extern "js" fn html_element_oncanplaythrough_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncanplaythrough"

///|
/// [HTMLElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplaythrough)
impl THTMLElement with oncanplaythrough(self : Self) -> EventHandler {
  html_element_oncanplaythrough_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  oncanplaythrough : JsValue,
) -> Unit = "(obj, oncanplaythrough) => { obj.oncanplaythrough = oncanplaythrough; }"

///|
/// [HTMLElement.oncanplaythrough](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncanplaythrough)
impl THTMLElement with set_oncanplaythrough(
  self : Self,
  oncanplaythrough : EventHandler,
) -> Unit {
  html_element_set_oncanplaythrough_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncanplaythrough),
  )
}

///|
extern "js" fn html_element_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
/// [HTMLElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onchange)
impl THTMLElement with onchange(self : Self) -> EventHandler {
  html_element_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
/// [HTMLElement.onchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onchange)
impl THTMLElement with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  html_element_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}

///|
extern "js" fn html_element_onclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclick"

///|
/// [HTMLElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclick)
impl THTMLElement with onclick(self : Self) -> EventHandler {
  html_element_onclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
/// [HTMLElement.onclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclick)
impl THTMLElement with set_onclick(self : Self, onclick : EventHandler) -> Unit {
  html_element_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(onclick))
}

///|
extern "js" fn html_element_onclose_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclose"

///|
/// [HTMLElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclose)
impl THTMLElement with onclose(self : Self) -> EventHandler {
  html_element_onclose_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
/// [HTMLElement.onclose](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onclose)
impl THTMLElement with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  html_element_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
extern "js" fn html_element_oncommand_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncommand"

///|
/// [HTMLElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncommand)
impl THTMLElement with oncommand(self : Self) -> EventHandler {
  html_element_oncommand_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncommand_ffi(
  obj : JsValue,
  oncommand : JsValue,
) -> Unit = "(obj, oncommand) => { obj.oncommand = oncommand; }"

///|
/// [HTMLElement.oncommand](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncommand)
impl THTMLElement with set_oncommand(self : Self, oncommand : EventHandler) -> Unit {
  html_element_set_oncommand_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncommand),
  )
}

///|
extern "js" fn html_element_oncontextlost_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextlost"

///|
/// [HTMLElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextlost)
impl THTMLElement with oncontextlost(self : Self) -> EventHandler {
  html_element_oncontextlost_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncontextlost_ffi(
  obj : JsValue,
  oncontextlost : JsValue,
) -> Unit = "(obj, oncontextlost) => { obj.oncontextlost = oncontextlost; }"

///|
/// [HTMLElement.oncontextlost](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextlost)
impl THTMLElement with set_oncontextlost(
  self : Self,
  oncontextlost : EventHandler,
) -> Unit {
  html_element_set_oncontextlost_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextlost),
  )
}

///|
extern "js" fn html_element_oncontextmenu_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncontextmenu"

///|
/// [HTMLElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextmenu)
impl THTMLElement with oncontextmenu(self : Self) -> EventHandler {
  html_element_oncontextmenu_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncontextmenu_ffi(
  obj : JsValue,
  oncontextmenu : JsValue,
) -> Unit = "(obj, oncontextmenu) => { obj.oncontextmenu = oncontextmenu; }"

///|
/// [HTMLElement.oncontextmenu](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextmenu)
impl THTMLElement with set_oncontextmenu(
  self : Self,
  oncontextmenu : EventHandler,
) -> Unit {
  html_element_set_oncontextmenu_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextmenu),
  )
}

///|
extern "js" fn html_element_oncontextrestored_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.oncontextrestored"

///|
/// [HTMLElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextrestored)
impl THTMLElement with oncontextrestored(self : Self) -> EventHandler {
  html_element_oncontextrestored_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  oncontextrestored : JsValue,
) -> Unit = "(obj, oncontextrestored) => { obj.oncontextrestored = oncontextrestored; }"

///|
/// [HTMLElement.oncontextrestored](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncontextrestored)
impl THTMLElement with set_oncontextrestored(
  self : Self,
  oncontextrestored : EventHandler,
) -> Unit {
  html_element_set_oncontextrestored_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncontextrestored),
  )
}

///|
extern "js" fn html_element_oncopy_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncopy"

///|
/// [HTMLElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncopy)
impl THTMLElement with oncopy(self : Self) -> EventHandler {
  html_element_oncopy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncopy_ffi(
  obj : JsValue,
  oncopy : JsValue,
) -> Unit = "(obj, oncopy) => { obj.oncopy = oncopy; }"

///|
/// [HTMLElement.oncopy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncopy)
impl THTMLElement with set_oncopy(self : Self, oncopy : EventHandler) -> Unit {
  html_element_set_oncopy_ffi(TJsValue::to_js(self), TJsValue::to_js(oncopy))
}

///|
extern "js" fn html_element_oncuechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncuechange"

///|
/// [HTMLElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncuechange)
impl THTMLElement with oncuechange(self : Self) -> EventHandler {
  html_element_oncuechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
/// [HTMLElement.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncuechange)
impl THTMLElement with set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit {
  html_element_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}

///|
extern "js" fn html_element_oncut_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncut"

///|
/// [HTMLElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncut)
impl THTMLElement with oncut(self : Self) -> EventHandler {
  html_element_oncut_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oncut_ffi(
  obj : JsValue,
  oncut : JsValue,
) -> Unit = "(obj, oncut) => { obj.oncut = oncut; }"

///|
/// [HTMLElement.oncut](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oncut)
impl THTMLElement with set_oncut(self : Self, oncut : EventHandler) -> Unit {
  html_element_set_oncut_ffi(TJsValue::to_js(self), TJsValue::to_js(oncut))
}

///|
extern "js" fn html_element_ondblclick_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondblclick"

///|
/// [HTMLElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondblclick)
impl THTMLElement with ondblclick(self : Self) -> EventHandler {
  html_element_ondblclick_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondblclick_ffi(
  obj : JsValue,
  ondblclick : JsValue,
) -> Unit = "(obj, ondblclick) => { obj.ondblclick = ondblclick; }"

///|
/// [HTMLElement.ondblclick](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondblclick)
impl THTMLElement with set_ondblclick(self : Self, ondblclick : EventHandler) -> Unit {
  html_element_set_ondblclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondblclick),
  )
}

///|
extern "js" fn html_element_ondrag_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrag"

///|
/// [HTMLElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrag)
impl THTMLElement with ondrag(self : Self) -> EventHandler {
  html_element_ondrag_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondrag_ffi(
  obj : JsValue,
  ondrag : JsValue,
) -> Unit = "(obj, ondrag) => { obj.ondrag = ondrag; }"

///|
/// [HTMLElement.ondrag](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrag)
impl THTMLElement with set_ondrag(self : Self, ondrag : EventHandler) -> Unit {
  html_element_set_ondrag_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrag))
}

///|
extern "js" fn html_element_ondragend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragend"

///|
/// [HTMLElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragend)
impl THTMLElement with ondragend(self : Self) -> EventHandler {
  html_element_ondragend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondragend_ffi(
  obj : JsValue,
  ondragend : JsValue,
) -> Unit = "(obj, ondragend) => { obj.ondragend = ondragend; }"

///|
/// [HTMLElement.ondragend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragend)
impl THTMLElement with set_ondragend(self : Self, ondragend : EventHandler) -> Unit {
  html_element_set_ondragend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragend),
  )
}

///|
extern "js" fn html_element_ondragenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragenter"

///|
/// [HTMLElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragenter)
impl THTMLElement with ondragenter(self : Self) -> EventHandler {
  html_element_ondragenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondragenter_ffi(
  obj : JsValue,
  ondragenter : JsValue,
) -> Unit = "(obj, ondragenter) => { obj.ondragenter = ondragenter; }"

///|
/// [HTMLElement.ondragenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragenter)
impl THTMLElement with set_ondragenter(self : Self, ondragenter : EventHandler) -> Unit {
  html_element_set_ondragenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragenter),
  )
}

///|
extern "js" fn html_element_ondragleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragleave"

///|
/// [HTMLElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragleave)
impl THTMLElement with ondragleave(self : Self) -> EventHandler {
  html_element_ondragleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondragleave_ffi(
  obj : JsValue,
  ondragleave : JsValue,
) -> Unit = "(obj, ondragleave) => { obj.ondragleave = ondragleave; }"

///|
/// [HTMLElement.ondragleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragleave)
impl THTMLElement with set_ondragleave(self : Self, ondragleave : EventHandler) -> Unit {
  html_element_set_ondragleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragleave),
  )
}

///|
extern "js" fn html_element_ondragover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragover"

///|
/// [HTMLElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragover)
impl THTMLElement with ondragover(self : Self) -> EventHandler {
  html_element_ondragover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondragover_ffi(
  obj : JsValue,
  ondragover : JsValue,
) -> Unit = "(obj, ondragover) => { obj.ondragover = ondragover; }"

///|
/// [HTMLElement.ondragover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragover)
impl THTMLElement with set_ondragover(self : Self, ondragover : EventHandler) -> Unit {
  html_element_set_ondragover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragover),
  )
}

///|
extern "js" fn html_element_ondragstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondragstart"

///|
/// [HTMLElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragstart)
impl THTMLElement with ondragstart(self : Self) -> EventHandler {
  html_element_ondragstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondragstart_ffi(
  obj : JsValue,
  ondragstart : JsValue,
) -> Unit = "(obj, ondragstart) => { obj.ondragstart = ondragstart; }"

///|
/// [HTMLElement.ondragstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondragstart)
impl THTMLElement with set_ondragstart(self : Self, ondragstart : EventHandler) -> Unit {
  html_element_set_ondragstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondragstart),
  )
}

///|
extern "js" fn html_element_ondrop_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondrop"

///|
/// [HTMLElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrop)
impl THTMLElement with ondrop(self : Self) -> EventHandler {
  html_element_ondrop_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondrop_ffi(
  obj : JsValue,
  ondrop : JsValue,
) -> Unit = "(obj, ondrop) => { obj.ondrop = ondrop; }"

///|
/// [HTMLElement.ondrop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondrop)
impl THTMLElement with set_ondrop(self : Self, ondrop : EventHandler) -> Unit {
  html_element_set_ondrop_ffi(TJsValue::to_js(self), TJsValue::to_js(ondrop))
}

///|
extern "js" fn html_element_ondurationchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ondurationchange"

///|
/// [HTMLElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondurationchange)
impl THTMLElement with ondurationchange(self : Self) -> EventHandler {
  html_element_ondurationchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  ondurationchange : JsValue,
) -> Unit = "(obj, ondurationchange) => { obj.ondurationchange = ondurationchange; }"

///|
/// [HTMLElement.ondurationchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ondurationchange)
impl THTMLElement with set_ondurationchange(
  self : Self,
  ondurationchange : EventHandler,
) -> Unit {
  html_element_set_ondurationchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondurationchange),
  )
}

///|
extern "js" fn html_element_onemptied_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onemptied"

///|
/// [HTMLElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onemptied)
impl THTMLElement with onemptied(self : Self) -> EventHandler {
  html_element_onemptied_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onemptied_ffi(
  obj : JsValue,
  onemptied : JsValue,
) -> Unit = "(obj, onemptied) => { obj.onemptied = onemptied; }"

///|
/// [HTMLElement.onemptied](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onemptied)
impl THTMLElement with set_onemptied(self : Self, onemptied : EventHandler) -> Unit {
  html_element_set_onemptied_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onemptied),
  )
}

///|
extern "js" fn html_element_onended_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onended"

///|
/// [HTMLElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onended)
impl THTMLElement with onended(self : Self) -> EventHandler {
  html_element_onended_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onended_ffi(
  obj : JsValue,
  onended : JsValue,
) -> Unit = "(obj, onended) => { obj.onended = onended; }"

///|
/// [HTMLElement.onended](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onended)
impl THTMLElement with set_onended(self : Self, onended : EventHandler) -> Unit {
  html_element_set_onended_ffi(TJsValue::to_js(self), TJsValue::to_js(onended))
}

///|
extern "js" fn html_element_onerror_ffi(obj : JsValue) -> OnErrorEventHandler = "(obj) => obj.onerror"

///|
/// [HTMLElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onerror)
impl THTMLElement with onerror(self : Self) -> OnErrorEventHandler {
  html_element_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
/// [HTMLElement.onerror](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onerror)
impl THTMLElement with set_onerror(self : Self, onerror : OnErrorEventHandler) -> Unit {
  html_element_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
extern "js" fn html_element_onfocus_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onfocus"

///|
/// [HTMLElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onfocus)
impl THTMLElement with onfocus(self : Self) -> EventHandler {
  html_element_onfocus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onfocus_ffi(
  obj : JsValue,
  onfocus : JsValue,
) -> Unit = "(obj, onfocus) => { obj.onfocus = onfocus; }"

///|
/// [HTMLElement.onfocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onfocus)
impl THTMLElement with set_onfocus(self : Self, onfocus : EventHandler) -> Unit {
  html_element_set_onfocus_ffi(TJsValue::to_js(self), TJsValue::to_js(onfocus))
}

///|
extern "js" fn html_element_onformdata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onformdata"

///|
/// [HTMLElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onformdata)
impl THTMLElement with onformdata(self : Self) -> EventHandler {
  html_element_onformdata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onformdata_ffi(
  obj : JsValue,
  onformdata : JsValue,
) -> Unit = "(obj, onformdata) => { obj.onformdata = onformdata; }"

///|
/// [HTMLElement.onformdata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onformdata)
impl THTMLElement with set_onformdata(self : Self, onformdata : EventHandler) -> Unit {
  html_element_set_onformdata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onformdata),
  )
}

///|
extern "js" fn html_element_oninput_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninput"

///|
/// [HTMLElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninput)
impl THTMLElement with oninput(self : Self) -> EventHandler {
  html_element_oninput_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oninput_ffi(
  obj : JsValue,
  oninput : JsValue,
) -> Unit = "(obj, oninput) => { obj.oninput = oninput; }"

///|
/// [HTMLElement.oninput](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninput)
impl THTMLElement with set_oninput(self : Self, oninput : EventHandler) -> Unit {
  html_element_set_oninput_ffi(TJsValue::to_js(self), TJsValue::to_js(oninput))
}

///|
extern "js" fn html_element_oninvalid_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oninvalid"

///|
/// [HTMLElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninvalid)
impl THTMLElement with oninvalid(self : Self) -> EventHandler {
  html_element_oninvalid_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_oninvalid_ffi(
  obj : JsValue,
  oninvalid : JsValue,
) -> Unit = "(obj, oninvalid) => { obj.oninvalid = oninvalid; }"

///|
/// [HTMLElement.oninvalid](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/oninvalid)
impl THTMLElement with set_oninvalid(self : Self, oninvalid : EventHandler) -> Unit {
  html_element_set_oninvalid_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oninvalid),
  )
}

///|
extern "js" fn html_element_onkeydown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeydown"

///|
/// [HTMLElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeydown)
impl THTMLElement with onkeydown(self : Self) -> EventHandler {
  html_element_onkeydown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onkeydown_ffi(
  obj : JsValue,
  onkeydown : JsValue,
) -> Unit = "(obj, onkeydown) => { obj.onkeydown = onkeydown; }"

///|
/// [HTMLElement.onkeydown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeydown)
impl THTMLElement with set_onkeydown(self : Self, onkeydown : EventHandler) -> Unit {
  html_element_set_onkeydown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeydown),
  )
}

///|
extern "js" fn html_element_onkeypress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeypress"

///|
/// [HTMLElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeypress)
impl THTMLElement with onkeypress(self : Self) -> EventHandler {
  html_element_onkeypress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onkeypress_ffi(
  obj : JsValue,
  onkeypress : JsValue,
) -> Unit = "(obj, onkeypress) => { obj.onkeypress = onkeypress; }"

///|
/// [HTMLElement.onkeypress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeypress)
impl THTMLElement with set_onkeypress(self : Self, onkeypress : EventHandler) -> Unit {
  html_element_set_onkeypress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onkeypress),
  )
}

///|
extern "js" fn html_element_onkeyup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onkeyup"

///|
/// [HTMLElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeyup)
impl THTMLElement with onkeyup(self : Self) -> EventHandler {
  html_element_onkeyup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onkeyup_ffi(
  obj : JsValue,
  onkeyup : JsValue,
) -> Unit = "(obj, onkeyup) => { obj.onkeyup = onkeyup; }"

///|
/// [HTMLElement.onkeyup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onkeyup)
impl THTMLElement with set_onkeyup(self : Self, onkeyup : EventHandler) -> Unit {
  html_element_set_onkeyup_ffi(TJsValue::to_js(self), TJsValue::to_js(onkeyup))
}

///|
extern "js" fn html_element_onload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onload"

///|
/// [HTMLElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onload)
impl THTMLElement with onload(self : Self) -> EventHandler {
  html_element_onload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
/// [HTMLElement.onload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onload)
impl THTMLElement with set_onload(self : Self, onload : EventHandler) -> Unit {
  html_element_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
extern "js" fn html_element_onloadeddata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadeddata"

///|
/// [HTMLElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadeddata)
impl THTMLElement with onloadeddata(self : Self) -> EventHandler {
  html_element_onloadeddata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onloadeddata_ffi(
  obj : JsValue,
  onloadeddata : JsValue,
) -> Unit = "(obj, onloadeddata) => { obj.onloadeddata = onloadeddata; }"

///|
/// [HTMLElement.onloadeddata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadeddata)
impl THTMLElement with set_onloadeddata(
  self : Self,
  onloadeddata : EventHandler,
) -> Unit {
  html_element_set_onloadeddata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadeddata),
  )
}

///|
extern "js" fn html_element_onloadedmetadata_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadedmetadata"

///|
/// [HTMLElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadedmetadata)
impl THTMLElement with onloadedmetadata(self : Self) -> EventHandler {
  html_element_onloadedmetadata_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  onloadedmetadata : JsValue,
) -> Unit = "(obj, onloadedmetadata) => { obj.onloadedmetadata = onloadedmetadata; }"

///|
/// [HTMLElement.onloadedmetadata](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadedmetadata)
impl THTMLElement with set_onloadedmetadata(
  self : Self,
  onloadedmetadata : EventHandler,
) -> Unit {
  html_element_set_onloadedmetadata_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadedmetadata),
  )
}

///|
extern "js" fn html_element_onloadstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadstart"

///|
/// [HTMLElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadstart)
impl THTMLElement with onloadstart(self : Self) -> EventHandler {
  html_element_onloadstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
/// [HTMLElement.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onloadstart)
impl THTMLElement with set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit {
  html_element_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
extern "js" fn html_element_onmousedown_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousedown"

///|
/// [HTMLElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousedown)
impl THTMLElement with onmousedown(self : Self) -> EventHandler {
  html_element_onmousedown_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmousedown_ffi(
  obj : JsValue,
  onmousedown : JsValue,
) -> Unit = "(obj, onmousedown) => { obj.onmousedown = onmousedown; }"

///|
/// [HTMLElement.onmousedown](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousedown)
impl THTMLElement with set_onmousedown(self : Self, onmousedown : EventHandler) -> Unit {
  html_element_set_onmousedown_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousedown),
  )
}

///|
extern "js" fn html_element_onmouseenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseenter"

///|
/// [HTMLElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseenter)
impl THTMLElement with onmouseenter(self : Self) -> EventHandler {
  html_element_onmouseenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmouseenter_ffi(
  obj : JsValue,
  onmouseenter : JsValue,
) -> Unit = "(obj, onmouseenter) => { obj.onmouseenter = onmouseenter; }"

///|
/// [HTMLElement.onmouseenter](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseenter)
impl THTMLElement with set_onmouseenter(
  self : Self,
  onmouseenter : EventHandler,
) -> Unit {
  html_element_set_onmouseenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseenter),
  )
}

///|
extern "js" fn html_element_onmouseleave_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseleave"

///|
/// [HTMLElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseleave)
impl THTMLElement with onmouseleave(self : Self) -> EventHandler {
  html_element_onmouseleave_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmouseleave_ffi(
  obj : JsValue,
  onmouseleave : JsValue,
) -> Unit = "(obj, onmouseleave) => { obj.onmouseleave = onmouseleave; }"

///|
/// [HTMLElement.onmouseleave](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseleave)
impl THTMLElement with set_onmouseleave(
  self : Self,
  onmouseleave : EventHandler,
) -> Unit {
  html_element_set_onmouseleave_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseleave),
  )
}

///|
extern "js" fn html_element_onmousemove_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmousemove"

///|
/// [HTMLElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousemove)
impl THTMLElement with onmousemove(self : Self) -> EventHandler {
  html_element_onmousemove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmousemove_ffi(
  obj : JsValue,
  onmousemove : JsValue,
) -> Unit = "(obj, onmousemove) => { obj.onmousemove = onmousemove; }"

///|
/// [HTMLElement.onmousemove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmousemove)
impl THTMLElement with set_onmousemove(self : Self, onmousemove : EventHandler) -> Unit {
  html_element_set_onmousemove_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmousemove),
  )
}

///|
extern "js" fn html_element_onmouseout_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseout"

///|
/// [HTMLElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseout)
impl THTMLElement with onmouseout(self : Self) -> EventHandler {
  html_element_onmouseout_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmouseout_ffi(
  obj : JsValue,
  onmouseout : JsValue,
) -> Unit = "(obj, onmouseout) => { obj.onmouseout = onmouseout; }"

///|
/// [HTMLElement.onmouseout](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseout)
impl THTMLElement with set_onmouseout(self : Self, onmouseout : EventHandler) -> Unit {
  html_element_set_onmouseout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseout),
  )
}

///|
extern "js" fn html_element_onmouseover_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseover"

///|
/// [HTMLElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseover)
impl THTMLElement with onmouseover(self : Self) -> EventHandler {
  html_element_onmouseover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmouseover_ffi(
  obj : JsValue,
  onmouseover : JsValue,
) -> Unit = "(obj, onmouseover) => { obj.onmouseover = onmouseover; }"

///|
/// [HTMLElement.onmouseover](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseover)
impl THTMLElement with set_onmouseover(self : Self, onmouseover : EventHandler) -> Unit {
  html_element_set_onmouseover_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseover),
  )
}

///|
extern "js" fn html_element_onmouseup_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmouseup"

///|
/// [HTMLElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseup)
impl THTMLElement with onmouseup(self : Self) -> EventHandler {
  html_element_onmouseup_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onmouseup_ffi(
  obj : JsValue,
  onmouseup : JsValue,
) -> Unit = "(obj, onmouseup) => { obj.onmouseup = onmouseup; }"

///|
/// [HTMLElement.onmouseup](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onmouseup)
impl THTMLElement with set_onmouseup(self : Self, onmouseup : EventHandler) -> Unit {
  html_element_set_onmouseup_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmouseup),
  )
}

///|
extern "js" fn html_element_onpaste_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpaste"

///|
/// [HTMLElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpaste)
impl THTMLElement with onpaste(self : Self) -> EventHandler {
  html_element_onpaste_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onpaste_ffi(
  obj : JsValue,
  onpaste : JsValue,
) -> Unit = "(obj, onpaste) => { obj.onpaste = onpaste; }"

///|
/// [HTMLElement.onpaste](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpaste)
impl THTMLElement with set_onpaste(self : Self, onpaste : EventHandler) -> Unit {
  html_element_set_onpaste_ffi(TJsValue::to_js(self), TJsValue::to_js(onpaste))
}

///|
extern "js" fn html_element_onpause_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onpause"

///|
/// [HTMLElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpause)
impl THTMLElement with onpause(self : Self) -> EventHandler {
  html_element_onpause_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onpause_ffi(
  obj : JsValue,
  onpause : JsValue,
) -> Unit = "(obj, onpause) => { obj.onpause = onpause; }"

///|
/// [HTMLElement.onpause](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onpause)
impl THTMLElement with set_onpause(self : Self, onpause : EventHandler) -> Unit {
  html_element_set_onpause_ffi(TJsValue::to_js(self), TJsValue::to_js(onpause))
}

///|
extern "js" fn html_element_onplay_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplay"

///|
/// [HTMLElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplay)
impl THTMLElement with onplay(self : Self) -> EventHandler {
  html_element_onplay_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onplay_ffi(
  obj : JsValue,
  onplay : JsValue,
) -> Unit = "(obj, onplay) => { obj.onplay = onplay; }"

///|
/// [HTMLElement.onplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplay)
impl THTMLElement with set_onplay(self : Self, onplay : EventHandler) -> Unit {
  html_element_set_onplay_ffi(TJsValue::to_js(self), TJsValue::to_js(onplay))
}

///|
extern "js" fn html_element_onplaying_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onplaying"

///|
/// [HTMLElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplaying)
impl THTMLElement with onplaying(self : Self) -> EventHandler {
  html_element_onplaying_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onplaying_ffi(
  obj : JsValue,
  onplaying : JsValue,
) -> Unit = "(obj, onplaying) => { obj.onplaying = onplaying; }"

///|
/// [HTMLElement.onplaying](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onplaying)
impl THTMLElement with set_onplaying(self : Self, onplaying : EventHandler) -> Unit {
  html_element_set_onplaying_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onplaying),
  )
}

///|
extern "js" fn html_element_onprogress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onprogress"

///|
/// [HTMLElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onprogress)
impl THTMLElement with onprogress(self : Self) -> EventHandler {
  html_element_onprogress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
/// [HTMLElement.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onprogress)
impl THTMLElement with set_onprogress(self : Self, onprogress : EventHandler) -> Unit {
  html_element_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
extern "js" fn html_element_onratechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onratechange"

///|
/// [HTMLElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onratechange)
impl THTMLElement with onratechange(self : Self) -> EventHandler {
  html_element_onratechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onratechange_ffi(
  obj : JsValue,
  onratechange : JsValue,
) -> Unit = "(obj, onratechange) => { obj.onratechange = onratechange; }"

///|
/// [HTMLElement.onratechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onratechange)
impl THTMLElement with set_onratechange(
  self : Self,
  onratechange : EventHandler,
) -> Unit {
  html_element_set_onratechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onratechange),
  )
}

///|
extern "js" fn html_element_onreset_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onreset"

///|
/// [HTMLElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onreset)
impl THTMLElement with onreset(self : Self) -> EventHandler {
  html_element_onreset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onreset_ffi(
  obj : JsValue,
  onreset : JsValue,
) -> Unit = "(obj, onreset) => { obj.onreset = onreset; }"

///|
/// [HTMLElement.onreset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onreset)
impl THTMLElement with set_onreset(self : Self, onreset : EventHandler) -> Unit {
  html_element_set_onreset_ffi(TJsValue::to_js(self), TJsValue::to_js(onreset))
}

///|
extern "js" fn html_element_onresize_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onresize"

///|
/// [HTMLElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onresize)
impl THTMLElement with onresize(self : Self) -> EventHandler {
  html_element_onresize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
/// [HTMLElement.onresize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onresize)
impl THTMLElement with set_onresize(self : Self, onresize : EventHandler) -> Unit {
  html_element_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onresize),
  )
}

///|
extern "js" fn html_element_onscroll_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscroll"

///|
/// [HTMLElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscroll)
impl THTMLElement with onscroll(self : Self) -> EventHandler {
  html_element_onscroll_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
/// [HTMLElement.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscroll)
impl THTMLElement with set_onscroll(self : Self, onscroll : EventHandler) -> Unit {
  html_element_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscroll),
  )
}

///|
extern "js" fn html_element_onscrollend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onscrollend"

///|
/// [HTMLElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscrollend)
impl THTMLElement with onscrollend(self : Self) -> EventHandler {
  html_element_onscrollend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
/// [HTMLElement.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onscrollend)
impl THTMLElement with set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit {
  html_element_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onscrollend),
  )
}

///|
extern "js" fn html_element_onsecuritypolicyviolation_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onsecuritypolicyviolation"

///|
/// [HTMLElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsecuritypolicyviolation)
impl THTMLElement with onsecuritypolicyviolation(self : Self) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  onsecuritypolicyviolation : JsValue,
) -> Unit = "(obj, onsecuritypolicyviolation) => { obj.onsecuritypolicyviolation = onsecuritypolicyviolation; }"

///|
/// [HTMLElement.onsecuritypolicyviolation](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsecuritypolicyviolation)
impl THTMLElement with set_onsecuritypolicyviolation(
  self : Self,
  onsecuritypolicyviolation : EventHandler,
) -> Unit {
  html_element_set_onsecuritypolicyviolation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsecuritypolicyviolation),
  )
}

///|
extern "js" fn html_element_onseeked_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeked"

///|
/// [HTMLElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeked)
impl THTMLElement with onseeked(self : Self) -> EventHandler {
  html_element_onseeked_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onseeked_ffi(
  obj : JsValue,
  onseeked : JsValue,
) -> Unit = "(obj, onseeked) => { obj.onseeked = onseeked; }"

///|
/// [HTMLElement.onseeked](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeked)
impl THTMLElement with set_onseeked(self : Self, onseeked : EventHandler) -> Unit {
  html_element_set_onseeked_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onseeked),
  )
}

///|
extern "js" fn html_element_onseeking_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onseeking"

///|
/// [HTMLElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeking)
impl THTMLElement with onseeking(self : Self) -> EventHandler {
  html_element_onseeking_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onseeking_ffi(
  obj : JsValue,
  onseeking : JsValue,
) -> Unit = "(obj, onseeking) => { obj.onseeking = onseeking; }"

///|
/// [HTMLElement.onseeking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onseeking)
impl THTMLElement with set_onseeking(self : Self, onseeking : EventHandler) -> Unit {
  html_element_set_onseeking_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onseeking),
  )
}

///|
extern "js" fn html_element_onselect_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onselect"

///|
/// [HTMLElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselect)
impl THTMLElement with onselect(self : Self) -> EventHandler {
  html_element_onselect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onselect_ffi(
  obj : JsValue,
  onselect : JsValue,
) -> Unit = "(obj, onselect) => { obj.onselect = onselect; }"

///|
/// [HTMLElement.onselect](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onselect)
impl THTMLElement with set_onselect(self : Self, onselect : EventHandler) -> Unit {
  html_element_set_onselect_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onselect),
  )
}

///|
extern "js" fn html_element_onslotchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onslotchange"

///|
/// [HTMLElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onslotchange)
impl THTMLElement with onslotchange(self : Self) -> EventHandler {
  html_element_onslotchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onslotchange_ffi(
  obj : JsValue,
  onslotchange : JsValue,
) -> Unit = "(obj, onslotchange) => { obj.onslotchange = onslotchange; }"

///|
/// [HTMLElement.onslotchange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onslotchange)
impl THTMLElement with set_onslotchange(
  self : Self,
  onslotchange : EventHandler,
) -> Unit {
  html_element_set_onslotchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onslotchange),
  )
}

///|
extern "js" fn html_element_onstalled_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onstalled"

///|
/// [HTMLElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onstalled)
impl THTMLElement with onstalled(self : Self) -> EventHandler {
  html_element_onstalled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onstalled_ffi(
  obj : JsValue,
  onstalled : JsValue,
) -> Unit = "(obj, onstalled) => { obj.onstalled = onstalled; }"

///|
/// [HTMLElement.onstalled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onstalled)
impl THTMLElement with set_onstalled(self : Self, onstalled : EventHandler) -> Unit {
  html_element_set_onstalled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onstalled),
  )
}

///|
extern "js" fn html_element_onsubmit_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsubmit"

///|
/// [HTMLElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsubmit)
impl THTMLElement with onsubmit(self : Self) -> EventHandler {
  html_element_onsubmit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onsubmit_ffi(
  obj : JsValue,
  onsubmit : JsValue,
) -> Unit = "(obj, onsubmit) => { obj.onsubmit = onsubmit; }"

///|
/// [HTMLElement.onsubmit](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsubmit)
impl THTMLElement with set_onsubmit(self : Self, onsubmit : EventHandler) -> Unit {
  html_element_set_onsubmit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsubmit),
  )
}

///|
extern "js" fn html_element_onsuspend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onsuspend"

///|
/// [HTMLElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsuspend)
impl THTMLElement with onsuspend(self : Self) -> EventHandler {
  html_element_onsuspend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onsuspend_ffi(
  obj : JsValue,
  onsuspend : JsValue,
) -> Unit = "(obj, onsuspend) => { obj.onsuspend = onsuspend; }"

///|
/// [HTMLElement.onsuspend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onsuspend)
impl THTMLElement with set_onsuspend(self : Self, onsuspend : EventHandler) -> Unit {
  html_element_set_onsuspend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onsuspend),
  )
}

///|
extern "js" fn html_element_ontimeupdate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontimeupdate"

///|
/// [HTMLElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontimeupdate)
impl THTMLElement with ontimeupdate(self : Self) -> EventHandler {
  html_element_ontimeupdate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ontimeupdate_ffi(
  obj : JsValue,
  ontimeupdate : JsValue,
) -> Unit = "(obj, ontimeupdate) => { obj.ontimeupdate = ontimeupdate; }"

///|
/// [HTMLElement.ontimeupdate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontimeupdate)
impl THTMLElement with set_ontimeupdate(
  self : Self,
  ontimeupdate : EventHandler,
) -> Unit {
  html_element_set_ontimeupdate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontimeupdate),
  )
}

///|
extern "js" fn html_element_ontoggle_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.ontoggle"

///|
/// [HTMLElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontoggle)
impl THTMLElement with ontoggle(self : Self) -> EventHandler {
  html_element_ontoggle_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_ontoggle_ffi(
  obj : JsValue,
  ontoggle : JsValue,
) -> Unit = "(obj, ontoggle) => { obj.ontoggle = ontoggle; }"

///|
/// [HTMLElement.ontoggle](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/ontoggle)
impl THTMLElement with set_ontoggle(self : Self, ontoggle : EventHandler) -> Unit {
  html_element_set_ontoggle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ontoggle),
  )
}

///|
extern "js" fn html_element_onvolumechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onvolumechange"

///|
/// [HTMLElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onvolumechange)
impl THTMLElement with onvolumechange(self : Self) -> EventHandler {
  html_element_onvolumechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onvolumechange_ffi(
  obj : JsValue,
  onvolumechange : JsValue,
) -> Unit = "(obj, onvolumechange) => { obj.onvolumechange = onvolumechange; }"

///|
/// [HTMLElement.onvolumechange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onvolumechange)
impl THTMLElement with set_onvolumechange(
  self : Self,
  onvolumechange : EventHandler,
) -> Unit {
  html_element_set_onvolumechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onvolumechange),
  )
}

///|
extern "js" fn html_element_onwaiting_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwaiting"

///|
/// [HTMLElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwaiting)
impl THTMLElement with onwaiting(self : Self) -> EventHandler {
  html_element_onwaiting_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwaiting_ffi(
  obj : JsValue,
  onwaiting : JsValue,
) -> Unit = "(obj, onwaiting) => { obj.onwaiting = onwaiting; }"

///|
/// [HTMLElement.onwaiting](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwaiting)
impl THTMLElement with set_onwaiting(self : Self, onwaiting : EventHandler) -> Unit {
  html_element_set_onwaiting_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwaiting),
  )
}

///|
extern "js" fn html_element_onwebkitanimationend_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationend"

///|
/// [HTMLElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationend)
impl THTMLElement with onwebkitanimationend(self : Self) -> EventHandler {
  html_element_onwebkitanimationend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  onwebkitanimationend : JsValue,
) -> Unit = "(obj, onwebkitanimationend) => { obj.onwebkitanimationend = onwebkitanimationend; }"

///|
/// [HTMLElement.onwebkitanimationend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationend)
impl THTMLElement with set_onwebkitanimationend(
  self : Self,
  onwebkitanimationend : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationend),
  )
}

///|
extern "js" fn html_element_onwebkitanimationiteration_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationiteration"

///|
/// [HTMLElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationiteration)
impl THTMLElement with onwebkitanimationiteration(self : Self) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  onwebkitanimationiteration : JsValue,
) -> Unit = "(obj, onwebkitanimationiteration) => { obj.onwebkitanimationiteration = onwebkitanimationiteration; }"

///|
/// [HTMLElement.onwebkitanimationiteration](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationiteration)
impl THTMLElement with set_onwebkitanimationiteration(
  self : Self,
  onwebkitanimationiteration : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationiteration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationiteration),
  )
}

///|
extern "js" fn html_element_onwebkitanimationstart_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkitanimationstart"

///|
/// [HTMLElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationstart)
impl THTMLElement with onwebkitanimationstart(self : Self) -> EventHandler {
  html_element_onwebkitanimationstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  onwebkitanimationstart : JsValue,
) -> Unit = "(obj, onwebkitanimationstart) => { obj.onwebkitanimationstart = onwebkitanimationstart; }"

///|
/// [HTMLElement.onwebkitanimationstart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkitanimationstart)
impl THTMLElement with set_onwebkitanimationstart(
  self : Self,
  onwebkitanimationstart : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkitanimationstart),
  )
}

///|
extern "js" fn html_element_onwebkittransitionend_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onwebkittransitionend"

///|
/// [HTMLElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkittransitionend)
impl THTMLElement with onwebkittransitionend(self : Self) -> EventHandler {
  html_element_onwebkittransitionend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  onwebkittransitionend : JsValue,
) -> Unit = "(obj, onwebkittransitionend) => { obj.onwebkittransitionend = onwebkittransitionend; }"

///|
/// [HTMLElement.onwebkittransitionend](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwebkittransitionend)
impl THTMLElement with set_onwebkittransitionend(
  self : Self,
  onwebkittransitionend : EventHandler,
) -> Unit {
  html_element_set_onwebkittransitionend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onwebkittransitionend),
  )
}

///|
extern "js" fn html_element_onwheel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onwheel"

///|
/// [HTMLElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwheel)
impl THTMLElement with onwheel(self : Self) -> EventHandler {
  html_element_onwheel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_onwheel_ffi(
  obj : JsValue,
  onwheel : JsValue,
) -> Unit = "(obj, onwheel) => { obj.onwheel = onwheel; }"

///|
/// [HTMLElement.onwheel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/onwheel)
impl THTMLElement with set_onwheel(self : Self, onwheel : EventHandler) -> Unit {
  html_element_set_onwheel_ffi(TJsValue::to_js(self), TJsValue::to_js(onwheel))
}

///|
extern "js" fn html_element_content_editable_ffi(obj : JsValue) -> String = "(obj) => obj.contentEditable"

///|
/// [HTMLElement.contentEditable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/contentEditable)
impl THTMLElement with content_editable(self : Self) -> String {
  html_element_content_editable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_content_editable_ffi(
  obj : JsValue,
  content_editable : JsValue,
) -> Unit = "(obj, contentEditable) => { obj.contentEditable = contentEditable; }"

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
extern "js" fn html_element_enter_key_hint_ffi(obj : JsValue) -> String = "(obj) => obj.enterKeyHint"

///|
/// [HTMLElement.enterKeyHint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/enterKeyHint)
impl THTMLElement with enter_key_hint(self : Self) -> String {
  html_element_enter_key_hint_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_enter_key_hint_ffi(
  obj : JsValue,
  enter_key_hint : JsValue,
) -> Unit = "(obj, enterKeyHint) => { obj.enterKeyHint = enterKeyHint; }"

///|
/// [HTMLElement.enterKeyHint](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/enterKeyHint)
impl THTMLElement with set_enter_key_hint(self : Self, enter_key_hint : String) -> Unit {
  html_element_set_enter_key_hint_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(enter_key_hint),
  )
}

///|
extern "js" fn html_element_is_content_editable_ffi(obj : JsValue) -> Bool = "(obj) => obj.isContentEditable"

///|
/// [HTMLElement.isContentEditable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/isContentEditable)
impl THTMLElement with is_content_editable(self : Self) -> Bool {
  html_element_is_content_editable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_input_mode_ffi(obj : JsValue) -> String = "(obj) => obj.inputMode"

///|
/// [HTMLElement.inputMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inputMode)
impl THTMLElement with input_mode(self : Self) -> String {
  html_element_input_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_input_mode_ffi(
  obj : JsValue,
  input_mode : JsValue,
) -> Unit = "(obj, inputMode) => { obj.inputMode = inputMode; }"

///|
/// [HTMLElement.inputMode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/inputMode)
impl THTMLElement with set_input_mode(self : Self, input_mode : String) -> Unit {
  html_element_set_input_mode_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(input_mode),
  )
}

///|
extern "js" fn html_element_dataset_ffi(obj : JsValue) -> DOMStringMap = "(obj) => obj.dataset"

///|
/// [HTMLElement.dataset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/dataset)
impl THTMLElement with dataset(self : Self) -> DOMStringMap {
  html_element_dataset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_nonce_ffi(obj : JsValue) -> String = "(obj) => obj.nonce"

///|
/// [HTMLElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/nonce)
impl THTMLElement with nonce(self : Self) -> String {
  html_element_nonce_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_nonce_ffi(
  obj : JsValue,
  nonce : JsValue,
) -> Unit = "(obj, nonce) => { obj.nonce = nonce; }"

///|
/// [HTMLElement.nonce](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/nonce)
impl THTMLElement with set_nonce(self : Self, nonce : String) -> Unit {
  html_element_set_nonce_ffi(TJsValue::to_js(self), TJsValue::to_js(nonce))
}

///|
extern "js" fn html_element_autofocus_ffi(obj : JsValue) -> Bool = "(obj) => obj.autofocus"

///|
/// [HTMLElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autofocus)
impl THTMLElement with autofocus(self : Self) -> Bool {
  html_element_autofocus_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_autofocus_ffi(
  obj : JsValue,
  autofocus : JsValue,
) -> Unit = "(obj, autofocus) => { obj.autofocus = autofocus; }"

///|
/// [HTMLElement.autofocus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/autofocus)
impl THTMLElement with set_autofocus(self : Self, autofocus : Bool) -> Unit {
  html_element_set_autofocus_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autofocus),
  )
}

///|
extern "js" fn html_element_tab_index_ffi(obj : JsValue) -> Int = "(obj) => obj.tabIndex"

///|
/// [HTMLElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/tabIndex)
impl THTMLElement with tab_index(self : Self) -> Int {
  html_element_tab_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_set_tab_index_ffi(
  obj : JsValue,
  tab_index : JsValue,
) -> Unit = "(obj, tabIndex) => { obj.tabIndex = tabIndex; }"

///|
/// [HTMLElement.tabIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/tabIndex)
impl THTMLElement with set_tab_index(self : Self, tab_index : Int) -> Unit {
  html_element_set_tab_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tab_index),
  )
}

///|
extern "js" fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(options)"

///|
/// [HTMLElement.focus](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/focus)
impl THTMLElement with focus(
  self : Self,
  options? : FocusOptions = FocusOptions::empty(),
) -> Unit {
  html_element_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn html_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur()"

///|
/// [HTMLElement.blur](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/blur)
impl THTMLElement with blur(self : Self) -> Unit {
  html_element_blur_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_style_ffi(obj : JsValue) -> CSSStyleProperties = "(obj) => obj.style"

///|
/// [HTMLElement.style](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/style)
impl THTMLElement with style(self : Self) -> CSSStyleProperties {
  html_element_style_ffi(TJsValue::to_js(self))
}
