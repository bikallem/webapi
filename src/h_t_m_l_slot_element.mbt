// Auto-generated MoonBit bindings for HTMLSlotElement interface
// Do not edit manually

#external
pub type HTMLSlotElement

pub impl TJsValue for HTMLSlotElement with to_js(self: HTMLSlotElement) -> JsValue = "%identity"


pub fn[T: THTMLSlotElement] HTMLSlotElement::into(self : HTMLSlotElement) -> T = "%identity"
pub impl THTMLSlotElement for HTMLSlotElement

pub fn HTMLSlotElement::new() -> HTMLSlotElement = "webapi_HTMLSlotElement" "new"

/// Union arg trait
pub(open) trait TAssignNodesArg {
  to_js(self : Self) -> JsValue
}

pub impl TAssignNodesArg for &TElement with to_js(self : &TElement) -> JsValue = "%identity"

pub impl TAssignNodesArg for &TText with to_js(self : &TText) -> JsValue = "%identity"

pub trait THTMLSlotElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  assigned_nodes(self: Self, options? : AssignedNodesOptions) -> Array[&TNode] = _
  assigned_elements(self: Self, options? : AssignedNodesOptions) -> Array[&TElement] = _
  assign(self: Self, nodes : &TAssignNodesArg) -> Unit = _
}

///|
fn h_t_m_l_slot_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLSlotElement" "name"

///|
impl THTMLSlotElement with name(self : Self) -> String {
  h_t_m_l_slot_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_slot_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSlotElement" "set_name"

///|
impl THTMLSlotElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_slot_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_slot_element_assigned_nodes_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_HTMLSlotElement" "assignedNodes"

///|
impl THTMLSlotElement with assigned_nodes(self : Self, options? : AssignedNodesOptions) -> Array[&TNode] {
  h_t_m_l_slot_element_assigned_nodes_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn h_t_m_l_slot_element_assigned_elements_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_HTMLSlotElement" "assignedElements"

///|
impl THTMLSlotElement with assigned_elements(self : Self, options? : AssignedNodesOptions) -> Array[&TElement] {
  h_t_m_l_slot_element_assigned_elements_ffi(self.to_js(), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn h_t_m_l_slot_element_assign_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_HTMLSlotElement" "assign"

///|
impl THTMLSlotElement with assign(self : Self, nodes : &TAssignNodesArg) -> Unit {
  h_t_m_l_slot_element_assign_ffi(self.to_js(), nodes.to_js())
}