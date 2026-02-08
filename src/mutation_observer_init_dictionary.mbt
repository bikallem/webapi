// Do not edit. This file is generated.
// MoonBit type: MutationObserverInit
// Specifications: dom.idl

///|
/// [MutationObserverInit](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserverInit)
#external
pub type MutationObserverInit

///|
pub impl TJsValue for MutationObserverInit with to_js(
  self : MutationObserverInit,
) -> JsValue = "%identity"

///|
pub fn MutationObserverInit::new(
  child_list? : Bool = false,
  attributes? : Bool,
  character_data? : Bool,
  subtree? : Bool = false,
  attribute_old_value? : Bool,
  character_data_old_value? : Bool,
  attribute_filter? : Array[String],
) -> MutationObserverInit {
  mutation_observer_init_ffi(
    TJsValue::to_js(child_list),
    opt_to_js(attributes),
    opt_to_js(character_data),
    TJsValue::to_js(subtree),
    opt_to_js(attribute_old_value),
    opt_to_js(character_data_old_value),
    opt_to_js(attribute_filter),
  )
}

///|
pub fn MutationObserverInit::empty() -> MutationObserverInit {
  mutation_observer_init_empty_ffi()
}
