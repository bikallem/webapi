// Auto-generated MoonBit bindings for OuterHTML union type

// Do not edit manually

///|
#external
pub type OuterHTML

///|
pub(open) trait TOuterHTML {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TOuterHTML] OuterHTML::into(self : OuterHTML) -> T = "%identity"

///|
pub fn OuterHTML::null() -> OuterHTML = "JsValue" "null"

///|
pub fn OuterHTML::is_null(self : OuterHTML) -> Bool = "JsValue" "isNull"

///|
pub impl TOuterHTML for String with to_js(self : String) -> JsValue = "%identity"
