// Auto-generated MoonBit bindings for MutationObserverInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary MutationObserverInit {
//   boolean childList = false;
//   boolean attributes;
//   boolean characterData;
//   boolean subtree = false;
//   boolean attributeOldValue;
//   boolean characterDataOldValue;
//   sequence<DOMString> attributeFilter;
// };

///|
#external
pub type MutationObserverInit

///|
pub impl TJsValue for MutationObserverInit with to_js(
  self : MutationObserverInit,
) -> JsValue = "%identity"

///|
fn mutation_observer_init_ffi(
  child_list : JsValue,
  attributes : JsValue,
  character_data : JsValue,
  subtree : JsValue,
  attribute_old_value : JsValue,
  character_data_old_value : JsValue,
  attribute_filter : JsValue,
) -> MutationObserverInit = "webapi_MutationObserverInit" "new"

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
  let attributes_js = opt_to_js(attributes)
  let character_data_js = opt_to_js(character_data)
  let attribute_old_value_js = opt_to_js(attribute_old_value)
  let character_data_old_value_js = opt_to_js(character_data_old_value)
  let attribute_filter_js = opt_to_js(attribute_filter)
  mutation_observer_init_ffi(
    TJsValue::to_js(child_list),
    attributes_js,
    character_data_js,
    TJsValue::to_js(subtree),
    attribute_old_value_js,
    character_data_old_value_js,
    attribute_filter_js,
  )
}

///|
pub fn MutationObserverInit::empty() -> MutationObserverInit = "webapi_Dictionary" "empty"
