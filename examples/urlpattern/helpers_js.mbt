///|
/// Create a URLPattern matching only the pathname component.
/// Uses extern "js" to call the 1-arg URLPatternInit constructor directly
/// (avoids wasm-gc codegen arity bug with URLPattern::new_2 shared import).
extern "js" fn make_pathname_pattern(pathname : String) -> @webapi.URLPattern = "(pathname) => new URLPattern({ pathname })"
