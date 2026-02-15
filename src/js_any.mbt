///|
/// Alias for String used as a wasm-gc FFI callback parameter type.
/// In wasm-gc with js-string-builtins, String maps to (ref extern) which
/// is a non-null external reference — a subtype of externref. This makes
/// it compatible with all #external types via %identity cast, working
/// around a MoonBit compiler limitation where JsValue (externref) in
/// closure funcref params doesn't match (ref extern) expected by call_ref.
type JsAny = String

///|
/// Trait for converting JsAny (externref) values back to concrete types.
/// Used by JsPromise::then to safely convert resolved values from JsAny to T.
/// On JS target, all types use %identity. On wasm-gc, value types (Bool, Int,
/// Double, etc.) need FFI helpers since they are i32/f64, not externref.
pub(open) trait FromJsAny {
  from_js_any(JsAny) -> Self
}

///|
pub impl FromJsAny for JsValue with from_js_any(value : JsAny) -> JsValue = "%identity"

///|
pub impl FromJsAny for String with from_js_any(value : JsAny) -> String = "%identity"

///|
pub impl[T] FromJsAny for JsPromise[T] with from_js_any(value : JsAny) -> JsPromise[
  T,
] = "%identity"
