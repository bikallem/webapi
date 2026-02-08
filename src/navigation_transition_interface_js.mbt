///|
extern "js" fn navigation_transition_navigation_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
extern "js" fn navigation_transition_from_ffi(obj : JsValue) -> JsValue = "(obj) => obj.from"

///|
extern "js" fn navigation_transition_to_ffi(obj : JsValue) -> JsValue = "(obj) => obj.to"

///|
extern "js" fn navigation_transition_committed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.committed"

///|
extern "js" fn navigation_transition_finished_ffi(obj : JsValue) -> JsValue = "(obj) => obj.finished"
