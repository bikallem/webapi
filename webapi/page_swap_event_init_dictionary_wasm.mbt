fn page_swap_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, activation: JsValue, view_transition: JsValue) -> PageSwapEventInit = "webapi_PageSwapEventInit" "new"

fn page_swap_event_init_empty_ffi() -> PageSwapEventInit = "webapi_Dictionary" "empty"

fn page_swap_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_bubbles"

fn page_swap_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_cancelable"

fn page_swap_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_composed"

fn page_swap_event_init_get_activation_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_activation"

fn page_swap_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_viewTransition"