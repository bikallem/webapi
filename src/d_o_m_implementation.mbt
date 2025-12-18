// Auto-generated MoonBit bindings for DOMImplementation interface
// Do not edit manually

#external
pub type DOMImplementation

pub impl TJsValue for DOMImplementation with to_js(self: DOMImplementation) -> JsValue = "%identity"


pub fn[T: TDOMImplementation] DOMImplementation::into(self : DOMImplementation) -> T = "%identity"
pub impl TDOMImplementation for DOMImplementation

pub trait TDOMImplementation: TJSValue {
  create_document_type(self: Self, name : String, public_id : String, system_id : String) -> &TDocumentType = _
  create_document(self: Self, namespace : String, qualified_name : String, doctype? : &TDocumentType) -> XMLDocument = _
  create_h_t_m_l_document(self: Self, title? : String) -> &TDocument = _
  has_feature(self: Self) -> Bool = _
}

///|
fn d_o_m_implementation_create_document_type_ffi(obj : JsValue, name : JsValue, public_id : JsValue, system_id : JsValue) -> JsValue = "webapi_DOMImplementation" "createDocumentType"

///|
impl TDOMImplementation with create_document_type(self : Self, name : String, public_id : String, system_id : String) -> &TDocumentType {
  d_o_m_implementation_create_document_type_ffi(self.to_js(), TJsValue::to_js(name), TJsValue::to_js(public_id), TJsValue::to_js(system_id)).unsafe_cast()
}

///|
fn d_o_m_implementation_create_document_ffi(obj : JsValue, namespace : JsValue, qualified_name : JsValue, doctype : JsValue) -> JsValue = "webapi_DOMImplementation" "createDocument"

///|
impl TDOMImplementation with create_document(self : Self, namespace : String, qualified_name : String, doctype? : &TDocumentType) -> XMLDocument {
  d_o_m_implementation_create_document_ffi(self.to_js(), TJsValue::to_js(namespace), TJsValue::to_js(qualified_name), doctype.to_js()).unsafe_cast()
}

///|
fn d_o_m_implementation_create_h_t_m_l_document_ffi(obj : JsValue, title : JsValue) -> JsValue = "webapi_DOMImplementation" "createHTMLDocument"

///|
impl TDOMImplementation with create_h_t_m_l_document(self : Self, title? : String) -> &TDocument {
  d_o_m_implementation_create_h_t_m_l_document_ffi(self.to_js(), TJsValue::to_js(title)).unsafe_cast()
}

///|
fn d_o_m_implementation_has_feature_ffi(obj : JsValue) -> Bool = "webapi_DOMImplementation" "hasFeature"

///|
impl TDOMImplementation with has_feature(self : Self) -> Bool {
  d_o_m_implementation_has_feature_ffi(self.to_js())
}