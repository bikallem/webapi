// Auto-generated MoonBit bindings for DocumentFragment

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface DocumentFragment : Node {
//   constructor();
// };

///|
#external
pub type DocumentFragment

///|
pub trait TDocumentFragment: TJsValue + TNode {}

///|
pub impl TEventTarget for DocumentFragment

///|
pub impl TNode for DocumentFragment

///|
pub impl TDocumentFragment for DocumentFragment

///|
pub impl TJsValue for DocumentFragment with to_js(self : DocumentFragment) -> JsValue = "%identity"

///|
pub fn DocumentFragment::new() -> DocumentFragment = "webapi_DocumentFragment" "new"
