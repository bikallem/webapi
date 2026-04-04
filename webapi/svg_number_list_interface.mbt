// Do not edit. This file is generated.
// MoonBit type: SVGNumberList
// Specifications: SVG.idl

///|
/// [SVGNumberList](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList)
#external
pub type SVGNumberList

///|
pub impl TJsValue for SVGNumberList with to_js(self : SVGNumberList) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGNumberList with from_js_any(value : JsAny) -> SVGNumberList = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGNumberList] SVGNumberList::into(self : SVGNumberList) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGNumberList] SVGNumberList::unsafe_into(
  self : SVGNumberList,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGNumberList with constructor_name() {
  "SVGNumberList"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGNumberList + HasConstructor] SVGNumberList::try_into(
  self : SVGNumberList,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGNumberList for SVGNumberList

///|
/// [SVGNumberList](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList) interface.
pub trait TSVGNumberList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : &TSVGNumber) -> SVGNumber = _
  get_item(self : Self, index : UInt) -> SVGNumber = _
  insert_item_before(self : Self, new_item : &TSVGNumber, index : UInt) -> SVGNumber = _
  replace_item(self : Self, new_item : &TSVGNumber, index : UInt) -> SVGNumber = _
  remove_item(self : Self, index : UInt) -> SVGNumber = _
  append_item(self : Self, new_item : &TSVGNumber) -> SVGNumber = _
  set(self : Self, index : UInt, new_item : &TSVGNumber) -> Unit = _
}

///|
/// [SVGNumberList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/length)
impl TSVGNumberList with length(self : Self) -> UInt {
  svg_number_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGNumberList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/numberOfItems)
impl TSVGNumberList with number_of_items(self : Self) -> UInt {
  svg_number_list_number_of_items_ffi(TJsValue::to_js(self))
}

///|
/// [SVGNumberList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/clear)
impl TSVGNumberList with clear(self : Self) -> Unit {
  svg_number_list_clear_ffi(TJsValue::to_js(self))
}

///|
/// [SVGNumberList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/initialize)
impl TSVGNumberList with initialize(self : Self, new_item : &TSVGNumber) -> SVGNumber {
  svg_number_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGNumberList.getItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/getItem)
impl TSVGNumberList with get_item(self : Self, index : UInt) -> SVGNumber {
  svg_number_list_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGNumberList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/insertItemBefore)
impl TSVGNumberList with insert_item_before(
  self : Self,
  new_item : &TSVGNumber,
  index : UInt,
) -> SVGNumber {
  svg_number_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGNumberList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/replaceItem)
impl TSVGNumberList with replace_item(
  self : Self,
  new_item : &TSVGNumber,
  index : UInt,
) -> SVGNumber {
  svg_number_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
/// [SVGNumberList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/removeItem)
impl TSVGNumberList with remove_item(self : Self, index : UInt) -> SVGNumber {
  svg_number_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [SVGNumberList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/appendItem)
impl TSVGNumberList with append_item(self : Self, new_item : &TSVGNumber) -> SVGNumber {
  svg_number_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
/// [SVGNumberList.set](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList/set)
impl TSVGNumberList with set(self : Self, index : UInt, new_item : &TSVGNumber) -> Unit {
  svg_number_list_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
    TJsValue::to_js(new_item),
  )
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn svg_number_list_length_ffi(obj : JsValue) -> UInt {
  svg_number_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_number_of_items_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.numberOfItems"

///|
#cfg(target="js")
fn svg_number_list_number_of_items_ffi(obj : JsValue) -> UInt {
  svg_number_list_number_of_items_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"

///|
#cfg(target="js")
extern "js" fn svg_number_list_initialize_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.initialize(new_item)"

///|
#cfg(target="js")
fn svg_number_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber {
  svg_number_list_initialize_ffi_js(obj, new_item).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_get_item_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.getItem(index)"

///|
#cfg(target="js")
fn svg_number_list_get_item_ffi(obj : JsValue, index : JsValue) -> SVGNumber {
  svg_number_list_get_item_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_insert_item_before_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
#cfg(target="js")
fn svg_number_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber {
  svg_number_list_insert_item_before_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_replace_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> JsValue = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
#cfg(target="js")
fn svg_number_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber {
  svg_number_list_replace_item_ffi_js(obj, new_item, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_remove_item_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.removeItem(index)"

///|
#cfg(target="js")
fn svg_number_list_remove_item_ffi(obj : JsValue, index : JsValue) -> SVGNumber {
  svg_number_list_remove_item_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_append_item_ffi_js(
  obj : JsValue,
  new_item : JsValue,
) -> JsValue = "(obj, new_item) => obj.appendItem(new_item)"

///|
#cfg(target="js")
fn svg_number_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber {
  svg_number_list_append_item_ffi_js(obj, new_item).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_list_set_ffi(
  obj : JsValue,
  index : JsValue,
  new_item : JsValue,
) -> Unit = "(obj, index, new_item) => { obj[index] = new_item; }"

///|
#cfg(target="wasm-gc")
fn svg_number_list_length_ffi(obj : JsValue) -> UInt = "webapi_SVGNumberList" "get_length"

///|
#cfg(target="wasm-gc")
fn svg_number_list_number_of_items_ffi(obj : JsValue) -> UInt = "webapi_SVGNumberList" "get_numberOfItems"

///|
#cfg(target="wasm-gc")
fn svg_number_list_clear_ffi(obj : JsValue) -> Unit = "webapi_SVGNumberList" "clear"

///|
#cfg(target="wasm-gc")
fn svg_number_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber = "webapi_SVGNumberList" "initialize"

///|
#cfg(target="wasm-gc")
fn svg_number_list_get_item_ffi(obj : JsValue, index : JsValue) -> SVGNumber = "webapi_SVGNumberList" "getItem"

///|
#cfg(target="wasm-gc")
fn svg_number_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber = "webapi_SVGNumberList" "insertItemBefore"

///|
#cfg(target="wasm-gc")
fn svg_number_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> SVGNumber = "webapi_SVGNumberList" "replaceItem"

///|
#cfg(target="wasm-gc")
fn svg_number_list_remove_item_ffi(obj : JsValue, index : JsValue) -> SVGNumber = "webapi_SVGNumberList" "removeItem"

///|
#cfg(target="wasm-gc")
fn svg_number_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> SVGNumber = "webapi_SVGNumberList" "appendItem"

///|
#cfg(target="wasm-gc")
fn svg_number_list_set_ffi(
  obj : JsValue,
  index : JsValue,
  new_item : JsValue,
) -> Unit = "webapi_SVGNumberList" "set"
