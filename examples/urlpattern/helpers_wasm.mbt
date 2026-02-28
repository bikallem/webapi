///|
/// Create a URLPattern matching only the pathname component.
/// On wasm-gc, uses the 3-arg string constructor as a workaround for the
/// new_2 shared-import arity bug. The base URL is required by the string form,
/// so we use a wildcard protocol+host pattern.
fn make_pathname_pattern(pathname : String) -> @webapi.URLPattern {
  @webapi.URLPattern::new(pathname, "https://example.com")
}
