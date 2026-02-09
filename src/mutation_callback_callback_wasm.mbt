///|
pub fn MutationCallback::new(
  f : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationCallback {
  let w : (JsValue, JsValue) -> Unit = fn(a0 : JsValue, a1 : JsValue) {
    f(a0.unsafe_cast(), a1.unsafe_cast())
  }
  mutation_callback_ffi(w).unsafe_cast()
}

///|
fn mutation_callback_ffi(f : (JsValue, JsValue) -> Unit) -> JsValue = "webapi_MutationCallback" "new"
