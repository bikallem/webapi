extern "js" fn navigation_precommit_controller_redirect_ffi(obj: JsValue, url: JsValue, options: JsValue) -> Unit = "(obj, url, options) => obj.redirect(url, options)"

extern "js" fn navigation_precommit_controller_add_handler_ffi(obj: JsValue, handler: JsValue) -> Unit = "(obj, handler) => obj.addHandler(handler)"