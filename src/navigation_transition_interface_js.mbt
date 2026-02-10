///|
extern "js" fn navigation_transition_navigation_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
fn navigation_transition_navigation_type_ffi(obj : JsValue) -> NavigationType {
  navigation_transition_navigation_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_transition_from_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.from"

///|
fn navigation_transition_from_ffi(obj : JsValue) -> NavigationHistoryEntry {
  navigation_transition_from_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_transition_to_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.to"

///|
fn navigation_transition_to_ffi(obj : JsValue) -> NavigationDestination {
  navigation_transition_to_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_transition_committed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.committed"

///|
fn navigation_transition_committed_ffi(
  obj : JsValue,
) -> @js_async.Promise[Unit] {
  navigation_transition_committed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_transition_finished_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.finished"

///|
fn navigation_transition_finished_ffi(obj : JsValue) -> @js_async.Promise[Unit] {
  navigation_transition_finished_ffi_js(obj).unsafe_cast()
}
