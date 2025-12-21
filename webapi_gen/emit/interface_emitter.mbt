///|
pub(all) struct InterfaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for InterfaceEmitter with emit(
  self : InterfaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{to_snake_case(name)}_interface.mbt")
  let interface = self.idl.interfaces[name]
  let ancestors = @flattened_idl.get_interface_ancestors(self.idl, name)
  let emits = []
  emits.push(Emit::External(interface.name))
  emits.push(Emit::IntoMethod(interface.name))
  emits.push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }

  // Generate trait method args
  fn fill_method_args(
    method_args : Array[@parser.Argument],
    method_name : String,
    output_args : Array[MethodArg],
  ) -> Unit {
    for arg in method_args {
      let (type_, arg_emits) = arg_type(
        arg.type_.type_,
        interface.name,
        method_name,
        arg.name,
        self.type_registry,
      )
      // Push any additional emits needed for the arg type, e.g. union arg traits
      emits.push_iter(arg_emits.iter())
      output_args.push(MethodArg::{
        name: safe_identifier(arg.name),
        type_,
        optional: arg.optional,
        default_value: arg.default_value.map(dv => arg_default_value(
          dv,
          arg.type_.type_,
          self.type_registry,
        )),
      })
    }
  }

  let trait_methods = []
  let method_counter : Map[String, Int] = {} // to handle overloaded methods
  for mem in interface.members {
    match mem.interface_member {
      Constructor(ctor) => {
        let args = []
        let method_name = "new"
        fill_method_args(ctor.arguments, method_name, args)
        emits.push(Emit::ConstructorMethod(interface.name, args))
      }
      RegularOperation(op) => {
        if op.static_ {
          continue // TODO: determine how to map static methods, perhaps to external type?
        }
        let orig_method_name = match method_counter.get(op.name) {
          None => {
            method_counter[op.name] = 1
            op.name
          }
          Some(count) => {
            method_counter[op.name] += 1
            "\{op.name}_\{count+1}"
          }
        }
        // trait method args
        let args = [
          MethodArg::{
            name: "self",
            type_: ArgType::Self,
            optional: false,
            default_value: None,
          },
        ]
        fill_method_args(op.arguments, safe_identifier(orig_method_name), args)

        // trait method
        let trait_method = TraitMethod::{
          method_name: orig_method_name,
          return_type: op.return_type,
          args,
        }
        trait_methods.push(trait_method)
      }
      Attribute(_) => ()
      _ => ()
    }
  }
  let parent_trait = match interface.inheritance {
    None => "TJsValue"
    Some(parent) => "T\{parent}"
  }
  emits.push(
    Emit::TraitDefinition(TraitDef::{
      trait_name: interface.name,
      parent_trait,
      methods: trait_methods,
    }),
  )
  (filename, emits)
}

///|
test "InterfaceEmitter generates MoonBit code for interface" {
  let idl =
    #|[Exposed=*]
    #|interface EventTarget {
    #|  constructor();
    #|  undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
    #|  undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
    #|  boolean dispatchEvent(Event event);
    #|  [CEReactions, NewObject] Element createElement(DOMString localName, optional (DOMString or ElementCreationOptions) options = {});
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("EventTarget")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type EventTarget
      #|
      #|pub impl TJsValue for EventTarget with to_js(self: EventTarget) -> JsValue = "%identity"
      #|
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|
      #|pub impl TEventTarget for EventTarget
      #|
      #|extern "js" fn event_target_ffi() -> EventTarget = "() => new EventTarget()"
      #|
      #|pub fn EventTarget::new() -> EventTarget {
      #|  event_target_ffi()
      #|}
      #|
      #|pub(open) trait TEventTargetAddEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetAddEventListenerOptionsArg for AddEventListenerOptions with to_js(self : AddEventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetAddEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub(open) trait TEventTargetRemoveEventListenerOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetRemoveEventListenerOptionsArg for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetRemoveEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub(open) trait TEventTargetCreateElementOptionsArg {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetCreateElementOptionsArg for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetCreateElementOptionsArg for ElementCreationOptions with to_js(self : ElementCreationOptions) -> JsValue = "%identity"
      #|
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetAddEventListenerOptionsArg) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetRemoveEventListenerOptionsArg) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
      #|  create_element(self : Self, local_name : String, options? : &TEventTargetCreateElementOptionsArg) -> Element = _
      #|}
      #|
      #|extern "js" fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with add_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetAddEventListenerOptionsArg = AddEventListenerOptions::empty()) -> Unit {
      #|  event_target_add_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|extern "js" fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with remove_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetRemoveEventListenerOptionsArg = EventListenerOptions::empty()) -> Unit {
      #|  event_target_remove_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|extern "js" fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool = "(obj, event) => obj.dispatchEvent(obj, event)"
      #|
      #|impl TEventTarget with dispatch_event(self : Self, 
      #|event : Event) -> Bool {
      #|  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
      #|}
      #|
      #|extern "js" fn event_target_create_element_ffi(obj: JsValue, local_name: JsValue, options: JsValue) -> Element = "(obj, local_name, options) => obj.createElement(obj, local_name, options)"
      #|
      #|impl TEventTarget with create_element(self : Self, 
      #|local_name : String, 
      #|options? : &TEventTargetCreateElementOptionsArg = ElementCreationOptions::empty()) -> Element {
      #|  event_target_create_element_ffi(TJsValue::to_js(self), TJsValue::to_js(local_name), options.to_js())
      #|}
    ),
  )
}
