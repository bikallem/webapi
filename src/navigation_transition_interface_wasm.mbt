fn navigation_transition_navigation_type_ffi(obj: JsValue) -> NavigationType = "webapi_NavigationTransition" "get_navigationType"

fn navigation_transition_from_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationTransition" "get_from"

fn navigation_transition_to_ffi(obj: JsValue) -> NavigationDestination = "webapi_NavigationTransition" "get_to"

fn navigation_transition_committed_ffi(obj: JsValue) -> @js_async.Promise[Unit] = "webapi_NavigationTransition" "get_committed"

fn navigation_transition_finished_ffi(obj: JsValue) -> @js_async.Promise[Unit] = "webapi_NavigationTransition" "get_finished"