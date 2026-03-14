// Do not edit. This file is generated.
// MoonBit type: DataTransfer
// Specifications: html.idl

/// [DataTransfer](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer)
#external
pub type DataTransfer

pub impl TJsValue for DataTransfer with to_js(self: DataTransfer) -> JsValue = "%identity"

pub impl FromJsAny for DataTransfer with from_js_any(value : JsAny) -> DataTransfer = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDataTransfer] DataTransfer::into(self : DataTransfer) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDataTransfer] DataTransfer::unsafe_into(self : DataTransfer) -> T = "%identity"

pub impl HasConstructor for DataTransfer with constructor_name() { "DataTransfer" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDataTransfer + HasConstructor] DataTransfer::try_into(self : DataTransfer) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDataTransfer for DataTransfer

pub fn DataTransfer::new() -> DataTransfer {
  data_transfer_new_ffi()
}

/// [DataTransfer](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer) interface.
pub trait TDataTransfer: TJsValue {
  drop_effect(self : Self) -> String = _
  set_drop_effect(self : Self, drop_effect : String) -> Unit = _
  effect_allowed(self : Self) -> String = _
  set_effect_allowed(self : Self, effect_allowed : String) -> Unit = _
  items(self : Self) -> DataTransferItemList = _
  set_drag_image(self : Self, image : &TElement, x : Int, y : Int) -> Unit = _
  types(self : Self) -> Array[String] = _
  get_data(self : Self, format : String) -> String = _
  set_data(self : Self, format : String, data : String) -> Unit = _
  clear_data(self : Self, format? : String) -> Unit = _
  files(self : Self) -> FileList = _
}

/// [DataTransfer.dropEffect](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect)
impl TDataTransfer with drop_effect(self : Self) -> String {
  data_transfer_drop_effect_ffi(TJsValue::to_js(self))
}

/// [DataTransfer.dropEffect](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect)
impl TDataTransfer with set_drop_effect(self : Self, 
drop_effect : String) -> Unit {
  data_transfer_set_drop_effect_ffi(TJsValue::to_js(self), TJsValue::to_js(drop_effect))
}

/// [DataTransfer.effectAllowed](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed)
impl TDataTransfer with effect_allowed(self : Self) -> String {
  data_transfer_effect_allowed_ffi(TJsValue::to_js(self))
}

/// [DataTransfer.effectAllowed](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed)
impl TDataTransfer with set_effect_allowed(self : Self, 
effect_allowed : String) -> Unit {
  data_transfer_set_effect_allowed_ffi(TJsValue::to_js(self), TJsValue::to_js(effect_allowed))
}

/// [DataTransfer.items](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/items)
impl TDataTransfer with items(self : Self) -> DataTransferItemList {
  data_transfer_items_ffi(TJsValue::to_js(self))
}

/// [DataTransfer.setDragImage](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/setDragImage)
impl TDataTransfer with set_drag_image(self : Self, 
image : &TElement, 
x : Int, 
y : Int) -> Unit {
  data_transfer_set_drag_image_ffi(TJsValue::to_js(self), TJsValue::to_js(image), TJsValue::to_js(x), TJsValue::to_js(y))
}

/// [DataTransfer.types](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/types)
impl TDataTransfer with types(self : Self) -> Array[String] {
  data_transfer_types_ffi(TJsValue::to_js(self))
}

/// [DataTransfer.getData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/getData)
impl TDataTransfer with get_data(self : Self, 
format : String) -> String {
  data_transfer_get_data_ffi(TJsValue::to_js(self), TJsValue::to_js(format))
}

/// [DataTransfer.setData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/setData)
impl TDataTransfer with set_data(self : Self, 
format : String, 
data : String) -> Unit {
  data_transfer_set_data_ffi(TJsValue::to_js(self), TJsValue::to_js(format), TJsValue::to_js(data))
}

/// [DataTransfer.clearData](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/clearData)
impl TDataTransfer with clear_data(self : Self, 
format? : String) -> Unit {
  data_transfer_clear_data_ffi(TJsValue::to_js(self), opt_to_js(format))
}

/// [DataTransfer.files](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/files)
impl TDataTransfer with files(self : Self) -> FileList {
  data_transfer_files_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn data_transfer_new_ffi() -> DataTransfer = "() => new DataTransfer()"

#cfg(target="js")
extern "js" fn data_transfer_drop_effect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dropEffect"

///|
#cfg(target="js")
fn data_transfer_drop_effect_ffi(obj: JsValue) -> String {
  data_transfer_drop_effect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn data_transfer_set_drop_effect_ffi(obj: JsValue, drop_effect: JsValue) -> Unit = "(obj, dropEffect) => { obj.dropEffect = dropEffect; }"

#cfg(target="js")
extern "js" fn data_transfer_effect_allowed_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.effectAllowed"

///|
#cfg(target="js")
fn data_transfer_effect_allowed_ffi(obj: JsValue) -> String {
  data_transfer_effect_allowed_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn data_transfer_set_effect_allowed_ffi(obj: JsValue, effect_allowed: JsValue) -> Unit = "(obj, effectAllowed) => { obj.effectAllowed = effectAllowed; }"

#cfg(target="js")
extern "js" fn data_transfer_items_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.items"

///|
#cfg(target="js")
fn data_transfer_items_ffi(obj: JsValue) -> DataTransferItemList {
  data_transfer_items_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn data_transfer_set_drag_image_ffi(obj: JsValue, image: JsValue, x: JsValue, y: JsValue) -> Unit = "(obj, image, x, y) => obj.setDragImage(image, x, y)"

#cfg(target="js")
extern "js" fn data_transfer_types_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.types"

///|
#cfg(target="js")
fn data_transfer_types_ffi(obj: JsValue) -> Array[String] {
  data_transfer_types_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn data_transfer_get_data_ffi_js(obj: JsValue, format: JsValue) -> JsValue = "(obj, format) => obj.getData(format)"

///|
#cfg(target="js")
fn data_transfer_get_data_ffi(obj: JsValue, format: JsValue) -> String {
  data_transfer_get_data_ffi_js(obj, format).unsafe_cast()
}

#cfg(target="js")
extern "js" fn data_transfer_set_data_ffi(obj: JsValue, format: JsValue, data: JsValue) -> Unit = "(obj, format, data) => obj.setData(format, data)"

#cfg(target="js")
extern "js" fn data_transfer_clear_data_ffi(obj: JsValue, format: JsValue) -> Unit = "(obj, format) => obj.clearData(format)"

#cfg(target="js")
extern "js" fn data_transfer_files_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.files"

///|
#cfg(target="js")
fn data_transfer_files_ffi(obj: JsValue) -> FileList {
  data_transfer_files_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn data_transfer_new_ffi() -> DataTransfer = "webapi_DataTransfer" "new"

#cfg(target="wasm-gc")
fn data_transfer_drop_effect_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DataTransfer" "get_dropEffect"

///|
#cfg(target="wasm-gc")
fn data_transfer_drop_effect_ffi(obj: JsValue) -> String {
  jsvalue_to_string(data_transfer_drop_effect_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn data_transfer_set_drop_effect_ffi(obj: JsValue, drop_effect: JsValue) -> Unit = "webapi_DataTransfer" "set_dropEffect"

#cfg(target="wasm-gc")
fn data_transfer_effect_allowed_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DataTransfer" "get_effectAllowed"

///|
#cfg(target="wasm-gc")
fn data_transfer_effect_allowed_ffi(obj: JsValue) -> String {
  jsvalue_to_string(data_transfer_effect_allowed_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn data_transfer_set_effect_allowed_ffi(obj: JsValue, effect_allowed: JsValue) -> Unit = "webapi_DataTransfer" "set_effectAllowed"

#cfg(target="wasm-gc")
fn data_transfer_items_ffi(obj: JsValue) -> DataTransferItemList = "webapi_DataTransfer" "get_items"

#cfg(target="wasm-gc")
fn data_transfer_set_drag_image_ffi(obj: JsValue, image: JsValue, x: JsValue, y: JsValue) -> Unit = "webapi_DataTransfer" "setDragImage"

#cfg(target="wasm-gc")
fn data_transfer_types_ffi_wasm(obj: JsValue) -> JsArray = "webapi_DataTransfer" "get_types"

///|
#cfg(target="wasm-gc")
fn data_transfer_types_ffi(obj: JsValue) -> Array[String] {
  data_transfer_types_ffi_wasm(obj).to_string_array()
}

#cfg(target="wasm-gc")
fn data_transfer_get_data_ffi_wasm(obj: JsValue, format: JsValue) -> JsValue = "webapi_DataTransfer" "getData"

///|
#cfg(target="wasm-gc")
fn data_transfer_get_data_ffi(obj: JsValue, format: JsValue) -> String {
  jsvalue_to_string(data_transfer_get_data_ffi_wasm(obj, format))
}

#cfg(target="wasm-gc")
fn data_transfer_set_data_ffi(obj: JsValue, format: JsValue, data: JsValue) -> Unit = "webapi_DataTransfer" "setData"

#cfg(target="wasm-gc")
fn data_transfer_clear_data_ffi(obj: JsValue, format: JsValue) -> Unit = "webapi_DataTransfer" "clearData"

#cfg(target="wasm-gc")
fn data_transfer_files_ffi(obj: JsValue) -> FileList = "webapi_DataTransfer" "get_files"