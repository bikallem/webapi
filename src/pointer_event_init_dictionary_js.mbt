extern "js" fn pointer_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, ctrl_key: JsValue, shift_key: JsValue, alt_key: JsValue, meta_key: JsValue, modifier_alt_graph: JsValue, modifier_caps_lock: JsValue, modifier_fn: JsValue, modifier_fn_lock: JsValue, modifier_hyper: JsValue, modifier_num_lock: JsValue, modifier_scroll_lock: JsValue, modifier_super: JsValue, modifier_symbol: JsValue, modifier_symbol_lock: JsValue, screen_x: JsValue, screen_y: JsValue, client_x: JsValue, client_y: JsValue, button: JsValue, buttons: JsValue, related_target: JsValue, pointer_id: JsValue, width: JsValue, height: JsValue, pressure: JsValue, tangential_pressure: JsValue, tilt_x: JsValue, tilt_y: JsValue, twist: JsValue, altitude_angle: JsValue, azimuth_angle: JsValue, pointer_type: JsValue, is_primary: JsValue, persistent_device_id: JsValue, coalesced_events: JsValue, predicted_events: JsValue) -> PointerEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget, pointerId, width, height, pressure, tangentialPressure, tiltX, tiltY, twist, altitudeAngle, azimuthAngle, pointerType, isPrimary, persistentDeviceId, coalescedEvents, predictedEvents) => {
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
#|  if (screenX !== undefined) obj.screenX = screenX;
#|  if (screenY !== undefined) obj.screenY = screenY;
#|  if (clientX !== undefined) obj.clientX = clientX;
#|  if (clientY !== undefined) obj.clientY = clientY;
#|  if (button !== undefined) obj.button = button;
#|  if (buttons !== undefined) obj.buttons = buttons;
#|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
#|  if (pointerId !== undefined) obj.pointerId = pointerId;
#|  if (width !== undefined) obj.width = width;
#|  if (height !== undefined) obj.height = height;
#|  if (pressure !== undefined) obj.pressure = pressure;
#|  if (tangentialPressure !== undefined) obj.tangentialPressure = tangentialPressure;
#|  if (tiltX !== undefined) obj.tiltX = tiltX;
#|  if (tiltY !== undefined) obj.tiltY = tiltY;
#|  if (twist !== undefined) obj.twist = twist;
#|  if (altitudeAngle !== undefined) obj.altitudeAngle = altitudeAngle;
#|  if (azimuthAngle !== undefined) obj.azimuthAngle = azimuthAngle;
#|  if (pointerType !== undefined) obj.pointerType = pointerType;
#|  if (isPrimary !== undefined) obj.isPrimary = isPrimary;
#|  if (persistentDeviceId !== undefined) obj.persistentDeviceId = persistentDeviceId;
#|  if (coalescedEvents !== undefined) obj.coalescedEvents = coalescedEvents;
#|  if (predictedEvents !== undefined) obj.predictedEvents = predictedEvents;
#|  return obj;
#|}

extern "js" fn pointer_event_init_empty_ffi() -> PointerEventInit = "() => {}"