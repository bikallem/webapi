// Auto-generated MoonBit bindings for HTMLOptionsCollection interface
// Do not edit manually

#external
pub type HTMLOptionsCollection

pub impl TJsValue for HTMLOptionsCollection with to_js(self: HTMLOptionsCollection) -> JsValue = "%identity"


pub fn[T: THTMLOptionsCollection] HTMLOptionsCollection::into(self : HTMLOptionsCollection) -> T = "%identity"
pub impl THTMLOptionsCollection for HTMLOptionsCollection

/// Union arg trait
pub(open) trait TAddElementArg {
  to_js(self : Self) -> JsValue
}

pub impl TAddElementArg for &THTMLOptionElement with to_js(self : &THTMLOptionElement) -> JsValue = "%identity"

pub impl TAddElementArg for &THTMLOptGroupElement with to_js(self : &THTMLOptGroupElement) -> JsValue = "%identity"

/// Union arg trait
pub(open) trait TAddBeforeArg {
  to_js(self : Self) -> JsValue
}

pub impl TAddBeforeArg for &THTMLElement with to_js(self : &THTMLElement) -> JsValue = "%identity"

pub impl TAddBeforeArg for Int with to_js(self : Int) -> JsValue = "%identity"

pub trait THTMLOptionsCollection: TJsValue + TTHTMLCollection {
  length(self: Self) -> UInt = _
  set_length(self: Self, value : UInt) -> Unit = _
  add(self: Self, element : &TAddElementArg, before? : &TAddBeforeArg) -> Unit = _
  remove(self: Self, index : Int) -> Unit = _
  selected_index(self: Self) -> Int = _
  set_selected_index(self: Self, value : Int) -> Unit = _
}

///|
fn html_options_collection_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLOptionsCollection" "length"

///|
impl THTMLOptionsCollection with length(self : Self) -> UInt {
  html_options_collection_length_ffi(self.to_js())
}

///|
fn html_options_collection_set_length_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLOptionsCollection" "set_length"

///|
impl THTMLOptionsCollection with set_length(self : Self, value : UInt) -> Unit {
  html_options_collection_set_length_ffi(self.to_js(), value)
}

///|
fn html_options_collection_selected_index_ffi(obj : JsValue) -> Int = "webapi_HTMLOptionsCollection" "selectedIndex"

///|
impl THTMLOptionsCollection with selected_index(self : Self) -> Int {
  html_options_collection_selected_index_ffi(self.to_js())
}

///|
fn html_options_collection_set_selected_index_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLOptionsCollection" "set_selectedIndex"

///|
impl THTMLOptionsCollection with set_selected_index(self : Self, value : Int) -> Unit {
  html_options_collection_set_selected_index_ffi(self.to_js(), value)
}

///|
fn html_options_collection_add_ffi(obj : JsValue, element : JsValue, before : JsValue) -> Unit = "webapi_HTMLOptionsCollection" "add"

///|
impl THTMLOptionsCollection with add(self : Self, element : &TAddElementArg, before? : &TAddBeforeArg) -> Unit {
  html_options_collection_add_ffi(self.to_js(), element.to_js(), before.to_js())
}

///|
fn html_options_collection_remove_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLOptionsCollection" "remove"

///|
impl THTMLOptionsCollection with remove(self : Self, index : Int) -> Unit {
  html_options_collection_remove_ffi(self.to_js(), TJsValue::to_js(index))
}