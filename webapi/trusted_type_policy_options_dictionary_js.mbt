///|
extern "js" fn trusted_type_policy_options_ffi(
  create_html : JsValue,
  create_script : JsValue,
  create_script_url : JsValue,
) -> TrustedTypePolicyOptions =
  #|(createHTML, createScript, createScriptURL) => {
  #|  const obj = {};
  #|  if (createHTML !== undefined) obj.createHTML = createHTML;
  #|  if (createScript !== undefined) obj.createScript = createScript;
  #|  if (createScriptURL !== undefined) obj.createScriptURL = createScriptURL;
  #|  return obj;
  #|}

///|
extern "js" fn trusted_type_policy_options_empty_ffi() -> TrustedTypePolicyOptions = "() => {}"

///|
extern "js" fn trusted_type_policy_options_get_create_html_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createHTML"

///|
extern "js" fn trusted_type_policy_options_get_create_script_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createScript"

///|
extern "js" fn trusted_type_policy_options_get_create_script_url_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createScriptURL"
