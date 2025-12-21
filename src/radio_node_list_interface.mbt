///|
#external
pub type RadioNodeList

///|
pub impl TJsValue for RadioNodeList with to_js(self : RadioNodeList) -> JsValue = "%identity"

///|
pub fn[T : TRadioNodeList] RadioNodeList::into(self : RadioNodeList) -> T = "%identity"

///|
pub impl TRadioNodeList for RadioNodeList

///|
pub impl TNodeList for RadioNodeList

///|
pub trait TRadioNodeList: TNodeList {}
