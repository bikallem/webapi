// Auto-generated MoonBit bindings for HTMLCollection interface
// Do not edit manually

#external
pub type HTMLCollection

pub impl TJsValue for HTMLCollection with to_js(self: HTMLCollection) -> JsValue = "%identity"


pub fn[T: THTMLCollection] HTMLCollection::into(self : HTMLCollection) -> T = "%identity"
pub impl THTMLCollection for HTMLCollection

pub trait THTMLCollection: TJSValue {
  length(self: Self) -> UInt = _
}

///|
fn h_t_m_l_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLCollection" "length"

///|
impl THTMLCollection with length(self : Self) -> UInt {
  h_t_m_l_collection_length_ffi(self.to_js())
}