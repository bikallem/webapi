// Do not edit. This file is generated.
// MoonBit type: HTMLSlotElement
// Specifications: html.idl

/// [HTMLSlotElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement)
#external
pub type HTMLSlotElement

pub impl TJsValue for HTMLSlotElement with to_js(self: HTMLSlotElement) -> JsValue = "%identity"

pub fn[T: THTMLSlotElement] HTMLSlotElement::into(self : HTMLSlotElement) -> T = "%identity"

pub impl THTMLSlotElement for HTMLSlotElement

pub impl THTMLElement for HTMLSlotElement

pub impl TElement for HTMLSlotElement

pub impl TNode for HTMLSlotElement

pub impl TEventTarget for HTMLSlotElement

pub fn HTMLSlotElement::new() -> HTMLSlotElement {
  html_slot_element_new_ffi()
}

pub(open) trait THTMLSlotElementAssignNodes {
  to_js(self : Self) -> JsValue
}

pub impl THTMLSlotElementAssignNodes for Element with to_js(self : Element) -> JsValue = "%identity"

pub impl THTMLSlotElementAssignNodes for Text with to_js(self : Text) -> JsValue = "%identity"

/// [HTMLSlotElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement) interface.
pub trait THTMLSlotElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  assigned_nodes(self : Self, options? : AssignedNodesOptions) -> Array[Node] = _
  assigned_elements(self : Self, options? : AssignedNodesOptions) -> Array[Element] = _
  assign(self : Self, nodes : &THTMLSlotElementAssignNodes) -> Unit = _
}

/// [HTMLSlotElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/name)
impl THTMLSlotElement with name(self : Self) -> String {
  html_slot_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLSlotElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/name)
impl THTMLSlotElement with set_name(self : Self, 
name : String) -> Unit {
  html_slot_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLSlotElement.assignedNodes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assignedNodes)
impl THTMLSlotElement with assigned_nodes(self : Self, 
options? : AssignedNodesOptions = AssignedNodesOptions::empty()) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

/// [HTMLSlotElement.assignedElements](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assignedElements)
impl THTMLSlotElement with assigned_elements(self : Self, 
options? : AssignedNodesOptions = AssignedNodesOptions::empty()) -> Array[Element] {
  html_slot_element_assigned_elements_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

/// [HTMLSlotElement.assign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement/assign)
impl THTMLSlotElement with assign(self : Self, 
nodes : &THTMLSlotElementAssignNodes) -> Unit {
  html_slot_element_assign_ffi(TJsValue::to_js(self), nodes.to_js())
}