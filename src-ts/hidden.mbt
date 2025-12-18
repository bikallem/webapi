// Auto-generated MoonBit bindings for Hidden union type

// Do not edit manually

///|
#external
pub type Hidden

///|
pub(open) trait THidden {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : THidden] Hidden::into(self : Hidden) -> T = "%identity"

///|
pub impl THidden for Bool with to_js(
  self : Bool,
) -> JsValue = "%identity"

///|
pub impl THidden for Double with to_js(
  self : Double,
) -> JsValue = "%identity"

///|
pub impl THidden for String with to_js(
  self : String,
) -> JsValue = "%identity"
