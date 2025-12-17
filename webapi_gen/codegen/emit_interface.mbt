///|
pub fn emit_interface(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> String {
  let emit = interface_to_emit(interface, type_registry)
  emit_from_interface_emit(emit)
}

///|
/// Map interface to DSL representation
fn interface_to_emit(
  interface : PartialMergedInterface,
  type_registry : TypeRegistry,
) -> InterfaceEmit {
  let name = interface.name

  // Build trait methods from interface members
  let methods : Array[TraitMethodEmit] = []
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
        let args = emit_method_arguments(op.arguments, type_registry)
        methods.push(TraitMethodEmit::{
          method_name,
          return_type,
          args,
          is_static: op.static_,
        })
      }
      Attribute(_) => ()
      Const(_) => ()
      Stringifier(_) => ()
    }
  }

  // Determine parent trait
  let parent_trait = match interface.inheritance {
    None => None
    Some(parent) => Some("TJsValue + T\{trait_name(parent)}")
  }
  InterfaceEmit::{
    name,
    external_type: ExternalTypeEmit::{ type_name: name, implements_trait: true },
    trait_def: TraitEmit::{
      trait_name: trait_name(name),
      parent_trait,
      methods,
    },
  }
}

///|
/// Emit MoonBit code from InterfaceEmit DSL
fn emit_from_interface_emit(emit : InterfaceEmit) -> String {
  let buf = StringBuilder::new()
  let name = emit.name
  let type_name = emit.external_type.type_name

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for \{name} interface\n")
  buf.write_string("// Do not edit manually\n\n")

  // Emit external type declaration
  buf.write_string(emit_external_type(type_name))
  buf.write_string("\n\n")

  // Emit TJSValue implementation
  buf.write_string(emit_external_type_tjs_impl(type_name))
  buf.write_string("\n\n")

  // Emit into method
  buf.write_string(
    "pub fn[T: \{emit.trait_def.trait_name}] \{type_name}::into(self : \{type_name}) -> T = \"%identity\"",
  )
  buf.write_string("\n")

  // Emit trait implementation if required
  if emit.external_type.implements_trait {
    buf.write_string(
      "pub impl \{emit.trait_def.trait_name} for \{type_name} {}",
    )
  }

  // Emit trait definition
  buf.write_string("\n\n")
  buf.write_string(emit_trait_from_dsl(emit.trait_def))
  buf.to_string()
}

///|
/// Emit trait definition from TraitEmit DSL
fn emit_trait_from_dsl(trait_def : TraitEmit) -> String {
  let buf = StringBuilder::new()

  // trait header with inheritance
  match trait_def.parent_trait {
    None => buf.write_string("pub trait \{trait_def.trait_name}: TJSValue {\n")
    Some(parent) =>
      buf.write_string("pub trait \{trait_def.trait_name}: \{parent} {\n")
  }

  // emit method signatures
  for meth in trait_def.methods {
    if meth.is_static {
      buf.write_string(
        "  \{meth.method_name}(\{meth.args}) -> \{meth.return_type}",
      )
    } else if meth.args.is_empty() {
      buf.write_string(
        "  \{meth.method_name}(self: Self) -> \{meth.return_type}",
      )
    } else {
      buf.write_string(
        "  \{meth.method_name}(self: Self, \{meth.args}) -> \{meth.return_type}",
      )
    }
    buf.write_string(" = _\n")
  }
  buf.write_string("}")
  buf.to_string()
}

///|
fn trait_name(type_name : String) -> String {
  "T\{type_name}"
}

///|
fn emit_method_arguments(
  arguments : Array[@parser.Argument],
  type_registry : TypeRegistry,
) -> String {
  let args = arguments
    .map(arg => {
      let optional = if arg.optional { "?" } else { "" }
      "\{safe_identifier(arg.name)}\{optional} : \{to_mbt_type_string(arg.type_.type_, type_registry)}"
    })
    .join(", ")
  args
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
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|pub impl TEventTarget for EventTarget {}
      #|
      #|pub trait TEventTarget: TJSValue {
      #|  add_event_listener(self: Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
      #|  remove_event_listener(self: Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
      #|  dispatch_event(self: Self, event : &TEvent) -> Bool = _
      #|}
    ),
  )
}
