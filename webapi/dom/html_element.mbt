// Auto-generated MoonBit bindings for HTMLElement

// Do not edit manually

//
// WebIDL Interface:
// partial interface HTMLElement {
//   readonly attribute Element? scrollParent;
//   readonly attribute Element? offsetParent;
//   readonly attribute long offsetTop;
//   readonly attribute long offsetLeft;
//   readonly attribute long offsetWidth;
//   readonly attribute long offsetHeight;
// };
// 
// [Exposed=Window]
// interface HTMLElement : Element {
//   [HTMLConstructor] constructor();
// 
//   // metadata attributes
//   [CEReactions, Reflect] attribute DOMString title;
//   [CEReactions, Reflect] attribute DOMString lang;
//   [CEReactions] attribute boolean translate;
//   [CEReactions] attribute DOMString dir;
// 
//   // user interaction
//   [CEReactions] attribute (boolean or unrestricted double or DOMString)? hidden;
//   [CEReactions, Reflect] attribute boolean inert;
//   undefined click();
//   [CEReactions, Reflect] attribute DOMString accessKey;
//   readonly attribute DOMString accessKeyLabel;
//   [CEReactions] attribute boolean draggable;
//   [CEReactions] attribute boolean spellcheck;
//   [CEReactions, ReflectSetter] attribute DOMString writingSuggestions;
//   [CEReactions, ReflectSetter] attribute DOMString autocapitalize;
//   [CEReactions] attribute boolean autocorrect;
// 
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString innerText;
//   [CEReactions] attribute [LegacyNullToEmptyString] DOMString outerText;
// 
//   ElementInternals attachInternals();
// 
//   // The popover API
//   undefined showPopover(optional ShowPopoverOptions options = {});
//   undefined hidePopover();
//   boolean togglePopover(optional (TogglePopoverOptions or boolean) options = {});
//   [CEReactions] attribute DOMString? popover;
// 
//   [CEReactions, Reflect, ReflectRange=(0, 8)] attribute unsigned long headingOffset;
//   [CEReactions, Reflect] attribute boolean headingReset;
// };
// 
// interface mixin ElementCSSInlineStyle {
//   [SameObject, PutForwards=cssText] readonly attribute CSSStyleProperties style;
// };
// 
// interface mixin GlobalEventHandlers {
//   attribute EventHandler onabort;
//   attribute EventHandler onauxclick;
//   attribute EventHandler onbeforeinput;
//   attribute EventHandler onbeforematch;
//   attribute EventHandler onbeforetoggle;
//   attribute EventHandler onblur;
//   attribute EventHandler oncancel;
//   attribute EventHandler oncanplay;
//   attribute EventHandler oncanplaythrough;
//   attribute EventHandler onchange;
//   attribute EventHandler onclick;
//   attribute EventHandler onclose;
//   attribute EventHandler oncommand;
//   attribute EventHandler oncontextlost;
//   attribute EventHandler oncontextmenu;
//   attribute EventHandler oncontextrestored;
//   attribute EventHandler oncopy;
//   attribute EventHandler oncuechange;
//   attribute EventHandler oncut;
//   attribute EventHandler ondblclick;
//   attribute EventHandler ondrag;
//   attribute EventHandler ondragend;
//   attribute EventHandler ondragenter;
//   attribute EventHandler ondragleave;
//   attribute EventHandler ondragover;
//   attribute EventHandler ondragstart;
//   attribute EventHandler ondrop;
//   attribute EventHandler ondurationchange;
//   attribute EventHandler onemptied;
//   attribute EventHandler onended;
//   attribute OnErrorEventHandler onerror;
//   attribute EventHandler onfocus;
//   attribute EventHandler onformdata;
//   attribute EventHandler oninput;
//   attribute EventHandler oninvalid;
//   attribute EventHandler onkeydown;
//   attribute EventHandler onkeypress;
//   attribute EventHandler onkeyup;
//   attribute EventHandler onload;
//   attribute EventHandler onloadeddata;
//   attribute EventHandler onloadedmetadata;
//   attribute EventHandler onloadstart;
//   attribute EventHandler onmousedown;
//   [LegacyLenientThis] attribute EventHandler onmouseenter;
//   [LegacyLenientThis] attribute EventHandler onmouseleave;
//   attribute EventHandler onmousemove;
//   attribute EventHandler onmouseout;
//   attribute EventHandler onmouseover;
//   attribute EventHandler onmouseup;
//   attribute EventHandler onpaste;
//   attribute EventHandler onpause;
//   attribute EventHandler onplay;
//   attribute EventHandler onplaying;
//   attribute EventHandler onprogress;
//   attribute EventHandler onratechange;
//   attribute EventHandler onreset;
//   attribute EventHandler onresize;
//   attribute EventHandler onscroll;
//   attribute EventHandler onscrollend;
//   attribute EventHandler onsecuritypolicyviolation;
//   attribute EventHandler onseeked;
//   attribute EventHandler onseeking;
//   attribute EventHandler onselect;
//   attribute EventHandler onslotchange;
//   attribute EventHandler onstalled;
//   attribute EventHandler onsubmit;
//   attribute EventHandler onsuspend;
//   attribute EventHandler ontimeupdate;
//   attribute EventHandler ontoggle;
//   attribute EventHandler onvolumechange;
//   attribute EventHandler onwaiting;
//   attribute EventHandler onwebkitanimationend;
//   attribute EventHandler onwebkitanimationiteration;
//   attribute EventHandler onwebkitanimationstart;
//   attribute EventHandler onwebkittransitionend;
//   attribute EventHandler onwheel;
// };
// 
// interface mixin ElementContentEditable {
//   [CEReactions] attribute DOMString contentEditable;
//   [CEReactions] attribute DOMString enterKeyHint;
//   readonly attribute boolean isContentEditable;
//   [CEReactions] attribute DOMString inputMode;
// };
// 
// interface mixin HTMLOrSVGElement {
//   [SameObject] readonly attribute DOMStringMap dataset;
//   attribute DOMString nonce; // intentionally no [CEReactions]
// 
//   [CEReactions, Reflect] attribute boolean autofocus;
//   [CEReactions, ReflectSetter] attribute long tabIndex;
//   undefined focus(optional FocusOptions options = {});
//   undefined blur();
// };

///|
#external
pub type HTMLElement

///|
pub trait THTMLElement: TJsValue {
  scroll_parent(self : Self) -> Element? = _
  offset_parent(self : Self) -> Element? = _
  offset_top(self : Self) -> Int = _
  offset_left(self : Self) -> Int = _
  offset_width(self : Self) -> Int = _
  offset_height(self : Self) -> Int = _
  title(self : Self) -> String = _
  set_title(self : Self, value : String) -> Unit = _
  lang(self : Self) -> String = _
  set_lang(self : Self, value : String) -> Unit = _
  translate(self : Self) -> Bool = _
  set_translate(self : Self, value : Bool) -> Unit = _
  dir(self : Self) -> String = _
  set_dir(self : Self, value : String) -> Unit = _
  hidden(self : Self) -> JsValue = _
  set_hidden(self : Self, value : JsValue) -> Unit = _
  inert(self : Self) -> Bool = _
  set_inert(self : Self, value : Bool) -> Unit = _
  access_key(self : Self) -> String = _
  set_access_key(self : Self, value : String) -> Unit = _
  access_key_label(self : Self) -> String = _
  draggable(self : Self) -> Bool = _
  set_draggable(self : Self, value : Bool) -> Unit = _
  spellcheck(self : Self) -> Bool = _
  set_spellcheck(self : Self, value : Bool) -> Unit = _
  writing_suggestions(self : Self) -> String = _
  set_writing_suggestions(self : Self, value : String) -> Unit = _
  autocapitalize(self : Self) -> String = _
  set_autocapitalize(self : Self, value : String) -> Unit = _
  autocorrect(self : Self) -> Bool = _
  set_autocorrect(self : Self, value : Bool) -> Unit = _
  inner_text(self : Self) -> String = _
  set_inner_text(self : Self, value : String) -> Unit = _
  outer_text(self : Self) -> String = _
  set_outer_text(self : Self, value : String) -> Unit = _
  popover(self : Self) -> String? = _
  set_popover(self : Self, value : String) -> Unit = _
  heading_offset(self : Self) -> Int = _
  set_heading_offset(self : Self, value : Int) -> Unit = _
  heading_reset(self : Self) -> Bool = _
  set_heading_reset(self : Self, value : Bool) -> Unit = _
  style(self : Self) -> JsValue = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, value : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, value : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, value : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, value : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, value : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, value : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, value : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, value : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, value : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, value : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, value : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, value : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, value : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, value : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, value : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, value : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, value : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, value : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, value : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, value : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, value : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, value : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, value : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, value : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, value : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, value : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, value : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, value : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, value : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, value : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, value : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, value : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, value : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, value : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, value : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, value : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, value : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, value : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, value : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, value : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, value : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, value : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, value : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, value : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, value : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, value : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, value : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, value : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, value : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, value : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, value : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, value : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, value : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, value : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, value : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, value : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, value : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, value : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, value : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(self : Self, value : EventHandler) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, value : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, value : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, value : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, value : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, value : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, value : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, value : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, value : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, value : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, value : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, value : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, value : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, value : EventHandler) -> Unit = _
  content_editable(self : Self) -> String = _
  set_content_editable(self : Self, value : String) -> Unit = _
  enter_key_hint(self : Self) -> String = _
  set_enter_key_hint(self : Self, value : String) -> Unit = _
  is_content_editable(self : Self) -> Bool = _
  input_mode(self : Self) -> String = _
  set_input_mode(self : Self, value : String) -> Unit = _
  dataset(self : Self) -> JsValue = _
  nonce(self : Self) -> String = _
  set_nonce(self : Self, value : String) -> Unit = _
  autofocus(self : Self) -> Bool = _
  set_autofocus(self : Self, value : Bool) -> Unit = _
  tab_index(self : Self) -> Int = _
  set_tab_index(self : Self, value : Int) -> Unit = _
  click(self : Self) -> Unit = _
  attach_internals(self : Self) -> JsValue = _
  show_popover(self : Self, options? : ShowPopoverOptions) -> Unit = _
  hide_popover(self : Self) -> Unit = _
  toggle_popover(self : Self, options? : &TTogglePopoverOptionsArg) -> Bool = _
  focus(self : Self, options? : FocusOptions) -> Unit = _
  blur(self : Self) -> Unit = _
}

///|
pub impl THTMLElement for HTMLElement

///|
pub impl TJsValue for HTMLElement with to_js(self : HTMLElement) -> JsValue = "%identity"

///|
pub fn HTMLElement::null() -> HTMLElement = "JsValue" "null"

///|
pub fn HTMLElement::is_null(self : HTMLElement) -> Bool = "JsValue" "isNull"

///|
pub fn HTMLElement::new() -> HTMLElement = "webapi_HTMLElement" "new"

///|
fn html_element_click_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "click"

///|
impl THTMLElement with click(self : Self) -> Unit {
  html_element_click_ffi(TJsValue::to_js(self))
}

///|
fn html_element_attach_internals_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "attachInternals"

///|
impl THTMLElement with attach_internals(self : Self) -> JsValue {
  html_element_attach_internals_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_element_show_popover_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_HTMLElement" "showPopover"

///|
impl THTMLElement with show_popover(
  self : Self,
  options? : ShowPopoverOptions = ShowPopoverOptions::empty(),
) -> Unit {
  html_element_show_popover_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "hidePopover"

///|
impl THTMLElement with hide_popover(self : Self) -> Unit {
  html_element_hide_popover_ffi(TJsValue::to_js(self))
}

///|
/// Arg : options
pub(open) trait TTogglePopoverOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TTogglePopoverOptionsArg for TogglePopoverOptions with to_js(
  self : TogglePopoverOptions,
) -> JsValue = "%identity"

///|
pub impl TTogglePopoverOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
fn html_element_toggle_popover_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_HTMLElement" "togglePopover"

///|
impl THTMLElement with toggle_popover(
  self : Self,
  options? : &TTogglePopoverOptionsArg = TogglePopoverOptions::empty(),
) -> Bool {
  html_element_toggle_popover_ffi(TJsValue::to_js(self), options.to_js()).unsafe_cast()
}

///|
fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_HTMLElement" "focus"

///|
impl THTMLElement with focus(
  self : Self,
  options? : FocusOptions = FocusOptions::empty(),
) -> Unit {
  html_element_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
fn html_element_blur_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "blur"

///|
impl THTMLElement with blur(self : Self) -> Unit {
  html_element_blur_ffi(TJsValue::to_js(self))
}

///|
fn html_element_scroll_parent_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "scrollParent"

///|
impl THTMLElement with scroll_parent(self : Self) -> Element? {
  html_element_scroll_parent_ffi(self.to_js()).as_option()
}

///|
fn html_element_offset_parent_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "offsetParent"

///|
impl THTMLElement with offset_parent(self : Self) -> Element? {
  html_element_offset_parent_ffi(self.to_js()).as_option()
}

///|
fn html_element_offset_top_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetTop"

///|
impl THTMLElement with offset_top(self : Self) -> Int {
  html_element_offset_top_ffi(self.to_js())
}

///|
fn html_element_offset_left_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetLeft"

///|
impl THTMLElement with offset_left(self : Self) -> Int {
  html_element_offset_left_ffi(self.to_js())
}

///|
fn html_element_offset_width_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetWidth"

///|
impl THTMLElement with offset_width(self : Self) -> Int {
  html_element_offset_width_ffi(self.to_js())
}

///|
fn html_element_offset_height_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetHeight"

///|
impl THTMLElement with offset_height(self : Self) -> Int {
  html_element_offset_height_ffi(self.to_js())
}

///|
fn html_element_title_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "title"

///|
impl THTMLElement with title(self : Self) -> String {
  html_element_title_ffi(self.to_js())
}

///|
fn html_element_set_title_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_title"

///|
impl THTMLElement with set_title(self : Self, value : String) -> Unit {
  html_element_set_title_ffi(self.to_js(), value)
}

///|
fn html_element_lang_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "lang"

///|
impl THTMLElement with lang(self : Self) -> String {
  html_element_lang_ffi(self.to_js())
}

///|
fn html_element_set_lang_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_lang"

///|
impl THTMLElement with set_lang(self : Self, value : String) -> Unit {
  html_element_set_lang_ffi(self.to_js(), value)
}

///|
fn html_element_translate_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "translate"

///|
impl THTMLElement with translate(self : Self) -> Bool {
  html_element_translate_ffi(self.to_js())
}

///|
fn html_element_set_translate_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_translate"

///|
impl THTMLElement with set_translate(self : Self, value : Bool) -> Unit {
  html_element_set_translate_ffi(self.to_js(), value)
}

///|
fn html_element_dir_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "dir"

///|
impl THTMLElement with dir(self : Self) -> String {
  html_element_dir_ffi(self.to_js())
}

///|
fn html_element_set_dir_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_dir"

///|
impl THTMLElement with set_dir(self : Self, value : String) -> Unit {
  html_element_set_dir_ffi(self.to_js(), value)
}

///|
fn html_element_hidden_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "hidden"

///|
impl THTMLElement with hidden(self : Self) -> JsValue {
  html_element_hidden_ffi(self.to_js())
}

///|
fn html_element_set_hidden_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_hidden"

///|
impl THTMLElement with set_hidden(self : Self, value : JsValue) -> Unit {
  html_element_set_hidden_ffi(self.to_js(), value)
}

///|
fn html_element_inert_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "inert"

///|
impl THTMLElement with inert(self : Self) -> Bool {
  html_element_inert_ffi(self.to_js())
}

///|
fn html_element_set_inert_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_inert"

///|
impl THTMLElement with set_inert(self : Self, value : Bool) -> Unit {
  html_element_set_inert_ffi(self.to_js(), value)
}

///|
fn html_element_access_key_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "accessKey"

///|
impl THTMLElement with access_key(self : Self) -> String {
  html_element_access_key_ffi(self.to_js())
}

///|
fn html_element_set_access_key_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_accessKey"

///|
impl THTMLElement with set_access_key(self : Self, value : String) -> Unit {
  html_element_set_access_key_ffi(self.to_js(), value)
}

///|
fn html_element_access_key_label_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "accessKeyLabel"

///|
impl THTMLElement with access_key_label(self : Self) -> String {
  html_element_access_key_label_ffi(self.to_js())
}

///|
fn html_element_draggable_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "draggable"

///|
impl THTMLElement with draggable(self : Self) -> Bool {
  html_element_draggable_ffi(self.to_js())
}

///|
fn html_element_set_draggable_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_draggable"

///|
impl THTMLElement with set_draggable(self : Self, value : Bool) -> Unit {
  html_element_set_draggable_ffi(self.to_js(), value)
}

///|
fn html_element_spellcheck_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "spellcheck"

///|
impl THTMLElement with spellcheck(self : Self) -> Bool {
  html_element_spellcheck_ffi(self.to_js())
}

///|
fn html_element_set_spellcheck_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_spellcheck"

///|
impl THTMLElement with set_spellcheck(self : Self, value : Bool) -> Unit {
  html_element_set_spellcheck_ffi(self.to_js(), value)
}

///|
fn html_element_writing_suggestions_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "writingSuggestions"

///|
impl THTMLElement with writing_suggestions(self : Self) -> String {
  html_element_writing_suggestions_ffi(self.to_js())
}

///|
fn html_element_set_writing_suggestions_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLElement" "set_writingSuggestions"

///|
impl THTMLElement with set_writing_suggestions(self : Self, value : String) -> Unit {
  html_element_set_writing_suggestions_ffi(self.to_js(), value)
}

///|
fn html_element_autocapitalize_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "autocapitalize"

///|
impl THTMLElement with autocapitalize(self : Self) -> String {
  html_element_autocapitalize_ffi(self.to_js())
}

///|
fn html_element_set_autocapitalize_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_autocapitalize"

///|
impl THTMLElement with set_autocapitalize(self : Self, value : String) -> Unit {
  html_element_set_autocapitalize_ffi(self.to_js(), value)
}

///|
fn html_element_autocorrect_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "autocorrect"

///|
impl THTMLElement with autocorrect(self : Self) -> Bool {
  html_element_autocorrect_ffi(self.to_js())
}

///|
fn html_element_set_autocorrect_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_autocorrect"

///|
impl THTMLElement with set_autocorrect(self : Self, value : Bool) -> Unit {
  html_element_set_autocorrect_ffi(self.to_js(), value)
}

///|
fn html_element_inner_text_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "innerText"

///|
impl THTMLElement with inner_text(self : Self) -> String {
  html_element_inner_text_ffi(self.to_js())
}

///|
fn html_element_set_inner_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_innerText"

///|
impl THTMLElement with set_inner_text(self : Self, value : String) -> Unit {
  html_element_set_inner_text_ffi(self.to_js(), value)
}

///|
fn html_element_outer_text_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "outerText"

///|
impl THTMLElement with outer_text(self : Self) -> String {
  html_element_outer_text_ffi(self.to_js())
}

///|
fn html_element_set_outer_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_outerText"

///|
impl THTMLElement with set_outer_text(self : Self, value : String) -> Unit {
  html_element_set_outer_text_ffi(self.to_js(), value)
}

///|
fn html_element_popover_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "popover"

///|
impl THTMLElement with popover(self : Self) -> String? {
  html_element_popover_ffi(self.to_js()).as_option()
}

///|
fn html_element_set_popover_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_popover"

///|
impl THTMLElement with set_popover(self : Self, value : String) -> Unit {
  html_element_set_popover_ffi(self.to_js(), value)
}

///|
fn html_element_heading_offset_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "headingOffset"

///|
impl THTMLElement with heading_offset(self : Self) -> Int {
  html_element_heading_offset_ffi(self.to_js())
}

///|
fn html_element_set_heading_offset_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLElement" "set_headingOffset"

///|
impl THTMLElement with set_heading_offset(self : Self, value : Int) -> Unit {
  html_element_set_heading_offset_ffi(self.to_js(), value)
}

///|
fn html_element_heading_reset_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "headingReset"

///|
impl THTMLElement with heading_reset(self : Self) -> Bool {
  html_element_heading_reset_ffi(self.to_js())
}

///|
fn html_element_set_heading_reset_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_headingReset"

///|
impl THTMLElement with set_heading_reset(self : Self, value : Bool) -> Unit {
  html_element_set_heading_reset_ffi(self.to_js(), value)
}

///|
fn html_element_style_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "style"

///|
impl THTMLElement with style(self : Self) -> JsValue {
  html_element_style_ffi(self.to_js())
}

///|
fn html_element_onabort_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onabort"

///|
impl THTMLElement with onabort(self : Self) -> EventHandler {
  html_element_onabort_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onabort"

///|
impl THTMLElement with set_onabort(self : Self, value : EventHandler) -> Unit {
  html_element_set_onabort_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onauxclick_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onauxclick"

///|
impl THTMLElement with onauxclick(self : Self) -> EventHandler {
  html_element_onauxclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onauxclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onauxclick"

///|
impl THTMLElement with set_onauxclick(self : Self, value : EventHandler) -> Unit {
  html_element_set_onauxclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onbeforeinput_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onbeforeinput"

///|
impl THTMLElement with onbeforeinput(self : Self) -> EventHandler {
  html_element_onbeforeinput_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onbeforeinput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforeinput"

///|
impl THTMLElement with set_onbeforeinput(self : Self, value : EventHandler) -> Unit {
  html_element_set_onbeforeinput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onbeforematch_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onbeforematch"

///|
impl THTMLElement with onbeforematch(self : Self) -> EventHandler {
  html_element_onbeforematch_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onbeforematch_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforematch"

///|
impl THTMLElement with set_onbeforematch(self : Self, value : EventHandler) -> Unit {
  html_element_set_onbeforematch_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onbeforetoggle_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onbeforetoggle"

///|
impl THTMLElement with onbeforetoggle(self : Self) -> EventHandler {
  html_element_onbeforetoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onbeforetoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onbeforetoggle"

///|
impl THTMLElement with set_onbeforetoggle(self : Self, value : EventHandler) -> Unit {
  html_element_set_onbeforetoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onblur_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onblur"

///|
impl THTMLElement with onblur(self : Self) -> EventHandler {
  html_element_onblur_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onblur_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onblur"

///|
impl THTMLElement with set_onblur(self : Self, value : EventHandler) -> Unit {
  html_element_set_onblur_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncancel_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncancel"

///|
impl THTMLElement with oncancel(self : Self) -> EventHandler {
  html_element_oncancel_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncancel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncancel"

///|
impl THTMLElement with set_oncancel(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncancel_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncanplay_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncanplay"

///|
impl THTMLElement with oncanplay(self : Self) -> EventHandler {
  html_element_oncanplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncanplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncanplay"

///|
impl THTMLElement with set_oncanplay(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncanplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncanplaythrough_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncanplaythrough"

///|
impl THTMLElement with oncanplaythrough(self : Self) -> EventHandler {
  html_element_oncanplaythrough_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncanplaythrough_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncanplaythrough"

///|
impl THTMLElement with set_oncanplaythrough(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncanplaythrough_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onchange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onchange"

///|
impl THTMLElement with onchange(self : Self) -> EventHandler {
  html_element_onchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onchange"

///|
impl THTMLElement with set_onchange(self : Self, value : EventHandler) -> Unit {
  html_element_set_onchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onclick_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onclick"

///|
impl THTMLElement with onclick(self : Self) -> EventHandler {
  html_element_onclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onclick"

///|
impl THTMLElement with set_onclick(self : Self, value : EventHandler) -> Unit {
  html_element_set_onclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onclose_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onclose"

///|
impl THTMLElement with onclose(self : Self) -> EventHandler {
  html_element_onclose_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onclose_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onclose"

///|
impl THTMLElement with set_onclose(self : Self, value : EventHandler) -> Unit {
  html_element_set_onclose_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncommand_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncommand"

///|
impl THTMLElement with oncommand(self : Self) -> EventHandler {
  html_element_oncommand_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncommand_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncommand"

///|
impl THTMLElement with set_oncommand(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncommand_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncontextlost_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncontextlost"

///|
impl THTMLElement with oncontextlost(self : Self) -> EventHandler {
  html_element_oncontextlost_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncontextlost_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncontextlost"

///|
impl THTMLElement with set_oncontextlost(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncontextlost_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncontextmenu_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncontextmenu"

///|
impl THTMLElement with oncontextmenu(self : Self) -> EventHandler {
  html_element_oncontextmenu_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncontextmenu_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncontextmenu"

///|
impl THTMLElement with set_oncontextmenu(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncontextmenu_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncontextrestored_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncontextrestored"

///|
impl THTMLElement with oncontextrestored(self : Self) -> EventHandler {
  html_element_oncontextrestored_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncontextrestored_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_oncontextrestored"

///|
impl THTMLElement with set_oncontextrestored(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncontextrestored_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncopy_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncopy"

///|
impl THTMLElement with oncopy(self : Self) -> EventHandler {
  html_element_oncopy_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncopy_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncopy"

///|
impl THTMLElement with set_oncopy(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncopy_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncuechange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncuechange"

///|
impl THTMLElement with oncuechange(self : Self) -> EventHandler {
  html_element_oncuechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncuechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncuechange"

///|
impl THTMLElement with set_oncuechange(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncuechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oncut_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oncut"

///|
impl THTMLElement with oncut(self : Self) -> EventHandler {
  html_element_oncut_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oncut_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oncut"

///|
impl THTMLElement with set_oncut(self : Self, value : EventHandler) -> Unit {
  html_element_set_oncut_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondblclick_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondblclick"

///|
impl THTMLElement with ondblclick(self : Self) -> EventHandler {
  html_element_ondblclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondblclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondblclick"

///|
impl THTMLElement with set_ondblclick(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondblclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondrag_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondrag"

///|
impl THTMLElement with ondrag(self : Self) -> EventHandler {
  html_element_ondrag_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondrag_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondrag"

///|
impl THTMLElement with set_ondrag(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondrag_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondragend_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondragend"

///|
impl THTMLElement with ondragend(self : Self) -> EventHandler {
  html_element_ondragend_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondragend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragend"

///|
impl THTMLElement with set_ondragend(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondragend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondragenter_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondragenter"

///|
impl THTMLElement with ondragenter(self : Self) -> EventHandler {
  html_element_ondragenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondragenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragenter"

///|
impl THTMLElement with set_ondragenter(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondragenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondragleave_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondragleave"

///|
impl THTMLElement with ondragleave(self : Self) -> EventHandler {
  html_element_ondragleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondragleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragleave"

///|
impl THTMLElement with set_ondragleave(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondragleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondragover_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondragover"

///|
impl THTMLElement with ondragover(self : Self) -> EventHandler {
  html_element_ondragover_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondragover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragover"

///|
impl THTMLElement with set_ondragover(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondragover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondragstart_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondragstart"

///|
impl THTMLElement with ondragstart(self : Self) -> EventHandler {
  html_element_ondragstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondragstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondragstart"

///|
impl THTMLElement with set_ondragstart(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondragstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondrop_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondrop"

///|
impl THTMLElement with ondrop(self : Self) -> EventHandler {
  html_element_ondrop_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondrop_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ondrop"

///|
impl THTMLElement with set_ondrop(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondrop_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ondurationchange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ondurationchange"

///|
impl THTMLElement with ondurationchange(self : Self) -> EventHandler {
  html_element_ondurationchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ondurationchange_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_ondurationchange"

///|
impl THTMLElement with set_ondurationchange(self : Self, value : EventHandler) -> Unit {
  html_element_set_ondurationchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onemptied_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onemptied"

///|
impl THTMLElement with onemptied(self : Self) -> EventHandler {
  html_element_onemptied_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onemptied_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onemptied"

///|
impl THTMLElement with set_onemptied(self : Self, value : EventHandler) -> Unit {
  html_element_set_onemptied_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onended_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onended"

///|
impl THTMLElement with onended(self : Self) -> EventHandler {
  html_element_onended_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onended_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onended"

///|
impl THTMLElement with set_onended(self : Self, value : EventHandler) -> Unit {
  html_element_set_onended_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onerror_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onerror"

///|
impl THTMLElement with onerror(self : Self) -> OnErrorEventHandler {
  html_element_onerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onerror_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onerror"

///|
impl THTMLElement with set_onerror(self : Self, value : OnErrorEventHandler) -> Unit {
  html_element_set_onerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onfocus_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onfocus"

///|
impl THTMLElement with onfocus(self : Self) -> EventHandler {
  html_element_onfocus_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onfocus_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onfocus"

///|
impl THTMLElement with set_onfocus(self : Self, value : EventHandler) -> Unit {
  html_element_set_onfocus_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onformdata_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onformdata"

///|
impl THTMLElement with onformdata(self : Self) -> EventHandler {
  html_element_onformdata_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onformdata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onformdata"

///|
impl THTMLElement with set_onformdata(self : Self, value : EventHandler) -> Unit {
  html_element_set_onformdata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oninput_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oninput"

///|
impl THTMLElement with oninput(self : Self) -> EventHandler {
  html_element_oninput_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oninput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oninput"

///|
impl THTMLElement with set_oninput(self : Self, value : EventHandler) -> Unit {
  html_element_set_oninput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_oninvalid_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "oninvalid"

///|
impl THTMLElement with oninvalid(self : Self) -> EventHandler {
  html_element_oninvalid_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_oninvalid_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_oninvalid"

///|
impl THTMLElement with set_oninvalid(self : Self, value : EventHandler) -> Unit {
  html_element_set_oninvalid_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onkeydown_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onkeydown"

///|
impl THTMLElement with onkeydown(self : Self) -> EventHandler {
  html_element_onkeydown_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onkeydown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeydown"

///|
impl THTMLElement with set_onkeydown(self : Self, value : EventHandler) -> Unit {
  html_element_set_onkeydown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onkeypress_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onkeypress"

///|
impl THTMLElement with onkeypress(self : Self) -> EventHandler {
  html_element_onkeypress_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onkeypress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeypress"

///|
impl THTMLElement with set_onkeypress(self : Self, value : EventHandler) -> Unit {
  html_element_set_onkeypress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onkeyup_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onkeyup"

///|
impl THTMLElement with onkeyup(self : Self) -> EventHandler {
  html_element_onkeyup_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onkeyup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onkeyup"

///|
impl THTMLElement with set_onkeyup(self : Self, value : EventHandler) -> Unit {
  html_element_set_onkeyup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onload_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onload"

///|
impl THTMLElement with onload(self : Self) -> EventHandler {
  html_element_onload_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onload"

///|
impl THTMLElement with set_onload(self : Self, value : EventHandler) -> Unit {
  html_element_set_onload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onloadeddata_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onloadeddata"

///|
impl THTMLElement with onloadeddata(self : Self) -> EventHandler {
  html_element_onloadeddata_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onloadeddata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onloadeddata"

///|
impl THTMLElement with set_onloadeddata(self : Self, value : EventHandler) -> Unit {
  html_element_set_onloadeddata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onloadedmetadata_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onloadedmetadata"

///|
impl THTMLElement with onloadedmetadata(self : Self) -> EventHandler {
  html_element_onloadedmetadata_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onloadedmetadata_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onloadedmetadata"

///|
impl THTMLElement with set_onloadedmetadata(self : Self, value : EventHandler) -> Unit {
  html_element_set_onloadedmetadata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onloadstart_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onloadstart"

///|
impl THTMLElement with onloadstart(self : Self) -> EventHandler {
  html_element_onloadstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onloadstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onloadstart"

///|
impl THTMLElement with set_onloadstart(self : Self, value : EventHandler) -> Unit {
  html_element_set_onloadstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmousedown_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmousedown"

///|
impl THTMLElement with onmousedown(self : Self) -> EventHandler {
  html_element_onmousedown_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmousedown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmousedown"

///|
impl THTMLElement with set_onmousedown(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmousedown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmouseenter_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmouseenter"

///|
impl THTMLElement with onmouseenter(self : Self) -> EventHandler {
  html_element_onmouseenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmouseenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseenter"

///|
impl THTMLElement with set_onmouseenter(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmouseenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmouseleave_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmouseleave"

///|
impl THTMLElement with onmouseleave(self : Self) -> EventHandler {
  html_element_onmouseleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmouseleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseleave"

///|
impl THTMLElement with set_onmouseleave(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmouseleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmousemove_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmousemove"

///|
impl THTMLElement with onmousemove(self : Self) -> EventHandler {
  html_element_onmousemove_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmousemove_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmousemove"

///|
impl THTMLElement with set_onmousemove(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmousemove_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmouseout_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmouseout"

///|
impl THTMLElement with onmouseout(self : Self) -> EventHandler {
  html_element_onmouseout_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmouseout_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseout"

///|
impl THTMLElement with set_onmouseout(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmouseout_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmouseover_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmouseover"

///|
impl THTMLElement with onmouseover(self : Self) -> EventHandler {
  html_element_onmouseover_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmouseover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseover"

///|
impl THTMLElement with set_onmouseover(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmouseover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onmouseup_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onmouseup"

///|
impl THTMLElement with onmouseup(self : Self) -> EventHandler {
  html_element_onmouseup_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onmouseup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onmouseup"

///|
impl THTMLElement with set_onmouseup(self : Self, value : EventHandler) -> Unit {
  html_element_set_onmouseup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onpaste_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onpaste"

///|
impl THTMLElement with onpaste(self : Self) -> EventHandler {
  html_element_onpaste_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onpaste_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onpaste"

///|
impl THTMLElement with set_onpaste(self : Self, value : EventHandler) -> Unit {
  html_element_set_onpaste_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onpause_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onpause"

///|
impl THTMLElement with onpause(self : Self) -> EventHandler {
  html_element_onpause_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onpause_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onpause"

///|
impl THTMLElement with set_onpause(self : Self, value : EventHandler) -> Unit {
  html_element_set_onpause_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onplay_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onplay"

///|
impl THTMLElement with onplay(self : Self) -> EventHandler {
  html_element_onplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onplay"

///|
impl THTMLElement with set_onplay(self : Self, value : EventHandler) -> Unit {
  html_element_set_onplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onplaying_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onplaying"

///|
impl THTMLElement with onplaying(self : Self) -> EventHandler {
  html_element_onplaying_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onplaying_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onplaying"

///|
impl THTMLElement with set_onplaying(self : Self, value : EventHandler) -> Unit {
  html_element_set_onplaying_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onprogress_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onprogress"

///|
impl THTMLElement with onprogress(self : Self) -> EventHandler {
  html_element_onprogress_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onprogress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onprogress"

///|
impl THTMLElement with set_onprogress(self : Self, value : EventHandler) -> Unit {
  html_element_set_onprogress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onratechange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onratechange"

///|
impl THTMLElement with onratechange(self : Self) -> EventHandler {
  html_element_onratechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onratechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onratechange"

///|
impl THTMLElement with set_onratechange(self : Self, value : EventHandler) -> Unit {
  html_element_set_onratechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onreset_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onreset"

///|
impl THTMLElement with onreset(self : Self) -> EventHandler {
  html_element_onreset_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onreset_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onreset"

///|
impl THTMLElement with set_onreset(self : Self, value : EventHandler) -> Unit {
  html_element_set_onreset_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onresize_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onresize"

///|
impl THTMLElement with onresize(self : Self) -> EventHandler {
  html_element_onresize_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onresize_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onresize"

///|
impl THTMLElement with set_onresize(self : Self, value : EventHandler) -> Unit {
  html_element_set_onresize_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onscroll_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onscroll"

///|
impl THTMLElement with onscroll(self : Self) -> EventHandler {
  html_element_onscroll_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onscroll_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onscroll"

///|
impl THTMLElement with set_onscroll(self : Self, value : EventHandler) -> Unit {
  html_element_set_onscroll_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onscrollend_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onscrollend"

///|
impl THTMLElement with onscrollend(self : Self) -> EventHandler {
  html_element_onscrollend_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onscrollend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onscrollend"

///|
impl THTMLElement with set_onscrollend(self : Self, value : EventHandler) -> Unit {
  html_element_set_onscrollend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onsecuritypolicyviolation_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onsecuritypolicyviolation"

///|
impl THTMLElement with onsecuritypolicyviolation(self : Self) -> EventHandler {
  html_element_onsecuritypolicyviolation_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onsecuritypolicyviolation"

///|
impl THTMLElement with set_onsecuritypolicyviolation(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_element_set_onsecuritypolicyviolation_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_element_onseeked_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onseeked"

///|
impl THTMLElement with onseeked(self : Self) -> EventHandler {
  html_element_onseeked_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onseeked_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onseeked"

///|
impl THTMLElement with set_onseeked(self : Self, value : EventHandler) -> Unit {
  html_element_set_onseeked_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onseeking_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onseeking"

///|
impl THTMLElement with onseeking(self : Self) -> EventHandler {
  html_element_onseeking_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onseeking_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onseeking"

///|
impl THTMLElement with set_onseeking(self : Self, value : EventHandler) -> Unit {
  html_element_set_onseeking_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onselect_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onselect"

///|
impl THTMLElement with onselect(self : Self) -> EventHandler {
  html_element_onselect_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onselect_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onselect"

///|
impl THTMLElement with set_onselect(self : Self, value : EventHandler) -> Unit {
  html_element_set_onselect_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onslotchange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onslotchange"

///|
impl THTMLElement with onslotchange(self : Self) -> EventHandler {
  html_element_onslotchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onslotchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onslotchange"

///|
impl THTMLElement with set_onslotchange(self : Self, value : EventHandler) -> Unit {
  html_element_set_onslotchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onstalled_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onstalled"

///|
impl THTMLElement with onstalled(self : Self) -> EventHandler {
  html_element_onstalled_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onstalled_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onstalled"

///|
impl THTMLElement with set_onstalled(self : Self, value : EventHandler) -> Unit {
  html_element_set_onstalled_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onsubmit_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onsubmit"

///|
impl THTMLElement with onsubmit(self : Self) -> EventHandler {
  html_element_onsubmit_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onsubmit_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onsubmit"

///|
impl THTMLElement with set_onsubmit(self : Self, value : EventHandler) -> Unit {
  html_element_set_onsubmit_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onsuspend_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onsuspend"

///|
impl THTMLElement with onsuspend(self : Self) -> EventHandler {
  html_element_onsuspend_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onsuspend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onsuspend"

///|
impl THTMLElement with set_onsuspend(self : Self, value : EventHandler) -> Unit {
  html_element_set_onsuspend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ontimeupdate_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ontimeupdate"

///|
impl THTMLElement with ontimeupdate(self : Self) -> EventHandler {
  html_element_ontimeupdate_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ontimeupdate_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ontimeupdate"

///|
impl THTMLElement with set_ontimeupdate(self : Self, value : EventHandler) -> Unit {
  html_element_set_ontimeupdate_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_ontoggle_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "ontoggle"

///|
impl THTMLElement with ontoggle(self : Self) -> EventHandler {
  html_element_ontoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_ontoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_ontoggle"

///|
impl THTMLElement with set_ontoggle(self : Self, value : EventHandler) -> Unit {
  html_element_set_ontoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onvolumechange_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onvolumechange"

///|
impl THTMLElement with onvolumechange(self : Self) -> EventHandler {
  html_element_onvolumechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onvolumechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onvolumechange"

///|
impl THTMLElement with set_onvolumechange(self : Self, value : EventHandler) -> Unit {
  html_element_set_onvolumechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onwaiting_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwaiting"

///|
impl THTMLElement with onwaiting(self : Self) -> EventHandler {
  html_element_onwaiting_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwaiting_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onwaiting"

///|
impl THTMLElement with set_onwaiting(self : Self, value : EventHandler) -> Unit {
  html_element_set_onwaiting_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_onwebkitanimationend_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwebkitanimationend"

///|
impl THTMLElement with onwebkitanimationend(self : Self) -> EventHandler {
  html_element_onwebkitanimationend_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwebkitanimationend_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationend"

///|
impl THTMLElement with set_onwebkitanimationend(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationend_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_element_onwebkitanimationiteration_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwebkitanimationiteration"

///|
impl THTMLElement with onwebkitanimationiteration(self : Self) -> EventHandler {
  html_element_onwebkitanimationiteration_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationiteration"

///|
impl THTMLElement with set_onwebkitanimationiteration(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationiteration_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_element_onwebkitanimationstart_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwebkitanimationstart"

///|
impl THTMLElement with onwebkitanimationstart(self : Self) -> EventHandler {
  html_element_onwebkitanimationstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkitanimationstart"

///|
impl THTMLElement with set_onwebkitanimationstart(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_element_set_onwebkitanimationstart_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_element_onwebkittransitionend_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwebkittransitionend"

///|
impl THTMLElement with onwebkittransitionend(self : Self) -> EventHandler {
  html_element_onwebkittransitionend_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwebkittransitionend_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLElement" "set_onwebkittransitionend"

///|
impl THTMLElement with set_onwebkittransitionend(
  self : Self,
  value : EventHandler,
) -> Unit {
  html_element_set_onwebkittransitionend_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_element_onwheel_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "onwheel"

///|
impl THTMLElement with onwheel(self : Self) -> EventHandler {
  html_element_onwheel_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_element_set_onwheel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_onwheel"

///|
impl THTMLElement with set_onwheel(self : Self, value : EventHandler) -> Unit {
  html_element_set_onwheel_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_element_content_editable_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "contentEditable"

///|
impl THTMLElement with content_editable(self : Self) -> String {
  html_element_content_editable_ffi(self.to_js())
}

///|
fn html_element_set_content_editable_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_contentEditable"

///|
impl THTMLElement with set_content_editable(self : Self, value : String) -> Unit {
  html_element_set_content_editable_ffi(self.to_js(), value)
}

///|
fn html_element_enter_key_hint_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "enterKeyHint"

///|
impl THTMLElement with enter_key_hint(self : Self) -> String {
  html_element_enter_key_hint_ffi(self.to_js())
}

///|
fn html_element_set_enter_key_hint_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_enterKeyHint"

///|
impl THTMLElement with set_enter_key_hint(self : Self, value : String) -> Unit {
  html_element_set_enter_key_hint_ffi(self.to_js(), value)
}

///|
fn html_element_is_content_editable_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "isContentEditable"

///|
impl THTMLElement with is_content_editable(self : Self) -> Bool {
  html_element_is_content_editable_ffi(self.to_js())
}

///|
fn html_element_input_mode_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "inputMode"

///|
impl THTMLElement with input_mode(self : Self) -> String {
  html_element_input_mode_ffi(self.to_js())
}

///|
fn html_element_set_input_mode_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_inputMode"

///|
impl THTMLElement with set_input_mode(self : Self, value : String) -> Unit {
  html_element_set_input_mode_ffi(self.to_js(), value)
}

///|
fn html_element_dataset_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "dataset"

///|
impl THTMLElement with dataset(self : Self) -> JsValue {
  html_element_dataset_ffi(self.to_js())
}

///|
fn html_element_nonce_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "nonce"

///|
impl THTMLElement with nonce(self : Self) -> String {
  html_element_nonce_ffi(self.to_js())
}

///|
fn html_element_set_nonce_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_nonce"

///|
impl THTMLElement with set_nonce(self : Self, value : String) -> Unit {
  html_element_set_nonce_ffi(self.to_js(), value)
}

///|
fn html_element_autofocus_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "autofocus"

///|
impl THTMLElement with autofocus(self : Self) -> Bool {
  html_element_autofocus_ffi(self.to_js())
}

///|
fn html_element_set_autofocus_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_autofocus"

///|
impl THTMLElement with set_autofocus(self : Self, value : Bool) -> Unit {
  html_element_set_autofocus_ffi(self.to_js(), value)
}

///|
fn html_element_tab_index_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "tabIndex"

///|
impl THTMLElement with tab_index(self : Self) -> Int {
  html_element_tab_index_ffi(self.to_js())
}

///|
fn html_element_set_tab_index_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLElement" "set_tabIndex"

///|
impl THTMLElement with set_tab_index(self : Self, value : Int) -> Unit {
  html_element_set_tab_index_ffi(self.to_js(), value)
}
