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
pub impl TInnerHTML for String with to_js(self : String) -> JsValue = "%identity"
