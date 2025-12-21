///|
#external
pub type Attr

///|
pub impl TJsValue for Attr with to_js(self : Attr) -> JsValue = "%identity"

///|
pub fn[T : TAttr] Attr::into(self : Attr) -> T = "%identity"

///|
pub impl TAttr for Attr

///|
pub impl TNode for Attr

///|
pub impl TEventTarget for Attr

///|
pub trait TAttr: TNode {}
