// Do not edit. This file is generated.
// MoonBit type: CompositionEventInit
// Specifications: uievents.idl, dom.idl

/// [CompositionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEventInit)
#external
pub type CompositionEventInit

pub impl TJsValue for CompositionEventInit with to_js(self: CompositionEventInit) -> JsValue = "%identity"

pub impl FromJsAny for CompositionEventInit with from_js_any(value : JsAny) -> CompositionEventInit = "%identity"

pub fn CompositionEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
view? : &TWindow, 
detail? : Int, 
which? : UInt, 
data? : String) -> CompositionEventInit {
  composition_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(view), opt_to_js(detail), opt_to_js(which), opt_to_js(data))
}

pub fn CompositionEventInit::empty() -> CompositionEventInit { composition_event_init_empty_ffi() }

pub fn CompositionEventInit::bubbles(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CompositionEventInit::cancelable(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CompositionEventInit::composed(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CompositionEventInit::view(self : CompositionEventInit) -> Window? {
  composition_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

pub fn CompositionEventInit::detail(self : CompositionEventInit) -> Int? {
  composition_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CompositionEventInit::which(self : CompositionEventInit) -> UInt? {
  composition_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CompositionEventInit::data(self : CompositionEventInit) -> String? {
  composition_event_init_get_data_ffi(TJsValue::to_js(self)).to_option_prim()
}