///|
fn dom_point_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPoint = "webapi_DOMPoint" "new"

///|
fn dom_point_from_point_ffi(other : JsValue) -> JsValue = "webapi_DOMPoint" "fromPoint"

///|
fn dom_point_x_ffi(obj : JsValue) -> JsValue = "webapi_DOMPoint" "get_x"

///|
fn dom_point_set_x_ffi(obj : JsValue, x : JsValue) -> Unit = "webapi_DOMPoint" "set_x"

///|
fn dom_point_y_ffi(obj : JsValue) -> JsValue = "webapi_DOMPoint" "get_y"

///|
fn dom_point_set_y_ffi(obj : JsValue, y : JsValue) -> Unit = "webapi_DOMPoint" "set_y"

///|
fn dom_point_z_ffi(obj : JsValue) -> JsValue = "webapi_DOMPoint" "get_z"

///|
fn dom_point_set_z_ffi(obj : JsValue, z : JsValue) -> Unit = "webapi_DOMPoint" "set_z"

///|
fn dom_point_w_ffi(obj : JsValue) -> JsValue = "webapi_DOMPoint" "get_w"

///|
fn dom_point_set_w_ffi(obj : JsValue, w : JsValue) -> Unit = "webapi_DOMPoint" "set_w"
