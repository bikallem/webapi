// Auto-generated MoonBit bindings for MutationObserverInit dictionary
// Do not edit manually

#external
pub type MutationObserverInit

pub impl TJsValue for MutationObserverInit with to_js(self: MutationObserverInit) -> JsValue = "%identity"


fn mutation_observer_init_ffi(child_list : JsValue, attributes : JsValue, character_data : JsValue, subtree : JsValue, attribute_old_value : JsValue, character_data_old_value : JsValue, attribute_filter : JsValue) -> MutationObserverInit = "webapi_MutationObserverInit" "new"


pub fn MutationObserverInit::new(
  child_list? : Bool? : Bool = false,
  attributes? : Bool,
  character_data? : Bool,
  subtree? : Bool? : Bool = false,
  attribute_old_value? : Bool,
  character_data_old_value? : Bool,
  attribute_filter? : Array[String]) -> MutationObserverInit {
    mutation_observer_init_ffi(
      TJsValue::to_js(child_list)
     ,opt_to_js(attributes)
     ,opt_to_js(character_data)
     ,TJsValue::to_js(subtree)
     ,opt_to_js(attribute_old_value)
     ,opt_to_js(character_data_old_value)
     ,opt_to_js(attribute_filter)
    )
}


pub fn MutationObserverInit::empty() -> MutationObserverInit = "webapi_Dictionary" "empty"