extern "js" fn external_add_search_provider_ffi(obj: JsValue) -> Unit = "(obj) => obj.AddSearchProvider()"

extern "js" fn external_is_search_provider_installed_ffi(obj: JsValue) -> Unit = "(obj) => obj.IsSearchProviderInstalled()"