// Do not edit. This file is generated.
// MoonBit type: HashChangeEventInit
// Specifications: dom.idl, html.idl

///|
/// [HashChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEventInit)
#external
pub type HashChangeEventInit

///|
pub impl TJsValue for HashChangeEventInit with to_js(self : HashChangeEventInit) -> JsValue = "%identity"

///|
extern "js" fn hash_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_url : JsValue,
  new_url : JsValue,
) -> HashChangeEventInit =
  #|(bubbles, cancelable, composed, oldURL, newURL) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldURL !== undefined) obj.oldURL = oldURL;
  #|  if (newURL !== undefined) obj.newURL = newURL;
  #|  return obj;
  #|}

///|
pub fn HashChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  old_url? : String = "",
  new_url? : String = "",
) -> HashChangeEventInit {
  hash_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(old_url),
    TJsValue::to_js(new_url),
  )
}

///|
extern "js" fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "() => {}"

///|
pub fn HashChangeEventInit::empty() -> HashChangeEventInit {
  hash_change_event_init_empty_ffi()
}
