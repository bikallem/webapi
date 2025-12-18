// Auto-generated MoonBit bindings for HTMLCollection

// Do not edit manually

///|
#external
pub type HTMLCollection

///|
pub trait THTMLCollection: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> Element? = _
  named_item(self : Self, name : String) -> Element? = _
}

///|
pub impl THTMLCollection for HTMLCollection

///|
pub impl TJsValue for HTMLCollection with to_js(self : HTMLCollection) -> JsValue = "%identity"

///|
fn html_collection_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLCollection" "item"

///|
impl THTMLCollection with item(self : Self, index : UInt) -> Element? {
  html_collection_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn html_collection_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_HTMLCollection" "namedItem"

///|
impl THTMLCollection with named_item(self : Self, name : String) -> Element? {
  html_collection_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).as_option()
}

///|
fn html_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLCollection" "length"

///|
impl THTMLCollection with length(self : Self) -> UInt {
  html_collection_length_ffi(self.to_js())
}