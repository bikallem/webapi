///|
/// Register a custom element with a connectedCallback that calls the MoonBit closure.
extern "js" fn register_custom_element(
  tag_name : String,
  on_connected : (@webapi.HTMLElement) -> Unit,
) -> Unit =
  #|(tag_name, on_connected) => {
  #|  class C extends HTMLElement { connectedCallback() { on_connected(this); } }
  #|  customElements.define(tag_name, C);
  #|}
