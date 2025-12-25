///|
pub(all) struct InterfaceEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
/// Convert method arguments from IDL to MBT types, collecting any additional emits needed
/// for complex types (e.g., union arg traits).
fn method_args(
  args : Array[(String, @parser.Type, Bool, @parser.DefaultValue?)],
  interface_name : String,
  method_name : String,
  type_registry : @type_registry.TypeRegistry,
) -> (Array[MethodArg], Array[Emit]) {
  let emits = []
  let mbt_args = []
  for arg in args {
    let (arg_name, type_, optional, default_value) = arg
    let (mbt_type, arg_emits) = arg_mbt_type(
      type_, interface_name, method_name, arg_name, type_registry,
    )
    // Push any additional emits needed for the arg type, e.g. union arg traits
    emits.push_iter(arg_emits.iter())
    let mbt_type = match mbt_type {
      ArgMbtType::Interface(name) => ArgMbtType::Interface("&T\{name}")
      ArgMbtType::Union(union_type_name, has_undefined) =>
        ArgMbtType::Union("&T\{union_type_name}", has_undefined)
      _ => mbt_type
    }
    mbt_args.push(MethodArg::{
      name: safe_identifier(arg_name),
      original_name: arg_name,
      type_: mbt_type,
      optional,
      default_value: default_value.map(dv => arg_default_value(
        dv, type_, type_registry,
      )),
    })
  }
  (mbt_args, emits)
}

///|
pub impl Emitter for InterfaceEmitter with emit(
  self : InterfaceEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{snake_case(name)}_interface.mbt")
  let interface = self.idl.interfaces[name]
  let ancestors = @flattened_idl.get_interface_ancestors(self.idl, name)
  let emits = []
  emits
  ..push(Emit::External(interface.name))
  ..push(Emit::ImplTJsValue(interface.name))
  ..push(Emit::IntoMethod(interface.name))
  ..push(Emit::ImplTrait(interface.name, TraitName("T" + interface.name)))
  for ancestor in ancestors {
    emits.push(Emit::ImplTrait(interface.name, TraitName("T" + ancestor)))
  }
  let trait_methods : Array[&TraitMethodEmit] = []
  let method_counter : Map[String, Int] = {} // to handle overloaded methods
  let mut constructor_count = 0 // to handle overloaded constructors
  loop interface.members.map(mem => mem.interface_member)[:] {
    [] => break
    [Constructor(ctor), .. rest] => {
      let method_name = if constructor_count == 0 {
        "new"
      } else {
        "new_\{constructor_count+1}"
      }
      constructor_count += 1
      let (args, arg_emits) = method_args(
        ctor.arguments.map(arg => (
          arg.name,
          arg.type_.type_,
          arg.optional,
          arg.default_value,
        )),
        interface.name,
        method_name,
        self.type_registry,
      )
      emits.push_iter(arg_emits.iter())
      emits.push(
        Emit::ConstructorMethod(
          ConstructorName(method_name),
          TypeName(interface.name),
          args,
        ),
      )
      continue rest
    }
    [RegularOperation(op), .. rest] => {
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
      let (args, arg_emits) = method_args(
        op.arguments.map(arg => (
          arg.name,
          arg.type_.type_,
          arg.optional,
          arg.default_value,
        )),
        interface.name,
        orig_method_name,
        self.type_registry,
      )
      // Add 'self' argument for non-static methods
      let mut self_arg = None
      if !op.static_ {
        self_arg = Some(MethodArg::{
          name: "self",
          original_name: "self",
          type_: ArgMbtType::Self,
          optional: false,
          default_value: None,
        })
      }
      let args = match self_arg {
        Some(sa) => [sa, ..args]
        None => args
      }
      emits.push_iter(arg_emits.iter())

      // return type
      let (return_type, return_emits) = arg_mbt_type(
        op.return_type,
        interface.name,
        orig_method_name,
        "",
        self.type_registry,
      )
      if return_type is ArgMbtType::Union(union_type_name, has_undefined) {
        emits
        ..push(Emit::External(union_type_name))
        ..push(Emit::IntoMethod(union_type_name))
        if has_undefined {
          emits.push(Emit::IsUndefinedMethod(union_type_name))
        }
        emits.push(
          Emit::UnionArgTraitImpl(
            TypeName(union_type_name),
            TraitName("T\{union_type_name}"),
          ),
        )
      }
      emits.push_iter(return_emits.iter())

      // trait method
      let trait_method = RegularMethodEmit::{
        interface_name: interface.name,
        original_name: orig_method_name,
        return_type: return_type.name(),
        args,
        is_static: op.static_,
      }
      trait_methods.push(trait_method)
      continue rest
    }
    [Attribute(attr), .. rest] => {
      if attr.static_ {
        continue rest // TODO: determine how to map static attributes, perhaps to external type?
      }
      let (attr_type, attr_emits) = arg_mbt_type(
        attr.type_,
        interface.name,
        attr.name,
        "",
        self.type_registry,
      )
      if attr_type is ArgMbtType::Union(union_type_name, has_undefined) {
        emits
        ..push(Emit::External(union_type_name))
        ..push(Emit::IntoMethod(union_type_name))
        if has_undefined {
          emits.push(Emit::IsUndefinedMethod(union_type_name))
        }
        emits.push(
          Emit::UnionArgTraitImpl(
            TypeName(union_type_name),
            TraitName("T\{union_type_name}"),
          ),
        )
      }
      emits.push_iter(attr_emits.iter())

      // Get Attribute method
      let attr_getter_method = AttributeGetMethodEmit::{
        interface_name: interface.name,
        original_name: attr.name,
        return_type: attr_type.name(),
      }
      trait_methods.push(attr_getter_method)

      // Set Attribute method if specified
      if !attr.is_readonly || attr.is_inherit {
        let attr_setter_method = AttributeSetMethodEmit::{
          interface_name: interface.name,
          original_name: attr.name,
          arg_type: attr_type.name(),
        }
        trait_methods.push(attr_setter_method)
      }
      continue rest // Attributes are not yet handled
    }
    [Const(const_val), .. rest] => {
      let const_name = ConstName(
        "\{snake_case(interface.name).to_upper()}_\{snake_case(const_val.name).to_upper()}",
      )
      let (mbt_type, const_emits) = arg_mbt_type(
        const_val.type_,
        interface.name,
        "",
        const_val.name,
        self.type_registry,
      )
      emits
      ..push_iter(const_emits.iter())
      ..push(
        Emit::Const(
          const_name,
          TypeName(mbt_type.name()),
          const_value(const_val.value),
        ),
      )
      continue rest
    }
    [
      Setlike(_)
      | Maplike(_)
      | AsyncIterable(_)
      | Iterable(_)
      | SpecialOperation(_)
      | Stringifier(Bare),
      .. rest,
    ] => continue rest
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
test "InterfaceEmitter generates to_js() call for Union arg types" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(optional (DOMString or unsigned long) param = "default");
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let args = method_args(
    [
      (
        op.arguments[0].name,
        op.arguments[0].type_.type_,
        op.arguments[0].optional,
        op.arguments[0].default_value,
      ),
    ],
    "TestInterface",
    "testMethod",
    type_registry,
  )
  @json.inspect(args, content=[
    [
      {
        "name": "param",
        "original_name": "param",
        "type_": ["Union", "&TTestInterfaceTestMethodParam", false],
        "optional": true,
        "default_value": "\"default\"",
      },
    ],
    [
      ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam"]],
      [
        "UnionArgTraitImpl",
        ["TypeName", "String"],
        ["TraitName", "TTestInterfaceTestMethodParam"],
      ],
      [
        "UnionArgTraitImpl",
        ["TypeName", "UInt"],
        ["TraitName", "TTestInterfaceTestMethodParam"],
      ],
    ],
  ])
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
      #|extern "js" fn event_target_new_ffi() -> EventTarget = "() => new EventTarget()"
      #|
      #|pub fn EventTarget::new() -> EventTarget {
      #|  event_target_new_ffi()
      #|}
      #|
      #|pub(open) trait TEventTargetAddEventListenerOptions {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetAddEventListenerOptions for AddEventListenerOptions with to_js(self : AddEventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetAddEventListenerOptions for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub(open) trait TEventTargetRemoveEventListenerOptions {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetAddEventListenerOptions) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetRemoveEventListenerOptions) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
      #|}
      #|
      #|extern "js" fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with add_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetAddEventListenerOptions = AddEventListenerOptions::empty()) -> Unit {
      #|  event_target_add_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|extern "js" fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(obj, type_, callback, options)"
      #|
      #|impl TEventTarget with remove_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetRemoveEventListenerOptions = EventListenerOptions::empty()) -> Unit {
      #|  event_target_remove_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|extern "js" fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool = "(obj, event) => obj.dispatchEvent(obj, event)"
      #|
      #|impl TEventTarget with dispatch_event(self : Self, 
      #|event : Event) -> Bool {
      #|  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
      #|}
    ),
  )
}

///|
test "InterfaceEmitter handles interface with nested union arg types" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(optional (DOMString or (unsigned long or boolean)) param = "default");
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestInterfaceTestMethodParam for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam2 {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for UInt with to_js(self : UInt) -> JsValue = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for Bool with to_js(self : Bool) -> JsValue = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethodParam for &TTestInterfaceTestMethodParam2 with to_js(self : &TTestInterfaceTestMethodParam2) -> JsValue = "%identity"
      #|
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self, param? : &TTestInterfaceTestMethodParam) -> void = _
      #|}
      #|
      #|extern "js" fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void = "(obj, param) => obj.testMethod(obj, param)"
      #|
      #|impl TTestInterface with test_method(self : Self, 
      #|param? : &TTestInterfaceTestMethodParam = "default") -> void {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self), param.to_js())
      #|}
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for union return type" {
  let idl =
    #|interface TestInterface {
    #|  (DOMString or unsigned long) testMethod();
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|#external
      #|pub type TestInterfaceTestMethod
      #|
      #|pub fn[T: TTestInterfaceTestMethod] TestInterfaceTestMethod::into(self : TestInterfaceTestMethod) -> T = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethod for TestInterfaceTestMethod with to_js(self : TestInterfaceTestMethod) -> JsValue = "%identity"
      #|
      #|pub(open) trait TTestInterfaceTestMethod {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestInterfaceTestMethod for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethod for UInt with to_js(self : UInt) -> JsValue = "%identity"
      #|
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self) -> TestInterfaceTestMethod = _
      #|}
      #|
      #|extern "js" fn test_interface_test_method_ffi(obj: JsValue) -> TestInterfaceTestMethod = "(obj) => obj.testMethod(obj)"
      #|
      #|impl TTestInterface with test_method(self : Self) -> TestInterfaceTestMethod {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self))
      #|}
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for constants" {
  let idl =
    #|interface TestInterface {
    #|  const float EMPTY = 21;
    #|  const unsigned long NUM_CONST = 42;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub const TEST_INTERFACE_EMPTY: Float = 21
      #|
      #|pub const TEST_INTERFACE_NUM_CONST: UInt = 42
      #|
      #|pub trait TTestInterface: TJsValue {
      #|
      #|}
      #|
      #|
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for attributes" {
  let idl =
    #|interface TestInterface {
    #|  undefined sayHello();
    #|  readonly attribute DOMString name;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub trait TTestInterface: TJsValue {
      #|  say_hello(self : Self) -> Unit = _
      #|  name(self : Self) -> String = _
      #|}
      #|
      #|extern "js" fn test_interface_say_hello_ffi(obj: JsValue) -> Unit = "(obj) => obj.sayHello(obj)"
      #|
      #|impl TTestInterface with say_hello(self : Self) -> Unit {
      #|  test_interface_say_hello_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn test_interface_name_ffi(obj: JsValue) -> String = "(obj) => obj.name"
      #|
      #|impl TTestInterface with name(self : Self) -> String {
      #|  test_interface_name_ffi(TJsValue::to_js(self))
      #|}
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for attribute setter" {
  let idl =
    #|interface TestInterface {
    #|  attribute DOMString lastName;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub trait TTestInterface: TJsValue {
      #|  last_name(self : Self) -> String = _
      #|  set_last_name(self : Self, last_name : String) -> Unit = _
      #|}
      #|
      #|extern "js" fn test_interface_last_name_ffi(obj: JsValue) -> String = "(obj) => obj.lastName"
      #|
      #|impl TTestInterface with last_name(self : Self) -> String {
      #|  test_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn test_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "(obj, lastName) => { obj.lastName = lastName; }"
      #|
      #|impl TTestInterface with set_last_name(self : Self, last_name : String) -> Unit {
      #|  test_interface_set_last_name_ffi(TJsValue::to_js(self), TJsValue::to_js(last_name))
      #|}
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for readonly and inherit attributes" {
  let idl =
    #|interface ParentInterface {
    #|  readonly attribute DOMString lastName;
    #|};
    #|
    #|interface ChildInterface : ParentInterface {
    #|  inherit attribute DOMString lastName;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("ParentInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type ParentInterface
      #|
      #|pub impl TJsValue for ParentInterface with to_js(self: ParentInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TParentInterface] ParentInterface::into(self : ParentInterface) -> T = "%identity"
      #|
      #|pub impl TParentInterface for ParentInterface
      #|
      #|pub trait TParentInterface: TJsValue {
      #|  last_name(self : Self) -> String = _
      #|}
      #|
      #|extern "js" fn parent_interface_last_name_ffi(obj: JsValue) -> String = "(obj) => obj.lastName"
      #|
      #|impl TParentInterface with last_name(self : Self) -> String {
      #|  parent_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
    ),
  )
  let (_, emits) = interface_emitter.emit("ChildInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type ChildInterface
      #|
      #|pub impl TJsValue for ChildInterface with to_js(self: ChildInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TChildInterface] ChildInterface::into(self : ChildInterface) -> T = "%identity"
      #|
      #|pub impl TChildInterface for ChildInterface
      #|
      #|pub impl TParentInterface for ChildInterface
      #|
      #|pub trait TChildInterface: TParentInterface {
      #|  last_name(self : Self) -> String = _
      #|  set_last_name(self : Self, last_name : String) -> Unit = _
      #|}
      #|
      #|extern "js" fn child_interface_last_name_ffi(obj: JsValue) -> String = "(obj) => obj.lastName"
      #|
      #|impl TChildInterface with last_name(self : Self) -> String {
      #|  child_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn child_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "(obj, lastName) => { obj.lastName = lastName; }"
      #|
      #|impl TChildInterface with set_last_name(self : Self, last_name : String) -> Unit {
      #|  child_interface_set_last_name_ffi(TJsValue::to_js(self), TJsValue::to_js(last_name))
      #|}
    ),
  )
}

///|
test "InterfaceEmitter emits static methods" {
  let idl =
    #|interface TestInterface {
    #|  [NewObject] static Response redirect(USVString url, optional unsigned short status = 302);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let interface_emitter = InterfaceEmitter::{ idl: flattened, type_registry }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub trait TTestInterface: TJsValue {
      #|  redirect(url : String, status? : UInt) -> Response = _
      #|}
      #|
      #|extern "js" fn test_interface_redirect_ffi(url: JsValue, status: JsValue) -> Response = "(url, status) => { TestInterface.redirect(url, status) }"
      #|
      #|impl TTestInterface with redirect(url : String, 
      #|status? : UInt = 302) -> Response {
      #|  test_interface_redirect_ffi(TJsValue::to_js(url), TJsValue::to_js(status))
      #|}
    ),
  )
}
