fn origin_new_ffi() -> Origin = "webapi_Origin" "new"

fn origin_from_ffi(value: JsValue) -> Origin = "webapi_Origin" "from"

fn origin_opaque_ffi(obj: JsValue) -> Bool = "webapi_Origin" "get_opaque"

fn origin_is_same_origin_ffi(obj: JsValue, other: JsValue) -> Bool = "webapi_Origin" "isSameOrigin"

fn origin_is_same_site_ffi(obj: JsValue, other: JsValue) -> Bool = "webapi_Origin" "isSameSite"