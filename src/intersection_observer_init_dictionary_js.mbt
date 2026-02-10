extern "js" fn intersection_observer_init_ffi(root: JsValue, root_margin: JsValue, scroll_margin: JsValue, threshold: JsValue, delay: JsValue, track_visibility: JsValue) -> IntersectionObserverInit = 
#|(root, rootMargin, scrollMargin, threshold, delay, trackVisibility) => {
#|  const obj = {};
#|  if (root !== undefined) obj.root = root;
#|  if (rootMargin !== undefined) obj.rootMargin = rootMargin;
#|  if (scrollMargin !== undefined) obj.scrollMargin = scrollMargin;
#|  if (threshold !== undefined) obj.threshold = threshold;
#|  if (delay !== undefined) obj.delay = delay;
#|  if (trackVisibility !== undefined) obj.trackVisibility = trackVisibility;
#|  return obj;
#|}

extern "js" fn intersection_observer_init_empty_ffi() -> IntersectionObserverInit = "() => {}"