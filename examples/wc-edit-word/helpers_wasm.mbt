///|
/// Register a custom element with a connectedCallback that calls the MoonBit closure.
fn register_custom_element(
  tag_name : String,
  on_connected : (@webapi.HTMLElement) -> Unit,
) -> Unit = "webcomponents_shim" "register"
