///|
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
pub(open) trait THTMLElementTogglePopoverOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLElementTogglePopoverOptionsArg for TogglePopoverOptions with to_js(
  self : TogglePopoverOptions,
) -> JsValue = "%identity"

///|
pub impl THTMLElementTogglePopoverOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub trait THTMLElement: TElement {
  click(self : Self) -> Unit = _
  attach_internals(self : Self) -> ElementInternals = _
  show_popover(self : Self, options? : ShowPopoverOptions) -> Unit = _
  hide_popover(self : Self) -> Unit = _
  toggle_popover(self : Self, options? : &THTMLElementTogglePopoverOptionsArg) -> Bool = _
  focus(self : Self, options? : FocusOptions) -> Unit = _
  blur(self : Self) -> Unit = _
}

///|
extern "js" fn html_element_click_ffi(obj : JsValue) -> Unit = "(obj) => obj.click(obj)"

///|
impl THTMLElement with click(self : Self) -> Unit {
  html_element_click_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_attach_internals_ffi(
  obj : JsValue,
) -> ElementInternals = "(obj) => obj.attachInternals(obj)"

///|
impl THTMLElement with attach_internals(self : Self) -> ElementInternals {
  html_element_attach_internals_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_show_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.showPopover(obj, options)"

///|
impl THTMLElement with show_popover(
  self : Self,
  options? : ShowPopoverOptions = ShowPopoverOptions::empty(),
) -> Unit {
  html_element_show_popover_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn html_element_hide_popover_ffi(obj : JsValue) -> Unit = "(obj) => obj.hidePopover(obj)"

///|
impl THTMLElement with hide_popover(self : Self) -> Unit {
  html_element_hide_popover_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_element_toggle_popover_ffi(
  obj : JsValue,
  options : JsValue,
) -> Bool = "(obj, options) => obj.togglePopover(obj, options)"

///|
impl THTMLElement with toggle_popover(
  self : Self,
  options? : &THTMLElementTogglePopoverOptionsArg = TogglePopoverOptions::empty(),
) -> Bool {
  html_element_toggle_popover_ffi(TJsValue::to_js(self), options.to_js())
}

///|
extern "js" fn html_element_focus_ffi(obj : JsValue, options : JsValue) -> Unit = "(obj, options) => obj.focus(obj, options)"

///|
impl THTMLElement with focus(
  self : Self,
  options? : FocusOptions = FocusOptions::empty(),
) -> Unit {
  html_element_focus_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn html_element_blur_ffi(obj : JsValue) -> Unit = "(obj) => obj.blur(obj)"

///|
impl THTMLElement with blur(self : Self) -> Unit {
  html_element_blur_ffi(TJsValue::to_js(self))
}
