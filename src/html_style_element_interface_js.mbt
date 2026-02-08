///|
extern "js" fn html_style_element_new_ffi() -> HTMLStyleElement = "() => new HTMLStyleElement()"

///|
extern "js" fn html_style_element_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
extern "js" fn html_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_style_element_media_ffi(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
extern "js" fn html_style_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
extern "js" fn html_style_element_blocking_ffi(obj : JsValue) -> JsValue = "(obj) => obj.blocking"

///|
extern "js" fn html_style_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn html_style_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_style_element_sheet_ffi(obj : JsValue) -> JsValue = "(obj) => obj.sheet"
