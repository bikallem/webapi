// Auto-generated MoonBit bindings for InnerHTML union type

// Do not edit manually

///|
#external
pub type InnerHTML

///|
pub(open) trait TInnerHTML {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TInnerHTML] InnerHTML::into(self : InnerHTML) -> T = "%identity"

///|
pub fn InnerHTML::null() -> InnerHTML = "JsValue" "null"

///|
pub fn InnerHTML::is_null(self : InnerHTML) -> Bool = "JsValue" "isNull"

///|
pub impl TInnerHTML for String with to_js(self : String) -> JsValue = "%identity"
