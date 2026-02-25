///|
/// JsObject - Builder for plain JavaScript objects with arbitrary properties.
/// Useful for constructing objects that aren't covered by WebIDL dictionaries
/// (e.g., Web Animations keyframes with CSS properties).
#external
pub type JsObject

///|
pub impl FromJsAny for JsObject with from_js_any(value : JsAny) -> JsObject = "%identity"
