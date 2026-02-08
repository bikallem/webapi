extern "js" fn worklet_options_ffi(credentials: JsValue) -> WorkletOptions = 
#|(credentials) => {
#|  const obj = {};
#|  if (credentials !== undefined) obj.credentials = credentials;
#|  return obj;
#|}

extern "js" fn worklet_options_empty_ffi() -> WorkletOptions = "() => {}"