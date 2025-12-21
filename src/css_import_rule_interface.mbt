///|
#external
pub type CSSImportRule

///|
pub impl TJsValue for CSSImportRule with to_js(self : CSSImportRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSImportRule] CSSImportRule::into(self : CSSImportRule) -> T = "%identity"

///|
pub impl TCSSImportRule for CSSImportRule

///|
pub impl TCSSRule for CSSImportRule

///|
pub trait TCSSImportRule: TCSSRule {}
