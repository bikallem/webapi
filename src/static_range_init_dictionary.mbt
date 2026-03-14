// Do not edit. This file is generated.
// MoonBit type: StaticRangeInit
// Specifications: dom.idl

/// [StaticRangeInit](https://developer.mozilla.org/en-US/docs/Web/API/StaticRangeInit)
#external
pub type StaticRangeInit

pub impl TJsValue for StaticRangeInit with to_js(self: StaticRangeInit) -> JsValue = "%identity"

pub impl FromJsAny for StaticRangeInit with from_js_any(value : JsAny) -> StaticRangeInit = "%identity"

pub fn StaticRangeInit::new(start_container : &TNode, 
start_offset : UInt, 
end_container : &TNode, 
end_offset : UInt) -> StaticRangeInit {
  static_range_init_ffi(TJsValue::to_js(start_container), TJsValue::to_js(start_offset), TJsValue::to_js(end_container), TJsValue::to_js(end_offset))
}

pub fn StaticRangeInit::empty() -> StaticRangeInit { static_range_init_empty_ffi() }

pub fn StaticRangeInit::start_container(self : StaticRangeInit) -> Node {
  static_range_init_get_start_container_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::start_offset(self : StaticRangeInit) -> UInt {
  static_range_init_get_start_offset_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::end_container(self : StaticRangeInit) -> Node {
  static_range_init_get_end_container_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::end_offset(self : StaticRangeInit) -> UInt {
  static_range_init_get_end_offset_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn static_range_init_ffi(start_container: JsValue, start_offset: JsValue, end_container: JsValue, end_offset: JsValue) -> StaticRangeInit = 
#|(startContainer, startOffset, endContainer, endOffset) => {
#|  const obj = {};
#|  if (startContainer !== undefined) obj.startContainer = startContainer;
#|  if (startOffset !== undefined) obj.startOffset = startOffset;
#|  if (endContainer !== undefined) obj.endContainer = endContainer;
#|  if (endOffset !== undefined) obj.endOffset = endOffset;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn static_range_init_empty_ffi() -> StaticRangeInit = "() => {}"

#cfg(target="js")
extern "js" fn static_range_init_get_start_container_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startContainer"

///|
#cfg(target="js")
fn static_range_init_get_start_container_ffi(obj: JsValue) -> Node {
  static_range_init_get_start_container_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn static_range_init_get_start_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
#cfg(target="js")
fn static_range_init_get_start_offset_ffi(obj: JsValue) -> UInt {
  static_range_init_get_start_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn static_range_init_get_end_container_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.endContainer"

///|
#cfg(target="js")
fn static_range_init_get_end_container_ffi(obj: JsValue) -> Node {
  static_range_init_get_end_container_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn static_range_init_get_end_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.endOffset"

///|
#cfg(target="js")
fn static_range_init_get_end_offset_ffi(obj: JsValue) -> UInt {
  static_range_init_get_end_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn static_range_init_ffi(start_container: JsValue, start_offset: JsValue, end_container: JsValue, end_offset: JsValue) -> StaticRangeInit = "webapi_StaticRangeInit" "new"

#cfg(target="wasm-gc")
fn static_range_init_empty_ffi() -> StaticRangeInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn static_range_init_get_start_container_ffi(obj: JsValue) -> Node = "webapi_StaticRangeInit" "get_startContainer"

#cfg(target="wasm-gc")
fn static_range_init_get_start_offset_ffi(obj: JsValue) -> UInt = "webapi_StaticRangeInit" "get_startOffset"

#cfg(target="wasm-gc")
fn static_range_init_get_end_container_ffi(obj: JsValue) -> Node = "webapi_StaticRangeInit" "get_endContainer"

#cfg(target="wasm-gc")
fn static_range_init_get_end_offset_ffi(obj: JsValue) -> UInt = "webapi_StaticRangeInit" "get_endOffset"