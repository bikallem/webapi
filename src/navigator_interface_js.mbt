extern "js" fn navigator_user_activation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.userActivation"

extern "js" fn navigator_app_code_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appCodeName"

extern "js" fn navigator_app_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appName"

extern "js" fn navigator_app_version_ffi(obj: JsValue) -> JsValue = "(obj) => obj.appVersion"

extern "js" fn navigator_platform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.platform"

extern "js" fn navigator_product_ffi(obj: JsValue) -> JsValue = "(obj) => obj.product"

extern "js" fn navigator_product_sub_ffi(obj: JsValue) -> JsValue = "(obj) => obj.productSub"

extern "js" fn navigator_user_agent_ffi(obj: JsValue) -> JsValue = "(obj) => obj.userAgent"

extern "js" fn navigator_vendor_ffi(obj: JsValue) -> JsValue = "(obj) => obj.vendor"

extern "js" fn navigator_vendor_sub_ffi(obj: JsValue) -> JsValue = "(obj) => obj.vendorSub"

extern "js" fn navigator_taint_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

extern "js" fn navigator_oscpu_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oscpu"

extern "js" fn navigator_language_ffi(obj: JsValue) -> JsValue = "(obj) => obj.language"

extern "js" fn navigator_languages_ffi(obj: JsValue) -> JsValue = "(obj) => obj.languages"

extern "js" fn navigator_on_line_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onLine"

extern "js" fn navigator_register_protocol_handler_ffi(obj: JsValue, scheme: JsValue, url: JsValue) -> Unit = "(obj, scheme, url) => obj.registerProtocolHandler(scheme, url)"

extern "js" fn navigator_unregister_protocol_handler_ffi(obj: JsValue, scheme: JsValue, url: JsValue) -> Unit = "(obj, scheme, url) => obj.unregisterProtocolHandler(scheme, url)"

extern "js" fn navigator_cookie_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cookieEnabled"

extern "js" fn navigator_plugins_ffi(obj: JsValue) -> JsValue = "(obj) => obj.plugins"

extern "js" fn navigator_mime_types_ffi(obj: JsValue) -> JsValue = "(obj) => obj.mimeTypes"

extern "js" fn navigator_java_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.javaEnabled()"

extern "js" fn navigator_pdf_viewer_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pdfViewerEnabled"

extern "js" fn navigator_hardware_concurrency_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hardwareConcurrency"