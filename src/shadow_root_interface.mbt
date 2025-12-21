///|
#external
pub type ShadowRoot

///|
pub impl TJsValue for ShadowRoot with to_js(self : ShadowRoot) -> JsValue = "%identity"

///|
pub fn[T : TShadowRoot] ShadowRoot::into(self : ShadowRoot) -> T = "%identity"

///|
pub impl TShadowRoot for ShadowRoot

///|
pub impl TDocumentFragment for ShadowRoot

///|
pub impl TNode for ShadowRoot

///|
pub impl TEventTarget for ShadowRoot

///|
pub(open) trait TShadowRootSetHtmlUnsafeHtmlArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TShadowRootSetHtmlUnsafeHtmlArg for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TShadowRootSetHtmlUnsafeHtmlArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub trait TShadowRoot: TDocumentFragment {
  set_html_unsafe(self : Self, html : &TShadowRootSetHtmlUnsafeHtmlArg) -> Unit = _
  get_html(self : Self, options? : GetHTMLOptions) -> String = _
}

///|
extern "js" fn shadow_root_set_html_unsafe_ffi(
  obj : JsValue,
  html : JsValue,
) -> Unit = "(obj, html) => obj.setHTMLUnsafe(obj, html)"

///|
impl TShadowRoot with set_html_unsafe(
  self : Self,
  html : &TShadowRootSetHtmlUnsafeHtmlArg,
) -> Unit {
  shadow_root_set_html_unsafe_ffi(TJsValue::to_js(self), html.to_js())
}

///|
extern "js" fn shadow_root_get_html_ffi(
  obj : JsValue,
  options : JsValue,
) -> String = "(obj, options) => obj.getHTML(obj, options)"

///|
impl TShadowRoot with get_html(
  self : Self,
  options? : GetHTMLOptions = GetHTMLOptions::empty(),
) -> String {
  shadow_root_get_html_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}
