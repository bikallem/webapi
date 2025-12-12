///|
pub fn emit_interface(interface : PartialMergedInterface) -> String {
  let buf = StringBuilder::new()

  // Header
  buf.write_string(
    "// Auto-generated MoonBit bindings for \{interface.name} interface\n",
  )
  buf.write_string("// Do not edit manually\n\n")

  // Emit external type declaration
  buf.write_string(emit_external_type(interface.name))
  buf.write_string("\n\n")

  // Emit TJSValue implementation
  buf.write_string(emit_external_type_tjs_impl(interface.name))
  buf.write_string("\n\n")

  // Emit trait definition
  buf.to_string()
}

///|
test "emit_interface generates moonbit code for simple interface" {
  let idl =
    #|[Exposed=*]
    #|interface EventTarget {
    #|  constructor();
    #|
    #|  undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
    #|  boolean dispatchEvent(Event event);
    #|};
    #|
  let flattened = @parser.parse(idl)
    |> @partial_merged.merge_partials
    |> @flattened_idl.flatten
  let code = emit_interface(flattened.interfaces["EventTarget"])
  inspect(
    code,
    content=(
      #|// Auto-generated MoonBit bindings for EventTarget interface
      #|// Do not edit manually
      #|
      #|#external
      #|pub type EventTarget
      #|
      #|pub impl TJsValue for EventTarget with to_js(self: EventTarget) -> JsValue = "%identity"
      #|
      #|
      #|
    ),
  )
}
