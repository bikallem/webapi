///|
/// HasConstructor - Trait for types with a known JavaScript constructor name.
/// Used for checked downcasts via try_into().

///|
/// Trait for types that have a JavaScript constructor, enabling runtime
/// type checks via instanceof.
pub(open) trait HasConstructor {
  constructor_name() -> String
}

///|
/// Check if a JsValue is an instance of a named JavaScript constructor.
/// Returns false if the constructor doesn't exist or the check throws.
#cfg(target="js")
extern "js" fn js_instanceof(obj : JsValue, constructor_name : String) -> Bool =
  #|(obj, name) => { try { return obj instanceof globalThis[name]; } catch(_) { return false; } }

///|
#cfg(target="wasm-gc")
fn js_instanceof(obj : JsValue, constructor_name : String) -> Bool = "JsValue" "instanceof"
