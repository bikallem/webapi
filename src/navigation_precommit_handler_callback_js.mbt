///|
extern "js" fn navigation_precommit_handler_ffi(
  callback : (NavigationPrecommitController) -> @js_async.Promise[Unit],
) -> NavigationPrecommitHandler = "(callback) => callback"
