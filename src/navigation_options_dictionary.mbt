///|
#external
pub type NavigationOptions

///|
pub impl TJsValue for NavigationOptions with to_js(self : NavigationOptions) -> JsValue = "%identity"

///|
extern "js" fn navigation_options_ffi(info : JsValue) -> NavigationOptions =
  #|(info) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  return obj;
  #|}

///|
pub fn NavigationOptions::new(info? : JsValue) -> NavigationOptions {
  navigation_options_ffi(opt_to_js(info))
}

///|
extern "js" fn navigation_options_empty_ffi() -> NavigationOptions = "() => {}"

///|
pub fn NavigationOptions::empty() -> NavigationOptions {
  navigation_options_empty_ffi()
}
