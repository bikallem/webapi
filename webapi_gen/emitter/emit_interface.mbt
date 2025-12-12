///|
pub fn emit_interface(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> String {
  let buf = StringBuilder::new()
  let name = interface.name

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for \{name} interface\n")
  buf.write_string("// Do not edit manually\n\n")

  // Emit external type declaration
  buf.write_string(emit_external_type(name))
  buf.write_string("\n\n")

  // Emit TJSValue implementation
  buf.write_string(emit_external_type_tjs_impl(name))
  buf.write_string("\n\n")

  // Emit trait definition
  buf.write_string(emit_interface_trait(interface, type_registry))
  buf.to_string()
}

///|
/// Emit trait definition for the interface
fn emit_interface_trait(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> String {
  let buf = StringBuilder::new()
  fn trait_name(type_name : String) {
    "T\{type_name}"
  }

  // trait inheritance
  match interface.inheritance {
    None =>
      buf.write_string("pub trait \{trait_name(interface.name)}: TJSValue {\n")
    Some(parent) =>
      buf.write_string(
        "pub trait \{trait_name(interface.name)}: TJsValue + T\{trait_name(parent)} {\n",
      )
  }

  // emit method signatures to trait
  for mem in interface.members {
    match mem.interface_member {
      Setlike(_) => ()
      Maplike(_) => ()
      AsyncIterable(_) => ()
      Iterable(_) => ()
      Constructor(_) => ()
      SpecialOperation(_) => ()
      RegularOperation(op) => {
        let method_name = safe_identifier(op.name)
        let return_type = to_mbt_type_string(op.return_type, type_registry)
        let params = op.arguments
          .map(arg => {
            let optioanl = if arg.optional { "?" } else { "" }
            "\{safe_identifier(arg.name)}\{optioanl} : \{to_mbt_type_string(arg.type_.type_, type_registry)}"
          })
          .join(", ")
        if op.static_ {
          buf.write_string("  \{method_name}(\{params}) -> \{return_type}")
        } else if params.is_empty() {
          buf.write_string("  \{method_name}(self: Self) -> \{return_type}")
        } else {
          buf.write_string(
            "  \{method_name}(self: Self, \{params}) -> \{return_type}",
          )
        }
        buf.write_string(" = _\n")
      }
      Attribute(_) => ()
      Const(_) => ()
      Stringifier(_) => ()
    }
  }
  buf.write_string("}")
  buf.to_string()
}

///|
pub fn emit_all_interfaces(
  flattened_idl : FlattenedIdl,
  type_registry : TypeRegistry,
) -> Map[String, String] {
  let result : Map[String, String] = {}
  for name, interface in flattened_idl.interfaces {
    let filename = "\{to_snake_case(name)}.mbt"
    result[filename] = emit_interface(interface, type_registry)
  }
  result
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
    #|interface Event {};
  let definitions = @parser.parse(idl)
  let type_registry = TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten
  let code = emit_interface(flattened.interfaces["EventTarget"], type_registry)
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
      #|pub trait TEventTarget: TJSValue {
      #|  add_event_listener(self: Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
      #|  remove_event_listener(self: Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
      #|  dispatch_event(self: Self, event : &TEvent) -> Bool = _
      #|}
    ),
  )
}
