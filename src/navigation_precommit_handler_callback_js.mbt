///|
extern "js" fn navigation_precommit_handler_ffi(
  callback : (NavigationPrecommitController) -> JsPromise[Unit],
) -> NavigationPrecommitHandler = "(callback) => callback"
