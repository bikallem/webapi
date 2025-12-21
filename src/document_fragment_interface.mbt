///|
#external
pub type DocumentFragment

///|
pub impl TJsValue for DocumentFragment with to_js(self : DocumentFragment) -> JsValue = "%identity"

///|
pub fn[T : TDocumentFragment] DocumentFragment::into(
  self : DocumentFragment,
) -> T = "%identity"

///|
pub impl TDocumentFragment for DocumentFragment

///|
pub impl TNode for DocumentFragment

///|
pub impl TEventTarget for DocumentFragment

///|
extern "js" fn document_fragment_ffi() -> DocumentFragment = "() => new DocumentFragment()"

///|
pub fn DocumentFragment::new() -> DocumentFragment {
  document_fragment_ffi()
}

///|
pub trait TDocumentFragment: TNode {}
