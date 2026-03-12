extern "js" fn html_image_element_new_ffi() -> HTMLImageElement = "() => new HTMLImageElement()"

extern "js" fn html_image_element_alt_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alt"

///|
fn html_image_element_alt_ffi(obj: JsValue) -> String {
  html_image_element_alt_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_alt_ffi(obj: JsValue, alt: JsValue) -> Unit = "(obj, alt) => { obj.alt = alt; }"

extern "js" fn html_image_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
fn html_image_element_src_ffi(obj: JsValue) -> String {
  html_image_element_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_image_element_srcset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.srcset"

///|
fn html_image_element_srcset_ffi(obj: JsValue) -> String {
  html_image_element_srcset_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_srcset_ffi(obj: JsValue, srcset: JsValue) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

extern "js" fn html_image_element_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sizes"

///|
fn html_image_element_sizes_ffi(obj: JsValue) -> String {
  html_image_element_sizes_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_sizes_ffi(obj: JsValue, sizes: JsValue) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

extern "js" fn html_image_element_cross_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn html_image_element_cross_origin_ffi(obj: JsValue) -> String {
  html_image_element_cross_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

extern "js" fn html_image_element_use_map_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.useMap"

///|
fn html_image_element_use_map_ffi(obj: JsValue) -> String {
  html_image_element_use_map_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_use_map_ffi(obj: JsValue, use_map: JsValue) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

extern "js" fn html_image_element_is_map_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isMap"

///|
fn html_image_element_is_map_ffi(obj: JsValue) -> Bool {
  html_image_element_is_map_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_is_map_ffi(obj: JsValue, is_map: JsValue) -> Unit = "(obj, isMap) => { obj.isMap = isMap; }"

extern "js" fn html_image_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_image_element_width_ffi(obj: JsValue) -> UInt {
  html_image_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_image_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_image_element_height_ffi(obj: JsValue) -> UInt {
  html_image_element_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

extern "js" fn html_image_element_natural_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.naturalWidth"

///|
fn html_image_element_natural_width_ffi(obj: JsValue) -> UInt {
  html_image_element_natural_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_natural_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.naturalHeight"

///|
fn html_image_element_natural_height_ffi(obj: JsValue) -> UInt {
  html_image_element_natural_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_complete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.complete"

///|
fn html_image_element_complete_ffi(obj: JsValue) -> Bool {
  html_image_element_complete_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_current_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentSrc"

///|
fn html_image_element_current_src_ffi(obj: JsValue) -> String {
  html_image_element_current_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn html_image_element_referrer_policy_ffi(obj: JsValue) -> String {
  html_image_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

extern "js" fn html_image_element_decoding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.decoding"

///|
fn html_image_element_decoding_ffi(obj: JsValue) -> String {
  html_image_element_decoding_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_decoding_ffi(obj: JsValue, decoding: JsValue) -> Unit = "(obj, decoding) => { obj.decoding = decoding; }"

extern "js" fn html_image_element_loading_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loading"

///|
fn html_image_element_loading_ffi(obj: JsValue) -> String {
  html_image_element_loading_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_loading_ffi(obj: JsValue, loading: JsValue) -> Unit = "(obj, loading) => { obj.loading = loading; }"

extern "js" fn html_image_element_fetch_priority_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fetchPriority"

///|
fn html_image_element_fetch_priority_ffi(obj: JsValue) -> String {
  html_image_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

extern "js" fn html_image_element_decode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.decode()"

///|
fn html_image_element_decode_ffi(obj: JsValue) -> JsPromise[JsValue] {
  html_image_element_decode_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_image_element_name_ffi(obj: JsValue) -> String {
  html_image_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_image_element_lowsrc_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lowsrc"

///|
fn html_image_element_lowsrc_ffi(obj: JsValue) -> String {
  html_image_element_lowsrc_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_lowsrc_ffi(obj: JsValue, lowsrc: JsValue) -> Unit = "(obj, lowsrc) => { obj.lowsrc = lowsrc; }"

extern "js" fn html_image_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_image_element_align_ffi(obj: JsValue) -> String {
  html_image_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_image_element_hspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hspace"

///|
fn html_image_element_hspace_ffi(obj: JsValue) -> UInt {
  html_image_element_hspace_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_hspace_ffi(obj: JsValue, hspace: JsValue) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

extern "js" fn html_image_element_vspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vspace"

///|
fn html_image_element_vspace_ffi(obj: JsValue) -> UInt {
  html_image_element_vspace_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_vspace_ffi(obj: JsValue, vspace: JsValue) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

extern "js" fn html_image_element_long_desc_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
fn html_image_element_long_desc_ffi(obj: JsValue) -> String {
  html_image_element_long_desc_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_long_desc_ffi(obj: JsValue, long_desc: JsValue) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

extern "js" fn html_image_element_border_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.border"

///|
fn html_image_element_border_ffi(obj: JsValue) -> String {
  html_image_element_border_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_set_border_ffi(obj: JsValue, border: JsValue) -> Unit = "(obj, border) => { obj.border = border; }"

extern "js" fn html_image_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
fn html_image_element_x_ffi(obj: JsValue) -> Int {
  html_image_element_x_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_image_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
fn html_image_element_y_ffi(obj: JsValue) -> Int {
  html_image_element_y_ffi_js(obj).unsafe_cast()
}