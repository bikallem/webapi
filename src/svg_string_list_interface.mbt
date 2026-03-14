// Do not edit. This file is generated.
// MoonBit type: SVGStringList
// Specifications: SVG.idl

/// [SVGStringList](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList)
#external
pub type SVGStringList

pub impl TJsValue for SVGStringList with to_js(self: SVGStringList) -> JsValue = "%identity"

pub impl FromJsAny for SVGStringList with from_js_any(value : JsAny) -> SVGStringList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGStringList] SVGStringList::into(self : SVGStringList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGStringList] SVGStringList::unsafe_into(self : SVGStringList) -> T = "%identity"

pub impl HasConstructor for SVGStringList with constructor_name() { "SVGStringList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGStringList + HasConstructor] SVGStringList::try_into(self : SVGStringList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGStringList for SVGStringList

/// [SVGStringList](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList) interface.
pub trait TSVGStringList: TJsValue {
  length(self : Self) -> UInt = _
  number_of_items(self : Self) -> UInt = _
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : String) -> String = _
  get_item(self : Self, index : UInt) -> String = _
  insert_item_before(self : Self, new_item : String, index : UInt) -> String = _
  replace_item(self : Self, new_item : String, index : UInt) -> String = _
  remove_item(self : Self, index : UInt) -> String = _
  append_item(self : Self, new_item : String) -> String = _
  set(self : Self, index : UInt, new_item : String) -> Unit = _
}

/// [SVGStringList.length](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/length)
impl TSVGStringList with length(self : Self) -> UInt {
  svg_string_list_length_ffi(TJsValue::to_js(self))
}

/// [SVGStringList.numberOfItems](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/numberOfItems)
impl TSVGStringList with number_of_items(self : Self) -> UInt {
  svg_string_list_number_of_items_ffi(TJsValue::to_js(self))
}

/// [SVGStringList.clear](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/clear)
impl TSVGStringList with clear(self : Self) -> Unit {
  svg_string_list_clear_ffi(TJsValue::to_js(self))
}

/// [SVGStringList.initialize](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/initialize)
impl TSVGStringList with initialize(self : Self, 
new_item : String) -> String {
  svg_string_list_initialize_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item))
}

/// [SVGStringList.getItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/getItem)
impl TSVGStringList with get_item(self : Self, 
index : UInt) -> String {
  svg_string_list_get_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [SVGStringList.insertItemBefore](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/insertItemBefore)
impl TSVGStringList with insert_item_before(self : Self, 
new_item : String, 
index : UInt) -> String {
  svg_string_list_insert_item_before_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item), TJsValue::to_js(index))
}

/// [SVGStringList.replaceItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/replaceItem)
impl TSVGStringList with replace_item(self : Self, 
new_item : String, 
index : UInt) -> String {
  svg_string_list_replace_item_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item), TJsValue::to_js(index))
}

/// [SVGStringList.removeItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/removeItem)
impl TSVGStringList with remove_item(self : Self, 
index : UInt) -> String {
  svg_string_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [SVGStringList.appendItem](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/appendItem)
impl TSVGStringList with append_item(self : Self, 
new_item : String) -> String {
  svg_string_list_append_item_ffi(TJsValue::to_js(self), TJsValue::to_js(new_item))
}

/// [SVGStringList.set](https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList/set)
impl TSVGStringList with set(self : Self, 
index : UInt, 
new_item : String) -> Unit {
  svg_string_list_set_ffi(TJsValue::to_js(self), TJsValue::to_js(index), TJsValue::to_js(new_item))
}

#cfg(target="js")
extern "js" fn svg_string_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn svg_string_list_length_ffi(obj: JsValue) -> UInt {
  svg_string_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_number_of_items_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.numberOfItems"

///|
#cfg(target="js")
fn svg_string_list_number_of_items_ffi(obj: JsValue) -> UInt {
  svg_string_list_number_of_items_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_clear_ffi(obj: JsValue) -> Unit = "(obj) => obj.clear()"

#cfg(target="js")
extern "js" fn svg_string_list_initialize_ffi_js(obj: JsValue, new_item: JsValue) -> JsValue = "(obj, new_item) => obj.initialize(new_item)"

///|
#cfg(target="js")
fn svg_string_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> String {
  svg_string_list_initialize_ffi_js(obj, new_item).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_get_item_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.getItem(index)"

///|
#cfg(target="js")
fn svg_string_list_get_item_ffi(obj: JsValue, index: JsValue) -> String {
  svg_string_list_get_item_ffi_js(obj, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_insert_item_before_ffi_js(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

///|
#cfg(target="js")
fn svg_string_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> String {
  svg_string_list_insert_item_before_ffi_js(obj, new_item, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_replace_item_ffi_js(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

///|
#cfg(target="js")
fn svg_string_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> String {
  svg_string_list_replace_item_ffi_js(obj, new_item, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_remove_item_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.removeItem(index)"

///|
#cfg(target="js")
fn svg_string_list_remove_item_ffi(obj: JsValue, index: JsValue) -> String {
  svg_string_list_remove_item_ffi_js(obj, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_append_item_ffi_js(obj: JsValue, new_item: JsValue) -> JsValue = "(obj, new_item) => obj.appendItem(new_item)"

///|
#cfg(target="js")
fn svg_string_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> String {
  svg_string_list_append_item_ffi_js(obj, new_item).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_string_list_set_ffi(obj: JsValue, index: JsValue, new_item: JsValue) -> Unit = "(obj, index, new_item) => { obj[index] = new_item; }"

#cfg(target="wasm-gc")
fn svg_string_list_length_ffi(obj: JsValue) -> UInt = "webapi_SVGStringList" "get_length"

#cfg(target="wasm-gc")
fn svg_string_list_number_of_items_ffi(obj: JsValue) -> UInt = "webapi_SVGStringList" "get_numberOfItems"

#cfg(target="wasm-gc")
fn svg_string_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGStringList" "clear"

#cfg(target="wasm-gc")
fn svg_string_list_initialize_ffi_wasm(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGStringList" "initialize"

///|
#cfg(target="wasm-gc")
fn svg_string_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> String {
  jsvalue_to_string(svg_string_list_initialize_ffi_wasm(obj, new_item))
}

#cfg(target="wasm-gc")
fn svg_string_list_get_item_ffi_wasm(obj: JsValue, index: JsValue) -> JsValue = "webapi_SVGStringList" "getItem"

///|
#cfg(target="wasm-gc")
fn svg_string_list_get_item_ffi(obj: JsValue, index: JsValue) -> String {
  jsvalue_to_string(svg_string_list_get_item_ffi_wasm(obj, index))
}

#cfg(target="wasm-gc")
fn svg_string_list_insert_item_before_ffi_wasm(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGStringList" "insertItemBefore"

///|
#cfg(target="wasm-gc")
fn svg_string_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> String {
  jsvalue_to_string(svg_string_list_insert_item_before_ffi_wasm(obj, new_item, index))
}

#cfg(target="wasm-gc")
fn svg_string_list_replace_item_ffi_wasm(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGStringList" "replaceItem"

///|
#cfg(target="wasm-gc")
fn svg_string_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> String {
  jsvalue_to_string(svg_string_list_replace_item_ffi_wasm(obj, new_item, index))
}

#cfg(target="wasm-gc")
fn svg_string_list_remove_item_ffi_wasm(obj: JsValue, index: JsValue) -> JsValue = "webapi_SVGStringList" "removeItem"

///|
#cfg(target="wasm-gc")
fn svg_string_list_remove_item_ffi(obj: JsValue, index: JsValue) -> String {
  jsvalue_to_string(svg_string_list_remove_item_ffi_wasm(obj, index))
}

#cfg(target="wasm-gc")
fn svg_string_list_append_item_ffi_wasm(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGStringList" "appendItem"

///|
#cfg(target="wasm-gc")
fn svg_string_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> String {
  jsvalue_to_string(svg_string_list_append_item_ffi_wasm(obj, new_item))
}

#cfg(target="wasm-gc")
fn svg_string_list_set_ffi(obj: JsValue, index: JsValue, new_item: JsValue) -> Unit = "webapi_SVGStringList" "set"