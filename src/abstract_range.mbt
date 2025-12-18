// Auto-generated MoonBit bindings for AbstractRange interface
// Do not edit manually

#external
pub type AbstractRange

pub impl TJsValue for AbstractRange with to_js(self: AbstractRange) -> JsValue = "%identity"


pub fn[T: TAbstractRange] AbstractRange::into(self : AbstractRange) -> T = "%identity"
pub impl TAbstractRange for AbstractRange

pub trait TAbstractRange: TJSValue {
  start_container(self: Self) -> &TNode = _
  start_offset(self: Self) -> UInt = _
  end_container(self: Self) -> &TNode = _
  end_offset(self: Self) -> UInt = _
  collapsed(self: Self) -> Bool = _
}

///|
fn abstract_range_start_container_ffi(obj : JsValue) -> JsValue = "webapi_AbstractRange" "startContainer"

///|
impl TAbstractRange with start_container(self : Self) -> &TNode {
  abstract_range_start_container_ffi(self.to_js()).unsafe_cast()
}

///|
fn abstract_range_start_offset_ffi(obj : JsValue) -> UInt = "webapi_AbstractRange" "startOffset"

///|
impl TAbstractRange with start_offset(self : Self) -> UInt {
  abstract_range_start_offset_ffi(self.to_js())
}

///|
fn abstract_range_end_container_ffi(obj : JsValue) -> JsValue = "webapi_AbstractRange" "endContainer"

///|
impl TAbstractRange with end_container(self : Self) -> &TNode {
  abstract_range_end_container_ffi(self.to_js()).unsafe_cast()
}

///|
fn abstract_range_end_offset_ffi(obj : JsValue) -> UInt = "webapi_AbstractRange" "endOffset"

///|
impl TAbstractRange with end_offset(self : Self) -> UInt {
  abstract_range_end_offset_ffi(self.to_js())
}

///|
fn abstract_range_collapsed_ffi(obj : JsValue) -> Bool = "webapi_AbstractRange" "collapsed"

///|
impl TAbstractRange with collapsed(self : Self) -> Bool {
  abstract_range_collapsed_ffi(self.to_js())
}