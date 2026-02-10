extern "js" fn event_modifier_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue) -> EventModifierInit = 
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

extern "js" fn event_modifier_init_empty_ffi() -> EventModifierInit = "() => {}"