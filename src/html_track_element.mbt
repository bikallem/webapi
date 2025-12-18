// Auto-generated MoonBit bindings for HTMLTrackElement interface
// Do not edit manually

#external
pub type HTMLTrackElement

pub impl TJsValue for HTMLTrackElement with to_js(self: HTMLTrackElement) -> JsValue = "%identity"


pub fn[T: THTMLTrackElement] HTMLTrackElement::into(self : HTMLTrackElement) -> T = "%identity"
pub impl THTMLTrackElement for HTMLTrackElement

pub fn HTMLTrackElement::new() -> HTMLTrackElement = "webapi_HTMLTrackElement" "new"

pub trait THTMLTrackElement: TJsValue + TTHTMLElement {
  kind(self: Self) -> String = _
  set_kind(self: Self, value : String) -> Unit = _
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  srclang(self: Self) -> String = _
  set_srclang(self: Self, value : String) -> Unit = _
  label(self: Self) -> String = _
  set_label(self: Self, value : String) -> Unit = _
  default(self: Self) -> Bool = _
  set_default(self: Self, value : Bool) -> Unit = _
  ready_state(self: Self) -> UInt = _
  track(self: Self) -> TextTrack = _
}

///|
fn html_track_element_kind_ffi(obj : JsValue) -> String = "webapi_HTMLTrackElement" "kind"

///|
impl THTMLTrackElement with kind(self : Self) -> String {
  html_track_element_kind_ffi(self.to_js())
}

///|
fn html_track_element_set_kind_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTrackElement" "set_kind"

///|
impl THTMLTrackElement with set_kind(self : Self, value : String) -> Unit {
  html_track_element_set_kind_ffi(self.to_js(), value)
}

///|
fn html_track_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLTrackElement" "src"

///|
impl THTMLTrackElement with src(self : Self) -> String {
  html_track_element_src_ffi(self.to_js())
}

///|
fn html_track_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTrackElement" "set_src"

///|
impl THTMLTrackElement with set_src(self : Self, value : String) -> Unit {
  html_track_element_set_src_ffi(self.to_js(), value)
}

///|
fn html_track_element_srclang_ffi(obj : JsValue) -> String = "webapi_HTMLTrackElement" "srclang"

///|
impl THTMLTrackElement with srclang(self : Self) -> String {
  html_track_element_srclang_ffi(self.to_js())
}

///|
fn html_track_element_set_srclang_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTrackElement" "set_srclang"

///|
impl THTMLTrackElement with set_srclang(self : Self, value : String) -> Unit {
  html_track_element_set_srclang_ffi(self.to_js(), value)
}

///|
fn html_track_element_label_ffi(obj : JsValue) -> String = "webapi_HTMLTrackElement" "label"

///|
impl THTMLTrackElement with label(self : Self) -> String {
  html_track_element_label_ffi(self.to_js())
}

///|
fn html_track_element_set_label_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTrackElement" "set_label"

///|
impl THTMLTrackElement with set_label(self : Self, value : String) -> Unit {
  html_track_element_set_label_ffi(self.to_js(), value)
}

///|
fn html_track_element_default_ffi(obj : JsValue) -> Bool = "webapi_HTMLTrackElement" "default"

///|
impl THTMLTrackElement with default(self : Self) -> Bool {
  html_track_element_default_ffi(self.to_js())
}

///|
fn html_track_element_set_default_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTrackElement" "set_default"

///|
impl THTMLTrackElement with set_default(self : Self, value : Bool) -> Unit {
  html_track_element_set_default_ffi(self.to_js(), value)
}

///|
fn html_track_element_ready_state_ffi(obj : JsValue) -> UInt = "webapi_HTMLTrackElement" "readyState"

///|
impl THTMLTrackElement with ready_state(self : Self) -> UInt {
  html_track_element_ready_state_ffi(self.to_js())
}

///|
fn html_track_element_track_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "track"

///|
impl THTMLTrackElement with track(self : Self) -> TextTrack {
  html_track_element_track_ffi(self.to_js()).unsafe_cast()
}