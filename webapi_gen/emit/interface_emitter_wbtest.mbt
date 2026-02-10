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
        op.arguments[0].variadic,
      ),
    ],
    "TestInterface",
    "testMethod",
    type_registry,
  )
  json_inspect(args, content=[
    [
      {
        "name": "param",
        "original_name": "param",
        "type_": [
          "Union",
          {
            "name": "&TTestInterfaceTestMethodParam",
            "has_undefined": false,
            "options": [["Primitive", "String"], ["Primitive", "UInt"]],
          },
        ],
        "optional": true,
        "variadic": false,
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
    #| dictionary EventListenerOptions {};
    #| dictionary AddEventListenerOptions {};
    #|
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("EventTarget")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: EventTarget
      #|
      #|
      #|/// [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget)
      #|#external
      #|pub type EventTarget
      #|
      #|pub impl TJsValue for EventTarget with to_js(self: EventTarget) -> JsValue = "%identity"
      #|
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|
      #|pub impl TEventTarget for EventTarget
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
      #|pub impl TEventTargetAddEventListenerOptions for Bool with to_js(self : Bool) -> JsValue { TJsValue::to_js(self) }
      #|
      #|pub(open) trait TEventTargetRemoveEventListenerOptions {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for Bool with to_js(self : Bool) -> JsValue { TJsValue::to_js(self) }
      #|
      #|/// [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget) interface.
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetAddEventListenerOptions) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : &TEventTargetRemoveEventListenerOptions) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
      #|}
      #|
      #|/// [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
      #|impl TEventTarget with add_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetAddEventListenerOptions = AddEventListenerOptions::empty()) -> Unit {
      #|  event_target_add_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|/// [EventTarget.removeEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener)
      #|impl TEventTarget with remove_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : EventListener, 
      #|options? : &TEventTargetRemoveEventListenerOptions = EventListenerOptions::empty()) -> Unit {
      #|  event_target_remove_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(callback), options.to_js())
      #|}
      #|
      #|/// [EventTarget.dispatchEvent](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent)
      #|impl TEventTarget with dispatch_event(self : Self, 
      #|event : Event) -> Bool {
      #|  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
      #|}
      #|
      #|extern "js" fn event_target_new_ffi() -> EventTarget = "() => new EventTarget()"
      #|
      #|extern "js" fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(type_, callback, options)"
      #|
      #|extern "js" fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(type_, callback, options)"
      #|
      #|extern "js" fn event_target_dispatch_event_ffi_js(obj: JsValue, event: JsValue) -> JsValue = "(obj, event) => obj.dispatchEvent(event)"
      #|
      #|///|
      #|fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool {
      #|  event_target_dispatch_event_ffi_js(obj, event).unsafe_cast()
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
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
      #|/// [TestInterfaceTestMethodParam2](https://developer.mozilla.org/en-US/docs/Web/API/TestInterfaceTestMethodParam2)
      #|#external
      #|pub type TestInterfaceTestMethodParam2
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam2 {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for UInt with to_js(self : UInt) -> JsValue { TJsValue::to_js(self) }
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for Bool with to_js(self : Bool) -> JsValue { TJsValue::to_js(self) }
      #|
      #|pub impl TTestInterfaceTestMethodParam for &TTestInterfaceTestMethodParam2 with to_js(self : &TTestInterfaceTestMethodParam2) -> JsValue = "%identity"
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self, param? : &TTestInterfaceTestMethodParam) -> void = _
      #|}
      #|
      #|/// [TestInterface.testMethod](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/testMethod)
      #|impl TTestInterface with test_method(self : Self, 
      #|param? : &TTestInterfaceTestMethodParam = "default") -> void {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self), param.to_js())
      #|}
      #|
      #|extern "js" fn test_interface_test_method_ffi_js(obj: JsValue, param: JsValue) -> JsValue = "(obj, param) => obj.testMethod(param)"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void {
      #|  test_interface_test_method_ffi_js(obj, param).unsafe_cast()
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterfaceTestMethod](https://developer.mozilla.org/en-US/docs/Web/API/TestInterfaceTestMethod)
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
      #|pub impl TTestInterfaceTestMethod for UInt with to_js(self : UInt) -> JsValue { TJsValue::to_js(self) }
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self) -> TestInterfaceTestMethod = _
      #|}
      #|
      #|/// [TestInterface.testMethod](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/testMethod)
      #|impl TTestInterface with test_method(self : Self) -> TestInterfaceTestMethod {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn test_interface_test_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.testMethod()"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue) -> TestInterfaceTestMethod {
      #|  test_interface_test_method_ffi_js(obj).unsafe_cast()
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
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
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  say_hello(self : Self) -> Unit = _
      #|  name(self : Self) -> String = _
      #|}
      #|
      #|/// [TestInterface.sayHello](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/sayHello)
      #|impl TTestInterface with say_hello(self : Self) -> Unit {
      #|  test_interface_say_hello_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|/// [TestInterface.name](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/name)
      #|impl TTestInterface with name(self : Self) -> String {
      #|  test_interface_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn test_interface_say_hello_ffi(obj: JsValue) -> Unit = "(obj) => obj.sayHello()"
      #|
      #|extern "js" fn test_interface_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"
      #|
      #|///|
      #|fn test_interface_name_ffi(obj: JsValue) -> String {
      #|  test_interface_name_ffi_js(obj).unsafe_cast()
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  last_name(self : Self) -> String = _
      #|  set_last_name(self : Self, last_name : String) -> Unit = _
      #|}
      #|
      #|/// [TestInterface.lastName](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/lastName)
      #|impl TTestInterface with last_name(self : Self) -> String {
      #|  test_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|/// [TestInterface.lastName](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/lastName)
      #|impl TTestInterface with set_last_name(self : Self, 
      #|last_name : String) -> Unit {
      #|  test_interface_set_last_name_ffi(TJsValue::to_js(self), TJsValue::to_js(last_name))
      #|}
      #|
      #|extern "js" fn test_interface_last_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastName"
      #|
      #|///|
      #|fn test_interface_last_name_ffi(obj: JsValue) -> String {
      #|  test_interface_last_name_ffi_js(obj).unsafe_cast()
      #|}
      #|
      #|extern "js" fn test_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "(obj, lastName) => { obj.lastName = lastName; }"
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("ParentInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: ParentInterface
      #|
      #|
      #|/// [ParentInterface](https://developer.mozilla.org/en-US/docs/Web/API/ParentInterface)
      #|#external
      #|pub type ParentInterface
      #|
      #|pub impl TJsValue for ParentInterface with to_js(self: ParentInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TParentInterface] ParentInterface::into(self : ParentInterface) -> T = "%identity"
      #|
      #|pub impl TParentInterface for ParentInterface
      #|
      #|/// [ParentInterface](https://developer.mozilla.org/en-US/docs/Web/API/ParentInterface) interface.
      #|pub trait TParentInterface: TJsValue {
      #|  last_name(self : Self) -> String = _
      #|}
      #|
      #|/// [ParentInterface.lastName](https://developer.mozilla.org/en-US/docs/Web/API/ParentInterface/lastName)
      #|impl TParentInterface with last_name(self : Self) -> String {
      #|  parent_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|extern "js" fn parent_interface_last_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastName"
      #|
      #|///|
      #|fn parent_interface_last_name_ffi(obj: JsValue) -> String {
      #|  parent_interface_last_name_ffi_js(obj).unsafe_cast()
      #|}
    ),
  )
  let (_, emits) = interface_emitter.emit("ChildInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: ChildInterface
      #|
      #|
      #|/// [ChildInterface](https://developer.mozilla.org/en-US/docs/Web/API/ChildInterface)
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
      #|/// [ChildInterface](https://developer.mozilla.org/en-US/docs/Web/API/ChildInterface) interface.
      #|pub trait TChildInterface: TParentInterface {
      #|  last_name(self : Self) -> String = _
      #|  set_last_name(self : Self, last_name : String) -> Unit = _
      #|}
      #|
      #|/// [ChildInterface.lastName](https://developer.mozilla.org/en-US/docs/Web/API/ChildInterface/lastName)
      #|impl TChildInterface with last_name(self : Self) -> String {
      #|  child_interface_last_name_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|/// [ChildInterface.lastName](https://developer.mozilla.org/en-US/docs/Web/API/ChildInterface/lastName)
      #|impl TChildInterface with set_last_name(self : Self, 
      #|last_name : String) -> Unit {
      #|  child_interface_set_last_name_ffi(TJsValue::to_js(self), TJsValue::to_js(last_name))
      #|}
      #|
      #|extern "js" fn child_interface_last_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastName"
      #|
      #|///|
      #|fn child_interface_last_name_ffi(obj: JsValue) -> String {
      #|  child_interface_last_name_ffi_js(obj).unsafe_cast()
      #|}
      #|
      #|extern "js" fn child_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "(obj, lastName) => { obj.lastName = lastName; }"
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
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|
      #|}
      #|
      #|/// [TestInterface.redirect](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/redirect)
      #|pub fn TestInterface::redirect(url : String, 
      #|status? : UInt = (302: UInt)) -> Response {
      #|  test_interface_redirect_ffi(TJsValue::to_js(url), TJsValue::to_js(status))
      #|}
      #|
      #|extern "js" fn test_interface_redirect_ffi_js(url: JsValue, status: JsValue) -> JsValue = "(url, status) => TestInterface.redirect(url, status)"
      #|
      #|///|
      #|fn test_interface_redirect_ffi(url: JsValue, status: JsValue) -> Response {
      #|  test_interface_redirect_ffi_js(url, status).unsafe_cast()
      #|}
    ),
  )
}

///|
test "InterfaceEmitter emits static attribute getter methods" {
  let idl =
    #|interface TestInterface {
    #|  static readonly attribute DOMString appName;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let code = mbt_code_gen(emits)
  inspect(
    code,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestInterface
      #|
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface)
      #|#external
      #|pub type TestInterface
      #|
      #|pub impl TJsValue for TestInterface with to_js(self: TestInterface) -> JsValue = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|
      #|}
      #|
      #|/// [TestInterface.appName](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/appName)
      #|pub fn TestInterface::app_name() -> String {
      #|  test_interface_app_name_ffi()
      #|}
      #|
      #|extern "js" fn test_interface_app_name_ffi_js() -> JsValue = "() => TestInterface.appName"
      #|
      #|///|
      #|fn test_interface_app_name_ffi() -> String {
      #|  test_interface_app_name_ffi_js().unsafe_cast()
      #|}
    ),
  )
}

///|
test "mbt_code_gen_multi generates separate shared and FFI files for interface" {
  let idl =
    #|interface TestInterface {
    #|  undefined sayHello();
    #|  readonly attribute DOMString name;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  // Shared code should NOT contain extern "js"
  inspect(multi.shared.contains("extern \"js\""), content="false")
  // JS FFI should contain extern "js" declarations
  inspect(multi.js_ffi.contains("extern \"js\""), content="true")
  // Wasm FFI should contain module/function import syntax
  inspect(multi.wasm_ffi.contains("\"webapi_TestInterface\""), content="true")
  // Shared code should contain trait and impl
  inspect(multi.shared.contains("pub trait TTestInterface"), content="true")
  inspect(
    multi.shared.contains("impl TTestInterface with say_hello"),
    content="true",
  )
  inspect(
    multi.shared.contains("impl TTestInterface with name"),
    content="true",
  )
}

///|
test "mbt_code_gen_multi uses TJsValue::to_js for UnionArgTraitImpl" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod((DOMString or boolean) param);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  // Multi-target should use TJsValue::to_js(self) instead of %identity
  inspect(multi.shared.contains("TJsValue::to_js(self)"), content="true")
  // Should NOT use %identity for union arg trait impls in multi-target
  inspect(
    multi.shared.contains("= \"%identity\""),
    content="true", // Still has %identity for ImplTJsValue (which is correct)
  )
}

///|
test "mbt_code_gen_multi generates wasm FFI for constructor" {
  let idl =
    #|interface TestInterface {
    #|  constructor(DOMString name);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  // JS FFI should have extern "js" constructor
  inspect(
    multi.js_ffi.contains("extern \"js\" fn test_interface_new_ffi"),
    content="true",
  )
  // Wasm FFI should have wasm import constructor
  inspect(
    multi.wasm_ffi.contains("\"webapi_TestInterface\" \"new\""),
    content="true",
  )
  // Shared should have the wrapper function
  inspect(multi.shared.contains("pub fn TestInterface::new("), content="true")
}

///|
test "mbt_code_gen_multi wasm FFI snapshot for interface with String return" {
  let idl =
    #|interface TestInterface {
    #|  undefined sayHello(DOMString name);
    #|  readonly attribute DOMString tagName;
    #|  attribute unsigned long width;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_say_hello_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_TestInterface" "sayHello"
      #|
      #|fn test_interface_tag_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TestInterface" "get_tagName"
      #|
      #|///|
      #|fn test_interface_tag_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(test_interface_tag_name_ffi_wasm(obj))
      #|}
      #|
      #|fn test_interface_width_ffi(obj: JsValue) -> UInt = "webapi_TestInterface" "get_width"
      #|
      #|fn test_interface_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_TestInterface" "set_width"
    ),
  )
}

///|
test "mbt_code_gen_multi wasm FFI snapshot for constructor" {
  let idl =
    #|interface TestInterface {
    #|  constructor(DOMString name);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_new_ffi(name: JsValue) -> TestInterface = "webapi_TestInterface" "new"
      #|
      #|
    ),
  )
}

///|
test "mbt_code_gen_multi wasm FFI snapshot for overloaded methods" {
  let idl =
    #|interface TestInterface {
    #|  undefined fill(DOMString fillRule);
    #|  undefined fill(DOMString path, DOMString fillRule);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  fn log_skipped(_msg : String) {

  }

  let interface_emitter = InterfaceEmitter::{
    idl: flattened,
    type_registry,
    log_skipped,
  }
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill"
      #|
      #|fn test_interface_fill_2_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill_2"
    ),
  )
}
