///|
#external
pub type SVGStringList

///|
pub impl TJsValue for SVGStringList with to_js(self : SVGStringList) -> JsValue = "%identity"

///|
pub fn[T : TSVGStringList] SVGStringList::into(self : SVGStringList) -> T = "%identity"

///|
pub impl TSVGStringList for SVGStringList

///|
pub trait TSVGStringList: TJsValue {
  clear(self : Self) -> Unit = _
  initialize(self : Self, new_item : String) -> String = _
  insert_item_before(self : Self, new_item : String, index : UInt) -> String = _
  replace_item(self : Self, new_item : String, index : UInt) -> String = _
  remove_item(self : Self, index : UInt) -> String = _
  append_item(self : Self, new_item : String) -> String = _
}

///|
extern "js" fn svg_string_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear(obj)"

///|
impl TSVGStringList with clear(self : Self) -> Unit {
  svg_string_list_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_string_list_initialize_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> String = "(obj, new_item) => obj.initialize(obj, new_item)"

///|
impl TSVGStringList with initialize(self : Self, new_item : String) -> String {
  svg_string_list_initialize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}

///|
extern "js" fn svg_string_list_insert_item_before_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String = "(obj, new_item, index) => obj.insertItemBefore(obj, new_item, index)"

///|
impl TSVGStringList with insert_item_before(
  self : Self,
  new_item : String,
  index : UInt,
) -> String {
  svg_string_list_insert_item_before_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_string_list_replace_item_ffi(
  obj : JsValue,
  new_item : JsValue,
  index : JsValue,
) -> String = "(obj, new_item, index) => obj.replaceItem(obj, new_item, index)"

///|
impl TSVGStringList with replace_item(
  self : Self,
  new_item : String,
  index : UInt,
) -> String {
  svg_string_list_replace_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn svg_string_list_remove_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> String = "(obj, index) => obj.removeItem(obj, index)"

///|
impl TSVGStringList with remove_item(self : Self, index : UInt) -> String {
  svg_string_list_remove_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
extern "js" fn svg_string_list_append_item_ffi(
  obj : JsValue,
  new_item : JsValue,
) -> String = "(obj, new_item) => obj.appendItem(obj, new_item)"

///|
impl TSVGStringList with append_item(self : Self, new_item : String) -> String {
  svg_string_list_append_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(new_item),
  )
}
