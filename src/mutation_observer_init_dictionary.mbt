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
pub impl FromJsAny for MutationObserverInit with from_js_any(value : JsAny) -> MutationObserverInit = "%identity"

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

///|
pub fn MutationObserverInit::child_list(self : MutationObserverInit) -> Bool? {
  let result = mutation_observer_init_get_child_list_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::attributes(self : MutationObserverInit) -> Bool? {
  let result = mutation_observer_init_get_attributes_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::character_data(
  self : MutationObserverInit,
) -> Bool? {
  let result = mutation_observer_init_get_character_data_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::subtree(self : MutationObserverInit) -> Bool? {
  let result = mutation_observer_init_get_subtree_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::attribute_old_value(
  self : MutationObserverInit,
) -> Bool? {
  let result = mutation_observer_init_get_attribute_old_value_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::character_data_old_value(
  self : MutationObserverInit,
) -> Bool? {
  let result = mutation_observer_init_get_character_data_old_value_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MutationObserverInit::attribute_filter(
  self : MutationObserverInit,
) -> Array[String]? {
  let result = mutation_observer_init_get_attribute_filter_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
