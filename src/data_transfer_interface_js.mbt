///|
extern "js" fn data_transfer_new_ffi() -> DataTransfer = "() => new DataTransfer()"

///|
extern "js" fn data_transfer_drop_effect_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dropEffect"

///|
extern "js" fn data_transfer_set_drop_effect_ffi(
  obj : JsValue,
  drop_effect : JsValue,
) -> Unit = "(obj, dropEffect) => { obj.dropEffect = dropEffect; }"

///|
extern "js" fn data_transfer_effect_allowed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.effectAllowed"

///|
extern "js" fn data_transfer_set_effect_allowed_ffi(
  obj : JsValue,
  effect_allowed : JsValue,
) -> Unit = "(obj, effectAllowed) => { obj.effectAllowed = effectAllowed; }"

///|
extern "js" fn data_transfer_items_ffi(obj : JsValue) -> JsValue = "(obj) => obj.items"

///|
extern "js" fn data_transfer_set_drag_image_ffi(
  obj : JsValue,
  image : JsValue,
  x : JsValue,
  y : JsValue,
) -> Unit = "(obj, image, x, y) => obj.setDragImage(image, x, y)"

///|
extern "js" fn data_transfer_types_ffi(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
extern "js" fn data_transfer_get_data_ffi(
  obj : JsValue,
  format : JsValue,
) -> JsValue = "(obj, format) => obj.getData(format)"

///|
extern "js" fn data_transfer_set_data_ffi(
  obj : JsValue,
  format : JsValue,
  data : JsValue,
) -> Unit = "(obj, format, data) => obj.setData(format, data)"

///|
extern "js" fn data_transfer_clear_data_ffi(
  obj : JsValue,
  format : JsValue,
) -> Unit = "(obj, format) => obj.clearData(format)"

///|
extern "js" fn data_transfer_files_ffi(obj : JsValue) -> JsValue = "(obj) => obj.files"
