///|
extern "js" fn event_modifier_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  ctrl_key : JsValue,
  shift_key : JsValue,
  alt_key : JsValue,
  meta_key : JsValue,
  modifier_alt_graph : JsValue,
  modifier_caps_lock : JsValue,
  modifier_fn : JsValue,
  modifier_fn_lock : JsValue,
  modifier_hyper : JsValue,
  modifier_num_lock : JsValue,
  modifier_scroll_lock : JsValue,
  modifier_super : JsValue,
  modifier_symbol : JsValue,
  modifier_symbol_lock : JsValue,
) -> EventModifierInit =
  #|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
  #|  if (shiftKey !== undefined) obj.shiftKey = shiftKey;
  #|  if (altKey !== undefined) obj.altKey = altKey;
  #|  if (metaKey !== undefined) obj.metaKey = metaKey;
  #|  if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
  #|  if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
  #|  if (modifierFn !== undefined) obj.modifierFn = modifierFn;
  #|  if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
  #|  if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
  #|  if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
  #|  if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
  #|  if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
  #|  if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
  #|  if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
  #|  return obj;
  #|}

///|
extern "js" fn event_modifier_init_empty_ffi() -> EventModifierInit = "() => {}"

///|
extern "js" fn event_modifier_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn event_modifier_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn event_modifier_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn event_modifier_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
extern "js" fn event_modifier_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
extern "js" fn event_modifier_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
extern "js" fn event_modifier_init_get_ctrl_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
extern "js" fn event_modifier_init_get_shift_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
extern "js" fn event_modifier_init_get_alt_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
extern "js" fn event_modifier_init_get_meta_key_ffi(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
extern "js" fn event_modifier_init_get_modifier_alt_graph_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierAltGraph"

///|
extern "js" fn event_modifier_init_get_modifier_caps_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierCapsLock"

///|
extern "js" fn event_modifier_init_get_modifier_fn_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFn"

///|
extern "js" fn event_modifier_init_get_modifier_fn_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierFnLock"

///|
extern "js" fn event_modifier_init_get_modifier_hyper_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierHyper"

///|
extern "js" fn event_modifier_init_get_modifier_num_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierNumLock"

///|
extern "js" fn event_modifier_init_get_modifier_scroll_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierScrollLock"

///|
extern "js" fn event_modifier_init_get_modifier_super_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSuper"

///|
extern "js" fn event_modifier_init_get_modifier_symbol_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbol"

///|
extern "js" fn event_modifier_init_get_modifier_symbol_lock_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.modifierSymbolLock"
