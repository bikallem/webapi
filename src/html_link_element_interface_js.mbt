extern "js" fn html_link_element_new_ffi() -> HTMLLinkElement = "() => new HTMLLinkElement()"

extern "js" fn html_link_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn html_link_element_href_ffi(obj: JsValue) -> String {
  html_link_element_href_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

extern "js" fn html_link_element_cross_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn html_link_element_cross_origin_ffi(obj: JsValue) -> String {
  html_link_element_cross_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

extern "js" fn html_link_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
fn html_link_element_rel_ffi(obj: JsValue) -> String {
  html_link_element_rel_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

extern "js" fn html_link_element_as_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.as"

///|
fn html_link_element_as_ffi(obj: JsValue) -> String {
  html_link_element_as_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_as_ffi(obj: JsValue, as_: JsValue) -> Unit = "(obj, as) => { obj.as = as; }"

extern "js" fn html_link_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
fn html_link_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_rel_list_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_media_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.media"

///|
fn html_link_element_media_ffi(obj: JsValue) -> String {
  html_link_element_media_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "(obj, media) => { obj.media = media; }"

extern "js" fn html_link_element_integrity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

///|
fn html_link_element_integrity_ffi(obj: JsValue) -> String {
  html_link_element_integrity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

extern "js" fn html_link_element_hreflang_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
fn html_link_element_hreflang_ffi(obj: JsValue) -> String {
  html_link_element_hreflang_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

extern "js" fn html_link_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_link_element_type_ffi(obj: JsValue) -> String {
  html_link_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn html_link_element_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sizes"

///|
fn html_link_element_sizes_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_sizes_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_image_srcset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSrcset"

///|
fn html_link_element_image_srcset_ffi(obj: JsValue) -> String {
  html_link_element_image_srcset_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_image_srcset_ffi(obj: JsValue, image_srcset: JsValue) -> Unit = "(obj, imageSrcset) => { obj.imageSrcset = imageSrcset; }"

extern "js" fn html_link_element_image_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSizes"

///|
fn html_link_element_image_sizes_ffi(obj: JsValue) -> String {
  html_link_element_image_sizes_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_image_sizes_ffi(obj: JsValue, image_sizes: JsValue) -> Unit = "(obj, imageSizes) => { obj.imageSizes = imageSizes; }"

extern "js" fn html_link_element_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
fn html_link_element_referrer_policy_ffi(obj: JsValue) -> String {
  html_link_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

extern "js" fn html_link_element_blocking_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blocking"

///|
fn html_link_element_blocking_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_blocking_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_link_element_disabled_ffi(obj: JsValue) -> Bool {
  html_link_element_disabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

extern "js" fn html_link_element_fetch_priority_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fetchPriority"

///|
fn html_link_element_fetch_priority_ffi(obj: JsValue) -> String {
  html_link_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

extern "js" fn html_link_element_charset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.charset"

///|
fn html_link_element_charset_ffi(obj: JsValue) -> String {
  html_link_element_charset_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "(obj, charset) => { obj.charset = charset; }"

extern "js" fn html_link_element_rev_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rev"

///|
fn html_link_element_rev_ffi(obj: JsValue) -> String {
  html_link_element_rev_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_rev_ffi(obj: JsValue, rev: JsValue) -> Unit = "(obj, rev) => { obj.rev = rev; }"

extern "js" fn html_link_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn html_link_element_target_ffi(obj: JsValue) -> String {
  html_link_element_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_link_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"

extern "js" fn html_link_element_sheet_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sheet"

///|
fn html_link_element_sheet_ffi(obj: JsValue) -> CSSStyleSheet {
  html_link_element_sheet_ffi_js(obj).unsafe_cast()
}