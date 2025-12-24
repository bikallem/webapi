///|
#external
pub type CSSRule

///|
pub impl TJsValue for CSSRule with to_js(self : CSSRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSRule] CSSRule::into(self : CSSRule) -> T = "%identity"

///|
pub impl TCSSRule for CSSRule

///|
pub const CSS_RULE_STYLE_RULE : UInt = 1

///|
pub const CSS_RULE_CHARSET_RULE : UInt = 2

///|
pub const CSS_RULE_IMPORT_RULE : UInt = 3

///|
pub const CSS_RULE_MEDIA_RULE : UInt = 4

///|
pub const CSS_RULE_FONT_FACE_RULE : UInt = 5

///|
pub const CSS_RULE_PAGE_RULE : UInt = 6

///|
pub const CSS_RULE_MARGIN_RULE : UInt = 9

///|
pub const CSS_RULE_NAMESPACE_RULE : UInt = 10

///|
pub trait TCSSRule: TJsValue {}
