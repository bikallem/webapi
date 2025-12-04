// Auto-generated MoonBit bindings for Window

// Do not edit manually

//
// WebIDL Interface:
// partial interface Window {
//     [NewObject] MediaQueryList matchMedia(CSSOMString query);
//     [SameObject, Replaceable] readonly attribute Screen screen;
//     [SameObject, Replaceable] readonly attribute VisualViewport? visualViewport;
// 
//     // browsing context
//     undefined moveTo(long x, long y);
//     undefined moveBy(long x, long y);
//     undefined resizeTo(long width, long height);
//     undefined resizeBy(long x, long y);
// 
//     // viewport
//     [Replaceable] readonly attribute long innerWidth;
//     [Replaceable] readonly attribute long innerHeight;
// 
//     // viewport scrolling
//     [Replaceable] readonly attribute double scrollX;
//     [Replaceable] readonly attribute double pageXOffset;
//     [Replaceable] readonly attribute double scrollY;
//     [Replaceable] readonly attribute double pageYOffset;
//     Promise<undefined> scroll(optional ScrollToOptions options = {});
//     Promise<undefined> scroll(unrestricted double x, unrestricted double y);
//     Promise<undefined> scrollTo(optional ScrollToOptions options = {});
//     Promise<undefined> scrollTo(unrestricted double x, unrestricted double y);
//     Promise<undefined> scrollBy(optional ScrollToOptions options = {});
//     Promise<undefined> scrollBy(unrestricted double x, unrestricted double y);
// 
//     // client
//     [Replaceable] readonly attribute long screenX;
//     [Replaceable] readonly attribute long screenLeft;
//     [Replaceable] readonly attribute long screenY;
//     [Replaceable] readonly attribute long screenTop;
//     [Replaceable] readonly attribute long outerWidth;
//     [Replaceable] readonly attribute long outerHeight;
//     [Replaceable] readonly attribute double devicePixelRatio;
// };
// 
// partial interface Window {
//   [NewObject] CSSStyleProperties getComputedStyle(Element elt, optional CSSOMString? pseudoElt);
// };
// 
// partial interface Window {
//   [Replaceable] readonly attribute (Event or undefined) event; // legacy
// };
// 
// [Global=Window,
//  Exposed=Window,
//  LegacyUnenumerableNamedProperties]
// interface Window : EventTarget {
//   // the current browsing context
//   [LegacyUnforgeable] readonly attribute WindowProxy window;
//   [Replaceable] readonly attribute WindowProxy self;
//   [LegacyUnforgeable] readonly attribute Document document;
//   attribute DOMString name;
//   [PutForwards=href, LegacyUnforgeable] readonly attribute Location location;
//   readonly attribute History history;
//   [Replaceable] readonly attribute Navigation navigation;
//   readonly attribute CustomElementRegistry customElements;
//   [Replaceable] readonly attribute BarProp locationbar;
//   [Replaceable] readonly attribute BarProp menubar;
//   [Replaceable] readonly attribute BarProp personalbar;
//   [Replaceable] readonly attribute BarProp scrollbars;
//   [Replaceable] readonly attribute BarProp statusbar;
//   [Replaceable] readonly attribute BarProp toolbar;
//   attribute DOMString status;
//   undefined close();
//   readonly attribute boolean closed;
//   undefined stop();
//   undefined focus();
//   undefined blur();
// 
//   // other browsing contexts
//   [Replaceable] readonly attribute WindowProxy frames;
//   [Replaceable] readonly attribute unsigned long length;
//   [LegacyUnforgeable] readonly attribute WindowProxy? top;
//   attribute any opener;
//   [Replaceable] readonly attribute WindowProxy? parent;
//   readonly attribute Element? frameElement;
//   WindowProxy? open(optional USVString url = "", optional DOMString target = "_blank", optional [LegacyNullToEmptyString] DOMString features = "");
// 
//   // Since this is the global object, the IDL named getter adds a NamedPropertiesObject exotic
//   // object on the prototype chain. Indeed, this does not make the global object an exotic object.
//   // Indexed access is taken care of by the WindowProxy exotic object.
//   getter object (DOMString name);
// 
//   // the user agent
//   readonly attribute Navigator navigator;
//   [Replaceable] readonly attribute Navigator clientInformation; // legacy alias of .navigator
//   readonly attribute boolean originAgentCluster;
// 
//   // user prompts
//   undefined alert();
//   undefined alert(DOMString message);
//   boolean confirm(optional DOMString message = "");
//   DOMString? prompt(optional DOMString message = "", optional DOMString default = "");
//   undefined print();
// 
//   undefined postMessage(any message, USVString targetOrigin, optional sequence<object> transfer = []);
//   undefined postMessage(any message, optional WindowPostMessageOptions options = {});
// 
//   // also has obsolete members
// };
// 
// partial interface Window {
//   undefined captureEvents();
//   undefined releaseEvents();
// 
//   [Replaceable, SameObject] readonly attribute External external;
// };
// 
// interface mixin GlobalEventHandlers {
//   attribute EventHandler onabort;
//   attribute EventHandler onauxclick;
//   attribute EventHandler onbeforeinput;
//   attribute EventHandler onbeforematch;
//   attribute EventHandler onbeforetoggle;
//   attribute EventHandler onblur;
//   attribute EventHandler oncancel;
//   attribute EventHandler oncanplay;
//   attribute EventHandler oncanplaythrough;
//   attribute EventHandler onchange;
//   attribute EventHandler onclick;
//   attribute EventHandler onclose;
//   attribute EventHandler oncommand;
//   attribute EventHandler oncontextlost;
//   attribute EventHandler oncontextmenu;
//   attribute EventHandler oncontextrestored;
//   attribute EventHandler oncopy;
//   attribute EventHandler oncuechange;
//   attribute EventHandler oncut;
//   attribute EventHandler ondblclick;
//   attribute EventHandler ondrag;
//   attribute EventHandler ondragend;
//   attribute EventHandler ondragenter;
//   attribute EventHandler ondragleave;
//   attribute EventHandler ondragover;
//   attribute EventHandler ondragstart;
//   attribute EventHandler ondrop;
//   attribute EventHandler ondurationchange;
//   attribute EventHandler onemptied;
//   attribute EventHandler onended;
//   attribute OnErrorEventHandler onerror;
//   attribute EventHandler onfocus;
//   attribute EventHandler onformdata;
//   attribute EventHandler oninput;
//   attribute EventHandler oninvalid;
//   attribute EventHandler onkeydown;
//   attribute EventHandler onkeypress;
//   attribute EventHandler onkeyup;
//   attribute EventHandler onload;
//   attribute EventHandler onloadeddata;
//   attribute EventHandler onloadedmetadata;
//   attribute EventHandler onloadstart;
//   attribute EventHandler onmousedown;
//   [LegacyLenientThis] attribute EventHandler onmouseenter;
//   [LegacyLenientThis] attribute EventHandler onmouseleave;
//   attribute EventHandler onmousemove;
//   attribute EventHandler onmouseout;
//   attribute EventHandler onmouseover;
//   attribute EventHandler onmouseup;
//   attribute EventHandler onpaste;
//   attribute EventHandler onpause;
//   attribute EventHandler onplay;
//   attribute EventHandler onplaying;
//   attribute EventHandler onprogress;
//   attribute EventHandler onratechange;
//   attribute EventHandler onreset;
//   attribute EventHandler onresize;
//   attribute EventHandler onscroll;
//   attribute EventHandler onscrollend;
//   attribute EventHandler onsecuritypolicyviolation;
//   attribute EventHandler onseeked;
//   attribute EventHandler onseeking;
//   attribute EventHandler onselect;
//   attribute EventHandler onslotchange;
//   attribute EventHandler onstalled;
//   attribute EventHandler onsubmit;
//   attribute EventHandler onsuspend;
//   attribute EventHandler ontimeupdate;
//   attribute EventHandler ontoggle;
//   attribute EventHandler onvolumechange;
//   attribute EventHandler onwaiting;
//   attribute EventHandler onwebkitanimationend;
//   attribute EventHandler onwebkitanimationiteration;
//   attribute EventHandler onwebkitanimationstart;
//   attribute EventHandler onwebkittransitionend;
//   attribute EventHandler onwheel;
// };
// 
// interface mixin WindowEventHandlers {
//   attribute EventHandler onafterprint;
//   attribute EventHandler onbeforeprint;
//   attribute OnBeforeUnloadEventHandler onbeforeunload;
//   attribute EventHandler onhashchange;
//   attribute EventHandler onlanguagechange;
//   attribute EventHandler onmessage;
//   attribute EventHandler onmessageerror;
//   attribute EventHandler onoffline;
//   attribute EventHandler ononline;
//   attribute EventHandler onpagehide;
//   attribute EventHandler onpagereveal;
//   attribute EventHandler onpageshow;
//   attribute EventHandler onpageswap;
//   attribute EventHandler onpopstate;
//   attribute EventHandler onrejectionhandled;
//   attribute EventHandler onstorage;
//   attribute EventHandler onunhandledrejection;
//   attribute EventHandler onunload;
// };
// 
// interface mixin WindowOrWorkerGlobalScope {
//   [Replaceable] readonly attribute USVString origin;
//   readonly attribute boolean isSecureContext;
//   readonly attribute boolean crossOriginIsolated;
// 
//   undefined reportError(any e);
// 
//   // base64 utility methods
//   DOMString btoa(DOMString data);
//   ByteString atob(DOMString data);
// 
//   // timers
//   long setTimeout(TimerHandler handler, optional long timeout = 0, any... arguments);
//   undefined clearTimeout(optional long id = 0);
//   long setInterval(TimerHandler handler, optional long timeout = 0, any... arguments);
//   undefined clearInterval(optional long id = 0);
// 
//   // microtask queuing
//   undefined queueMicrotask(VoidFunction callback);
// 
//   // ImageBitmap
//   Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, optional ImageBitmapOptions options = {});
//   Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, long sx, long sy, long sw, long sh, optional ImageBitmapOptions options = {});
// 
//   // structured cloning
//   any structuredClone(any value, optional StructuredSerializeOptions options = {});
// };
// 
// interface mixin AnimationFrameProvider {
//   unsigned long requestAnimationFrame(FrameRequestCallback callback);
//   undefined cancelAnimationFrame(unsigned long handle);
// };
// 
// interface mixin WindowSessionStorage {
//   readonly attribute Storage sessionStorage;
// };
// 
// interface mixin WindowLocalStorage {
//   readonly attribute Storage localStorage;
// };

///|
#external
pub type Window

///|
pub trait TWindow: TJsValue {
  screen(self : Self) -> JsValue = _
  visual_viewport(self : Self) -> JsValue? = _
  inner_width(self : Self) -> Int = _
  inner_height(self : Self) -> Int = _
  scroll_x(self : Self) -> Double = _
  page_x_offset(self : Self) -> Double = _
  scroll_y(self : Self) -> Double = _
  page_y_offset(self : Self) -> Double = _
  screen_x(self : Self) -> Int = _
  screen_left(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  screen_top(self : Self) -> Int = _
  outer_width(self : Self) -> Int = _
  outer_height(self : Self) -> Int = _
  device_pixel_ratio(self : Self) -> Double = _
  event(self : Self) -> Event = _
  window(self : Self) -> Window = _
  self_(self : Self) -> Window = _
  document(self : Self) -> Document = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  location(self : Self) -> Location = _
  history(self : Self) -> History = _
  navigation(self : Self) -> JsValue = _
  custom_elements(self : Self) -> JsValue = _
  locationbar(self : Self) -> JsValue = _
  menubar(self : Self) -> JsValue = _
  personalbar(self : Self) -> JsValue = _
  scrollbars(self : Self) -> JsValue = _
  statusbar(self : Self) -> JsValue = _
  toolbar(self : Self) -> JsValue = _
  status(self : Self) -> String = _
  set_status(self : Self, value : String) -> Unit = _
  closed(self : Self) -> Bool = _
  frames(self : Self) -> Window = _
  length(self : Self) -> Int = _
  top(self : Self) -> Window? = _
  opener(self : Self) -> JsValue = _
  set_opener(self : Self, value : JsValue) -> Unit = _
  parent(self : Self) -> Window? = _
  frame_element(self : Self) -> Element? = _
  navigator(self : Self) -> Navigator = _
  client_information(self : Self) -> Navigator = _
  origin_agent_cluster(self : Self) -> Bool = _
  external(self : Self) -> JsValue = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, value : EventHandler) -> Unit = _
  onauxclick(self : Self) -> EventHandler = _
  set_onauxclick(self : Self, value : EventHandler) -> Unit = _
  onbeforeinput(self : Self) -> EventHandler = _
  set_onbeforeinput(self : Self, value : EventHandler) -> Unit = _
  onbeforematch(self : Self) -> EventHandler = _
  set_onbeforematch(self : Self, value : EventHandler) -> Unit = _
  onbeforetoggle(self : Self) -> EventHandler = _
  set_onbeforetoggle(self : Self, value : EventHandler) -> Unit = _
  onblur(self : Self) -> EventHandler = _
  set_onblur(self : Self, value : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, value : EventHandler) -> Unit = _
  oncanplay(self : Self) -> EventHandler = _
  set_oncanplay(self : Self, value : EventHandler) -> Unit = _
  oncanplaythrough(self : Self) -> EventHandler = _
  set_oncanplaythrough(self : Self, value : EventHandler) -> Unit = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, value : EventHandler) -> Unit = _
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, value : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, value : EventHandler) -> Unit = _
  oncommand(self : Self) -> EventHandler = _
  set_oncommand(self : Self, value : EventHandler) -> Unit = _
  oncontextlost(self : Self) -> EventHandler = _
  set_oncontextlost(self : Self, value : EventHandler) -> Unit = _
  oncontextmenu(self : Self) -> EventHandler = _
  set_oncontextmenu(self : Self, value : EventHandler) -> Unit = _
  oncontextrestored(self : Self) -> EventHandler = _
  set_oncontextrestored(self : Self, value : EventHandler) -> Unit = _
  oncopy(self : Self) -> EventHandler = _
  set_oncopy(self : Self, value : EventHandler) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, value : EventHandler) -> Unit = _
  oncut(self : Self) -> EventHandler = _
  set_oncut(self : Self, value : EventHandler) -> Unit = _
  ondblclick(self : Self) -> EventHandler = _
  set_ondblclick(self : Self, value : EventHandler) -> Unit = _
  ondrag(self : Self) -> EventHandler = _
  set_ondrag(self : Self, value : EventHandler) -> Unit = _
  ondragend(self : Self) -> EventHandler = _
  set_ondragend(self : Self, value : EventHandler) -> Unit = _
  ondragenter(self : Self) -> EventHandler = _
  set_ondragenter(self : Self, value : EventHandler) -> Unit = _
  ondragleave(self : Self) -> EventHandler = _
  set_ondragleave(self : Self, value : EventHandler) -> Unit = _
  ondragover(self : Self) -> EventHandler = _
  set_ondragover(self : Self, value : EventHandler) -> Unit = _
  ondragstart(self : Self) -> EventHandler = _
  set_ondragstart(self : Self, value : EventHandler) -> Unit = _
  ondrop(self : Self) -> EventHandler = _
  set_ondrop(self : Self, value : EventHandler) -> Unit = _
  ondurationchange(self : Self) -> EventHandler = _
  set_ondurationchange(self : Self, value : EventHandler) -> Unit = _
  onemptied(self : Self) -> EventHandler = _
  set_onemptied(self : Self, value : EventHandler) -> Unit = _
  onended(self : Self) -> EventHandler = _
  set_onended(self : Self, value : EventHandler) -> Unit = _
  onerror(self : Self) -> OnErrorEventHandler = _
  set_onerror(self : Self, value : OnErrorEventHandler) -> Unit = _
  onfocus(self : Self) -> EventHandler = _
  set_onfocus(self : Self, value : EventHandler) -> Unit = _
  onformdata(self : Self) -> EventHandler = _
  set_onformdata(self : Self, value : EventHandler) -> Unit = _
  oninput(self : Self) -> EventHandler = _
  set_oninput(self : Self, value : EventHandler) -> Unit = _
  oninvalid(self : Self) -> EventHandler = _
  set_oninvalid(self : Self, value : EventHandler) -> Unit = _
  onkeydown(self : Self) -> EventHandler = _
  set_onkeydown(self : Self, value : EventHandler) -> Unit = _
  onkeypress(self : Self) -> EventHandler = _
  set_onkeypress(self : Self, value : EventHandler) -> Unit = _
  onkeyup(self : Self) -> EventHandler = _
  set_onkeyup(self : Self, value : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, value : EventHandler) -> Unit = _
  onloadeddata(self : Self) -> EventHandler = _
  set_onloadeddata(self : Self, value : EventHandler) -> Unit = _
  onloadedmetadata(self : Self) -> EventHandler = _
  set_onloadedmetadata(self : Self, value : EventHandler) -> Unit = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, value : EventHandler) -> Unit = _
  onmousedown(self : Self) -> EventHandler = _
  set_onmousedown(self : Self, value : EventHandler) -> Unit = _
  onmouseenter(self : Self) -> EventHandler = _
  set_onmouseenter(self : Self, value : EventHandler) -> Unit = _
  onmouseleave(self : Self) -> EventHandler = _
  set_onmouseleave(self : Self, value : EventHandler) -> Unit = _
  onmousemove(self : Self) -> EventHandler = _
  set_onmousemove(self : Self, value : EventHandler) -> Unit = _
  onmouseout(self : Self) -> EventHandler = _
  set_onmouseout(self : Self, value : EventHandler) -> Unit = _
  onmouseover(self : Self) -> EventHandler = _
  set_onmouseover(self : Self, value : EventHandler) -> Unit = _
  onmouseup(self : Self) -> EventHandler = _
  set_onmouseup(self : Self, value : EventHandler) -> Unit = _
  onpaste(self : Self) -> EventHandler = _
  set_onpaste(self : Self, value : EventHandler) -> Unit = _
  onpause(self : Self) -> EventHandler = _
  set_onpause(self : Self, value : EventHandler) -> Unit = _
  onplay(self : Self) -> EventHandler = _
  set_onplay(self : Self, value : EventHandler) -> Unit = _
  onplaying(self : Self) -> EventHandler = _
  set_onplaying(self : Self, value : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, value : EventHandler) -> Unit = _
  onratechange(self : Self) -> EventHandler = _
  set_onratechange(self : Self, value : EventHandler) -> Unit = _
  onreset(self : Self) -> EventHandler = _
  set_onreset(self : Self, value : EventHandler) -> Unit = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, value : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, value : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, value : EventHandler) -> Unit = _
  onsecuritypolicyviolation(self : Self) -> EventHandler = _
  set_onsecuritypolicyviolation(self : Self, value : EventHandler) -> Unit = _
  onseeked(self : Self) -> EventHandler = _
  set_onseeked(self : Self, value : EventHandler) -> Unit = _
  onseeking(self : Self) -> EventHandler = _
  set_onseeking(self : Self, value : EventHandler) -> Unit = _
  onselect(self : Self) -> EventHandler = _
  set_onselect(self : Self, value : EventHandler) -> Unit = _
  onslotchange(self : Self) -> EventHandler = _
  set_onslotchange(self : Self, value : EventHandler) -> Unit = _
  onstalled(self : Self) -> EventHandler = _
  set_onstalled(self : Self, value : EventHandler) -> Unit = _
  onsubmit(self : Self) -> EventHandler = _
  set_onsubmit(self : Self, value : EventHandler) -> Unit = _
  onsuspend(self : Self) -> EventHandler = _
  set_onsuspend(self : Self, value : EventHandler) -> Unit = _
  ontimeupdate(self : Self) -> EventHandler = _
  set_ontimeupdate(self : Self, value : EventHandler) -> Unit = _
  ontoggle(self : Self) -> EventHandler = _
  set_ontoggle(self : Self, value : EventHandler) -> Unit = _
  onvolumechange(self : Self) -> EventHandler = _
  set_onvolumechange(self : Self, value : EventHandler) -> Unit = _
  onwaiting(self : Self) -> EventHandler = _
  set_onwaiting(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationend(self : Self) -> EventHandler = _
  set_onwebkitanimationend(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationiteration(self : Self) -> EventHandler = _
  set_onwebkitanimationiteration(self : Self, value : EventHandler) -> Unit = _
  onwebkitanimationstart(self : Self) -> EventHandler = _
  set_onwebkitanimationstart(self : Self, value : EventHandler) -> Unit = _
  onwebkittransitionend(self : Self) -> EventHandler = _
  set_onwebkittransitionend(self : Self, value : EventHandler) -> Unit = _
  onwheel(self : Self) -> EventHandler = _
  set_onwheel(self : Self, value : EventHandler) -> Unit = _
  onafterprint(self : Self) -> EventHandler = _
  set_onafterprint(self : Self, value : EventHandler) -> Unit = _
  onbeforeprint(self : Self) -> EventHandler = _
  set_onbeforeprint(self : Self, value : EventHandler) -> Unit = _
  onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler = _
  set_onbeforeunload(self : Self, value : OnBeforeUnloadEventHandler) -> Unit = _
  onhashchange(self : Self) -> EventHandler = _
  set_onhashchange(self : Self, value : EventHandler) -> Unit = _
  onlanguagechange(self : Self) -> EventHandler = _
  set_onlanguagechange(self : Self, value : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, value : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, value : EventHandler) -> Unit = _
  onoffline(self : Self) -> EventHandler = _
  set_onoffline(self : Self, value : EventHandler) -> Unit = _
  ononline(self : Self) -> EventHandler = _
  set_ononline(self : Self, value : EventHandler) -> Unit = _
  onpagehide(self : Self) -> EventHandler = _
  set_onpagehide(self : Self, value : EventHandler) -> Unit = _
  onpagereveal(self : Self) -> EventHandler = _
  set_onpagereveal(self : Self, value : EventHandler) -> Unit = _
  onpageshow(self : Self) -> EventHandler = _
  set_onpageshow(self : Self, value : EventHandler) -> Unit = _
  onpageswap(self : Self) -> EventHandler = _
  set_onpageswap(self : Self, value : EventHandler) -> Unit = _
  onpopstate(self : Self) -> EventHandler = _
  set_onpopstate(self : Self, value : EventHandler) -> Unit = _
  onrejectionhandled(self : Self) -> EventHandler = _
  set_onrejectionhandled(self : Self, value : EventHandler) -> Unit = _
  onstorage(self : Self) -> EventHandler = _
  set_onstorage(self : Self, value : EventHandler) -> Unit = _
  onunhandledrejection(self : Self) -> EventHandler = _
  set_onunhandledrejection(self : Self, value : EventHandler) -> Unit = _
  onunload(self : Self) -> EventHandler = _
  set_onunload(self : Self, value : EventHandler) -> Unit = _
  origin(self : Self) -> String = _
  is_secure_context(self : Self) -> Bool = _
  cross_origin_isolated(self : Self) -> Bool = _
  session_storage(self : Self) -> Storage = _
  local_storage(self : Self) -> Storage = _
  match_media(self : Self, query : JsValue) -> JsValue = _
  move_to(self : Self, x : Int, y : Int) -> Unit = _
  move_by(self : Self, x : Int, y : Int) -> Unit = _
  resize_to(self : Self, width : Int, height : Int) -> Unit = _
  resize_by(self : Self, x : Int, y : Int) -> Unit = _
  scroll(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_to(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  scroll_by(self : Self, options? : ScrollToOptions) -> JsPromise[Unit] = _
  scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[Unit] = _
  get_computed_style(self : Self, elt : Element, pseudo_elt? : JsValue) -> JsValue = _
  close(self : Self) -> Unit = _
  stop(self : Self) -> Unit = _
  focus(self : Self) -> Unit = _
  blur(self : Self) -> Unit = _
  open(self : Self, url? : String, target? : String, features? : String) -> Window? = _
  alert(self : Self) -> Unit = _
  alert2(self : Self, message : String) -> Unit = _
  confirm(self : Self, message? : String) -> Bool = _
  prompt(self : Self, message? : String, default? : String) -> String? = _
  print(self : Self) -> Unit = _
  post_message(
    self : Self,
    message : JsValue,
    target_origin : String,
    transfer? : Array[JsValue],
  ) -> Unit = _
  post_message2(
    self : Self,
    message : JsValue,
    options? : WindowPostMessageOptions,
  ) -> Unit = _
  capture_events(self : Self) -> Unit = _
  release_events(self : Self) -> Unit = _
  report_error(self : Self, e : JsValue) -> Unit = _
  btoa(self : Self, data : String) -> String = _
  atob(self : Self, data : String) -> String = _
  set_timeout(
    self : Self,
    handler : JsValue,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_timeout(self : Self, id? : Int) -> Unit = _
  set_interval(
    self : Self,
    handler : JsValue,
    timeout? : Int,
    arguments : JsValue,
  ) -> Int = _
  clear_interval(self : Self, id? : Int) -> Unit = _
  queue_microtask(self : Self, callback : JsValue) -> Unit = _
  create_image_bitmap(
    self : Self,
    image : JsValue,
    options? : ImageBitmapOptions,
  ) -> JsPromise[JsValue] = _
  create_image_bitmap2(
    self : Self,
    image : JsValue,
    sx : Int,
    sy : Int,
    sw : Int,
    sh : Int,
    options? : ImageBitmapOptions,
  ) -> JsPromise[JsValue] = _
  structured_clone(
    self : Self,
    value : JsValue,
    options? : StructuredSerializeOptions,
  ) -> JsValue = _
  request_animation_frame(self : Self, callback : JsValue) -> Int = _
  cancel_animation_frame(self : Self, handle : Int) -> Unit = _
}

///|
pub impl TWindow for Window

///|
pub impl TJsValue for Window with to_js(self : Window) -> JsValue = "%identity"

///|
pub fn Window::null() -> Window = "JsValue" "null"

///|
pub fn Window::is_null(self : Window) -> Bool = "JsValue" "isNull"

///|
fn window_match_media_ffi(obj : JsValue, query : JsValue) -> JsValue = "webapi_Window" "matchMedia"

///|
impl TWindow with match_media(self : Self, query : JsValue) -> JsValue {
  window_match_media_ffi(TJsValue::to_js(self), query).unsafe_cast()
}

///|
fn window_move_to_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveTo"

///|
impl TWindow with move_to(self : Self, x : Int, y : Int) -> Unit {
  window_move_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_move_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "moveBy"

///|
impl TWindow with move_by(self : Self, x : Int, y : Int) -> Unit {
  window_move_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_resize_to_ffi(
  obj : JsValue,
  width : JsValue,
  height : JsValue,
) -> Unit = "webapi_Window" "resizeTo"

///|
impl TWindow with resize_to(self : Self, width : Int, height : Int) -> Unit {
  window_resize_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
fn window_resize_by_ffi(obj : JsValue, x : JsValue, y : JsValue) -> Unit = "webapi_Window" "resizeBy"

///|
impl TWindow with resize_by(self : Self, x : Int, y : Int) -> Unit {
  window_resize_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
fn window_scroll_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scroll"

///|
impl TWindow with scroll2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_scroll_to_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_to_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_to_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollTo"

///|
impl TWindow with scroll_to2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_to_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_scroll_by_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by(
  self : Self,
  options? : ScrollToOptions = ScrollToOptions::empty(),
) -> JsPromise[Unit] {
  window_scroll_by_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn window_scroll_by_ffi2(obj : JsValue, x : JsValue, y : JsValue) -> JsValue = "webapi_Window" "scrollBy"

///|
impl TWindow with scroll_by2(self : Self, x : Double, y : Double) -> JsPromise[
  Unit,
] {
  window_scroll_by_ffi2(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn window_get_computed_style_ffi(
  obj : JsValue,
  elt : JsValue,
  pseudo_elt : JsValue,
) -> JsValue = "webapi_Window" "getComputedStyle"

///|
impl TWindow with get_computed_style(
  self : Self,
  elt : Element,
  pseudo_elt? : JsValue,
) -> JsValue {
  let pseudo_elt_js = opt_to_js(pseudo_elt)
  window_get_computed_style_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(elt),
    pseudo_elt_js,
  ).unsafe_cast()
}

///|
fn window_close_ffi(obj : JsValue) -> Unit = "webapi_Window" "close"

///|
impl TWindow with close(self : Self) -> Unit {
  window_close_ffi(TJsValue::to_js(self))
}

///|
fn window_stop_ffi(obj : JsValue) -> Unit = "webapi_Window" "stop"

///|
impl TWindow with stop(self : Self) -> Unit {
  window_stop_ffi(TJsValue::to_js(self))
}

///|
fn window_focus_ffi(obj : JsValue) -> Unit = "webapi_Window" "focus"

///|
impl TWindow with focus(self : Self) -> Unit {
  window_focus_ffi(TJsValue::to_js(self))
}

///|
fn window_blur_ffi(obj : JsValue) -> Unit = "webapi_Window" "blur"

///|
impl TWindow with blur(self : Self) -> Unit {
  window_blur_ffi(TJsValue::to_js(self))
}

///|
fn window_open_ffi(
  obj : JsValue,
  url : JsValue,
  target : JsValue,
  features : JsValue,
) -> JsValue = "webapi_Window" "open"

///|
impl TWindow with open(
  self : Self,
  url? : String,
  target? : String,
  features? : String,
) -> Window? {
  let url_js = opt_to_js(url)
  let target_js = opt_to_js(target)
  let features_js = opt_to_js(features)
  window_open_ffi(TJsValue::to_js(self), url_js, target_js, features_js).as_option()
}

///|
fn window_alert_ffi(obj : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert(self : Self) -> Unit {
  window_alert_ffi(TJsValue::to_js(self))
}

///|
fn window_alert_ffi2(obj : JsValue, message : JsValue) -> Unit = "webapi_Window" "alert"

///|
impl TWindow with alert2(self : Self, message : String) -> Unit {
  window_alert_ffi2(TJsValue::to_js(self), TJsValue::to_js(message))
}

///|
fn window_confirm_ffi(obj : JsValue, message : JsValue) -> JsValue = "webapi_Window" "confirm"

///|
impl TWindow with confirm(self : Self, message? : String) -> Bool {
  let message_js = opt_to_js(message)
  window_confirm_ffi(TJsValue::to_js(self), message_js).unsafe_cast()
}

///|
fn window_prompt_ffi(
  obj : JsValue,
  message : JsValue,
  default : JsValue,
) -> JsValue = "webapi_Window" "prompt"

///|
impl TWindow with prompt(self : Self, message? : String, default? : String) -> String? {
  let message_js = opt_to_js(message)
  let default_js = opt_to_js(default)
  window_prompt_ffi(TJsValue::to_js(self), message_js, default_js).as_option()
}

///|
fn window_print_ffi(obj : JsValue) -> Unit = "webapi_Window" "print"

///|
impl TWindow with print(self : Self) -> Unit {
  window_print_ffi(TJsValue::to_js(self))
}

///|
fn window_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  target_origin : JsValue,
  transfer : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message(
  self : Self,
  message : JsValue,
  target_origin : String,
  transfer? : Array[JsValue],
) -> Unit {
  let transfer_js = opt_to_js(transfer)
  window_post_message_ffi(
    TJsValue::to_js(self),
    message,
    TJsValue::to_js(target_origin),
    transfer_js,
  )
}

///|
fn window_post_message_ffi2(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "webapi_Window" "postMessage"

///|
impl TWindow with post_message2(
  self : Self,
  message : JsValue,
  options? : WindowPostMessageOptions = WindowPostMessageOptions::empty(),
) -> Unit {
  window_post_message_ffi2(
    TJsValue::to_js(self),
    message,
    TJsValue::to_js(options),
  )
}

///|
fn window_capture_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "captureEvents"

///|
impl TWindow with capture_events(self : Self) -> Unit {
  window_capture_events_ffi(TJsValue::to_js(self))
}

///|
fn window_release_events_ffi(obj : JsValue) -> Unit = "webapi_Window" "releaseEvents"

///|
impl TWindow with release_events(self : Self) -> Unit {
  window_release_events_ffi(TJsValue::to_js(self))
}

///|
fn window_report_error_ffi(obj : JsValue, e : JsValue) -> Unit = "webapi_Window" "reportError"

///|
impl TWindow with report_error(self : Self, e : JsValue) -> Unit {
  window_report_error_ffi(TJsValue::to_js(self), e)
}

///|
fn window_btoa_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "btoa"

///|
impl TWindow with btoa(self : Self, data : String) -> String {
  window_btoa_ffi(TJsValue::to_js(self), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn window_atob_ffi(obj : JsValue, data : JsValue) -> JsValue = "webapi_Window" "atob"

///|
impl TWindow with atob(self : Self, data : String) -> String {
  window_atob_ffi(TJsValue::to_js(self), TJsValue::to_js(data)).unsafe_cast()
}

///|
fn window_set_timeout_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "webapi_Window" "setTimeout"

///|
impl TWindow with set_timeout(
  self : Self,
  handler : JsValue,
  timeout? : Int,
  arguments : JsValue,
) -> Int {
  let timeout_js = opt_to_js(timeout)
  window_set_timeout_ffi(TJsValue::to_js(self), handler, timeout_js, arguments).unsafe_cast()
}

///|
fn window_clear_timeout_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearTimeout"

///|
impl TWindow with clear_timeout(self : Self, id? : Int) -> Unit {
  let id_js = opt_to_js(id)
  window_clear_timeout_ffi(TJsValue::to_js(self), id_js)
}

///|
fn window_set_interval_ffi(
  obj : JsValue,
  handler : JsValue,
  timeout : JsValue,
  arguments : JsValue,
) -> JsValue = "webapi_Window" "setInterval"

///|
impl TWindow with set_interval(
  self : Self,
  handler : JsValue,
  timeout? : Int,
  arguments : JsValue,
) -> Int {
  let timeout_js = opt_to_js(timeout)
  window_set_interval_ffi(TJsValue::to_js(self), handler, timeout_js, arguments).unsafe_cast()
}

///|
fn window_clear_interval_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Window" "clearInterval"

///|
impl TWindow with clear_interval(self : Self, id? : Int) -> Unit {
  let id_js = opt_to_js(id)
  window_clear_interval_ffi(TJsValue::to_js(self), id_js)
}

///|
fn window_queue_microtask_ffi(obj : JsValue, callback : JsValue) -> Unit = "webapi_Window" "queueMicrotask"

///|
impl TWindow with queue_microtask(self : Self, callback : JsValue) -> Unit {
  window_queue_microtask_ffi(TJsValue::to_js(self), callback)
}

///|
fn window_create_image_bitmap_ffi(
  obj : JsValue,
  image : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "createImageBitmap"

///|
impl TWindow with create_image_bitmap(
  self : Self,
  image : JsValue,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[JsValue] {
  window_create_image_bitmap_ffi(
    TJsValue::to_js(self),
    image,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn window_create_image_bitmap_ffi2(
  obj : JsValue,
  image : JsValue,
  sx : JsValue,
  sy : JsValue,
  sw : JsValue,
  sh : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "createImageBitmap"

///|
impl TWindow with create_image_bitmap2(
  self : Self,
  image : JsValue,
  sx : Int,
  sy : Int,
  sw : Int,
  sh : Int,
  options? : ImageBitmapOptions = ImageBitmapOptions::empty(),
) -> JsPromise[JsValue] {
  window_create_image_bitmap_ffi2(
    TJsValue::to_js(self),
    image,
    TJsValue::to_js(sx),
    TJsValue::to_js(sy),
    TJsValue::to_js(sw),
    TJsValue::to_js(sh),
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn window_structured_clone_ffi(
  obj : JsValue,
  value : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Window" "structuredClone"

///|
impl TWindow with structured_clone(
  self : Self,
  value : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> JsValue {
  window_structured_clone_ffi(
    TJsValue::to_js(self),
    value,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn window_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> JsValue = "webapi_Window" "requestAnimationFrame"

///|
impl TWindow with request_animation_frame(self : Self, callback : JsValue) -> Int {
  window_request_animation_frame_ffi(TJsValue::to_js(self), callback).unsafe_cast()
}

///|
fn window_cancel_animation_frame_ffi(obj : JsValue, handle : JsValue) -> Unit = "webapi_Window" "cancelAnimationFrame"

///|
impl TWindow with cancel_animation_frame(self : Self, handle : Int) -> Unit {
  window_cancel_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handle),
  )
}

///|
fn window_screen_ffi(obj : JsValue) -> JsValue = "webapi_Window" "screen"

///|
impl TWindow with screen(self : Self) -> JsValue {
  window_screen_ffi(self.to_js())
}

///|
fn window_visual_viewport_ffi(obj : JsValue) -> JsValue = "webapi_Window" "visualViewport"

///|
impl TWindow with visual_viewport(self : Self) -> JsValue? {
  window_visual_viewport_ffi(self.to_js()).as_option()
}

///|
fn window_inner_width_ffi(obj : JsValue) -> Int = "webapi_Window" "innerWidth"

///|
impl TWindow with inner_width(self : Self) -> Int {
  window_inner_width_ffi(self.to_js())
}

///|
fn window_inner_height_ffi(obj : JsValue) -> Int = "webapi_Window" "innerHeight"

///|
impl TWindow with inner_height(self : Self) -> Int {
  window_inner_height_ffi(self.to_js())
}

///|
fn window_scroll_x_ffi(obj : JsValue) -> Double = "webapi_Window" "scrollX"

///|
impl TWindow with scroll_x(self : Self) -> Double {
  window_scroll_x_ffi(self.to_js())
}

///|
fn window_page_x_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "pageXOffset"

///|
impl TWindow with page_x_offset(self : Self) -> Double {
  window_page_x_offset_ffi(self.to_js())
}

///|
fn window_scroll_y_ffi(obj : JsValue) -> Double = "webapi_Window" "scrollY"

///|
impl TWindow with scroll_y(self : Self) -> Double {
  window_scroll_y_ffi(self.to_js())
}

///|
fn window_page_y_offset_ffi(obj : JsValue) -> Double = "webapi_Window" "pageYOffset"

///|
impl TWindow with page_y_offset(self : Self) -> Double {
  window_page_y_offset_ffi(self.to_js())
}

///|
fn window_screen_x_ffi(obj : JsValue) -> Int = "webapi_Window" "screenX"

///|
impl TWindow with screen_x(self : Self) -> Int {
  window_screen_x_ffi(self.to_js())
}

///|
fn window_screen_left_ffi(obj : JsValue) -> Int = "webapi_Window" "screenLeft"

///|
impl TWindow with screen_left(self : Self) -> Int {
  window_screen_left_ffi(self.to_js())
}

///|
fn window_screen_y_ffi(obj : JsValue) -> Int = "webapi_Window" "screenY"

///|
impl TWindow with screen_y(self : Self) -> Int {
  window_screen_y_ffi(self.to_js())
}

///|
fn window_screen_top_ffi(obj : JsValue) -> Int = "webapi_Window" "screenTop"

///|
impl TWindow with screen_top(self : Self) -> Int {
  window_screen_top_ffi(self.to_js())
}

///|
fn window_outer_width_ffi(obj : JsValue) -> Int = "webapi_Window" "outerWidth"

///|
impl TWindow with outer_width(self : Self) -> Int {
  window_outer_width_ffi(self.to_js())
}

///|
fn window_outer_height_ffi(obj : JsValue) -> Int = "webapi_Window" "outerHeight"

///|
impl TWindow with outer_height(self : Self) -> Int {
  window_outer_height_ffi(self.to_js())
}

///|
fn window_device_pixel_ratio_ffi(obj : JsValue) -> Double = "webapi_Window" "devicePixelRatio"

///|
impl TWindow with device_pixel_ratio(self : Self) -> Double {
  window_device_pixel_ratio_ffi(self.to_js())
}

///|
fn window_event_ffi(obj : JsValue) -> JsValue = "webapi_Window" "event"

///|
impl TWindow with event(self : Self) -> Event {
  window_event_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_window_ffi(obj : JsValue) -> JsValue = "webapi_Window" "window"

///|
impl TWindow with window(self : Self) -> Window {
  window_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_self_ffi(obj : JsValue) -> JsValue = "webapi_Window" "self"

///|
impl TWindow with self_(self : Self) -> Window {
  window_self_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_document_ffi(obj : JsValue) -> JsValue = "webapi_Window" "document"

///|
impl TWindow with document(self : Self) -> Document {
  window_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_name_ffi(obj : JsValue) -> String = "webapi_Window" "name"

///|
impl TWindow with name(self : Self) -> String {
  window_name_ffi(self.to_js())
}

///|
fn window_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_Window" "set_name"

///|
impl TWindow with set_name(self : Self, value : String) -> Unit {
  window_set_name_ffi(self.to_js(), value)
}

///|
fn window_location_ffi(obj : JsValue) -> JsValue = "webapi_Window" "location"

///|
impl TWindow with location(self : Self) -> Location {
  window_location_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_history_ffi(obj : JsValue) -> JsValue = "webapi_Window" "history"

///|
impl TWindow with history(self : Self) -> History {
  window_history_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_navigation_ffi(obj : JsValue) -> JsValue = "webapi_Window" "navigation"

///|
impl TWindow with navigation(self : Self) -> JsValue {
  window_navigation_ffi(self.to_js())
}

///|
fn window_custom_elements_ffi(obj : JsValue) -> JsValue = "webapi_Window" "customElements"

///|
impl TWindow with custom_elements(self : Self) -> JsValue {
  window_custom_elements_ffi(self.to_js())
}

///|
fn window_locationbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "locationbar"

///|
impl TWindow with locationbar(self : Self) -> JsValue {
  window_locationbar_ffi(self.to_js())
}

///|
fn window_menubar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "menubar"

///|
impl TWindow with menubar(self : Self) -> JsValue {
  window_menubar_ffi(self.to_js())
}

///|
fn window_personalbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "personalbar"

///|
impl TWindow with personalbar(self : Self) -> JsValue {
  window_personalbar_ffi(self.to_js())
}

///|
fn window_scrollbars_ffi(obj : JsValue) -> JsValue = "webapi_Window" "scrollbars"

///|
impl TWindow with scrollbars(self : Self) -> JsValue {
  window_scrollbars_ffi(self.to_js())
}

///|
fn window_statusbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "statusbar"

///|
impl TWindow with statusbar(self : Self) -> JsValue {
  window_statusbar_ffi(self.to_js())
}

///|
fn window_toolbar_ffi(obj : JsValue) -> JsValue = "webapi_Window" "toolbar"

///|
impl TWindow with toolbar(self : Self) -> JsValue {
  window_toolbar_ffi(self.to_js())
}

///|
fn window_status_ffi(obj : JsValue) -> String = "webapi_Window" "status"

///|
impl TWindow with status(self : Self) -> String {
  window_status_ffi(self.to_js())
}

///|
fn window_set_status_ffi(obj : JsValue, value : String) -> Unit = "webapi_Window" "set_status"

///|
impl TWindow with set_status(self : Self, value : String) -> Unit {
  window_set_status_ffi(self.to_js(), value)
}

///|
fn window_closed_ffi(obj : JsValue) -> Bool = "webapi_Window" "closed"

///|
impl TWindow with closed(self : Self) -> Bool {
  window_closed_ffi(self.to_js())
}

///|
fn window_frames_ffi(obj : JsValue) -> JsValue = "webapi_Window" "frames"

///|
impl TWindow with frames(self : Self) -> Window {
  window_frames_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_length_ffi(obj : JsValue) -> Int = "webapi_Window" "length"

///|
impl TWindow with length(self : Self) -> Int {
  window_length_ffi(self.to_js())
}

///|
fn window_top_ffi(obj : JsValue) -> JsValue = "webapi_Window" "top"

///|
impl TWindow with top(self : Self) -> Window? {
  window_top_ffi(self.to_js()).as_option()
}

///|
fn window_opener_ffi(obj : JsValue) -> JsValue = "webapi_Window" "opener"

///|
impl TWindow with opener(self : Self) -> JsValue {
  window_opener_ffi(self.to_js())
}

///|
fn window_set_opener_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_opener"

///|
impl TWindow with set_opener(self : Self, value : JsValue) -> Unit {
  window_set_opener_ffi(self.to_js(), value)
}

///|
fn window_parent_ffi(obj : JsValue) -> JsValue = "webapi_Window" "parent"

///|
impl TWindow with parent(self : Self) -> Window? {
  window_parent_ffi(self.to_js()).as_option()
}

///|
fn window_frame_element_ffi(obj : JsValue) -> JsValue = "webapi_Window" "frameElement"

///|
impl TWindow with frame_element(self : Self) -> Element? {
  window_frame_element_ffi(self.to_js()).as_option()
}

///|
fn window_navigator_ffi(obj : JsValue) -> JsValue = "webapi_Window" "navigator"

///|
impl TWindow with navigator(self : Self) -> Navigator {
  window_navigator_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_client_information_ffi(obj : JsValue) -> JsValue = "webapi_Window" "clientInformation"

///|
impl TWindow with client_information(self : Self) -> Navigator {
  window_client_information_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_origin_agent_cluster_ffi(obj : JsValue) -> Bool = "webapi_Window" "originAgentCluster"

///|
impl TWindow with origin_agent_cluster(self : Self) -> Bool {
  window_origin_agent_cluster_ffi(self.to_js())
}

///|
fn window_external_ffi(obj : JsValue) -> JsValue = "webapi_Window" "external"

///|
impl TWindow with external(self : Self) -> JsValue {
  window_external_ffi(self.to_js())
}

///|
fn window_onabort_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onabort"

///|
impl TWindow with onabort(self : Self) -> EventHandler {
  window_onabort_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onabort"

///|
impl TWindow with set_onabort(self : Self, value : EventHandler) -> Unit {
  window_set_onabort_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onauxclick_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onauxclick"

///|
impl TWindow with onauxclick(self : Self) -> EventHandler {
  window_onauxclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onauxclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onauxclick"

///|
impl TWindow with set_onauxclick(self : Self, value : EventHandler) -> Unit {
  window_set_onauxclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onbeforeinput_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onbeforeinput"

///|
impl TWindow with onbeforeinput(self : Self) -> EventHandler {
  window_onbeforeinput_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onbeforeinput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onbeforeinput"

///|
impl TWindow with set_onbeforeinput(self : Self, value : EventHandler) -> Unit {
  window_set_onbeforeinput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onbeforematch_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onbeforematch"

///|
impl TWindow with onbeforematch(self : Self) -> EventHandler {
  window_onbeforematch_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onbeforematch_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onbeforematch"

///|
impl TWindow with set_onbeforematch(self : Self, value : EventHandler) -> Unit {
  window_set_onbeforematch_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onbeforetoggle_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onbeforetoggle"

///|
impl TWindow with onbeforetoggle(self : Self) -> EventHandler {
  window_onbeforetoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onbeforetoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onbeforetoggle"

///|
impl TWindow with set_onbeforetoggle(self : Self, value : EventHandler) -> Unit {
  window_set_onbeforetoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onblur_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onblur"

///|
impl TWindow with onblur(self : Self) -> EventHandler {
  window_onblur_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onblur_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onblur"

///|
impl TWindow with set_onblur(self : Self, value : EventHandler) -> Unit {
  window_set_onblur_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncancel_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncancel"

///|
impl TWindow with oncancel(self : Self) -> EventHandler {
  window_oncancel_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncancel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncancel"

///|
impl TWindow with set_oncancel(self : Self, value : EventHandler) -> Unit {
  window_set_oncancel_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncanplay_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncanplay"

///|
impl TWindow with oncanplay(self : Self) -> EventHandler {
  window_oncanplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncanplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncanplay"

///|
impl TWindow with set_oncanplay(self : Self, value : EventHandler) -> Unit {
  window_set_oncanplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncanplaythrough_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncanplaythrough"

///|
impl TWindow with oncanplaythrough(self : Self) -> EventHandler {
  window_oncanplaythrough_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncanplaythrough_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncanplaythrough"

///|
impl TWindow with set_oncanplaythrough(self : Self, value : EventHandler) -> Unit {
  window_set_oncanplaythrough_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onchange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onchange"

///|
impl TWindow with onchange(self : Self) -> EventHandler {
  window_onchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onchange"

///|
impl TWindow with set_onchange(self : Self, value : EventHandler) -> Unit {
  window_set_onchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onclick_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onclick"

///|
impl TWindow with onclick(self : Self) -> EventHandler {
  window_onclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onclick"

///|
impl TWindow with set_onclick(self : Self, value : EventHandler) -> Unit {
  window_set_onclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onclose_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onclose"

///|
impl TWindow with onclose(self : Self) -> EventHandler {
  window_onclose_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onclose_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onclose"

///|
impl TWindow with set_onclose(self : Self, value : EventHandler) -> Unit {
  window_set_onclose_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncommand_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncommand"

///|
impl TWindow with oncommand(self : Self) -> EventHandler {
  window_oncommand_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncommand_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncommand"

///|
impl TWindow with set_oncommand(self : Self, value : EventHandler) -> Unit {
  window_set_oncommand_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncontextlost_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncontextlost"

///|
impl TWindow with oncontextlost(self : Self) -> EventHandler {
  window_oncontextlost_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncontextlost_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncontextlost"

///|
impl TWindow with set_oncontextlost(self : Self, value : EventHandler) -> Unit {
  window_set_oncontextlost_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncontextmenu_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncontextmenu"

///|
impl TWindow with oncontextmenu(self : Self) -> EventHandler {
  window_oncontextmenu_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncontextmenu_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncontextmenu"

///|
impl TWindow with set_oncontextmenu(self : Self, value : EventHandler) -> Unit {
  window_set_oncontextmenu_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncontextrestored_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncontextrestored"

///|
impl TWindow with oncontextrestored(self : Self) -> EventHandler {
  window_oncontextrestored_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncontextrestored_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncontextrestored"

///|
impl TWindow with set_oncontextrestored(self : Self, value : EventHandler) -> Unit {
  window_set_oncontextrestored_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncopy_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncopy"

///|
impl TWindow with oncopy(self : Self) -> EventHandler {
  window_oncopy_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncopy_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncopy"

///|
impl TWindow with set_oncopy(self : Self, value : EventHandler) -> Unit {
  window_set_oncopy_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncuechange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncuechange"

///|
impl TWindow with oncuechange(self : Self) -> EventHandler {
  window_oncuechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncuechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncuechange"

///|
impl TWindow with set_oncuechange(self : Self, value : EventHandler) -> Unit {
  window_set_oncuechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oncut_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oncut"

///|
impl TWindow with oncut(self : Self) -> EventHandler {
  window_oncut_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oncut_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oncut"

///|
impl TWindow with set_oncut(self : Self, value : EventHandler) -> Unit {
  window_set_oncut_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondblclick_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondblclick"

///|
impl TWindow with ondblclick(self : Self) -> EventHandler {
  window_ondblclick_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondblclick_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondblclick"

///|
impl TWindow with set_ondblclick(self : Self, value : EventHandler) -> Unit {
  window_set_ondblclick_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondrag_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondrag"

///|
impl TWindow with ondrag(self : Self) -> EventHandler {
  window_ondrag_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondrag_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondrag"

///|
impl TWindow with set_ondrag(self : Self, value : EventHandler) -> Unit {
  window_set_ondrag_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondragend_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondragend"

///|
impl TWindow with ondragend(self : Self) -> EventHandler {
  window_ondragend_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondragend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondragend"

///|
impl TWindow with set_ondragend(self : Self, value : EventHandler) -> Unit {
  window_set_ondragend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondragenter_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondragenter"

///|
impl TWindow with ondragenter(self : Self) -> EventHandler {
  window_ondragenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondragenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondragenter"

///|
impl TWindow with set_ondragenter(self : Self, value : EventHandler) -> Unit {
  window_set_ondragenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondragleave_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondragleave"

///|
impl TWindow with ondragleave(self : Self) -> EventHandler {
  window_ondragleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondragleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondragleave"

///|
impl TWindow with set_ondragleave(self : Self, value : EventHandler) -> Unit {
  window_set_ondragleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondragover_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondragover"

///|
impl TWindow with ondragover(self : Self) -> EventHandler {
  window_ondragover_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondragover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondragover"

///|
impl TWindow with set_ondragover(self : Self, value : EventHandler) -> Unit {
  window_set_ondragover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondragstart_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondragstart"

///|
impl TWindow with ondragstart(self : Self) -> EventHandler {
  window_ondragstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondragstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondragstart"

///|
impl TWindow with set_ondragstart(self : Self, value : EventHandler) -> Unit {
  window_set_ondragstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondrop_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondrop"

///|
impl TWindow with ondrop(self : Self) -> EventHandler {
  window_ondrop_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondrop_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondrop"

///|
impl TWindow with set_ondrop(self : Self, value : EventHandler) -> Unit {
  window_set_ondrop_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ondurationchange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ondurationchange"

///|
impl TWindow with ondurationchange(self : Self) -> EventHandler {
  window_ondurationchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ondurationchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ondurationchange"

///|
impl TWindow with set_ondurationchange(self : Self, value : EventHandler) -> Unit {
  window_set_ondurationchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onemptied_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onemptied"

///|
impl TWindow with onemptied(self : Self) -> EventHandler {
  window_onemptied_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onemptied_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onemptied"

///|
impl TWindow with set_onemptied(self : Self, value : EventHandler) -> Unit {
  window_set_onemptied_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onended_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onended"

///|
impl TWindow with onended(self : Self) -> EventHandler {
  window_onended_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onended_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onended"

///|
impl TWindow with set_onended(self : Self, value : EventHandler) -> Unit {
  window_set_onended_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onerror_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onerror"

///|
impl TWindow with onerror(self : Self) -> OnErrorEventHandler {
  window_onerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onerror_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onerror"

///|
impl TWindow with set_onerror(self : Self, value : OnErrorEventHandler) -> Unit {
  window_set_onerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onfocus_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onfocus"

///|
impl TWindow with onfocus(self : Self) -> EventHandler {
  window_onfocus_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onfocus_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onfocus"

///|
impl TWindow with set_onfocus(self : Self, value : EventHandler) -> Unit {
  window_set_onfocus_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onformdata_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onformdata"

///|
impl TWindow with onformdata(self : Self) -> EventHandler {
  window_onformdata_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onformdata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onformdata"

///|
impl TWindow with set_onformdata(self : Self, value : EventHandler) -> Unit {
  window_set_onformdata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oninput_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oninput"

///|
impl TWindow with oninput(self : Self) -> EventHandler {
  window_oninput_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oninput_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oninput"

///|
impl TWindow with set_oninput(self : Self, value : EventHandler) -> Unit {
  window_set_oninput_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_oninvalid_ffi(obj : JsValue) -> JsValue = "webapi_Window" "oninvalid"

///|
impl TWindow with oninvalid(self : Self) -> EventHandler {
  window_oninvalid_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_oninvalid_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_oninvalid"

///|
impl TWindow with set_oninvalid(self : Self, value : EventHandler) -> Unit {
  window_set_oninvalid_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onkeydown_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onkeydown"

///|
impl TWindow with onkeydown(self : Self) -> EventHandler {
  window_onkeydown_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onkeydown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onkeydown"

///|
impl TWindow with set_onkeydown(self : Self, value : EventHandler) -> Unit {
  window_set_onkeydown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onkeypress_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onkeypress"

///|
impl TWindow with onkeypress(self : Self) -> EventHandler {
  window_onkeypress_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onkeypress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onkeypress"

///|
impl TWindow with set_onkeypress(self : Self, value : EventHandler) -> Unit {
  window_set_onkeypress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onkeyup_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onkeyup"

///|
impl TWindow with onkeyup(self : Self) -> EventHandler {
  window_onkeyup_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onkeyup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onkeyup"

///|
impl TWindow with set_onkeyup(self : Self, value : EventHandler) -> Unit {
  window_set_onkeyup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onload_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onload"

///|
impl TWindow with onload(self : Self) -> EventHandler {
  window_onload_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onload"

///|
impl TWindow with set_onload(self : Self, value : EventHandler) -> Unit {
  window_set_onload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onloadeddata_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onloadeddata"

///|
impl TWindow with onloadeddata(self : Self) -> EventHandler {
  window_onloadeddata_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onloadeddata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onloadeddata"

///|
impl TWindow with set_onloadeddata(self : Self, value : EventHandler) -> Unit {
  window_set_onloadeddata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onloadedmetadata_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onloadedmetadata"

///|
impl TWindow with onloadedmetadata(self : Self) -> EventHandler {
  window_onloadedmetadata_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onloadedmetadata_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onloadedmetadata"

///|
impl TWindow with set_onloadedmetadata(self : Self, value : EventHandler) -> Unit {
  window_set_onloadedmetadata_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onloadstart_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onloadstart"

///|
impl TWindow with onloadstart(self : Self) -> EventHandler {
  window_onloadstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onloadstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onloadstart"

///|
impl TWindow with set_onloadstart(self : Self, value : EventHandler) -> Unit {
  window_set_onloadstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmousedown_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmousedown"

///|
impl TWindow with onmousedown(self : Self) -> EventHandler {
  window_onmousedown_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmousedown_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmousedown"

///|
impl TWindow with set_onmousedown(self : Self, value : EventHandler) -> Unit {
  window_set_onmousedown_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmouseenter_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmouseenter"

///|
impl TWindow with onmouseenter(self : Self) -> EventHandler {
  window_onmouseenter_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmouseenter_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmouseenter"

///|
impl TWindow with set_onmouseenter(self : Self, value : EventHandler) -> Unit {
  window_set_onmouseenter_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmouseleave_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmouseleave"

///|
impl TWindow with onmouseleave(self : Self) -> EventHandler {
  window_onmouseleave_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmouseleave_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmouseleave"

///|
impl TWindow with set_onmouseleave(self : Self, value : EventHandler) -> Unit {
  window_set_onmouseleave_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmousemove_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmousemove"

///|
impl TWindow with onmousemove(self : Self) -> EventHandler {
  window_onmousemove_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmousemove_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmousemove"

///|
impl TWindow with set_onmousemove(self : Self, value : EventHandler) -> Unit {
  window_set_onmousemove_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmouseout_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmouseout"

///|
impl TWindow with onmouseout(self : Self) -> EventHandler {
  window_onmouseout_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmouseout_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmouseout"

///|
impl TWindow with set_onmouseout(self : Self, value : EventHandler) -> Unit {
  window_set_onmouseout_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmouseover_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmouseover"

///|
impl TWindow with onmouseover(self : Self) -> EventHandler {
  window_onmouseover_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmouseover_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmouseover"

///|
impl TWindow with set_onmouseover(self : Self, value : EventHandler) -> Unit {
  window_set_onmouseover_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmouseup_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmouseup"

///|
impl TWindow with onmouseup(self : Self) -> EventHandler {
  window_onmouseup_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmouseup_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmouseup"

///|
impl TWindow with set_onmouseup(self : Self, value : EventHandler) -> Unit {
  window_set_onmouseup_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpaste_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpaste"

///|
impl TWindow with onpaste(self : Self) -> EventHandler {
  window_onpaste_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpaste_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpaste"

///|
impl TWindow with set_onpaste(self : Self, value : EventHandler) -> Unit {
  window_set_onpaste_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpause_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpause"

///|
impl TWindow with onpause(self : Self) -> EventHandler {
  window_onpause_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpause_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpause"

///|
impl TWindow with set_onpause(self : Self, value : EventHandler) -> Unit {
  window_set_onpause_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onplay_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onplay"

///|
impl TWindow with onplay(self : Self) -> EventHandler {
  window_onplay_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onplay_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onplay"

///|
impl TWindow with set_onplay(self : Self, value : EventHandler) -> Unit {
  window_set_onplay_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onplaying_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onplaying"

///|
impl TWindow with onplaying(self : Self) -> EventHandler {
  window_onplaying_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onplaying_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onplaying"

///|
impl TWindow with set_onplaying(self : Self, value : EventHandler) -> Unit {
  window_set_onplaying_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onprogress_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onprogress"

///|
impl TWindow with onprogress(self : Self) -> EventHandler {
  window_onprogress_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onprogress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onprogress"

///|
impl TWindow with set_onprogress(self : Self, value : EventHandler) -> Unit {
  window_set_onprogress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onratechange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onratechange"

///|
impl TWindow with onratechange(self : Self) -> EventHandler {
  window_onratechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onratechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onratechange"

///|
impl TWindow with set_onratechange(self : Self, value : EventHandler) -> Unit {
  window_set_onratechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onreset_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onreset"

///|
impl TWindow with onreset(self : Self) -> EventHandler {
  window_onreset_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onreset_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onreset"

///|
impl TWindow with set_onreset(self : Self, value : EventHandler) -> Unit {
  window_set_onreset_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onresize_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onresize"

///|
impl TWindow with onresize(self : Self) -> EventHandler {
  window_onresize_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onresize_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onresize"

///|
impl TWindow with set_onresize(self : Self, value : EventHandler) -> Unit {
  window_set_onresize_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onscroll_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onscroll"

///|
impl TWindow with onscroll(self : Self) -> EventHandler {
  window_onscroll_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onscroll_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onscroll"

///|
impl TWindow with set_onscroll(self : Self, value : EventHandler) -> Unit {
  window_set_onscroll_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onscrollend_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onscrollend"

///|
impl TWindow with onscrollend(self : Self) -> EventHandler {
  window_onscrollend_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onscrollend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onscrollend"

///|
impl TWindow with set_onscrollend(self : Self, value : EventHandler) -> Unit {
  window_set_onscrollend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onsecuritypolicyviolation_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onsecuritypolicyviolation"

///|
impl TWindow with onsecuritypolicyviolation(self : Self) -> EventHandler {
  window_onsecuritypolicyviolation_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onsecuritypolicyviolation_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Window" "set_onsecuritypolicyviolation"

///|
impl TWindow with set_onsecuritypolicyviolation(
  self : Self,
  value : EventHandler,
) -> Unit {
  window_set_onsecuritypolicyviolation_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onseeked_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onseeked"

///|
impl TWindow with onseeked(self : Self) -> EventHandler {
  window_onseeked_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onseeked_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onseeked"

///|
impl TWindow with set_onseeked(self : Self, value : EventHandler) -> Unit {
  window_set_onseeked_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onseeking_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onseeking"

///|
impl TWindow with onseeking(self : Self) -> EventHandler {
  window_onseeking_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onseeking_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onseeking"

///|
impl TWindow with set_onseeking(self : Self, value : EventHandler) -> Unit {
  window_set_onseeking_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onselect_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onselect"

///|
impl TWindow with onselect(self : Self) -> EventHandler {
  window_onselect_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onselect_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onselect"

///|
impl TWindow with set_onselect(self : Self, value : EventHandler) -> Unit {
  window_set_onselect_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onslotchange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onslotchange"

///|
impl TWindow with onslotchange(self : Self) -> EventHandler {
  window_onslotchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onslotchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onslotchange"

///|
impl TWindow with set_onslotchange(self : Self, value : EventHandler) -> Unit {
  window_set_onslotchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onstalled_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onstalled"

///|
impl TWindow with onstalled(self : Self) -> EventHandler {
  window_onstalled_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onstalled_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onstalled"

///|
impl TWindow with set_onstalled(self : Self, value : EventHandler) -> Unit {
  window_set_onstalled_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onsubmit_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onsubmit"

///|
impl TWindow with onsubmit(self : Self) -> EventHandler {
  window_onsubmit_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onsubmit_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onsubmit"

///|
impl TWindow with set_onsubmit(self : Self, value : EventHandler) -> Unit {
  window_set_onsubmit_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onsuspend_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onsuspend"

///|
impl TWindow with onsuspend(self : Self) -> EventHandler {
  window_onsuspend_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onsuspend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onsuspend"

///|
impl TWindow with set_onsuspend(self : Self, value : EventHandler) -> Unit {
  window_set_onsuspend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ontimeupdate_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ontimeupdate"

///|
impl TWindow with ontimeupdate(self : Self) -> EventHandler {
  window_ontimeupdate_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ontimeupdate_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ontimeupdate"

///|
impl TWindow with set_ontimeupdate(self : Self, value : EventHandler) -> Unit {
  window_set_ontimeupdate_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ontoggle_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ontoggle"

///|
impl TWindow with ontoggle(self : Self) -> EventHandler {
  window_ontoggle_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ontoggle_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ontoggle"

///|
impl TWindow with set_ontoggle(self : Self, value : EventHandler) -> Unit {
  window_set_ontoggle_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onvolumechange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onvolumechange"

///|
impl TWindow with onvolumechange(self : Self) -> EventHandler {
  window_onvolumechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onvolumechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onvolumechange"

///|
impl TWindow with set_onvolumechange(self : Self, value : EventHandler) -> Unit {
  window_set_onvolumechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onwaiting_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwaiting"

///|
impl TWindow with onwaiting(self : Self) -> EventHandler {
  window_onwaiting_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwaiting_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onwaiting"

///|
impl TWindow with set_onwaiting(self : Self, value : EventHandler) -> Unit {
  window_set_onwaiting_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onwebkitanimationend_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwebkitanimationend"

///|
impl TWindow with onwebkitanimationend(self : Self) -> EventHandler {
  window_onwebkitanimationend_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwebkitanimationend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onwebkitanimationend"

///|
impl TWindow with set_onwebkitanimationend(self : Self, value : EventHandler) -> Unit {
  window_set_onwebkitanimationend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onwebkitanimationiteration_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwebkitanimationiteration"

///|
impl TWindow with onwebkitanimationiteration(self : Self) -> EventHandler {
  window_onwebkitanimationiteration_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwebkitanimationiteration_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationiteration"

///|
impl TWindow with set_onwebkitanimationiteration(
  self : Self,
  value : EventHandler,
) -> Unit {
  window_set_onwebkitanimationiteration_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn window_onwebkitanimationstart_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwebkitanimationstart"

///|
impl TWindow with onwebkitanimationstart(self : Self) -> EventHandler {
  window_onwebkitanimationstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwebkitanimationstart_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_Window" "set_onwebkitanimationstart"

///|
impl TWindow with set_onwebkitanimationstart(self : Self, value : EventHandler) -> Unit {
  window_set_onwebkitanimationstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onwebkittransitionend_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwebkittransitionend"

///|
impl TWindow with onwebkittransitionend(self : Self) -> EventHandler {
  window_onwebkittransitionend_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwebkittransitionend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onwebkittransitionend"

///|
impl TWindow with set_onwebkittransitionend(self : Self, value : EventHandler) -> Unit {
  window_set_onwebkittransitionend_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onwheel_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onwheel"

///|
impl TWindow with onwheel(self : Self) -> EventHandler {
  window_onwheel_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onwheel_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onwheel"

///|
impl TWindow with set_onwheel(self : Self, value : EventHandler) -> Unit {
  window_set_onwheel_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onafterprint_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onafterprint"

///|
impl TWindow with onafterprint(self : Self) -> EventHandler {
  window_onafterprint_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onafterprint_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onafterprint"

///|
impl TWindow with set_onafterprint(self : Self, value : EventHandler) -> Unit {
  window_set_onafterprint_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onbeforeprint_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onbeforeprint"

///|
impl TWindow with onbeforeprint(self : Self) -> EventHandler {
  window_onbeforeprint_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onbeforeprint_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onbeforeprint"

///|
impl TWindow with set_onbeforeprint(self : Self, value : EventHandler) -> Unit {
  window_set_onbeforeprint_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onbeforeunload_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onbeforeunload"

///|
impl TWindow with onbeforeunload(self : Self) -> OnBeforeUnloadEventHandler {
  window_onbeforeunload_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onbeforeunload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onbeforeunload"

///|
impl TWindow with set_onbeforeunload(
  self : Self,
  value : OnBeforeUnloadEventHandler,
) -> Unit {
  window_set_onbeforeunload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onhashchange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onhashchange"

///|
impl TWindow with onhashchange(self : Self) -> EventHandler {
  window_onhashchange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onhashchange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onhashchange"

///|
impl TWindow with set_onhashchange(self : Self, value : EventHandler) -> Unit {
  window_set_onhashchange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onlanguagechange_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onlanguagechange"

///|
impl TWindow with onlanguagechange(self : Self) -> EventHandler {
  window_onlanguagechange_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onlanguagechange_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onlanguagechange"

///|
impl TWindow with set_onlanguagechange(self : Self, value : EventHandler) -> Unit {
  window_set_onlanguagechange_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmessage_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmessage"

///|
impl TWindow with onmessage(self : Self) -> EventHandler {
  window_onmessage_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmessage_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmessage"

///|
impl TWindow with set_onmessage(self : Self, value : EventHandler) -> Unit {
  window_set_onmessage_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onmessageerror_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onmessageerror"

///|
impl TWindow with onmessageerror(self : Self) -> EventHandler {
  window_onmessageerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onmessageerror_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onmessageerror"

///|
impl TWindow with set_onmessageerror(self : Self, value : EventHandler) -> Unit {
  window_set_onmessageerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onoffline_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onoffline"

///|
impl TWindow with onoffline(self : Self) -> EventHandler {
  window_onoffline_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onoffline_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onoffline"

///|
impl TWindow with set_onoffline(self : Self, value : EventHandler) -> Unit {
  window_set_onoffline_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_ononline_ffi(obj : JsValue) -> JsValue = "webapi_Window" "ononline"

///|
impl TWindow with ononline(self : Self) -> EventHandler {
  window_ononline_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_ononline_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_ononline"

///|
impl TWindow with set_ononline(self : Self, value : EventHandler) -> Unit {
  window_set_ononline_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpagehide_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpagehide"

///|
impl TWindow with onpagehide(self : Self) -> EventHandler {
  window_onpagehide_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpagehide_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpagehide"

///|
impl TWindow with set_onpagehide(self : Self, value : EventHandler) -> Unit {
  window_set_onpagehide_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpagereveal_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpagereveal"

///|
impl TWindow with onpagereveal(self : Self) -> EventHandler {
  window_onpagereveal_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpagereveal_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpagereveal"

///|
impl TWindow with set_onpagereveal(self : Self, value : EventHandler) -> Unit {
  window_set_onpagereveal_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpageshow_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpageshow"

///|
impl TWindow with onpageshow(self : Self) -> EventHandler {
  window_onpageshow_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpageshow_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpageshow"

///|
impl TWindow with set_onpageshow(self : Self, value : EventHandler) -> Unit {
  window_set_onpageshow_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpageswap_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpageswap"

///|
impl TWindow with onpageswap(self : Self) -> EventHandler {
  window_onpageswap_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpageswap_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpageswap"

///|
impl TWindow with set_onpageswap(self : Self, value : EventHandler) -> Unit {
  window_set_onpageswap_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onpopstate_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onpopstate"

///|
impl TWindow with onpopstate(self : Self) -> EventHandler {
  window_onpopstate_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onpopstate_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onpopstate"

///|
impl TWindow with set_onpopstate(self : Self, value : EventHandler) -> Unit {
  window_set_onpopstate_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onrejectionhandled_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onrejectionhandled"

///|
impl TWindow with onrejectionhandled(self : Self) -> EventHandler {
  window_onrejectionhandled_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onrejectionhandled_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onrejectionhandled"

///|
impl TWindow with set_onrejectionhandled(self : Self, value : EventHandler) -> Unit {
  window_set_onrejectionhandled_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onstorage_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onstorage"

///|
impl TWindow with onstorage(self : Self) -> EventHandler {
  window_onstorage_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onstorage_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onstorage"

///|
impl TWindow with set_onstorage(self : Self, value : EventHandler) -> Unit {
  window_set_onstorage_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onunhandledrejection_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onunhandledrejection"

///|
impl TWindow with onunhandledrejection(self : Self) -> EventHandler {
  window_onunhandledrejection_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onunhandledrejection_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onunhandledrejection"

///|
impl TWindow with set_onunhandledrejection(self : Self, value : EventHandler) -> Unit {
  window_set_onunhandledrejection_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_onunload_ffi(obj : JsValue) -> JsValue = "webapi_Window" "onunload"

///|
impl TWindow with onunload(self : Self) -> EventHandler {
  window_onunload_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_set_onunload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Window" "set_onunload"

///|
impl TWindow with set_onunload(self : Self, value : EventHandler) -> Unit {
  window_set_onunload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn window_origin_ffi(obj : JsValue) -> String = "webapi_Window" "origin"

///|
impl TWindow with origin(self : Self) -> String {
  window_origin_ffi(self.to_js())
}

///|
fn window_is_secure_context_ffi(obj : JsValue) -> Bool = "webapi_Window" "isSecureContext"

///|
impl TWindow with is_secure_context(self : Self) -> Bool {
  window_is_secure_context_ffi(self.to_js())
}

///|
fn window_cross_origin_isolated_ffi(obj : JsValue) -> Bool = "webapi_Window" "crossOriginIsolated"

///|
impl TWindow with cross_origin_isolated(self : Self) -> Bool {
  window_cross_origin_isolated_ffi(self.to_js())
}

///|
fn window_session_storage_ffi(obj : JsValue) -> JsValue = "webapi_Window" "sessionStorage"

///|
impl TWindow with session_storage(self : Self) -> Storage {
  window_session_storage_ffi(self.to_js()).unsafe_cast()
}

///|
fn window_local_storage_ffi(obj : JsValue) -> JsValue = "webapi_Window" "localStorage"

///|
impl TWindow with local_storage(self : Self) -> Storage {
  window_local_storage_ffi(self.to_js()).unsafe_cast()
}
