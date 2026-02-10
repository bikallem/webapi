extern "js" fn intersection_observer_entry_init_ffi(time: JsValue, root_bounds: JsValue, bounding_client_rect: JsValue, intersection_rect: JsValue, is_intersecting: JsValue, is_visible: JsValue, intersection_ratio: JsValue, target: JsValue) -> IntersectionObserverEntryInit = 
#|(time, rootBounds, boundingClientRect, intersectionRect, isIntersecting, isVisible, intersectionRatio, target) => {
#|  const obj = {};
#|  if (time !== undefined) obj.time = time;
#|  if (rootBounds !== undefined) obj.rootBounds = rootBounds;
#|  if (boundingClientRect !== undefined) obj.boundingClientRect = boundingClientRect;
#|  if (intersectionRect !== undefined) obj.intersectionRect = intersectionRect;
#|  if (isIntersecting !== undefined) obj.isIntersecting = isIntersecting;
#|  if (isVisible !== undefined) obj.isVisible = isVisible;
#|  if (intersectionRatio !== undefined) obj.intersectionRatio = intersectionRatio;
#|  if (target !== undefined) obj.target = target;
#|  return obj;
#|}

extern "js" fn intersection_observer_entry_init_empty_ffi() -> IntersectionObserverEntryInit = "() => {}"