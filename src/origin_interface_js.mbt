extern "js" fn origin_new_ffi() -> Origin = "() => new Origin()"

extern "js" fn origin_from_ffi_js(value: JsValue) -> JsValue = "(value) => Origin.from(value)"

///|
fn origin_from_ffi(value: JsValue) -> Origin {
  origin_from_ffi_js(value).unsafe_cast()
}

extern "js" fn origin_opaque_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.opaque"

///|
fn origin_opaque_ffi(obj: JsValue) -> Bool {
  origin_opaque_ffi_js(obj).unsafe_cast()
}

extern "js" fn origin_is_same_origin_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameOrigin(other)"

///|
fn origin_is_same_origin_ffi(obj: JsValue, other: JsValue) -> Bool {
  origin_is_same_origin_ffi_js(obj, other).unsafe_cast()
}

extern "js" fn origin_is_same_site_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameSite(other)"

///|
fn origin_is_same_site_ffi(obj: JsValue, other: JsValue) -> Bool {
  origin_is_same_site_ffi_js(obj, other).unsafe_cast()
}