fn page_transition_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, persisted: JsValue) -> PageTransitionEventInit = "webapi_PageTransitionEventInit" "new"

fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "webapi_Dictionary" "empty"

fn page_transition_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_bubbles"

fn page_transition_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_cancelable"

fn page_transition_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_composed"

fn page_transition_event_init_get_persisted_ffi(obj: JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_persisted"