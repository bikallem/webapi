///|
test "InterfaceEmitter generates to_js() call for Union arg types" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(optional (DOMString or unsigned long) param = "default");
    #|};
  let (flattened, type_registry) = parse_and_flatten(idl)
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
test "InterfaceEmitter emits union typedef args as trait refs" {
  let idl =
    #|interface Request {};
    #|typedef (Request or DOMString) RequestInfo;
    #|interface Window {
    #|  undefined fetch(RequestInfo input);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("Window")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: Window
      #|
      #|
      #|/// [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window)
      #|#external
      #|pub type Window
      #|
      #|pub impl TJsValue for Window with to_js(self: Window) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for Window with from_js_any(value : JsAny) -> Window = "%identity"
      #|
      #|pub fn[T: TWindow] Window::into(self : Window) -> T = "%identity"
      #|
      #|pub impl TWindow for Window
      #|
      #|/// [Window](https://developer.mozilla.org/en-US/docs/Web/API/Window) interface.
      #|pub trait TWindow: TJsValue {
      #|  fetch(self : Self, input : &TRequestInfo) -> Unit = _
      #|}
      #|
      #|/// [Window.fetch](https://developer.mozilla.org/en-US/docs/Web/API/Window/fetch)
      #|impl TWindow with fetch(self : Self, 
      #|input : &TRequestInfo) -> Unit {
      #|  window_fetch_ffi(TJsValue::to_js(self), input.to_js())
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn window_fetch_ffi(obj: JsValue, input: JsValue) -> Unit = "(obj, input) => obj.fetch(input)"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn window_fetch_ffi(obj: JsValue, input: JsValue) -> Unit = "webapi_Window" "fetch"
    ),
  )
}

///|
test "InterfaceEmitter generates MoonBit code for interface" {
  let idl =
    #| callback EventListener = undefined (Event event);
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("EventTarget")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for EventTarget with from_js_any(value : JsAny) -> EventTarget = "%identity"
      #|
      #|pub fn[T: TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"
      #|
      #|pub impl TEventTarget for EventTarget
      #|
      #|pub fn EventTarget::new() -> EventTarget {
      #|  event_target_new_ffi()
      #|}
      #|
      #|pub(open) trait TEventTargetAddEventListenerOptions : TJsValue {}
      #|
      #|pub impl TEventTargetAddEventListenerOptions for AddEventListenerOptions
      #|
      #|pub impl TEventTargetAddEventListenerOptions for Bool
      #|
      #|pub(open) trait TEventTargetRemoveEventListenerOptions : TJsValue {}
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for EventListenerOptions
      #|
      #|pub impl TEventTargetRemoveEventListenerOptions for Bool
      #|
      #|/// [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget) interface.
      #|pub trait TEventTarget: TJsValue {
      #|  add_event_listener(self : Self, type_ : String, callback : (Event) -> Unit, options? : &TEventTargetAddEventListenerOptions) -> Unit = _
      #|  remove_event_listener(self : Self, type_ : String, callback : (Event) -> Unit, options? : &TEventTargetRemoveEventListenerOptions) -> Unit = _
      #|  dispatch_event(self : Self, event : Event) -> Bool = _
      #|}
      #|
      #|/// [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
      #|impl TEventTarget with add_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : (Event) -> Unit, 
      #|options? : &TEventTargetAddEventListenerOptions) -> Unit {
      #|  event_target_add_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(event_listener_ffi(callback)), match options {
      #|Some(v) => v.to_js()
      #|None => JsValue::undefined()
      #|})
      #|}
      #|
      #|/// [EventTarget.removeEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener)
      #|impl TEventTarget with remove_event_listener(self : Self, 
      #|type_ : String, 
      #|callback : (Event) -> Unit, 
      #|options? : &TEventTargetRemoveEventListenerOptions) -> Unit {
      #|  event_target_remove_event_listener_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), TJsValue::to_js(event_listener_ffi(callback)), match options {
      #|Some(v) => v.to_js()
      #|None => JsValue::undefined()
      #|})
      #|}
      #|
      #|/// [EventTarget.dispatchEvent](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent)
      #|impl TEventTarget with dispatch_event(self : Self, 
      #|event : Event) -> Bool {
      #|  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
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
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn event_target_new_ffi() -> EventTarget = "webapi_EventTarget" "new"
      #|
      #|fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "webapi_EventTarget" "addEventListener"
      #|
      #|fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "webapi_EventTarget" "removeEventListener"
      #|
      #|fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool = "webapi_EventTarget" "dispatchEvent"
    ),
  )
}

///|
test "InterfaceEmitter handles interface with nested union arg types" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(optional (DOMString or (unsigned long or boolean)) param = "default");
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam : TJsValue {}
      #|
      #|pub impl TTestInterfaceTestMethodParam for String
      #|
      #|#external
      #|pub type TestInterfaceTestMethodParam2
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam2 : TJsValue {}
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for UInt
      #|
      #|pub impl TTestInterfaceTestMethodParam2 for Bool
      #|
      #|pub impl TJsValue for &TTestInterfaceTestMethodParam2 with to_js(self : &TTestInterfaceTestMethodParam2) -> JsValue = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethodParam for &TTestInterfaceTestMethodParam2
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self, param? : &TTestInterfaceTestMethodParam) -> void = _
      #|}
      #|
      #|/// [TestInterface.testMethod](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/testMethod)
      #|impl TTestInterface with test_method(self : Self, 
      #|param? : &TTestInterfaceTestMethodParam) -> void {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self), match param {
      #|Some(v) => v.to_js()
      #|None => JsValue::undefined()
      #|})
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_test_method_ffi_js(obj: JsValue, param: JsValue) -> JsValue = "(obj, param) => obj.testMethod(param)"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void {
      #|  test_interface_test_method_ffi_js(obj, param).unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_test_method_ffi_wasm(obj: JsValue, param: JsValue) -> JsValue = "webapi_TestInterface" "testMethod"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void {
      #|  test_interface_test_method_ffi_wasm(obj, param).unsafe_cast()
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|#external
      #|pub type TestInterfaceTestMethod
      #|
      #|pub impl TJsValue for TestInterfaceTestMethod with to_js(self: TestInterfaceTestMethod) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for TestInterfaceTestMethod with from_js_any(value : JsAny) -> TestInterfaceTestMethod = "%identity"
      #|
      #|pub fn[T : TTestInterfaceTestMethod + FromJsAny] TestInterfaceTestMethod::into(self : TestInterfaceTestMethod) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TTestInterfaceTestMethod] TestInterfaceTestMethod::from(value : T) -> TestInterfaceTestMethod = "%identity"
      #|
      #|pub impl TTestInterfaceTestMethod for TestInterfaceTestMethod
      #|
      #|pub(open) trait TTestInterfaceTestMethod : TJsValue {}
      #|
      #|pub impl TTestInterfaceTestMethod for String
      #|
      #|pub impl TTestInterfaceTestMethod for UInt
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_test_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.testMethod()"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue) -> TestInterfaceTestMethod {
      #|  test_interface_test_method_ffi_js(obj).unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_test_method_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TestInterface" "testMethod"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue) -> TestInterfaceTestMethod {
      #|  test_interface_test_method_ffi_wasm(obj).unsafe_cast()
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
  inspect(multi.js_ffi)
  inspect(multi.wasm_ffi)
}

///|
test "InterfaceEmitter generates MoonBit code for attributes" {
  let idl =
    #|interface TestInterface {
    #|  undefined sayHello();
    #|  readonly attribute DOMString name;
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
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
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_say_hello_ffi(obj: JsValue) -> Unit = "webapi_TestInterface" "sayHello"
      #|
      #|fn test_interface_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TestInterface" "get_name"
      #|
      #|///|
      #|fn test_interface_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(test_interface_name_ffi_wasm(obj))
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
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
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_last_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TestInterface" "get_lastName"
      #|
      #|///|
      #|fn test_interface_last_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(test_interface_last_name_ffi_wasm(obj))
      #|}
      #|
      #|fn test_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "webapi_TestInterface" "set_lastName"
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("ParentInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for ParentInterface with from_js_any(value : JsAny) -> ParentInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn parent_interface_last_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastName"
      #|
      #|///|
      #|fn parent_interface_last_name_ffi(obj: JsValue) -> String {
      #|  parent_interface_last_name_ffi_js(obj).unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn parent_interface_last_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ParentInterface" "get_lastName"
      #|
      #|///|
      #|fn parent_interface_last_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(parent_interface_last_name_ffi_wasm(obj))
      #|}
    ),
  )
  let (_, emits) = interface_emitter.emit("ChildInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for ChildInterface with from_js_any(value : JsAny) -> ChildInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
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
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn child_interface_last_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ChildInterface" "get_lastName"
      #|
      #|///|
      #|fn child_interface_last_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(child_interface_last_name_ffi_wasm(obj))
      #|}
      #|
      #|fn child_interface_set_last_name_ffi(obj: JsValue, last_name: JsValue) -> Unit = "webapi_ChildInterface" "set_lastName"
    ),
  )
}

///|
test "InterfaceEmitter emits static methods" {
  let idl =
    #|interface TestInterface {
    #|  [NewObject] static Response redirect(USVString url, optional unsigned short status = 302);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_redirect_ffi_js(url: JsValue, status: JsValue) -> JsValue = "(url, status) => TestInterface.redirect(url, status)"
      #|
      #|///|
      #|fn test_interface_redirect_ffi(url: JsValue, status: JsValue) -> Response {
      #|  test_interface_redirect_ffi_js(url, status).unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_redirect_ffi_wasm(url: JsValue, status: JsValue) -> JsValue = "webapi_TestInterface" "redirect"
      #|
      #|///|
      #|fn test_interface_redirect_ffi(url: JsValue, status: JsValue) -> Response {
      #|  test_interface_redirect_ffi_wasm(url, status).unsafe_cast()
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_app_name_ffi_js() -> JsValue = "() => TestInterface.appName"
      #|
      #|///|
      #|fn test_interface_app_name_ffi() -> String {
      #|  test_interface_app_name_ffi_js().unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_app_name_ffi_wasm() -> JsValue = "webapi_TestInterface" "get_appName"
      #|
      #|///|
      #|fn test_interface_app_name_ffi() -> String {
      #|  jsvalue_to_string(test_interface_app_name_ffi_wasm())
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
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
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
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
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_say_hello_ffi(obj: JsValue) -> Unit = "webapi_TestInterface" "sayHello"
      #|
      #|fn test_interface_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TestInterface" "get_name"
      #|
      #|///|
      #|fn test_interface_name_ffi(obj: JsValue) -> String {
      #|  jsvalue_to_string(test_interface_name_ffi_wasm(obj))
      #|}
    ),
  )
}

///|
test "mbt_code_gen_multi emits empty UnionArgTraitImpl inheriting TJsValue" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod((DOMString or boolean) param);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub(open) trait TTestInterfaceTestMethodParam : TJsValue {}
      #|
      #|pub impl TTestInterfaceTestMethodParam for String
      #|
      #|pub impl TTestInterfaceTestMethodParam for Bool
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  test_method(self : Self, param : &TTestInterfaceTestMethodParam) -> void = _
      #|}
      #|
      #|/// [TestInterface.testMethod](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/testMethod)
      #|impl TTestInterface with test_method(self : Self, 
      #|param : &TTestInterfaceTestMethodParam) -> void {
      #|  test_interface_test_method_ffi(TJsValue::to_js(self), param.to_js())
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_test_method_ffi_js(obj: JsValue, param: JsValue) -> JsValue = "(obj, param) => obj.testMethod(param)"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void {
      #|  test_interface_test_method_ffi_js(obj, param).unsafe_cast()
      #|}
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_test_method_ffi_wasm(obj: JsValue, param: JsValue) -> JsValue = "webapi_TestInterface" "testMethod"
      #|
      #|///|
      #|fn test_interface_test_method_ffi(obj: JsValue, param: JsValue) -> void {
      #|  test_interface_test_method_ffi_wasm(obj, param).unsafe_cast()
      #|}
    ),
  )
}

///|
test "mbt_code_gen_multi generates wasm FFI for constructor" {
  let idl =
    #|interface TestInterface {
    #|  constructor(DOMString name);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|pub fn TestInterface::new(name : String) -> TestInterface {
      #|  test_interface_new_ffi(TJsValue::to_js(name))
      #|}
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|
      #|}
      #|
      #|
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_new_ffi(name: JsValue) -> TestInterface = "(name) => new TestInterface(name)"
      #|
      #|
    ),
  )
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
test "mbt_code_gen_multi wasm FFI snapshot for interface with String return" {
  let idl =
    #|interface TestInterface {
    #|  undefined sayHello(DOMString name);
    #|  readonly attribute DOMString tagName;
    #|  attribute unsigned long width;
    #|};
  let interface_emitter = make_interface_emitter(idl)
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
  let interface_emitter = make_interface_emitter(idl)
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
test "mbt_code_gen_multi wasm FFI snapshot for overloaded constructors" {
  let idl =
    #|interface TestInterface {
    #|  constructor(DOMString input, DOMString baseURL, optional DOMString options);
    #|  constructor(optional DOMString input);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_new_ffi(input: JsValue, base_url: JsValue, options: JsValue) -> TestInterface = "webapi_TestInterface" "new"
      #|
      #|fn test_interface_new_2_ffi(input: JsValue) -> TestInterface = "webapi_TestInterface" "new_2"
      #|
      #|
    ),
  )
}

///|
test "mbt_code_gen_multi overloads keep WebIDL member name in JS and MDN" {
  let idl =
    #|interface TestInterface {
    #|  undefined fill(DOMString fillRule);
    #|  undefined fill(DOMString path, DOMString fillRule);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  fill(self : Self, fill_rule : String) -> Unit = _
      #|  fill_path(self : Self, path : String, fill_rule : String) -> Unit = _
      #|}
      #|
      #|/// [TestInterface.fill](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/fill)
      #|impl TTestInterface with fill(self : Self, 
      #|fill_rule : String) -> Unit {
      #|  test_interface_fill_ffi(TJsValue::to_js(self), TJsValue::to_js(fill_rule))
      #|}
      #|
      #|/// [TestInterface.fill](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/fill)
      #|impl TTestInterface with fill_path(self : Self, 
      #|path : String, 
      #|fill_rule : String) -> Unit {
      #|  test_interface_fill_path_ffi(TJsValue::to_js(self), TJsValue::to_js(path), TJsValue::to_js(fill_rule))
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_interface_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "(obj, fill_rule) => obj.fill(fill_rule)"
      #|
      #|extern "js" fn test_interface_fill_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "(obj, path, fill_rule) => obj.fill(path, fill_rule)"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill"
      #|
      #|fn test_interface_fill_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill_path"
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
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_interface_fill_ffi(obj: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill"
      #|
      #|fn test_interface_fill_path_ffi(obj: JsValue, path: JsValue, fill_rule: JsValue) -> Unit = "webapi_TestInterface" "fill_path"
    ),
  )
}

///|
test "convenience method for optional interface return" {
  let idl =
    #|interface Element {};
    #|interface Node {};
    #|interface Document : Node {
    #|  Element? querySelector(DOMString selectors);
    #|  NodeList querySelectorAll(DOMString selectors);
    #|};
    #|interface NodeList {};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("Document")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: Document
      #|
      #|
      #|/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
      #|#external
      #|pub type Document
      #|
      #|pub impl TJsValue for Document with to_js(self: Document) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for Document with from_js_any(value : JsAny) -> Document = "%identity"
      #|
      #|pub fn[T: TDocument] Document::into(self : Document) -> T = "%identity"
      #|
      #|pub impl TDocument for Document
      #|
      #|pub impl TNode for Document
      #|
      #|/// [Document](https://developer.mozilla.org/en-US/docs/Web/API/Document) interface.
      #|pub trait TDocument: TNode {
      #|  query_selector_opt(self : Self, selectors : String) -> Element? = _
      #|  query_selector_all(self : Self, selectors : String) -> NodeList = _
      #|  query_selector(self : Self, selectors : String) -> Element = _
      #|}
      #|
      #|/// [Document.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector)
      #|impl TDocument with query_selector_opt(self : Self, 
      #|selectors : String) -> Element? {
      #|  document_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
      #|}
      #|
      #|/// [Document.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll)
      #|impl TDocument with query_selector_all(self : Self, 
      #|selectors : String) -> NodeList {
      #|  document_query_selector_all_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors))
      #|}
      #|
      #|impl TDocument with query_selector(self : Self, 
      #|selectors : String) -> Element {
      #|  self.query_selector_opt(selectors).unwrap()
      #|}
    ),
  )
  // FFI should be unchanged (no _opt in FFI names)
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn document_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"
      #|
      #|extern "js" fn document_query_selector_all_ffi_js(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"
      #|
      #|///|
      #|fn document_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> NodeList {
      #|  document_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
      #|}
    ),
  )
}

///|
test "convenience method with optional args" {
  let idl =
    #|interface Node {};
    #|interface Element {};
    #|interface ParentNode {
    #|  Element? querySelector(DOMString selectors);
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("ParentNode")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: ParentNode
      #|
      #|
      #|/// [ParentNode](https://developer.mozilla.org/en-US/docs/Web/API/ParentNode)
      #|#external
      #|pub type ParentNode
      #|
      #|pub impl TJsValue for ParentNode with to_js(self: ParentNode) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for ParentNode with from_js_any(value : JsAny) -> ParentNode = "%identity"
      #|
      #|pub fn[T: TParentNode] ParentNode::into(self : ParentNode) -> T = "%identity"
      #|
      #|pub impl TParentNode for ParentNode
      #|
      #|/// [ParentNode](https://developer.mozilla.org/en-US/docs/Web/API/ParentNode) interface.
      #|pub trait TParentNode: TJsValue {
      #|  query_selector_opt(self : Self, selectors : String) -> Element? = _
      #|  query_selector(self : Self, selectors : String) -> Element = _
      #|}
      #|
      #|/// [ParentNode.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/querySelector)
      #|impl TParentNode with query_selector_opt(self : Self, 
      #|selectors : String) -> Element? {
      #|  parent_node_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
      #|}
      #|
      #|impl TParentNode with query_selector(self : Self, 
      #|selectors : String) -> Element {
      #|  self.query_selector_opt(selectors).unwrap()
      #|}
    ),
  )
}

///|
test "no convenience method for non-interface optional return" {
  let idl =
    #|interface TestInterface {
    #|  DOMString? getName();
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("TestInterface")
  let multi = mbt_code_gen_multi(emits)
  // String? return should NOT get _opt rename or convenience method
  inspect(
    multi.shared,
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
      #|pub impl FromJsAny for TestInterface with from_js_any(value : JsAny) -> TestInterface = "%identity"
      #|
      #|pub fn[T: TTestInterface] TestInterface::into(self : TestInterface) -> T = "%identity"
      #|
      #|pub impl TTestInterface for TestInterface
      #|
      #|/// [TestInterface](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface) interface.
      #|pub trait TTestInterface: TJsValue {
      #|  get_name(self : Self) -> String? = _
      #|}
      #|
      #|/// [TestInterface.getName](https://developer.mozilla.org/en-US/docs/Web/API/TestInterface/getName)
      #|impl TTestInterface with get_name(self : Self) -> String? {
      #|  test_interface_get_name_ffi(TJsValue::to_js(self)).to_option()
      #|}
    ),
  )
}

///|
test "InterfaceEmitter resolves typedef→callback chain in attribute setter" {
  let idl =
    #|interface Event {};
    #|callback EventHandlerNonNull = any (Event event);
    #|typedef EventHandlerNonNull? EventHandler;
    #|interface GlobalEventHandlers {
    #|  attribute EventHandler onclick;
    #|};
  let interface_emitter = make_interface_emitter(idl)
  let (_, emits) = interface_emitter.emit("GlobalEventHandlers")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: GlobalEventHandlers
      #|
      #|
      #|/// [GlobalEventHandlers](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers)
      #|#external
      #|pub type GlobalEventHandlers
      #|
      #|pub impl TJsValue for GlobalEventHandlers with to_js(self: GlobalEventHandlers) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for GlobalEventHandlers with from_js_any(value : JsAny) -> GlobalEventHandlers = "%identity"
      #|
      #|pub fn[T: TGlobalEventHandlers] GlobalEventHandlers::into(self : GlobalEventHandlers) -> T = "%identity"
      #|
      #|pub impl TGlobalEventHandlers for GlobalEventHandlers
      #|
      #|/// [GlobalEventHandlers](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers) interface.
      #|pub trait TGlobalEventHandlers: TJsValue {
      #|  onclick(self : Self) -> EventHandler = _
      #|  set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit = _
      #|}
      #|
      #|/// [GlobalEventHandlers.onclick](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers/onclick)
      #|impl TGlobalEventHandlers with onclick(self : Self) -> EventHandler {
      #|  global_event_handlers_onclick_ffi(TJsValue::to_js(self))
      #|}
      #|
      #|/// [GlobalEventHandlers.onclick](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers/onclick)
      #|impl TGlobalEventHandlers with set_onclick(self : Self, 
      #|onclick : (Event) -> JsValue) -> Unit {
      #|  global_event_handlers_set_onclick_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onclick)))
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn global_event_handlers_onclick_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onclick"
      #|
      #|///|
      #|fn global_event_handlers_onclick_ffi(obj: JsValue) -> EventHandler {
      #|  global_event_handlers_onclick_ffi_js(obj).unsafe_cast()
      #|}
      #|
      #|extern "js" fn global_event_handlers_set_onclick_ffi(obj: JsValue, onclick: JsValue) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn global_event_handlers_onclick_ffi_wasm(obj: JsValue) -> JsValue = "webapi_GlobalEventHandlers" "get_onclick"
      #|
      #|///|
      #|fn global_event_handlers_onclick_ffi(obj: JsValue) -> EventHandler {
      #|  global_event_handlers_onclick_ffi_wasm(obj).unsafe_cast()
      #|}
      #|
      #|fn global_event_handlers_set_onclick_ffi(obj: JsValue, onclick: JsValue) -> Unit = "webapi_GlobalEventHandlers" "set_onclick"
    ),
  )
}
