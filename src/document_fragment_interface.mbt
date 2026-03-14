// Do not edit. This file is generated.
// MoonBit type: DocumentFragment
// Specifications: dom.idl

/// [DocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment)
#external
pub type DocumentFragment

pub impl TJsValue for DocumentFragment with to_js(self: DocumentFragment) -> JsValue = "%identity"

pub impl FromJsAny for DocumentFragment with from_js_any(value : JsAny) -> DocumentFragment = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDocumentFragment] DocumentFragment::into(self : DocumentFragment) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDocumentFragment] DocumentFragment::unsafe_into(self : DocumentFragment) -> T = "%identity"

pub impl HasConstructor for DocumentFragment with constructor_name() { "DocumentFragment" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDocumentFragment + HasConstructor] DocumentFragment::try_into(self : DocumentFragment) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDocumentFragment for DocumentFragment

pub impl TNode for DocumentFragment

pub impl TEventTarget for DocumentFragment

pub fn DocumentFragment::new() -> DocumentFragment {
  document_fragment_new_ffi()
}

pub(open) trait TDocumentFragmentPrependNodes : TJsValue {}

pub impl TDocumentFragmentPrependNodes for Node

pub impl TDocumentFragmentPrependNodes for String

pub(open) trait TDocumentFragmentAppendNodes : TJsValue {}

pub impl TDocumentFragmentAppendNodes for Node

pub impl TDocumentFragmentAppendNodes for String

pub(open) trait TDocumentFragmentReplaceChildrenNodes : TJsValue {}

pub impl TDocumentFragmentReplaceChildrenNodes for Node

pub impl TDocumentFragmentReplaceChildrenNodes for String

/// [DocumentFragment](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment) interface.
pub trait TDocumentFragment: TNode {
  get_element_by_id_opt(self : Self, element_id : String) -> Element? = _
  children(self : Self) -> HTMLCollection = _
  first_element_child(self : Self) -> Element = _
  last_element_child(self : Self) -> Element = _
  child_element_count(self : Self) -> UInt = _
  prepend(self : Self, nodes : Array[&TDocumentFragmentPrependNodes]) -> Unit = _
  append(self : Self, nodes : Array[&TDocumentFragmentAppendNodes]) -> Unit = _
  replace_children(self : Self, nodes : Array[&TDocumentFragmentReplaceChildrenNodes]) -> Unit = _
  move_before(self : Self, node : &TNode, child : &TNode) -> Unit = _
  query_selector_opt(self : Self, selectors : String) -> Element? = _
  query_selector_all(self : Self, selectors : String) -> NodeList = _
  get_element_by_id(self : Self, element_id : String) -> Element = _
  query_selector(self : Self, selectors : String) -> Element = _
}

/// [DocumentFragment.getElementById](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/getElementById)
impl TDocumentFragment with get_element_by_id_opt(self : Self, 
element_id : String) -> Element? {
  document_fragment_get_element_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(element_id)).to_option()
}

/// [DocumentFragment.children](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/children)
impl TDocumentFragment with children(self : Self) -> HTMLCollection {
  document_fragment_children_ffi(TJsValue::to_js(self))
}

/// [DocumentFragment.firstElementChild](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/firstElementChild)
impl TDocumentFragment with first_element_child(self : Self) -> Element {
  document_fragment_first_element_child_ffi(TJsValue::to_js(self))
}

/// [DocumentFragment.lastElementChild](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/lastElementChild)
impl TDocumentFragment with last_element_child(self : Self) -> Element {
  document_fragment_last_element_child_ffi(TJsValue::to_js(self))
}

/// [DocumentFragment.childElementCount](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/childElementCount)
impl TDocumentFragment with child_element_count(self : Self) -> UInt {
  document_fragment_child_element_count_ffi(TJsValue::to_js(self))
}

/// [DocumentFragment.prepend](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/prepend)
impl TDocumentFragment with prepend(self : Self, 
nodes : Array[&TDocumentFragmentPrependNodes]) -> Unit {
  document_fragment_prepend_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentFragmentPrependNodes) -> JsValue { v.to_js() })))
}

/// [DocumentFragment.append](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/append)
impl TDocumentFragment with append(self : Self, 
nodes : Array[&TDocumentFragmentAppendNodes]) -> Unit {
  document_fragment_append_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentFragmentAppendNodes) -> JsValue { v.to_js() })))
}

/// [DocumentFragment.replaceChildren](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/replaceChildren)
impl TDocumentFragment with replace_children(self : Self, 
nodes : Array[&TDocumentFragmentReplaceChildrenNodes]) -> Unit {
  document_fragment_replace_children_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentFragmentReplaceChildrenNodes) -> JsValue { v.to_js() })))
}

/// [DocumentFragment.moveBefore](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/moveBefore)
impl TDocumentFragment with move_before(self : Self, 
node : &TNode, 
child : &TNode) -> Unit {
  document_fragment_move_before_ffi(TJsValue::to_js(self), TJsValue::to_js(node), TJsValue::to_js(child))
}

/// [DocumentFragment.querySelector](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/querySelector)
impl TDocumentFragment with query_selector_opt(self : Self, 
selectors : String) -> Element? {
  document_fragment_query_selector_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors)).to_option()
}

/// [DocumentFragment.querySelectorAll](https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment/querySelectorAll)
impl TDocumentFragment with query_selector_all(self : Self, 
selectors : String) -> NodeList {
  document_fragment_query_selector_all_ffi(TJsValue::to_js(self), TJsValue::to_js(selectors))
}

impl TDocumentFragment with get_element_by_id(self : Self, 
element_id : String) -> Element {
  self.get_element_by_id_opt(element_id).unwrap()
}

impl TDocumentFragment with query_selector(self : Self, 
selectors : String) -> Element {
  self.query_selector_opt(selectors).unwrap()
}

#cfg(target="js")
extern "js" fn document_fragment_new_ffi() -> DocumentFragment = "() => new DocumentFragment()"

#cfg(target="js")
extern "js" fn document_fragment_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

#cfg(target="js")
extern "js" fn document_fragment_children_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.children"

///|
#cfg(target="js")
fn document_fragment_children_ffi(obj: JsValue) -> HTMLCollection {
  document_fragment_children_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_fragment_first_element_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
#cfg(target="js")
fn document_fragment_first_element_child_ffi(obj: JsValue) -> Element {
  document_fragment_first_element_child_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_fragment_last_element_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
#cfg(target="js")
fn document_fragment_last_element_child_ffi(obj: JsValue) -> Element {
  document_fragment_last_element_child_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_fragment_child_element_count_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
#cfg(target="js")
fn document_fragment_child_element_count_ffi(obj: JsValue) -> UInt {
  document_fragment_child_element_count_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_fragment_prepend_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.prepend(...nodes)"

#cfg(target="js")
extern "js" fn document_fragment_append_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.append(...nodes)"

#cfg(target="js")
extern "js" fn document_fragment_replace_children_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceChildren(...nodes)"

#cfg(target="js")
extern "js" fn document_fragment_move_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

#cfg(target="js")
extern "js" fn document_fragment_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

#cfg(target="js")
extern "js" fn document_fragment_query_selector_all_ffi_js(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
#cfg(target="js")
fn document_fragment_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> NodeList {
  document_fragment_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
}

#cfg(target="wasm-gc")
fn document_fragment_new_ffi() -> DocumentFragment = "webapi_DocumentFragment" "new"

#cfg(target="wasm-gc")
fn document_fragment_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "webapi_DocumentFragment" "getElementById"

#cfg(target="wasm-gc")
fn document_fragment_children_ffi(obj: JsValue) -> HTMLCollection = "webapi_DocumentFragment" "get_children"

#cfg(target="wasm-gc")
fn document_fragment_first_element_child_ffi(obj: JsValue) -> Element = "webapi_DocumentFragment" "get_firstElementChild"

#cfg(target="wasm-gc")
fn document_fragment_last_element_child_ffi(obj: JsValue) -> Element = "webapi_DocumentFragment" "get_lastElementChild"

#cfg(target="wasm-gc")
fn document_fragment_child_element_count_ffi(obj: JsValue) -> UInt = "webapi_DocumentFragment" "get_childElementCount"

#cfg(target="wasm-gc")
fn document_fragment_prepend_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentFragment" "prepend"

#cfg(target="wasm-gc")
fn document_fragment_append_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentFragment" "append"

#cfg(target="wasm-gc")
fn document_fragment_replace_children_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentFragment" "replaceChildren"

#cfg(target="wasm-gc")
fn document_fragment_move_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Unit = "webapi_DocumentFragment" "moveBefore"

#cfg(target="wasm-gc")
fn document_fragment_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "webapi_DocumentFragment" "querySelector"

#cfg(target="wasm-gc")
fn document_fragment_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> NodeList = "webapi_DocumentFragment" "querySelectorAll"