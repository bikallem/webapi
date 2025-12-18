// Auto-generated MoonBit bindings for HTMLOListElement interface
// Do not edit manually

#external
pub type HTMLOListElement

pub impl TJsValue for HTMLOListElement with to_js(self: HTMLOListElement) -> JsValue = "%identity"


pub fn[T: THTMLOListElement] HTMLOListElement::into(self : HTMLOListElement) -> T = "%identity"
pub impl THTMLOListElement for HTMLOListElement

pub fn HTMLOListElement::new() -> HTMLOListElement = "webapi_HTMLOListElement" "new"

pub trait THTMLOListElement: TJsValue + TTHTMLElement {
  reversed(self: Self) -> Bool = _
  set_reversed(self: Self, value : Bool) -> Unit = _
  start(self: Self) -> Int = _
  set_start(self: Self, value : Int) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  compact(self: Self) -> Bool = _
  set_compact(self: Self, value : Bool) -> Unit = _
}

///|
fn htmlo_list_element_reversed_ffi(obj : JsValue) -> Bool = "webapi_HTMLOListElement" "reversed"

///|
impl THTMLOListElement with reversed(self : Self) -> Bool {
  htmlo_list_element_reversed_ffi(self.to_js())
}

///|
fn htmlo_list_element_set_reversed_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOListElement" "set_reversed"

///|
impl THTMLOListElement with set_reversed(self : Self, value : Bool) -> Unit {
  htmlo_list_element_set_reversed_ffi(self.to_js(), value)
}

///|
fn htmlo_list_element_start_ffi(obj : JsValue) -> Int = "webapi_HTMLOListElement" "start"

///|
impl THTMLOListElement with start(self : Self) -> Int {
  htmlo_list_element_start_ffi(self.to_js())
}

///|
fn htmlo_list_element_set_start_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLOListElement" "set_start"

///|
impl THTMLOListElement with set_start(self : Self, value : Int) -> Unit {
  htmlo_list_element_set_start_ffi(self.to_js(), value)
}

///|
fn htmlo_list_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLOListElement" "type"

///|
impl THTMLOListElement with type_(self : Self) -> String {
  htmlo_list_element_type_ffi(self.to_js())
}

///|
fn htmlo_list_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOListElement" "set_type"

///|
impl THTMLOListElement with set_type_(self : Self, value : String) -> Unit {
  htmlo_list_element_set_type_ffi(self.to_js(), value)
}

///|
fn htmlo_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLOListElement" "compact"

///|
impl THTMLOListElement with compact(self : Self) -> Bool {
  htmlo_list_element_compact_ffi(self.to_js())
}

///|
fn htmlo_list_element_set_compact_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLOListElement" "set_compact"

///|
impl THTMLOListElement with set_compact(self : Self, value : Bool) -> Unit {
  htmlo_list_element_set_compact_ffi(self.to_js(), value)
}