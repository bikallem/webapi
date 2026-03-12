fn page_reveal_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view_transition: JsValue) -> PageRevealEventInit = "webapi_PageRevealEventInit" "new"

fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "webapi_Dictionary" "empty"

fn page_reveal_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_bubbles"

fn page_reveal_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_cancelable"

fn page_reveal_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_composed"

fn page_reveal_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_viewTransition"