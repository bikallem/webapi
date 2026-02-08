///|
extern "js" fn not_restored_reasons_src_ffi(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
extern "js" fn not_restored_reasons_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn not_restored_reasons_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn not_restored_reasons_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
extern "js" fn not_restored_reasons_reasons_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reasons"

///|
extern "js" fn not_restored_reasons_children_ffi(obj : JsValue) -> JsValue = "(obj) => obj.children"

///|
extern "js" fn not_restored_reasons_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"
