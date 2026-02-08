extern "js" fn worker_navigator_app_code_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appCodeName"

extern "js" fn worker_navigator_app_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appName"

extern "js" fn worker_navigator_app_version_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appVersion"

extern "js" fn worker_navigator_platform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.platform"

extern "js" fn worker_navigator_product_ffi(obj: JsValue) -> JsValue = "(obj) => obj.product"

extern "js" fn worker_navigator_product_sub_ffi(obj: JsValue) -> JsValue = "(obj) => obj.productSub"

extern "js" fn worker_navigator_user_agent_ffi(obj: JsValue) -> JsValue = "(obj) => obj.userAgent"

extern "js" fn worker_navigator_vendor_ffi(obj: JsValue) -> JsValue = "(obj) => obj.vendor"

extern "js" fn worker_navigator_vendor_sub_ffi(obj: JsValue) -> JsValue = "(obj) => obj.vendorSub"

extern "js" fn worker_navigator_taint_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

extern "js" fn worker_navigator_oscpu_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oscpu"

extern "js" fn worker_navigator_language_ffi(obj: JsValue) -> JsValue = "(obj) => obj.language"

extern "js" fn worker_navigator_languages_ffi(obj: JsValue) -> JsValue = "(obj) => obj.languages"

extern "js" fn worker_navigator_on_line_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onLine"

extern "js" fn worker_navigator_hardware_concurrency_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hardwareConcurrency"