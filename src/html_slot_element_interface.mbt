// Do not edit. This file is generated.
// MoonBit type: HTMLSlotElement
// Specifications: html.idl

/// [HTMLSlotElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement)
#external
pub type HTMLSlotElement

pub impl TJsValue for HTMLSlotElement with to_js(self: HTMLSlotElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLSlotElement with from_js_any(value : JsAny) -> HTMLSlotElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLSlotElement] HTMLSlotElement::into(self : HTMLSlotElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLSlotElement] HTMLSlotElement::unsafe_into(self : HTMLSlotElement) -> T = "%identity"

pub impl HasConstructor for HTMLSlotElement with constructor_name() { "HTMLSlotElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLSlotElement + HasConstructor] HTMLSlotElement::try_into(self : HTMLSlotElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLSlotElement for HTMLSlotElement

pub impl THTMLElement for HTMLSlotElement

pub impl TElement for HTMLSlotElement

pub impl TNode for HTMLSlotElement

pub impl TEventTarget for HTMLSlotElement

pub fn HTMLSlotElement::new() -> HTMLSlotElement {
  html_slot_element_new_ffi()
}

pub(open) trait THTMLSlotElementAssignNodes : TJsValue {}

pub impl THTMLSlotElementAssignNodes for Element

pub impl THTMLSlotElementAssignNodes for Text

/// [HTMLSlotElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement) interface.
pub trait THTMLSlotElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  assigned_nodes(self : Self, options? : AssignedNodesOptions) -> Array[Node] = _
  assigned_elements(self : Self, options? : AssignedNodesOptions) -> Array[Element] = _
  assign(self : Self, nodes : Array[&THTMLSlotElementAssignNodes]) -> Unit = _
}

/// [HTMLSlotElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/name)
impl THTMLSlotElement with name(self : Self) -> String {
  html_slot_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLSlotElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/name)
impl THTMLSlotElement with set_name(self : Self, 
name : String) -> Unit {
  html_slot_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLSlotElement.assignedNodes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assignedNodes)
impl THTMLSlotElement with assigned_nodes(self : Self, 
options? : AssignedNodesOptions) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [HTMLSlotElement.assignedElements](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assignedElements)
impl THTMLSlotElement with assigned_elements(self : Self, 
options? : AssignedNodesOptions) -> Array[Element] {
  html_slot_element_assigned_elements_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [HTMLSlotElement.assign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assign)
impl THTMLSlotElement with assign(self : Self, 
nodes : Array[&THTMLSlotElementAssignNodes]) -> Unit {
  html_slot_element_assign_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &THTMLSlotElementAssignNodes) -> JsValue { v.to_js() })))
}

#cfg(target="js")
extern "js" fn html_slot_element_new_ffi() -> HTMLSlotElement = "() => new HTMLSlotElement()"

#cfg(target="js")
extern "js" fn html_slot_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_slot_element_name_ffi(obj: JsValue) -> String {
  html_slot_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_slot_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_slot_element_assigned_nodes_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.assignedNodes(options)"

///|
#cfg(target="js")
fn html_slot_element_assigned_nodes_ffi(obj: JsValue, options: JsValue) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_slot_element_assigned_elements_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.assignedElements(options)"

///|
#cfg(target="js")
fn html_slot_element_assigned_elements_ffi(obj: JsValue, options: JsValue) -> Array[Element] {
  html_slot_element_assigned_elements_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_slot_element_assign_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.assign(...nodes)"

#cfg(target="wasm-gc")
fn html_slot_element_new_ffi() -> HTMLSlotElement = "webapi_HTMLSlotElement" "new"

#cfg(target="wasm-gc")
fn html_slot_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSlotElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_slot_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_slot_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_slot_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLSlotElement" "set_name"

#cfg(target="wasm-gc")
fn html_slot_element_assigned_nodes_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_HTMLSlotElement" "assignedNodes"

///|
#cfg(target="wasm-gc")
fn html_slot_element_assigned_nodes_ffi(obj: JsValue, options: JsValue) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi_wasm(obj, options).to_array()
}

#cfg(target="wasm-gc")
fn html_slot_element_assigned_elements_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_HTMLSlotElement" "assignedElements"

///|
#cfg(target="wasm-gc")
fn html_slot_element_assigned_elements_ffi(obj: JsValue, options: JsValue) -> Array[Element] {
  html_slot_element_assigned_elements_ffi_wasm(obj, options).to_array()
}

#cfg(target="wasm-gc")
fn html_slot_element_assign_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_HTMLSlotElement" "assign"