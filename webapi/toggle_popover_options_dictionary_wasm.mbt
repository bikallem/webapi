fn toggle_popover_options_ffi(source: JsValue, force: JsValue) -> TogglePopoverOptions = "webapi_TogglePopoverOptions" "new"

fn toggle_popover_options_empty_ffi() -> TogglePopoverOptions = "webapi_Dictionary" "empty"

fn toggle_popover_options_get_source_ffi(obj: JsValue) -> JsValue = "webapi_TogglePopoverOptions" "get_source"

fn toggle_popover_options_get_force_ffi(obj: JsValue) -> JsValue = "webapi_TogglePopoverOptions" "get_force"