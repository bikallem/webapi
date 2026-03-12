fn show_popover_options_ffi(source: JsValue) -> ShowPopoverOptions = "webapi_ShowPopoverOptions" "new"

fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "webapi_Dictionary" "empty"

fn show_popover_options_get_source_ffi(obj: JsValue) -> JsValue = "webapi_ShowPopoverOptions" "get_source"