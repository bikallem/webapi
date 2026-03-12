extern "js" fn url_pattern_component_result_ffi(input: JsValue, groups: JsValue) -> URLPatternComponentResult = 
#|(input, groups) => {
#|  const obj = {};
#|  if (input !== undefined) obj.input = input;
#|  if (groups !== undefined) obj.groups = groups;
#|  return obj;
#|}

extern "js" fn url_pattern_component_result_empty_ffi() -> URLPatternComponentResult = "() => {}"

extern "js" fn url_pattern_component_result_get_input_ffi(obj: JsValue) -> JsValue = "(obj) => obj.input"

extern "js" fn url_pattern_component_result_get_groups_ffi(obj: JsValue) -> JsValue = "(obj) => obj.groups"