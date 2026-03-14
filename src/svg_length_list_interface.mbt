// Do not edit. This file is generated.
// MoonBit type: SVGLengthList
// Specifications: SVG.idl

///|
/// [SVGLengthList](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList)
#external
pub type SVGLengthList

///|
pub impl TJsValue for SVGLengthList with to_js(self : SVGLengthList) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGLengthList with from_js_any(value : JsAny) -> SVGLengthList = "%identity"

///|
pub fn[T : TSVGLengthList] SVGLengthList::into(self : SVGLengthList) -> T = "%identity"

///|
pub impl TSVGLengthList for SVGLengthList

///|
/// [SVGLengthList](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList) interface.
pub trait TSVGLengthList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGLength) -> SVGLength = _
  get_item(self : Self, index : UInt) -> SVGLength = _
  insert_item_before(self : Self, new_item : &TSVGLength, index : UInt) -> SVGLength = _
  replace_item(self : Self, new_item : &TSVGLength, index : UInt) -> SVGLength = _
  remove_item(self : Self, index : UInt) -> SVGLength = _
  append_item(self : Self, new_item : &TSVGLength) -> SVGLength = _
  set(self : Self, index : UInt, new_item : &TSVGLength) -> Unit = _
}

///|
/// [SVGLengthList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/length)
impl TSVGLengthList with length(self : Self) -> UInt {
  svg_length_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLengthList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/numberOfItems)
impl TSVGLengthList with number_of_items(self : Self) -> UInt {
  svg_length_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLengthList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/clear)
impl TSVGLengthList with clear(self : Self) -> Unit {
  svg_length_list_clear_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLengthList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/initialize)
impl TSVGLengthList with initialize(self : Self, new_item : &TSVGLength) -> SVGLength {
  svg_length_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGLengthList.getItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/getItem)
impl TSVGLengthList with get_item(self : Self, index : UInt) -> SVGLength {
  svg_length_list_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGLengthList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/insertItemBefore)
impl TSVGLengthList with insert_item_before(
  self : Self,
  new_item : &TSVGLength,
  index : UInt,
) -> SVGLength {
  svg_length_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGLengthList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/replaceItem)
impl TSVGLengthList with replace_item(
  self : Self,
  new_item : &TSVGLength,
  index : UInt,
) -> SVGLength {
  svg_length_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGLengthList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/removeItem)
impl TSVGLengthList with remove_item(self : Self, index : UInt) -> SVGLength {
  svg_length_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGLengthList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/appendItem)
impl TSVGLengthList with append_item(self : Self, new_item : &TSVGLength) -> SVGLength {
  svg_length_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGLengthList.set](https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList/set)
impl TSVGLengthList with set(self : Self, index : UInt, new_item : &TSVGLength) -> Unit {
  svg_length_list_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
    TJsValue::to_js(new_item),
  )
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn svg_length_list_length_ffi(obj : JsValue) -> UInt {
  svg_length_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_number_of_items_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.numberOfItems"

///|
#cfg(target="js")
fn svg_length_list_number_of_items_ffi(obj : JsValue) -> UInt {
  svg_length_list_number_of_items_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
#cfg(target="js")
extern "js" fn svg_length_list_initialize_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.initialize(new_item)"

///|
#cfg(target="js")
fn svg_length_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength {
  svg_length_list_initialize_ffi_js(obj, new_item).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_get_item_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.getItem(index)"

///|
#cfg(target="js")
fn svg_length_list_get_item_ffi(obj : JsValue, index : JsValue) -> SVGLength {
  svg_length_list_get_item_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_insert_item_before_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
#cfg(target="js")
fn svg_length_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength {
  svg_length_list_insert_item_before_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_replace_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
#cfg(target="js")
fn svg_length_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength {
  svg_length_list_replace_item_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_remove_item_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.removeItem(index)"

///|
#cfg(target="js")
fn svg_length_list_remove_item_ffi(obj : JsValue, index : JsValue) -> SVGLength {
  svg_length_list_remove_item_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_append_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.appendItem(new_item)"

///|
#cfg(target="js")
fn svg_length_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength {
  svg_length_list_append_item_ffi_js(obj, new_item).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_length_list_set_ffi(
  obj : JsValue,
  index : JsValue,
  new_item : JsValue,
) -> Unit = "(obj, index, new_item) => { obj[index] = new_item; }"

///|
#cfg(target="wasm-gc")
fn svg_length_list_length_ffi(obj : JsValue) -> UInt = "webapi_SVGLengthList" "get_length"

///|
#cfg(target="wasm-gc")
fn svg_length_list_number_of_items_ffi(obj : JsValue) -> UInt = "webapi_SVGLengthList" "get_numberOfItems"

///|
#cfg(target="wasm-gc")
fn svg_length_list_clear_ffi(obj : JsValue) -> Unit = "webapi_SVGLengthList" "clear"

///|
#cfg(target="wasm-gc")
fn svg_length_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength = "webapi_SVGLengthList" "initialize"

///|
#cfg(target="wasm-gc")
fn svg_length_list_get_item_ffi(obj : JsValue, index : JsValue) -> SVGLength = "webapi_SVGLengthList" "getItem"

///|
#cfg(target="wasm-gc")
fn svg_length_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength = "webapi_SVGLengthList" "insertItemBefore"

///|
#cfg(target="wasm-gc")
fn svg_length_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGLength = "webapi_SVGLengthList" "replaceItem"

///|
#cfg(target="wasm-gc")
fn svg_length_list_remove_item_ffi(obj : JsValue, index : JsValue) -> SVGLength = "webapi_SVGLengthList" "removeItem"

///|
#cfg(target="wasm-gc")
fn svg_length_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGLength = "webapi_SVGLengthList" "appendItem"

///|
#cfg(target="wasm-gc")
fn svg_length_list_set_ffi(
  obj : JsValue,
  index : JsValue,
  new_item : JsValue,
) -> Unit = "webapi_SVGLengthList" "set"
