// Auto-generated MoonBit bindings for DocumentFragment interface
// Do not edit manually

#external
pub type DocumentFragment

pub impl TJsValue for DocumentFragment with to_js(self: DocumentFragment) -> JsValue = "%identity"


pub fn[T: TDocumentFragment] DocumentFragment::into(self : DocumentFragment) -> T = "%identity"
pub impl TDocumentFragment for DocumentFragment

pub fn DocumentFragment::new() -> DocumentFragment = "webapi_DocumentFragment" "new"

pub trait TDocumentFragment: TJsValue + TTNode {
}