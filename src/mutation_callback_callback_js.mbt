pub fn MutationCallback::new(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback { mutation_callback_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn mutation_callback_ffi(f : JsValue) -> JsValue = "(f) => f"