///|
extern "js" fn html_source_element_new_ffi() -> HTMLSourceElement = "() => new HTMLSourceElement()"

///|
extern "js" fn html_source_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
fn html_source_element_src_ffi(obj : JsValue) -> String {
  html_source_element_src_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
extern "js" fn html_source_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_source_element_type_ffi(obj : JsValue) -> String {
  html_source_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_source_element_srcset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srcset"

///|
fn html_source_element_srcset_ffi(obj : JsValue) -> String {
  html_source_element_srcset_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_srcset_ffi(
  obj : JsValue,
  srcset : JsValue,
) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

///|
extern "js" fn html_source_element_sizes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sizes"

///|
fn html_source_element_sizes_ffi(obj : JsValue) -> String {
  html_source_element_sizes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_sizes_ffi(
  obj : JsValue,
  sizes : JsValue,
) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

///|
extern "js" fn html_source_element_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
fn html_source_element_media_ffi(obj : JsValue) -> String {
  html_source_element_media_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
extern "js" fn html_source_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_source_element_width_ffi(obj : JsValue) -> UInt {
  html_source_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn html_source_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_source_element_height_ffi(obj : JsValue) -> UInt {
  html_source_element_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_source_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"
