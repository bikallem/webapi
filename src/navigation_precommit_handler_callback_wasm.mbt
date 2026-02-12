///|
fn navigation_precommit_handler_ffi(
  callback : (NavigationPrecommitController) -> JsPromise[Unit],
) -> NavigationPrecommitHandler = "webapi_NavigationPrecommitHandler" "new"
