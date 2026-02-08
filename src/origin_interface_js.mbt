extern "js" fn origin_new_ffi() -> Origin = "() => new Origin()"

extern "js" fn origin_from_ffi(value: JsValue) -> JsValue = "(value) => Origin.from(value)"

extern "js" fn origin_opaque_ffi(obj: JsValue) -> JsValue = "(obj) => obj.opaque"

extern "js" fn origin_is_same_origin_ffi(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameOrigin(other)"

extern "js" fn origin_is_same_site_ffi(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameSite(other)"