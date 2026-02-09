/**
 * Auto-generated JavaScript runtime for MoonBit DOM bindings
 * Do not edit manually
 */

export const wasmImportObject = {
  "moonbit:ffi": {
    make_closure: (funcref, closure) => funcref.bind(null, closure)
  },

  JsValue: {
    undefined: () => undefined,
    null: () => null,
    isNull: (value) => value === null || value === undefined
  },

  JsNull: {
    null: () => null
  },

  JsArray: {
    empty: () => [],
    push: (arr, value) => arr.push(value)
  },

  JsPromise: {
    await: (promise) => promise,
    resolve: (value) => Promise.resolve(value),
    reject: (error) => Promise.reject(error)
  },

  webapi_Dictionary: {
    empty: () => ({})
  },

  webapi_Primitives: {
    boolToJs: (v) => v !== 0,
    intToJs: (v) => v,
    uintToJs: (v) => v >>> 0,
    int64ToJs: (v) => Number(v),
    uint64ToJs: (v) => Number(v),
    floatToJs: (v) => v,
    doubleToJs: (v) => v
  },

  webapi_Global: {
    document: () => document,
    window: () => window,
    navigator: () => navigator
  },

  webapi_SVGElement: {
    get_className: (obj) => obj.className,
    get_ownerSVGElement: (obj) => obj.ownerSVGElement,
    get_viewportElement: (obj) => obj.viewportElement,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onauxclick: (obj) => obj.onauxclick,
    set_onauxclick: (obj, value) => { obj.onauxclick = value; },
    get_onbeforeinput: (obj) => obj.onbeforeinput,
    set_onbeforeinput: (obj, value) => { obj.onbeforeinput = value; },
    get_onbeforematch: (obj) => obj.onbeforematch,
    set_onbeforematch: (obj, value) => { obj.onbeforematch = value; },
    get_onbeforetoggle: (obj) => obj.onbeforetoggle,
    set_onbeforetoggle: (obj, value) => { obj.onbeforetoggle = value; },
    get_onblur: (obj) => obj.onblur,
    set_onblur: (obj, value) => { obj.onblur = value; },
    get_oncancel: (obj) => obj.oncancel,
    set_oncancel: (obj, value) => { obj.oncancel = value; },
    get_oncanplay: (obj) => obj.oncanplay,
    set_oncanplay: (obj, value) => { obj.oncanplay = value; },
    get_oncanplaythrough: (obj) => obj.oncanplaythrough,
    set_oncanplaythrough: (obj, value) => { obj.oncanplaythrough = value; },
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onclick: (obj) => obj.onclick,
    set_onclick: (obj, value) => { obj.onclick = value; },
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    get_oncommand: (obj) => obj.oncommand,
    set_oncommand: (obj, value) => { obj.oncommand = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextmenu: (obj) => obj.oncontextmenu,
    set_oncontextmenu: (obj, value) => { obj.oncontextmenu = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; },
    get_oncopy: (obj) => obj.oncopy,
    set_oncopy: (obj, value) => { obj.oncopy = value; },
    get_oncuechange: (obj) => obj.oncuechange,
    set_oncuechange: (obj, value) => { obj.oncuechange = value; },
    get_oncut: (obj) => obj.oncut,
    set_oncut: (obj, value) => { obj.oncut = value; },
    get_ondblclick: (obj) => obj.ondblclick,
    set_ondblclick: (obj, value) => { obj.ondblclick = value; },
    get_ondrag: (obj) => obj.ondrag,
    set_ondrag: (obj, value) => { obj.ondrag = value; },
    get_ondragend: (obj) => obj.ondragend,
    set_ondragend: (obj, value) => { obj.ondragend = value; },
    get_ondragenter: (obj) => obj.ondragenter,
    set_ondragenter: (obj, value) => { obj.ondragenter = value; },
    get_ondragleave: (obj) => obj.ondragleave,
    set_ondragleave: (obj, value) => { obj.ondragleave = value; },
    get_ondragover: (obj) => obj.ondragover,
    set_ondragover: (obj, value) => { obj.ondragover = value; },
    get_ondragstart: (obj) => obj.ondragstart,
    set_ondragstart: (obj, value) => { obj.ondragstart = value; },
    get_ondrop: (obj) => obj.ondrop,
    set_ondrop: (obj, value) => { obj.ondrop = value; },
    get_ondurationchange: (obj) => obj.ondurationchange,
    set_ondurationchange: (obj, value) => { obj.ondurationchange = value; },
    get_onemptied: (obj) => obj.onemptied,
    set_onemptied: (obj, value) => { obj.onemptied = value; },
    get_onended: (obj) => obj.onended,
    set_onended: (obj, value) => { obj.onended = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onfocus: (obj) => obj.onfocus,
    set_onfocus: (obj, value) => { obj.onfocus = value; },
    get_onformdata: (obj) => obj.onformdata,
    set_onformdata: (obj, value) => { obj.onformdata = value; },
    get_oninput: (obj) => obj.oninput,
    set_oninput: (obj, value) => { obj.oninput = value; },
    get_oninvalid: (obj) => obj.oninvalid,
    set_oninvalid: (obj, value) => { obj.oninvalid = value; },
    get_onkeydown: (obj) => obj.onkeydown,
    set_onkeydown: (obj, value) => { obj.onkeydown = value; },
    get_onkeypress: (obj) => obj.onkeypress,
    set_onkeypress: (obj, value) => { obj.onkeypress = value; },
    get_onkeyup: (obj) => obj.onkeyup,
    set_onkeyup: (obj, value) => { obj.onkeyup = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_onloadeddata: (obj) => obj.onloadeddata,
    set_onloadeddata: (obj, value) => { obj.onloadeddata = value; },
    get_onloadedmetadata: (obj) => obj.onloadedmetadata,
    set_onloadedmetadata: (obj, value) => { obj.onloadedmetadata = value; },
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onmousedown: (obj) => obj.onmousedown,
    set_onmousedown: (obj, value) => { obj.onmousedown = value; },
    get_onmouseenter: (obj) => obj.onmouseenter,
    set_onmouseenter: (obj, value) => { obj.onmouseenter = value; },
    get_onmouseleave: (obj) => obj.onmouseleave,
    set_onmouseleave: (obj, value) => { obj.onmouseleave = value; },
    get_onmousemove: (obj) => obj.onmousemove,
    set_onmousemove: (obj, value) => { obj.onmousemove = value; },
    get_onmouseout: (obj) => obj.onmouseout,
    set_onmouseout: (obj, value) => { obj.onmouseout = value; },
    get_onmouseover: (obj) => obj.onmouseover,
    set_onmouseover: (obj, value) => { obj.onmouseover = value; },
    get_onmouseup: (obj) => obj.onmouseup,
    set_onmouseup: (obj, value) => { obj.onmouseup = value; },
    get_onpaste: (obj) => obj.onpaste,
    set_onpaste: (obj, value) => { obj.onpaste = value; },
    get_onpause: (obj) => obj.onpause,
    set_onpause: (obj, value) => { obj.onpause = value; },
    get_onplay: (obj) => obj.onplay,
    set_onplay: (obj, value) => { obj.onplay = value; },
    get_onplaying: (obj) => obj.onplaying,
    set_onplaying: (obj, value) => { obj.onplaying = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onratechange: (obj) => obj.onratechange,
    set_onratechange: (obj, value) => { obj.onratechange = value; },
    get_onreset: (obj) => obj.onreset,
    set_onreset: (obj, value) => { obj.onreset = value; },
    get_onresize: (obj) => obj.onresize,
    set_onresize: (obj, value) => { obj.onresize = value; },
    get_onscroll: (obj) => obj.onscroll,
    set_onscroll: (obj, value) => { obj.onscroll = value; },
    get_onscrollend: (obj) => obj.onscrollend,
    set_onscrollend: (obj, value) => { obj.onscrollend = value; },
    get_onsecuritypolicyviolation: (obj) => obj.onsecuritypolicyviolation,
    set_onsecuritypolicyviolation: (obj, value) => { obj.onsecuritypolicyviolation = value; },
    get_onseeked: (obj) => obj.onseeked,
    set_onseeked: (obj, value) => { obj.onseeked = value; },
    get_onseeking: (obj) => obj.onseeking,
    set_onseeking: (obj, value) => { obj.onseeking = value; },
    get_onselect: (obj) => obj.onselect,
    set_onselect: (obj, value) => { obj.onselect = value; },
    get_onslotchange: (obj) => obj.onslotchange,
    set_onslotchange: (obj, value) => { obj.onslotchange = value; },
    get_onstalled: (obj) => obj.onstalled,
    set_onstalled: (obj, value) => { obj.onstalled = value; },
    get_onsubmit: (obj) => obj.onsubmit,
    set_onsubmit: (obj, value) => { obj.onsubmit = value; },
    get_onsuspend: (obj) => obj.onsuspend,
    set_onsuspend: (obj, value) => { obj.onsuspend = value; },
    get_ontimeupdate: (obj) => obj.ontimeupdate,
    set_ontimeupdate: (obj, value) => { obj.ontimeupdate = value; },
    get_ontoggle: (obj) => obj.ontoggle,
    set_ontoggle: (obj, value) => { obj.ontoggle = value; },
    get_onvolumechange: (obj) => obj.onvolumechange,
    set_onvolumechange: (obj, value) => { obj.onvolumechange = value; },
    get_onwaiting: (obj) => obj.onwaiting,
    set_onwaiting: (obj, value) => { obj.onwaiting = value; },
    get_onwebkitanimationend: (obj) => obj.onwebkitanimationend,
    set_onwebkitanimationend: (obj, value) => { obj.onwebkitanimationend = value; },
    get_onwebkitanimationiteration: (obj) => obj.onwebkitanimationiteration,
    set_onwebkitanimationiteration: (obj, value) => { obj.onwebkitanimationiteration = value; },
    get_onwebkitanimationstart: (obj) => obj.onwebkitanimationstart,
    set_onwebkitanimationstart: (obj, value) => { obj.onwebkitanimationstart = value; },
    get_onwebkittransitionend: (obj) => obj.onwebkittransitionend,
    set_onwebkittransitionend: (obj, value) => { obj.onwebkittransitionend = value; },
    get_onwheel: (obj) => obj.onwheel,
    set_onwheel: (obj, value) => { obj.onwheel = value; },
    get_correspondingElement: (obj) => obj.correspondingElement,
    get_correspondingUseElement: (obj) => obj.correspondingUseElement,
    get_dataset: (obj) => obj.dataset,
    get_nonce: (obj) => obj.nonce,
    set_nonce: (obj, value) => { obj.nonce = value; },
    get_autofocus: (obj) => obj.autofocus,
    set_autofocus: (obj, value) => { obj.autofocus = value; },
    get_tabIndex: (obj) => obj.tabIndex,
    set_tabIndex: (obj, value) => { obj.tabIndex = value; },
    get_style: (obj) => obj.style,
    focus: (obj, options) => obj.focus(options),
    blur: (obj) => obj.blur()
  },

  webapi_SVGGraphicsElement: {
    get_transform: (obj) => obj.transform,
    get_requiredExtensions: (obj) => obj.requiredExtensions,
    get_systemLanguage: (obj) => obj.systemLanguage,
    getBBox: (obj, options) => obj.getBBox(options),
    getCTM: (obj) => obj.getCTM(),
    getScreenCTM: (obj) => obj.getScreenCTM()
  },

  webapi_SVGGeometryElement: {
    get_pathLength: (obj) => obj.pathLength,
    isPointInFill: (obj, point) => obj.isPointInFill(point),
    isPointInStroke: (obj, point) => obj.isPointInStroke(point),
    getTotalLength: (obj) => obj.getTotalLength(),
    getPointAtLength: (obj, distance) => obj.getPointAtLength(distance)
  },

  webapi_SVGNumber: {
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; }
  },

  webapi_SVGLength: {
    get_unitType: (obj) => obj.unitType,
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_valueInSpecifiedUnits: (obj) => obj.valueInSpecifiedUnits,
    set_valueInSpecifiedUnits: (obj, value) => { obj.valueInSpecifiedUnits = value; },
    get_valueAsString: (obj) => obj.valueAsString,
    set_valueAsString: (obj, value) => { obj.valueAsString = value; },
    newValueSpecifiedUnits: (obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units),
    convertToSpecifiedUnits: (obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)
  },

  webapi_SVGAngle: {
    get_unitType: (obj) => obj.unitType,
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_valueInSpecifiedUnits: (obj) => obj.valueInSpecifiedUnits,
    set_valueInSpecifiedUnits: (obj, value) => { obj.valueInSpecifiedUnits = value; },
    get_valueAsString: (obj) => obj.valueAsString,
    set_valueAsString: (obj, value) => { obj.valueAsString = value; },
    newValueSpecifiedUnits: (obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units),
    convertToSpecifiedUnits: (obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)
  },

  webapi_SVGNumberList: {
    get_length: (obj) => obj.length,
    get_numberOfItems: (obj) => obj.numberOfItems,
    clear: (obj) => obj.clear(),
    initialize: (obj, new_item) => obj.initialize(new_item),
    insertItemBefore: (obj, new_item, index) => obj.insertItemBefore(new_item, index),
    replaceItem: (obj, new_item, index) => obj.replaceItem(new_item, index),
    removeItem: (obj, index) => obj.removeItem(index),
    appendItem: (obj, new_item) => obj.appendItem(new_item)
  },

  webapi_SVGLengthList: {
    get_length: (obj) => obj.length,
    get_numberOfItems: (obj) => obj.numberOfItems,
    clear: (obj) => obj.clear(),
    initialize: (obj, new_item) => obj.initialize(new_item),
    insertItemBefore: (obj, new_item, index) => obj.insertItemBefore(new_item, index),
    replaceItem: (obj, new_item, index) => obj.replaceItem(new_item, index),
    removeItem: (obj, index) => obj.removeItem(index),
    appendItem: (obj, new_item) => obj.appendItem(new_item)
  },

  webapi_SVGStringList: {
    get_length: (obj) => obj.length,
    get_numberOfItems: (obj) => obj.numberOfItems,
    clear: (obj) => obj.clear(),
    initialize: (obj, new_item) => obj.initialize(new_item),
    insertItemBefore: (obj, new_item, index) => obj.insertItemBefore(new_item, index),
    replaceItem: (obj, new_item, index) => obj.replaceItem(new_item, index),
    removeItem: (obj, index) => obj.removeItem(index),
    appendItem: (obj, new_item) => obj.appendItem(new_item)
  },

  webapi_SVGAnimatedBoolean: {
    get_baseVal: (obj) => obj.baseVal,
    set_baseVal: (obj, value) => { obj.baseVal = value; },
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedEnumeration: {
    get_baseVal: (obj) => obj.baseVal,
    set_baseVal: (obj, value) => { obj.baseVal = value; },
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedInteger: {
    get_baseVal: (obj) => obj.baseVal,
    set_baseVal: (obj, value) => { obj.baseVal = value; },
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedNumber: {
    get_baseVal: (obj) => obj.baseVal,
    set_baseVal: (obj, value) => { obj.baseVal = value; },
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedLength: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedAngle: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedString: {
    get_baseVal: (obj) => obj.baseVal,
    set_baseVal: (obj, value) => { obj.baseVal = value; },
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedRect: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedNumberList: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGAnimatedLengthList: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGUnitTypes: {
  },

  webapi_Document: {
    new: () => new Document(),
    get_rootElement: (obj) => obj.rootElement,
    get_implementation: (obj) => obj.implementation,
    get_URL: (obj) => obj.URL,
    get_documentURI: (obj) => obj.documentURI,
    get_compatMode: (obj) => obj.compatMode,
    get_characterSet: (obj) => obj.characterSet,
    get_charset: (obj) => obj.charset,
    get_inputEncoding: (obj) => obj.inputEncoding,
    get_contentType: (obj) => obj.contentType,
    get_doctype: (obj) => obj.doctype,
    get_documentElement: (obj) => obj.documentElement,
    get_location: (obj) => obj.location,
    get_domain: (obj) => obj.domain,
    set_domain: (obj, value) => { obj.domain = value; },
    get_referrer: (obj) => obj.referrer,
    get_cookie: (obj) => obj.cookie,
    set_cookie: (obj, value) => { obj.cookie = value; },
    get_lastModified: (obj) => obj.lastModified,
    get_readyState: (obj) => obj.readyState,
    get_title: (obj) => obj.title,
    set_title: (obj, value) => { obj.title = value; },
    get_dir: (obj) => obj.dir,
    set_dir: (obj, value) => { obj.dir = value; },
    get_body: (obj) => obj.body,
    set_body: (obj, value) => { obj.body = value; },
    get_head: (obj) => obj.head,
    get_images: (obj) => obj.images,
    get_embeds: (obj) => obj.embeds,
    get_plugins: (obj) => obj.plugins,
    get_links: (obj) => obj.links,
    get_forms: (obj) => obj.forms,
    get_scripts: (obj) => obj.scripts,
    get_currentScript: (obj) => obj.currentScript,
    get_defaultView: (obj) => obj.defaultView,
    get_designMode: (obj) => obj.designMode,
    set_designMode: (obj, value) => { obj.designMode = value; },
    get_hidden: (obj) => obj.hidden,
    get_visibilityState: (obj) => obj.visibilityState,
    get_onreadystatechange: (obj) => obj.onreadystatechange,
    set_onreadystatechange: (obj, value) => { obj.onreadystatechange = value; },
    get_onvisibilitychange: (obj) => obj.onvisibilitychange,
    set_onvisibilitychange: (obj, value) => { obj.onvisibilitychange = value; },
    get_fgColor: (obj) => obj.fgColor,
    set_fgColor: (obj, value) => { obj.fgColor = value; },
    get_linkColor: (obj) => obj.linkColor,
    set_linkColor: (obj, value) => { obj.linkColor = value; },
    get_vlinkColor: (obj) => obj.vlinkColor,
    set_vlinkColor: (obj, value) => { obj.vlinkColor = value; },
    get_alinkColor: (obj) => obj.alinkColor,
    set_alinkColor: (obj, value) => { obj.alinkColor = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; },
    get_anchors: (obj) => obj.anchors,
    get_applets: (obj) => obj.applets,
    get_all: (obj) => obj.all,
    get_scrollingElement: (obj) => obj.scrollingElement,
    get_customElementRegistry: (obj) => obj.customElementRegistry,
    get_activeElement: (obj) => obj.activeElement,
    get_styleSheets: (obj) => obj.styleSheets,
    get_adoptedStyleSheets: (obj) => obj.adoptedStyleSheets,
    set_adoptedStyleSheets: (obj, value) => { obj.adoptedStyleSheets = value; },
    get_children: (obj) => obj.children,
    get_firstElementChild: (obj) => obj.firstElementChild,
    get_lastElementChild: (obj) => obj.lastElementChild,
    get_childElementCount: (obj) => obj.childElementCount,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onauxclick: (obj) => obj.onauxclick,
    set_onauxclick: (obj, value) => { obj.onauxclick = value; },
    get_onbeforeinput: (obj) => obj.onbeforeinput,
    set_onbeforeinput: (obj, value) => { obj.onbeforeinput = value; },
    get_onbeforematch: (obj) => obj.onbeforematch,
    set_onbeforematch: (obj, value) => { obj.onbeforematch = value; },
    get_onbeforetoggle: (obj) => obj.onbeforetoggle,
    set_onbeforetoggle: (obj, value) => { obj.onbeforetoggle = value; },
    get_onblur: (obj) => obj.onblur,
    set_onblur: (obj, value) => { obj.onblur = value; },
    get_oncancel: (obj) => obj.oncancel,
    set_oncancel: (obj, value) => { obj.oncancel = value; },
    get_oncanplay: (obj) => obj.oncanplay,
    set_oncanplay: (obj, value) => { obj.oncanplay = value; },
    get_oncanplaythrough: (obj) => obj.oncanplaythrough,
    set_oncanplaythrough: (obj, value) => { obj.oncanplaythrough = value; },
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onclick: (obj) => obj.onclick,
    set_onclick: (obj, value) => { obj.onclick = value; },
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    get_oncommand: (obj) => obj.oncommand,
    set_oncommand: (obj, value) => { obj.oncommand = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextmenu: (obj) => obj.oncontextmenu,
    set_oncontextmenu: (obj, value) => { obj.oncontextmenu = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; },
    get_oncopy: (obj) => obj.oncopy,
    set_oncopy: (obj, value) => { obj.oncopy = value; },
    get_oncuechange: (obj) => obj.oncuechange,
    set_oncuechange: (obj, value) => { obj.oncuechange = value; },
    get_oncut: (obj) => obj.oncut,
    set_oncut: (obj, value) => { obj.oncut = value; },
    get_ondblclick: (obj) => obj.ondblclick,
    set_ondblclick: (obj, value) => { obj.ondblclick = value; },
    get_ondrag: (obj) => obj.ondrag,
    set_ondrag: (obj, value) => { obj.ondrag = value; },
    get_ondragend: (obj) => obj.ondragend,
    set_ondragend: (obj, value) => { obj.ondragend = value; },
    get_ondragenter: (obj) => obj.ondragenter,
    set_ondragenter: (obj, value) => { obj.ondragenter = value; },
    get_ondragleave: (obj) => obj.ondragleave,
    set_ondragleave: (obj, value) => { obj.ondragleave = value; },
    get_ondragover: (obj) => obj.ondragover,
    set_ondragover: (obj, value) => { obj.ondragover = value; },
    get_ondragstart: (obj) => obj.ondragstart,
    set_ondragstart: (obj, value) => { obj.ondragstart = value; },
    get_ondrop: (obj) => obj.ondrop,
    set_ondrop: (obj, value) => { obj.ondrop = value; },
    get_ondurationchange: (obj) => obj.ondurationchange,
    set_ondurationchange: (obj, value) => { obj.ondurationchange = value; },
    get_onemptied: (obj) => obj.onemptied,
    set_onemptied: (obj, value) => { obj.onemptied = value; },
    get_onended: (obj) => obj.onended,
    set_onended: (obj, value) => { obj.onended = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onfocus: (obj) => obj.onfocus,
    set_onfocus: (obj, value) => { obj.onfocus = value; },
    get_onformdata: (obj) => obj.onformdata,
    set_onformdata: (obj, value) => { obj.onformdata = value; },
    get_oninput: (obj) => obj.oninput,
    set_oninput: (obj, value) => { obj.oninput = value; },
    get_oninvalid: (obj) => obj.oninvalid,
    set_oninvalid: (obj, value) => { obj.oninvalid = value; },
    get_onkeydown: (obj) => obj.onkeydown,
    set_onkeydown: (obj, value) => { obj.onkeydown = value; },
    get_onkeypress: (obj) => obj.onkeypress,
    set_onkeypress: (obj, value) => { obj.onkeypress = value; },
    get_onkeyup: (obj) => obj.onkeyup,
    set_onkeyup: (obj, value) => { obj.onkeyup = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_onloadeddata: (obj) => obj.onloadeddata,
    set_onloadeddata: (obj, value) => { obj.onloadeddata = value; },
    get_onloadedmetadata: (obj) => obj.onloadedmetadata,
    set_onloadedmetadata: (obj, value) => { obj.onloadedmetadata = value; },
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onmousedown: (obj) => obj.onmousedown,
    set_onmousedown: (obj, value) => { obj.onmousedown = value; },
    get_onmouseenter: (obj) => obj.onmouseenter,
    set_onmouseenter: (obj, value) => { obj.onmouseenter = value; },
    get_onmouseleave: (obj) => obj.onmouseleave,
    set_onmouseleave: (obj, value) => { obj.onmouseleave = value; },
    get_onmousemove: (obj) => obj.onmousemove,
    set_onmousemove: (obj, value) => { obj.onmousemove = value; },
    get_onmouseout: (obj) => obj.onmouseout,
    set_onmouseout: (obj, value) => { obj.onmouseout = value; },
    get_onmouseover: (obj) => obj.onmouseover,
    set_onmouseover: (obj, value) => { obj.onmouseover = value; },
    get_onmouseup: (obj) => obj.onmouseup,
    set_onmouseup: (obj, value) => { obj.onmouseup = value; },
    get_onpaste: (obj) => obj.onpaste,
    set_onpaste: (obj, value) => { obj.onpaste = value; },
    get_onpause: (obj) => obj.onpause,
    set_onpause: (obj, value) => { obj.onpause = value; },
    get_onplay: (obj) => obj.onplay,
    set_onplay: (obj, value) => { obj.onplay = value; },
    get_onplaying: (obj) => obj.onplaying,
    set_onplaying: (obj, value) => { obj.onplaying = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onratechange: (obj) => obj.onratechange,
    set_onratechange: (obj, value) => { obj.onratechange = value; },
    get_onreset: (obj) => obj.onreset,
    set_onreset: (obj, value) => { obj.onreset = value; },
    get_onresize: (obj) => obj.onresize,
    set_onresize: (obj, value) => { obj.onresize = value; },
    get_onscroll: (obj) => obj.onscroll,
    set_onscroll: (obj, value) => { obj.onscroll = value; },
    get_onscrollend: (obj) => obj.onscrollend,
    set_onscrollend: (obj, value) => { obj.onscrollend = value; },
    get_onsecuritypolicyviolation: (obj) => obj.onsecuritypolicyviolation,
    set_onsecuritypolicyviolation: (obj, value) => { obj.onsecuritypolicyviolation = value; },
    get_onseeked: (obj) => obj.onseeked,
    set_onseeked: (obj, value) => { obj.onseeked = value; },
    get_onseeking: (obj) => obj.onseeking,
    set_onseeking: (obj, value) => { obj.onseeking = value; },
    get_onselect: (obj) => obj.onselect,
    set_onselect: (obj, value) => { obj.onselect = value; },
    get_onslotchange: (obj) => obj.onslotchange,
    set_onslotchange: (obj, value) => { obj.onslotchange = value; },
    get_onstalled: (obj) => obj.onstalled,
    set_onstalled: (obj, value) => { obj.onstalled = value; },
    get_onsubmit: (obj) => obj.onsubmit,
    set_onsubmit: (obj, value) => { obj.onsubmit = value; },
    get_onsuspend: (obj) => obj.onsuspend,
    set_onsuspend: (obj, value) => { obj.onsuspend = value; },
    get_ontimeupdate: (obj) => obj.ontimeupdate,
    set_ontimeupdate: (obj, value) => { obj.ontimeupdate = value; },
    get_ontoggle: (obj) => obj.ontoggle,
    set_ontoggle: (obj, value) => { obj.ontoggle = value; },
    get_onvolumechange: (obj) => obj.onvolumechange,
    set_onvolumechange: (obj, value) => { obj.onvolumechange = value; },
    get_onwaiting: (obj) => obj.onwaiting,
    set_onwaiting: (obj, value) => { obj.onwaiting = value; },
    get_onwebkitanimationend: (obj) => obj.onwebkitanimationend,
    set_onwebkitanimationend: (obj, value) => { obj.onwebkitanimationend = value; },
    get_onwebkitanimationiteration: (obj) => obj.onwebkitanimationiteration,
    set_onwebkitanimationiteration: (obj, value) => { obj.onwebkitanimationiteration = value; },
    get_onwebkitanimationstart: (obj) => obj.onwebkitanimationstart,
    set_onwebkitanimationstart: (obj, value) => { obj.onwebkitanimationstart = value; },
    get_onwebkittransitionend: (obj) => obj.onwebkittransitionend,
    set_onwebkittransitionend: (obj, value) => { obj.onwebkittransitionend = value; },
    get_onwheel: (obj) => obj.onwheel,
    set_onwheel: (obj, value) => { obj.onwheel = value; },
    getElementsByTagName: (obj, qualified_name) => obj.getElementsByTagName(qualified_name),
    getElementsByTagNameNS: (obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name),
    getElementsByClassName: (obj, class_names) => obj.getElementsByClassName(class_names),
    createElement: (obj, local_name, options) => obj.createElement(local_name, options),
    createElementNS: (obj, namespace_, qualified_name, options) => obj.createElementNS(namespace_, qualified_name, options),
    createDocumentFragment: (obj) => obj.createDocumentFragment(),
    createTextNode: (obj, data) => obj.createTextNode(data),
    createCDATASection: (obj, data) => obj.createCDATASection(data),
    createComment: (obj, data) => obj.createComment(data),
    createProcessingInstruction: (obj, target, data) => obj.createProcessingInstruction(target, data),
    importNode: (obj, node, options) => obj.importNode(node, options),
    adoptNode: (obj, node) => obj.adoptNode(node),
    createAttribute: (obj, local_name) => obj.createAttribute(local_name),
    createAttributeNS: (obj, namespace_, qualified_name) => obj.createAttributeNS(namespace_, qualified_name),
    createEvent: (obj, _interface) => obj.createEvent(_interface),
    createRange: (obj) => obj.createRange(),
    createNodeIterator: (obj, root, what_to_show, filter) => obj.createNodeIterator(root, what_to_show, filter),
    createTreeWalker: (obj, root, what_to_show, filter) => obj.createTreeWalker(root, what_to_show, filter),
    parseHTMLUnsafe: (html) => parseHTMLUnsafe(html),
    getElementsByName: (obj, element_name) => obj.getElementsByName(element_name),
    open: (obj, unused1, unused2) => obj.open(unused1, unused2),
    open_2: (obj, url, name, features) => obj.open(url, name, features),
    close: (obj) => obj.close(),
    write: (obj, text) => obj.write(text),
    writeln: (obj, text) => obj.writeln(text),
    hasFocus: (obj) => obj.hasFocus(),
    execCommand: (obj, command_id, show_ui, value) => obj.execCommand(command_id, show_ui, value),
    queryCommandEnabled: (obj, command_id) => obj.queryCommandEnabled(command_id),
    queryCommandIndeterm: (obj, command_id) => obj.queryCommandIndeterm(command_id),
    queryCommandState: (obj, command_id) => obj.queryCommandState(command_id),
    queryCommandSupported: (obj, command_id) => obj.queryCommandSupported(command_id),
    queryCommandValue: (obj, command_id) => obj.queryCommandValue(command_id),
    clear: (obj) => obj.clear(),
    captureEvents: (obj) => obj.captureEvents(),
    releaseEvents: (obj) => obj.releaseEvents(),
    elementFromPoint: (obj, x, y) => obj.elementFromPoint(x, y),
    elementsFromPoint: (obj, x, y) => obj.elementsFromPoint(x, y),
    caretPositionFromPoint: (obj, x, y, options) => obj.caretPositionFromPoint(x, y, options),
    getElementById: (obj, element_id) => obj.getElementById(element_id),
    prepend: (obj, nodes) => obj.prepend(nodes),
    append: (obj, nodes) => obj.append(nodes),
    replaceChildren: (obj, nodes) => obj.replaceChildren(nodes),
    moveBefore: (obj, node, child) => obj.moveBefore(node, child),
    querySelector: (obj, selectors) => obj.querySelector(selectors),
    querySelectorAll: (obj, selectors) => obj.querySelectorAll(selectors),
    createExpression: (obj, expression, resolver) => obj.createExpression(expression, resolver),
    createNSResolver: (obj, node_resolver) => obj.createNSResolver(node_resolver),
    evaluate: (obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options)
  },

  webapi_SVGSVGElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_currentScale: (obj) => obj.currentScale,
    set_currentScale: (obj, value) => { obj.currentScale = value; },
    get_currentTranslate: (obj) => obj.currentTranslate,
    get_viewBox: (obj) => obj.viewBox,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio,
    get_onafterprint: (obj) => obj.onafterprint,
    set_onafterprint: (obj, value) => { obj.onafterprint = value; },
    get_onbeforeprint: (obj) => obj.onbeforeprint,
    set_onbeforeprint: (obj, value) => { obj.onbeforeprint = value; },
    get_onbeforeunload: (obj) => obj.onbeforeunload,
    set_onbeforeunload: (obj, value) => { obj.onbeforeunload = value; },
    get_onhashchange: (obj) => obj.onhashchange,
    set_onhashchange: (obj, value) => { obj.onhashchange = value; },
    get_onlanguagechange: (obj) => obj.onlanguagechange,
    set_onlanguagechange: (obj, value) => { obj.onlanguagechange = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    get_onoffline: (obj) => obj.onoffline,
    set_onoffline: (obj, value) => { obj.onoffline = value; },
    get_ononline: (obj) => obj.ononline,
    set_ononline: (obj, value) => { obj.ononline = value; },
    get_onpagehide: (obj) => obj.onpagehide,
    set_onpagehide: (obj, value) => { obj.onpagehide = value; },
    get_onpagereveal: (obj) => obj.onpagereveal,
    set_onpagereveal: (obj, value) => { obj.onpagereveal = value; },
    get_onpageshow: (obj) => obj.onpageshow,
    set_onpageshow: (obj, value) => { obj.onpageshow = value; },
    get_onpageswap: (obj) => obj.onpageswap,
    set_onpageswap: (obj, value) => { obj.onpageswap = value; },
    get_onpopstate: (obj) => obj.onpopstate,
    set_onpopstate: (obj, value) => { obj.onpopstate = value; },
    get_onrejectionhandled: (obj) => obj.onrejectionhandled,
    set_onrejectionhandled: (obj, value) => { obj.onrejectionhandled = value; },
    get_onstorage: (obj) => obj.onstorage,
    set_onstorage: (obj, value) => { obj.onstorage = value; },
    get_onunhandledrejection: (obj) => obj.onunhandledrejection,
    set_onunhandledrejection: (obj, value) => { obj.onunhandledrejection = value; },
    get_onunload: (obj) => obj.onunload,
    set_onunload: (obj, value) => { obj.onunload = value; },
    getIntersectionList: (obj, rect, reference_element) => obj.getIntersectionList(rect, reference_element),
    getEnclosureList: (obj, rect, reference_element) => obj.getEnclosureList(rect, reference_element),
    checkIntersection: (obj, element, rect) => obj.checkIntersection(element, rect),
    checkEnclosure: (obj, element, rect) => obj.checkEnclosure(element, rect),
    deselectAll: (obj) => obj.deselectAll(),
    createSVGNumber: (obj) => obj.createSVGNumber(),
    createSVGLength: (obj) => obj.createSVGLength(),
    createSVGAngle: (obj) => obj.createSVGAngle(),
    createSVGPoint: (obj) => obj.createSVGPoint(),
    createSVGMatrix: (obj) => obj.createSVGMatrix(),
    createSVGRect: (obj) => obj.createSVGRect(),
    createSVGTransform: (obj) => obj.createSVGTransform(),
    createSVGTransformFromMatrix: (obj, matrix) => obj.createSVGTransformFromMatrix(matrix),
    getElementById: (obj, element_id) => obj.getElementById(element_id),
    suspendRedraw: (obj, max_wait_milliseconds) => obj.suspendRedraw(max_wait_milliseconds),
    unsuspendRedraw: (obj, suspend_handle_id) => obj.unsuspendRedraw(suspend_handle_id),
    unsuspendRedrawAll: (obj) => obj.unsuspendRedrawAll(),
    forceRedraw: (obj) => obj.forceRedraw()
  },

  webapi_SVGGElement: {
  },

  webapi_SVGDefsElement: {
  },

  webapi_SVGDescElement: {
  },

  webapi_SVGMetadataElement: {
  },

  webapi_SVGTitleElement: {
  },

  webapi_SVGSymbolElement: {
    get_viewBox: (obj) => obj.viewBox,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio
  },

  webapi_SVGUseElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_instanceRoot: (obj) => obj.instanceRoot,
    get_animatedInstanceRoot: (obj) => obj.animatedInstanceRoot,
    get_href: (obj) => obj.href
  },

  webapi_SVGUseElementShadowRoot: {
  },

  webapi_SVGSwitchElement: {
  },

  webapi_SVGStyleElement: {
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_media: (obj) => obj.media,
    set_media: (obj, value) => { obj.media = value; },
    get_title: (obj) => obj.title,
    set_title: (obj, value) => { obj.title = value; },
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_sheet: (obj) => obj.sheet
  },

  webapi_SVGTransform: {
    get_type: (obj) => obj.type,
    get_matrix: (obj) => obj.matrix,
    get_angle: (obj) => obj.angle,
    setMatrix: (obj, matrix) => obj.setMatrix(matrix),
    setTranslate: (obj, tx, ty) => obj.setTranslate(tx, ty),
    setScale: (obj, sx, sy) => obj.setScale(sx, sy),
    setRotate: (obj, angle, cx, cy) => obj.setRotate(angle, cx, cy),
    setSkewX: (obj, angle) => obj.setSkewX(angle),
    setSkewY: (obj, angle) => obj.setSkewY(angle)
  },

  webapi_SVGTransformList: {
    get_length: (obj) => obj.length,
    get_numberOfItems: (obj) => obj.numberOfItems,
    clear: (obj) => obj.clear(),
    initialize: (obj, new_item) => obj.initialize(new_item),
    insertItemBefore: (obj, new_item, index) => obj.insertItemBefore(new_item, index),
    replaceItem: (obj, new_item, index) => obj.replaceItem(new_item, index),
    removeItem: (obj, index) => obj.removeItem(index),
    appendItem: (obj, new_item) => obj.appendItem(new_item),
    createSVGTransformFromMatrix: (obj, matrix) => obj.createSVGTransformFromMatrix(matrix),
    consolidate: (obj) => obj.consolidate()
  },

  webapi_SVGAnimatedTransformList: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGPreserveAspectRatio: {
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_meetOrSlice: (obj) => obj.meetOrSlice,
    set_meetOrSlice: (obj, value) => { obj.meetOrSlice = value; }
  },

  webapi_SVGAnimatedPreserveAspectRatio: {
    get_baseVal: (obj) => obj.baseVal,
    get_animVal: (obj) => obj.animVal
  },

  webapi_SVGRectElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_rx: (obj) => obj.rx,
    get_ry: (obj) => obj.ry
  },

  webapi_SVGCircleElement: {
    get_cx: (obj) => obj.cx,
    get_cy: (obj) => obj.cy,
    get_r: (obj) => obj.r
  },

  webapi_SVGEllipseElement: {
    get_cx: (obj) => obj.cx,
    get_cy: (obj) => obj.cy,
    get_rx: (obj) => obj.rx,
    get_ry: (obj) => obj.ry
  },

  webapi_SVGLineElement: {
    get_x1: (obj) => obj.x1,
    get_y1: (obj) => obj.y1,
    get_x2: (obj) => obj.x2,
    get_y2: (obj) => obj.y2
  },

  webapi_SVGPointList: {
    get_length: (obj) => obj.length,
    get_numberOfItems: (obj) => obj.numberOfItems,
    clear: (obj) => obj.clear(),
    initialize: (obj, new_item) => obj.initialize(new_item),
    insertItemBefore: (obj, new_item, index) => obj.insertItemBefore(new_item, index),
    replaceItem: (obj, new_item, index) => obj.replaceItem(new_item, index),
    removeItem: (obj, index) => obj.removeItem(index),
    appendItem: (obj, new_item) => obj.appendItem(new_item)
  },

  webapi_SVGPolylineElement: {
    get_points: (obj) => obj.points,
    get_animatedPoints: (obj) => obj.animatedPoints
  },

  webapi_SVGPolygonElement: {
    get_points: (obj) => obj.points,
    get_animatedPoints: (obj) => obj.animatedPoints
  },

  webapi_SVGTextContentElement: {
    get_textLength: (obj) => obj.textLength,
    get_lengthAdjust: (obj) => obj.lengthAdjust,
    getNumberOfChars: (obj) => obj.getNumberOfChars(),
    getComputedTextLength: (obj) => obj.getComputedTextLength(),
    getSubStringLength: (obj, charnum, nchars) => obj.getSubStringLength(charnum, nchars),
    getStartPositionOfChar: (obj, charnum) => obj.getStartPositionOfChar(charnum),
    getEndPositionOfChar: (obj, charnum) => obj.getEndPositionOfChar(charnum),
    getExtentOfChar: (obj, charnum) => obj.getExtentOfChar(charnum),
    getRotationOfChar: (obj, charnum) => obj.getRotationOfChar(charnum),
    getCharNumAtPosition: (obj, point) => obj.getCharNumAtPosition(point),
    selectSubString: (obj, charnum, nchars) => obj.selectSubString(charnum, nchars)
  },

  webapi_SVGTextPositioningElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_dx: (obj) => obj.dx,
    get_dy: (obj) => obj.dy,
    get_rotate: (obj) => obj.rotate
  },

  webapi_SVGTextElement: {
  },

  webapi_SVGTSpanElement: {
  },

  webapi_SVGTextPathElement: {
    get_startOffset: (obj) => obj.startOffset,
    get_method: (obj) => obj.method,
    get_spacing: (obj) => obj.spacing,
    get_href: (obj) => obj.href
  },

  webapi_SVGImageElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio,
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_href: (obj) => obj.href
  },

  webapi_SVGForeignObjectElement: {
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height
  },

  webapi_SVGMarkerElement: {
    get_refX: (obj) => obj.refX,
    get_refY: (obj) => obj.refY,
    get_markerUnits: (obj) => obj.markerUnits,
    get_markerWidth: (obj) => obj.markerWidth,
    get_markerHeight: (obj) => obj.markerHeight,
    get_orientType: (obj) => obj.orientType,
    get_orientAngle: (obj) => obj.orientAngle,
    get_orient: (obj) => obj.orient,
    set_orient: (obj, value) => { obj.orient = value; },
    get_viewBox: (obj) => obj.viewBox,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio,
    setOrientToAuto: (obj) => obj.setOrientToAuto(),
    setOrientToAngle: (obj, angle) => obj.setOrientToAngle(angle)
  },

  webapi_SVGGradientElement: {
    get_gradientUnits: (obj) => obj.gradientUnits,
    get_gradientTransform: (obj) => obj.gradientTransform,
    get_spreadMethod: (obj) => obj.spreadMethod,
    get_href: (obj) => obj.href
  },

  webapi_SVGLinearGradientElement: {
    get_x1: (obj) => obj.x1,
    get_y1: (obj) => obj.y1,
    get_x2: (obj) => obj.x2,
    get_y2: (obj) => obj.y2
  },

  webapi_SVGRadialGradientElement: {
    get_cx: (obj) => obj.cx,
    get_cy: (obj) => obj.cy,
    get_r: (obj) => obj.r,
    get_fx: (obj) => obj.fx,
    get_fy: (obj) => obj.fy,
    get_fr: (obj) => obj.fr
  },

  webapi_SVGStopElement: {
    get_offset: (obj) => obj.offset
  },

  webapi_SVGPatternElement: {
    get_patternUnits: (obj) => obj.patternUnits,
    get_patternContentUnits: (obj) => obj.patternContentUnits,
    get_patternTransform: (obj) => obj.patternTransform,
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_viewBox: (obj) => obj.viewBox,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio,
    get_href: (obj) => obj.href
  },

  webapi_SVGScriptElement: {
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_href: (obj) => obj.href
  },

  webapi_SVGAElement: {
    get_target: (obj) => obj.target,
    get_download: (obj) => obj.download,
    set_download: (obj, value) => { obj.download = value; },
    get_ping: (obj) => obj.ping,
    set_ping: (obj, value) => { obj.ping = value; },
    get_rel: (obj) => obj.rel,
    set_rel: (obj, value) => { obj.rel = value; },
    get_relList: (obj) => obj.relList,
    get_hreflang: (obj) => obj.hreflang,
    set_hreflang: (obj, value) => { obj.hreflang = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    set_protocol: (obj, value) => { obj.protocol = value; },
    get_username: (obj) => obj.username,
    set_username: (obj, value) => { obj.username = value; },
    get_password: (obj) => obj.password,
    set_password: (obj, value) => { obj.password = value; },
    get_host: (obj) => obj.host,
    set_host: (obj, value) => { obj.host = value; },
    get_hostname: (obj) => obj.hostname,
    set_hostname: (obj, value) => { obj.hostname = value; },
    get_port: (obj) => obj.port,
    set_port: (obj, value) => { obj.port = value; },
    get_pathname: (obj) => obj.pathname,
    set_pathname: (obj, value) => { obj.pathname = value; },
    get_search: (obj) => obj.search,
    set_search: (obj, value) => { obj.search = value; },
    get_hash: (obj) => obj.hash,
    set_hash: (obj, value) => { obj.hash = value; },
    get_href: (obj) => obj.href
  },

  webapi_SVGViewElement: {
    get_viewBox: (obj) => obj.viewBox,
    get_preserveAspectRatio: (obj) => obj.preserveAspectRatio
  },

  webapi_Event: {
    new: (type_, event_init_dict) => new Event(type_, event_init_dict),
    get_type: (obj) => obj.type,
    get_target: (obj) => obj.target,
    get_srcElement: (obj) => obj.srcElement,
    get_currentTarget: (obj) => obj.currentTarget,
    get_eventPhase: (obj) => obj.eventPhase,
    get_cancelBubble: (obj) => obj.cancelBubble,
    set_cancelBubble: (obj, value) => { obj.cancelBubble = value; },
    get_bubbles: (obj) => obj.bubbles,
    get_cancelable: (obj) => obj.cancelable,
    get_returnValue: (obj) => obj.returnValue,
    set_returnValue: (obj, value) => { obj.returnValue = value; },
    get_defaultPrevented: (obj) => obj.defaultPrevented,
    get_composed: (obj) => obj.composed,
    get_isTrusted: (obj) => obj.isTrusted,
    get_timeStamp: (obj) => obj.timeStamp,
    composedPath: (obj) => obj.composedPath(),
    stopPropagation: (obj) => obj.stopPropagation(),
    stopImmediatePropagation: (obj) => obj.stopImmediatePropagation(),
    preventDefault: (obj) => obj.preventDefault(),
    initEvent: (obj, type_, bubbles, cancelable) => obj.initEvent(type_, bubbles, cancelable)
  },

  webapi_Window: {
    get_event: (obj) => obj.event,
    get_window: (obj) => obj.window,
    get_self: (obj) => obj.self,
    get_document: (obj) => obj.document,
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_location: (obj) => obj.location,
    get_history: (obj) => obj.history,
    get_navigation: (obj) => obj.navigation,
    get_customElements: (obj) => obj.customElements,
    get_locationbar: (obj) => obj.locationbar,
    get_menubar: (obj) => obj.menubar,
    get_personalbar: (obj) => obj.personalbar,
    get_scrollbars: (obj) => obj.scrollbars,
    get_statusbar: (obj) => obj.statusbar,
    get_toolbar: (obj) => obj.toolbar,
    get_status: (obj) => obj.status,
    set_status: (obj, value) => { obj.status = value; },
    get_closed: (obj) => obj.closed,
    get_frames: (obj) => obj.frames,
    get_length: (obj) => obj.length,
    get_top: (obj) => obj.top,
    get_opener: (obj) => obj.opener,
    set_opener: (obj, value) => { obj.opener = value; },
    get_parent: (obj) => obj.parent,
    get_frameElement: (obj) => obj.frameElement,
    get_navigator: (obj) => obj.navigator,
    get_clientInformation: (obj) => obj.clientInformation,
    get_originAgentCluster: (obj) => obj.originAgentCluster,
    get_external: (obj) => obj.external,
    get_screen: (obj) => obj.screen,
    get_visualViewport: (obj) => obj.visualViewport,
    get_innerWidth: (obj) => obj.innerWidth,
    get_innerHeight: (obj) => obj.innerHeight,
    get_scrollX: (obj) => obj.scrollX,
    get_pageXOffset: (obj) => obj.pageXOffset,
    get_scrollY: (obj) => obj.scrollY,
    get_pageYOffset: (obj) => obj.pageYOffset,
    get_screenX: (obj) => obj.screenX,
    get_screenLeft: (obj) => obj.screenLeft,
    get_screenY: (obj) => obj.screenY,
    get_screenTop: (obj) => obj.screenTop,
    get_outerWidth: (obj) => obj.outerWidth,
    get_outerHeight: (obj) => obj.outerHeight,
    get_devicePixelRatio: (obj) => obj.devicePixelRatio,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onauxclick: (obj) => obj.onauxclick,
    set_onauxclick: (obj, value) => { obj.onauxclick = value; },
    get_onbeforeinput: (obj) => obj.onbeforeinput,
    set_onbeforeinput: (obj, value) => { obj.onbeforeinput = value; },
    get_onbeforematch: (obj) => obj.onbeforematch,
    set_onbeforematch: (obj, value) => { obj.onbeforematch = value; },
    get_onbeforetoggle: (obj) => obj.onbeforetoggle,
    set_onbeforetoggle: (obj, value) => { obj.onbeforetoggle = value; },
    get_onblur: (obj) => obj.onblur,
    set_onblur: (obj, value) => { obj.onblur = value; },
    get_oncancel: (obj) => obj.oncancel,
    set_oncancel: (obj, value) => { obj.oncancel = value; },
    get_oncanplay: (obj) => obj.oncanplay,
    set_oncanplay: (obj, value) => { obj.oncanplay = value; },
    get_oncanplaythrough: (obj) => obj.oncanplaythrough,
    set_oncanplaythrough: (obj, value) => { obj.oncanplaythrough = value; },
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onclick: (obj) => obj.onclick,
    set_onclick: (obj, value) => { obj.onclick = value; },
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    get_oncommand: (obj) => obj.oncommand,
    set_oncommand: (obj, value) => { obj.oncommand = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextmenu: (obj) => obj.oncontextmenu,
    set_oncontextmenu: (obj, value) => { obj.oncontextmenu = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; },
    get_oncopy: (obj) => obj.oncopy,
    set_oncopy: (obj, value) => { obj.oncopy = value; },
    get_oncuechange: (obj) => obj.oncuechange,
    set_oncuechange: (obj, value) => { obj.oncuechange = value; },
    get_oncut: (obj) => obj.oncut,
    set_oncut: (obj, value) => { obj.oncut = value; },
    get_ondblclick: (obj) => obj.ondblclick,
    set_ondblclick: (obj, value) => { obj.ondblclick = value; },
    get_ondrag: (obj) => obj.ondrag,
    set_ondrag: (obj, value) => { obj.ondrag = value; },
    get_ondragend: (obj) => obj.ondragend,
    set_ondragend: (obj, value) => { obj.ondragend = value; },
    get_ondragenter: (obj) => obj.ondragenter,
    set_ondragenter: (obj, value) => { obj.ondragenter = value; },
    get_ondragleave: (obj) => obj.ondragleave,
    set_ondragleave: (obj, value) => { obj.ondragleave = value; },
    get_ondragover: (obj) => obj.ondragover,
    set_ondragover: (obj, value) => { obj.ondragover = value; },
    get_ondragstart: (obj) => obj.ondragstart,
    set_ondragstart: (obj, value) => { obj.ondragstart = value; },
    get_ondrop: (obj) => obj.ondrop,
    set_ondrop: (obj, value) => { obj.ondrop = value; },
    get_ondurationchange: (obj) => obj.ondurationchange,
    set_ondurationchange: (obj, value) => { obj.ondurationchange = value; },
    get_onemptied: (obj) => obj.onemptied,
    set_onemptied: (obj, value) => { obj.onemptied = value; },
    get_onended: (obj) => obj.onended,
    set_onended: (obj, value) => { obj.onended = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onfocus: (obj) => obj.onfocus,
    set_onfocus: (obj, value) => { obj.onfocus = value; },
    get_onformdata: (obj) => obj.onformdata,
    set_onformdata: (obj, value) => { obj.onformdata = value; },
    get_oninput: (obj) => obj.oninput,
    set_oninput: (obj, value) => { obj.oninput = value; },
    get_oninvalid: (obj) => obj.oninvalid,
    set_oninvalid: (obj, value) => { obj.oninvalid = value; },
    get_onkeydown: (obj) => obj.onkeydown,
    set_onkeydown: (obj, value) => { obj.onkeydown = value; },
    get_onkeypress: (obj) => obj.onkeypress,
    set_onkeypress: (obj, value) => { obj.onkeypress = value; },
    get_onkeyup: (obj) => obj.onkeyup,
    set_onkeyup: (obj, value) => { obj.onkeyup = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_onloadeddata: (obj) => obj.onloadeddata,
    set_onloadeddata: (obj, value) => { obj.onloadeddata = value; },
    get_onloadedmetadata: (obj) => obj.onloadedmetadata,
    set_onloadedmetadata: (obj, value) => { obj.onloadedmetadata = value; },
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onmousedown: (obj) => obj.onmousedown,
    set_onmousedown: (obj, value) => { obj.onmousedown = value; },
    get_onmouseenter: (obj) => obj.onmouseenter,
    set_onmouseenter: (obj, value) => { obj.onmouseenter = value; },
    get_onmouseleave: (obj) => obj.onmouseleave,
    set_onmouseleave: (obj, value) => { obj.onmouseleave = value; },
    get_onmousemove: (obj) => obj.onmousemove,
    set_onmousemove: (obj, value) => { obj.onmousemove = value; },
    get_onmouseout: (obj) => obj.onmouseout,
    set_onmouseout: (obj, value) => { obj.onmouseout = value; },
    get_onmouseover: (obj) => obj.onmouseover,
    set_onmouseover: (obj, value) => { obj.onmouseover = value; },
    get_onmouseup: (obj) => obj.onmouseup,
    set_onmouseup: (obj, value) => { obj.onmouseup = value; },
    get_onpaste: (obj) => obj.onpaste,
    set_onpaste: (obj, value) => { obj.onpaste = value; },
    get_onpause: (obj) => obj.onpause,
    set_onpause: (obj, value) => { obj.onpause = value; },
    get_onplay: (obj) => obj.onplay,
    set_onplay: (obj, value) => { obj.onplay = value; },
    get_onplaying: (obj) => obj.onplaying,
    set_onplaying: (obj, value) => { obj.onplaying = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onratechange: (obj) => obj.onratechange,
    set_onratechange: (obj, value) => { obj.onratechange = value; },
    get_onreset: (obj) => obj.onreset,
    set_onreset: (obj, value) => { obj.onreset = value; },
    get_onresize: (obj) => obj.onresize,
    set_onresize: (obj, value) => { obj.onresize = value; },
    get_onscroll: (obj) => obj.onscroll,
    set_onscroll: (obj, value) => { obj.onscroll = value; },
    get_onscrollend: (obj) => obj.onscrollend,
    set_onscrollend: (obj, value) => { obj.onscrollend = value; },
    get_onsecuritypolicyviolation: (obj) => obj.onsecuritypolicyviolation,
    set_onsecuritypolicyviolation: (obj, value) => { obj.onsecuritypolicyviolation = value; },
    get_onseeked: (obj) => obj.onseeked,
    set_onseeked: (obj, value) => { obj.onseeked = value; },
    get_onseeking: (obj) => obj.onseeking,
    set_onseeking: (obj, value) => { obj.onseeking = value; },
    get_onselect: (obj) => obj.onselect,
    set_onselect: (obj, value) => { obj.onselect = value; },
    get_onslotchange: (obj) => obj.onslotchange,
    set_onslotchange: (obj, value) => { obj.onslotchange = value; },
    get_onstalled: (obj) => obj.onstalled,
    set_onstalled: (obj, value) => { obj.onstalled = value; },
    get_onsubmit: (obj) => obj.onsubmit,
    set_onsubmit: (obj, value) => { obj.onsubmit = value; },
    get_onsuspend: (obj) => obj.onsuspend,
    set_onsuspend: (obj, value) => { obj.onsuspend = value; },
    get_ontimeupdate: (obj) => obj.ontimeupdate,
    set_ontimeupdate: (obj, value) => { obj.ontimeupdate = value; },
    get_ontoggle: (obj) => obj.ontoggle,
    set_ontoggle: (obj, value) => { obj.ontoggle = value; },
    get_onvolumechange: (obj) => obj.onvolumechange,
    set_onvolumechange: (obj, value) => { obj.onvolumechange = value; },
    get_onwaiting: (obj) => obj.onwaiting,
    set_onwaiting: (obj, value) => { obj.onwaiting = value; },
    get_onwebkitanimationend: (obj) => obj.onwebkitanimationend,
    set_onwebkitanimationend: (obj, value) => { obj.onwebkitanimationend = value; },
    get_onwebkitanimationiteration: (obj) => obj.onwebkitanimationiteration,
    set_onwebkitanimationiteration: (obj, value) => { obj.onwebkitanimationiteration = value; },
    get_onwebkitanimationstart: (obj) => obj.onwebkitanimationstart,
    set_onwebkitanimationstart: (obj, value) => { obj.onwebkitanimationstart = value; },
    get_onwebkittransitionend: (obj) => obj.onwebkittransitionend,
    set_onwebkittransitionend: (obj, value) => { obj.onwebkittransitionend = value; },
    get_onwheel: (obj) => obj.onwheel,
    set_onwheel: (obj, value) => { obj.onwheel = value; },
    get_onafterprint: (obj) => obj.onafterprint,
    set_onafterprint: (obj, value) => { obj.onafterprint = value; },
    get_onbeforeprint: (obj) => obj.onbeforeprint,
    set_onbeforeprint: (obj, value) => { obj.onbeforeprint = value; },
    get_onbeforeunload: (obj) => obj.onbeforeunload,
    set_onbeforeunload: (obj, value) => { obj.onbeforeunload = value; },
    get_onhashchange: (obj) => obj.onhashchange,
    set_onhashchange: (obj, value) => { obj.onhashchange = value; },
    get_onlanguagechange: (obj) => obj.onlanguagechange,
    set_onlanguagechange: (obj, value) => { obj.onlanguagechange = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    get_onoffline: (obj) => obj.onoffline,
    set_onoffline: (obj, value) => { obj.onoffline = value; },
    get_ononline: (obj) => obj.ononline,
    set_ononline: (obj, value) => { obj.ononline = value; },
    get_onpagehide: (obj) => obj.onpagehide,
    set_onpagehide: (obj, value) => { obj.onpagehide = value; },
    get_onpagereveal: (obj) => obj.onpagereveal,
    set_onpagereveal: (obj, value) => { obj.onpagereveal = value; },
    get_onpageshow: (obj) => obj.onpageshow,
    set_onpageshow: (obj, value) => { obj.onpageshow = value; },
    get_onpageswap: (obj) => obj.onpageswap,
    set_onpageswap: (obj, value) => { obj.onpageswap = value; },
    get_onpopstate: (obj) => obj.onpopstate,
    set_onpopstate: (obj, value) => { obj.onpopstate = value; },
    get_onrejectionhandled: (obj) => obj.onrejectionhandled,
    set_onrejectionhandled: (obj, value) => { obj.onrejectionhandled = value; },
    get_onstorage: (obj) => obj.onstorage,
    set_onstorage: (obj, value) => { obj.onstorage = value; },
    get_onunhandledrejection: (obj) => obj.onunhandledrejection,
    set_onunhandledrejection: (obj, value) => { obj.onunhandledrejection = value; },
    get_onunload: (obj) => obj.onunload,
    set_onunload: (obj, value) => { obj.onunload = value; },
    get_origin: (obj) => obj.origin,
    get_isSecureContext: (obj) => obj.isSecureContext,
    get_crossOriginIsolated: (obj) => obj.crossOriginIsolated,
    get_performance: (obj) => obj.performance,
    get_trustedTypes: (obj) => obj.trustedTypes,
    get_sessionStorage: (obj) => obj.sessionStorage,
    get_localStorage: (obj) => obj.localStorage,
    close: (obj) => obj.close(),
    stop: (obj) => obj.stop(),
    focus: (obj) => obj.focus(),
    blur: (obj) => obj.blur(),
    open: (obj, url, target, features) => obj.open(url, target, features),
    alert: (obj) => obj.alert(),
    alert_2: (obj, message) => obj.alert(message),
    confirm: (obj, message) => obj.confirm(message),
    prompt: (obj, message, _default) => obj.prompt(message, _default),
    print: (obj) => obj.print(),
    postMessage: (obj, message, target_origin, transfer) => obj.postMessage(message, target_origin, transfer),
    postMessage_2: (obj, message, options) => obj.postMessage(message, options),
    captureEvents: (obj) => obj.captureEvents(),
    releaseEvents: (obj) => obj.releaseEvents(),
    getComputedStyle: (obj, elt, pseudo_elt) => obj.getComputedStyle(elt, pseudo_elt),
    fetchLater: (obj, input, init) => obj.fetchLater(input, init),
    matchMedia: (obj, query) => obj.matchMedia(query),
    moveTo: (obj, x, y) => obj.moveTo(x, y),
    moveBy: (obj, x, y) => obj.moveBy(x, y),
    resizeTo: (obj, width, height) => obj.resizeTo(width, height),
    resizeBy: (obj, x, y) => obj.resizeBy(x, y),
    scroll: (obj, options) => obj.scroll(options),
    scroll_2: (obj, x, y) => obj.scroll(x, y),
    scrollTo: (obj, options) => obj.scrollTo(options),
    scrollTo_2: (obj, x, y) => obj.scrollTo(x, y),
    scrollBy: (obj, options) => obj.scrollBy(options),
    scrollBy_2: (obj, x, y) => obj.scrollBy(x, y),
    reportError: (obj, e) => obj.reportError(e),
    btoa: (obj, data) => obj.btoa(data),
    atob: (obj, data) => obj.atob(data),
    setTimeout: (obj, handler, timeout, _arguments) => obj.setTimeout(handler, timeout, _arguments),
    clearTimeout: (obj, id) => obj.clearTimeout(id),
    setInterval: (obj, handler, timeout, _arguments) => obj.setInterval(handler, timeout, _arguments),
    clearInterval: (obj, id) => obj.clearInterval(id),
    queueMicrotask: (obj, callback) => obj.queueMicrotask(callback),
    createImageBitmap: (obj, image, options) => obj.createImageBitmap(image, options),
    createImageBitmap_2: (obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap(image, sx, sy, sw, sh, options),
    structuredClone: (obj, value, options) => obj.structuredClone(value, options),
    fetch: (obj, input, init) => obj.fetch(input, init),
    requestAnimationFrame: (obj, callback) => obj.requestAnimationFrame(callback),
    cancelAnimationFrame: (obj, handle) => obj.cancelAnimationFrame(handle)
  },

  webapi_CustomEvent: {
    new: (type_, event_init_dict) => new CustomEvent(type_, event_init_dict),
    get_detail: (obj) => obj.detail,
    initCustomEvent: (obj, type_, bubbles, cancelable, detail) => obj.initCustomEvent(type_, bubbles, cancelable, detail)
  },

  webapi_EventTarget: {
    new: () => new EventTarget(),
    addEventListener: (obj, type_, callback, options) => obj.addEventListener(type_, callback, options),
    removeEventListener: (obj, type_, callback, options) => obj.removeEventListener(type_, callback, options),
    dispatchEvent: (obj, event) => obj.dispatchEvent(event)
  },

  webapi_AbortController: {
    new: () => new AbortController(),
    get_signal: (obj) => obj.signal,
    abort: (obj, reason) => obj.abort(reason)
  },

  webapi_AbortSignal: {
    get_aborted: (obj) => obj.aborted,
    get_reason: (obj) => obj.reason,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    abort: (reason) => abort(reason),
    timeout: (milliseconds) => timeout(milliseconds),
    any: (signals) => any(signals),
    throwIfAborted: (obj) => obj.throwIfAborted()
  },

  webapi_NodeList: {
    get_length: (obj) => obj.length
  },

  webapi_HTMLCollection: {
    get_length: (obj) => obj.length
  },

  webapi_MutationObserver: {
    new: (callback) => new MutationObserver(callback),
    observe: (obj, target, options) => obj.observe(target, options),
    disconnect: (obj) => obj.disconnect(),
    takeRecords: (obj) => obj.takeRecords()
  },

  webapi_MutationRecord: {
    get_type: (obj) => obj.type,
    get_target: (obj) => obj.target,
    get_addedNodes: (obj) => obj.addedNodes,
    get_removedNodes: (obj) => obj.removedNodes,
    get_previousSibling: (obj) => obj.previousSibling,
    get_nextSibling: (obj) => obj.nextSibling,
    get_attributeName: (obj) => obj.attributeName,
    get_attributeNamespace: (obj) => obj.attributeNamespace,
    get_oldValue: (obj) => obj.oldValue
  },

  webapi_Node: {
    get_nodeType: (obj) => obj.nodeType,
    get_nodeName: (obj) => obj.nodeName,
    get_baseURI: (obj) => obj.baseURI,
    get_isConnected: (obj) => obj.isConnected,
    get_ownerDocument: (obj) => obj.ownerDocument,
    get_parentNode: (obj) => obj.parentNode,
    get_parentElement: (obj) => obj.parentElement,
    get_childNodes: (obj) => obj.childNodes,
    get_firstChild: (obj) => obj.firstChild,
    get_lastChild: (obj) => obj.lastChild,
    get_previousSibling: (obj) => obj.previousSibling,
    get_nextSibling: (obj) => obj.nextSibling,
    get_nodeValue: (obj) => obj.nodeValue,
    set_nodeValue: (obj, value) => { obj.nodeValue = value; },
    get_textContent: (obj) => obj.textContent,
    set_textContent: (obj, value) => { obj.textContent = value; },
    getRootNode: (obj, options) => obj.getRootNode(options),
    hasChildNodes: (obj) => obj.hasChildNodes(),
    normalize: (obj) => obj.normalize(),
    cloneNode: (obj, subtree) => obj.cloneNode(subtree),
    isEqualNode: (obj, other_node) => obj.isEqualNode(other_node),
    isSameNode: (obj, other_node) => obj.isSameNode(other_node),
    compareDocumentPosition: (obj, other) => obj.compareDocumentPosition(other),
    contains: (obj, other) => obj.contains(other),
    lookupPrefix: (obj, namespace_) => obj.lookupPrefix(namespace_),
    lookupNamespaceURI: (obj, prefix) => obj.lookupNamespaceURI(prefix),
    isDefaultNamespace: (obj, namespace_) => obj.isDefaultNamespace(namespace_),
    insertBefore: (obj, node, child) => obj.insertBefore(node, child),
    appendChild: (obj, node) => obj.appendChild(node),
    replaceChild: (obj, node, child) => obj.replaceChild(node, child),
    removeChild: (obj, child) => obj.removeChild(child)
  },

  webapi_XMLDocument: {
  },

  webapi_DOMImplementation: {
    createDocumentType: (obj, name, public_id, system_id) => obj.createDocumentType(name, public_id, system_id),
    createDocument: (obj, namespace_, qualified_name, doctype) => obj.createDocument(namespace_, qualified_name, doctype),
    createHTMLDocument: (obj, title) => obj.createHTMLDocument(title),
    hasFeature: (obj) => obj.hasFeature()
  },

  webapi_DocumentType: {
    get_name: (obj) => obj.name,
    get_publicId: (obj) => obj.publicId,
    get_systemId: (obj) => obj.systemId,
    before: (obj, nodes) => obj.before(nodes),
    after: (obj, nodes) => obj.after(nodes),
    replaceWith: (obj, nodes) => obj.replaceWith(nodes),
    remove: (obj) => obj.remove()
  },

  webapi_DocumentFragment: {
    new: () => new DocumentFragment(),
    get_children: (obj) => obj.children,
    get_firstElementChild: (obj) => obj.firstElementChild,
    get_lastElementChild: (obj) => obj.lastElementChild,
    get_childElementCount: (obj) => obj.childElementCount,
    getElementById: (obj, element_id) => obj.getElementById(element_id),
    prepend: (obj, nodes) => obj.prepend(nodes),
    append: (obj, nodes) => obj.append(nodes),
    replaceChildren: (obj, nodes) => obj.replaceChildren(nodes),
    moveBefore: (obj, node, child) => obj.moveBefore(node, child),
    querySelector: (obj, selectors) => obj.querySelector(selectors),
    querySelectorAll: (obj, selectors) => obj.querySelectorAll(selectors)
  },

  webapi_ShadowRoot: {
    get_mode: (obj) => obj.mode,
    get_delegatesFocus: (obj) => obj.delegatesFocus,
    get_slotAssignment: (obj) => obj.slotAssignment,
    get_clonable: (obj) => obj.clonable,
    get_serializable: (obj) => obj.serializable,
    get_host: (obj) => obj.host,
    get_onslotchange: (obj) => obj.onslotchange,
    set_onslotchange: (obj, value) => { obj.onslotchange = value; },
    get_innerHTML: (obj) => obj.innerHTML,
    set_innerHTML: (obj, value) => { obj.innerHTML = value; },
    get_customElementRegistry: (obj) => obj.customElementRegistry,
    get_activeElement: (obj) => obj.activeElement,
    get_styleSheets: (obj) => obj.styleSheets,
    get_adoptedStyleSheets: (obj) => obj.adoptedStyleSheets,
    set_adoptedStyleSheets: (obj, value) => { obj.adoptedStyleSheets = value; },
    setHTMLUnsafe: (obj, html) => obj.setHTMLUnsafe(html),
    getHTML: (obj, options) => obj.getHTML(options)
  },

  webapi_Element: {
    get_namespaceURI: (obj) => obj.namespaceURI,
    get_prefix: (obj) => obj.prefix,
    get_localName: (obj) => obj.localName,
    get_tagName: (obj) => obj.tagName,
    get_id: (obj) => obj.id,
    set_id: (obj, value) => { obj.id = value; },
    get_className: (obj) => obj.className,
    set_className: (obj, value) => { obj.className = value; },
    get_classList: (obj) => obj.classList,
    get_slot: (obj) => obj.slot,
    set_slot: (obj, value) => { obj.slot = value; },
    get_attributes: (obj) => obj.attributes,
    get_shadowRoot: (obj) => obj.shadowRoot,
    get_customElementRegistry: (obj) => obj.customElementRegistry,
    get_innerHTML: (obj) => obj.innerHTML,
    set_innerHTML: (obj, value) => { obj.innerHTML = value; },
    get_outerHTML: (obj) => obj.outerHTML,
    set_outerHTML: (obj, value) => { obj.outerHTML = value; },
    get_scrollTop: (obj) => obj.scrollTop,
    set_scrollTop: (obj, value) => { obj.scrollTop = value; },
    get_scrollLeft: (obj) => obj.scrollLeft,
    set_scrollLeft: (obj, value) => { obj.scrollLeft = value; },
    get_scrollWidth: (obj) => obj.scrollWidth,
    get_scrollHeight: (obj) => obj.scrollHeight,
    get_clientTop: (obj) => obj.clientTop,
    get_clientLeft: (obj) => obj.clientLeft,
    get_clientWidth: (obj) => obj.clientWidth,
    get_clientHeight: (obj) => obj.clientHeight,
    get_currentCSSZoom: (obj) => obj.currentCSSZoom,
    get_children: (obj) => obj.children,
    get_firstElementChild: (obj) => obj.firstElementChild,
    get_lastElementChild: (obj) => obj.lastElementChild,
    get_childElementCount: (obj) => obj.childElementCount,
    get_previousElementSibling: (obj) => obj.previousElementSibling,
    get_nextElementSibling: (obj) => obj.nextElementSibling,
    get_assignedSlot: (obj) => obj.assignedSlot,
    hasAttributes: (obj) => obj.hasAttributes(),
    getAttributeNames: (obj) => obj.getAttributeNames(),
    getAttribute: (obj, qualified_name) => obj.getAttribute(qualified_name),
    getAttributeNS: (obj, namespace_, local_name) => obj.getAttributeNS(namespace_, local_name),
    setAttribute: (obj, qualified_name, value) => obj.setAttribute(qualified_name, value),
    setAttributeNS: (obj, namespace_, qualified_name, value) => obj.setAttributeNS(namespace_, qualified_name, value),
    removeAttribute: (obj, qualified_name) => obj.removeAttribute(qualified_name),
    removeAttributeNS: (obj, namespace_, local_name) => obj.removeAttributeNS(namespace_, local_name),
    toggleAttribute: (obj, qualified_name, force) => obj.toggleAttribute(qualified_name, force),
    hasAttribute: (obj, qualified_name) => obj.hasAttribute(qualified_name),
    hasAttributeNS: (obj, namespace_, local_name) => obj.hasAttributeNS(namespace_, local_name),
    getAttributeNode: (obj, qualified_name) => obj.getAttributeNode(qualified_name),
    getAttributeNodeNS: (obj, namespace_, local_name) => obj.getAttributeNodeNS(namespace_, local_name),
    setAttributeNode: (obj, attr) => obj.setAttributeNode(attr),
    setAttributeNodeNS: (obj, attr) => obj.setAttributeNodeNS(attr),
    removeAttributeNode: (obj, attr) => obj.removeAttributeNode(attr),
    attachShadow: (obj, init) => obj.attachShadow(init),
    closest: (obj, selectors) => obj.closest(selectors),
    matches: (obj, selectors) => obj.matches(selectors),
    webkitMatchesSelector: (obj, selectors) => obj.webkitMatchesSelector(selectors),
    getElementsByTagName: (obj, qualified_name) => obj.getElementsByTagName(qualified_name),
    getElementsByTagNameNS: (obj, namespace_, local_name) => obj.getElementsByTagNameNS(namespace_, local_name),
    getElementsByClassName: (obj, class_names) => obj.getElementsByClassName(class_names),
    insertAdjacentElement: (obj, where_, element) => obj.insertAdjacentElement(where_, element),
    insertAdjacentText: (obj, where_, data) => obj.insertAdjacentText(where_, data),
    setHTMLUnsafe: (obj, html) => obj.setHTMLUnsafe(html),
    getHTML: (obj, options) => obj.getHTML(options),
    insertAdjacentHTML: (obj, position, string) => obj.insertAdjacentHTML(position, string),
    getClientRects: (obj) => obj.getClientRects(),
    getBoundingClientRect: (obj) => obj.getBoundingClientRect(),
    checkVisibility: (obj, options) => obj.checkVisibility(options),
    scrollIntoView: (obj, arg) => obj.scrollIntoView(arg),
    scroll: (obj, options) => obj.scroll(options),
    scroll_2: (obj, x, y) => obj.scroll(x, y),
    scrollTo: (obj, options) => obj.scrollTo(options),
    scrollTo_2: (obj, x, y) => obj.scrollTo(x, y),
    scrollBy: (obj, options) => obj.scrollBy(options),
    scrollBy_2: (obj, x, y) => obj.scrollBy(x, y),
    prepend: (obj, nodes) => obj.prepend(nodes),
    append: (obj, nodes) => obj.append(nodes),
    replaceChildren: (obj, nodes) => obj.replaceChildren(nodes),
    moveBefore: (obj, node, child) => obj.moveBefore(node, child),
    querySelector: (obj, selectors) => obj.querySelector(selectors),
    querySelectorAll: (obj, selectors) => obj.querySelectorAll(selectors),
    before: (obj, nodes) => obj.before(nodes),
    after: (obj, nodes) => obj.after(nodes),
    replaceWith: (obj, nodes) => obj.replaceWith(nodes),
    remove: (obj) => obj.remove(),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options)
  },

  webapi_NamedNodeMap: {
    get_length: (obj) => obj.length,
    getNamedItemNS: (obj, namespace_, local_name) => obj.getNamedItemNS(namespace_, local_name),
    setNamedItem: (obj, attr) => obj.setNamedItem(attr),
    setNamedItemNS: (obj, attr) => obj.setNamedItemNS(attr),
    removeNamedItem: (obj, qualified_name) => obj.removeNamedItem(qualified_name),
    removeNamedItemNS: (obj, namespace_, local_name) => obj.removeNamedItemNS(namespace_, local_name)
  },

  webapi_Attr: {
    get_namespaceURI: (obj) => obj.namespaceURI,
    get_prefix: (obj) => obj.prefix,
    get_localName: (obj) => obj.localName,
    get_name: (obj) => obj.name,
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_ownerElement: (obj) => obj.ownerElement,
    get_specified: (obj) => obj.specified
  },

  webapi_CharacterData: {
    get_data: (obj) => obj.data,
    set_data: (obj, value) => { obj.data = value; },
    get_length: (obj) => obj.length,
    get_previousElementSibling: (obj) => obj.previousElementSibling,
    get_nextElementSibling: (obj) => obj.nextElementSibling,
    substringData: (obj, offset, count) => obj.substringData(offset, count),
    appendData: (obj, data) => obj.appendData(data),
    insertData: (obj, offset, data) => obj.insertData(offset, data),
    deleteData: (obj, offset, count) => obj.deleteData(offset, count),
    replaceData: (obj, offset, count, data) => obj.replaceData(offset, count, data),
    before: (obj, nodes) => obj.before(nodes),
    after: (obj, nodes) => obj.after(nodes),
    replaceWith: (obj, nodes) => obj.replaceWith(nodes),
    remove: (obj) => obj.remove()
  },

  webapi_Text: {
    new: (data) => new Text(data),
    get_wholeText: (obj) => obj.wholeText,
    get_assignedSlot: (obj) => obj.assignedSlot,
    splitText: (obj, offset) => obj.splitText(offset),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options)
  },

  webapi_CDATASection: {
  },

  webapi_ProcessingInstruction: {
    get_target: (obj) => obj.target,
    get_sheet: (obj) => obj.sheet
  },

  webapi_Comment: {
    new: (data) => new Comment(data)
  },

  webapi_AbstractRange: {
    get_startContainer: (obj) => obj.startContainer,
    get_startOffset: (obj) => obj.startOffset,
    get_endContainer: (obj) => obj.endContainer,
    get_endOffset: (obj) => obj.endOffset,
    get_collapsed: (obj) => obj.collapsed
  },

  webapi_StaticRange: {
    new: (init) => new StaticRange(init)
  },

  webapi_Range: {
    new: () => new Range(),
    get_commonAncestorContainer: (obj) => obj.commonAncestorContainer,
    setStart: (obj, node, offset) => obj.setStart(node, offset),
    setEnd: (obj, node, offset) => obj.setEnd(node, offset),
    setStartBefore: (obj, node) => obj.setStartBefore(node),
    setStartAfter: (obj, node) => obj.setStartAfter(node),
    setEndBefore: (obj, node) => obj.setEndBefore(node),
    setEndAfter: (obj, node) => obj.setEndAfter(node),
    collapse: (obj, to_start) => obj.collapse(to_start),
    selectNode: (obj, node) => obj.selectNode(node),
    selectNodeContents: (obj, node) => obj.selectNodeContents(node),
    compareBoundaryPoints: (obj, how, source_range) => obj.compareBoundaryPoints(how, source_range),
    deleteContents: (obj) => obj.deleteContents(),
    extractContents: (obj) => obj.extractContents(),
    cloneContents: (obj) => obj.cloneContents(),
    insertNode: (obj, node) => obj.insertNode(node),
    surroundContents: (obj, new_parent) => obj.surroundContents(new_parent),
    cloneRange: (obj) => obj.cloneRange(),
    detach: (obj) => obj.detach(),
    isPointInRange: (obj, node, offset) => obj.isPointInRange(node, offset),
    comparePoint: (obj, node, offset) => obj.comparePoint(node, offset),
    intersectsNode: (obj, node) => obj.intersectsNode(node),
    createContextualFragment: (obj, string) => obj.createContextualFragment(string),
    getClientRects: (obj) => obj.getClientRects(),
    getBoundingClientRect: (obj) => obj.getBoundingClientRect()
  },

  webapi_NodeIterator: {
    get_root: (obj) => obj.root,
    get_referenceNode: (obj) => obj.referenceNode,
    get_pointerBeforeReferenceNode: (obj) => obj.pointerBeforeReferenceNode,
    get_whatToShow: (obj) => obj.whatToShow,
    get_filter: (obj) => obj.filter,
    nextNode: (obj) => obj.nextNode(),
    previousNode: (obj) => obj.previousNode(),
    detach: (obj) => obj.detach()
  },

  webapi_TreeWalker: {
    get_root: (obj) => obj.root,
    get_whatToShow: (obj) => obj.whatToShow,
    get_filter: (obj) => obj.filter,
    get_currentNode: (obj) => obj.currentNode,
    set_currentNode: (obj, value) => { obj.currentNode = value; },
    parentNode: (obj) => obj.parentNode(),
    firstChild: (obj) => obj.firstChild(),
    lastChild: (obj) => obj.lastChild(),
    previousSibling: (obj) => obj.previousSibling(),
    nextSibling: (obj) => obj.nextSibling(),
    previousNode: (obj) => obj.previousNode(),
    nextNode: (obj) => obj.nextNode()
  },

  webapi_DOMTokenList: {
    get_length: (obj) => obj.length,
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    contains: (obj, token) => obj.contains(token),
    add: (obj, tokens) => obj.add(tokens),
    remove: (obj, tokens) => obj.remove(tokens),
    toggle: (obj, token, force) => obj.toggle(token, force),
    replace: (obj, token, new_token) => obj.replace(token, new_token),
    supports: (obj, token) => obj.supports(token)
  },

  webapi_XPathResult: {
    get_resultType: (obj) => obj.resultType,
    get_numberValue: (obj) => obj.numberValue,
    get_stringValue: (obj) => obj.stringValue,
    get_booleanValue: (obj) => obj.booleanValue,
    get_singleNodeValue: (obj) => obj.singleNodeValue,
    get_invalidIteratorState: (obj) => obj.invalidIteratorState,
    get_snapshotLength: (obj) => obj.snapshotLength,
    iterateNext: (obj) => obj.iterateNext(),
    snapshotItem: (obj, index) => obj.snapshotItem(index)
  },

  webapi_XPathExpression: {
    evaluate: (obj, context_node, type_, result) => obj.evaluate(context_node, type_, result)
  },

  webapi_XPathEvaluator: {
    new: () => new XPathEvaluator(),
    createExpression: (obj, expression, resolver) => obj.createExpression(expression, resolver),
    createNSResolver: (obj, node_resolver) => obj.createNSResolver(node_resolver),
    evaluate: (obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)
  },

  webapi_XSLTProcessor: {
    new: () => new XSLTProcessor(),
    importStylesheet: (obj, style) => obj.importStylesheet(style),
    transformToFragment: (obj, source, output) => obj.transformToFragment(source, output),
    transformToDocument: (obj, source) => obj.transformToDocument(source),
    setParameter: (obj, namespace_uri, local_name, value) => obj.setParameter(namespace_uri, local_name, value),
    getParameter: (obj, namespace_uri, local_name) => obj.getParameter(namespace_uri, local_name),
    removeParameter: (obj, namespace_uri, local_name) => obj.removeParameter(namespace_uri, local_name),
    clearParameters: (obj) => obj.clearParameters(),
    reset: (obj) => obj.reset()
  },

  webapi_URL: {
    new: (url, base) => new URL(url, base),
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    set_protocol: (obj, value) => { obj.protocol = value; },
    get_username: (obj) => obj.username,
    set_username: (obj, value) => { obj.username = value; },
    get_password: (obj) => obj.password,
    set_password: (obj, value) => { obj.password = value; },
    get_host: (obj) => obj.host,
    set_host: (obj, value) => { obj.host = value; },
    get_hostname: (obj) => obj.hostname,
    set_hostname: (obj, value) => { obj.hostname = value; },
    get_port: (obj) => obj.port,
    set_port: (obj, value) => { obj.port = value; },
    get_pathname: (obj) => obj.pathname,
    set_pathname: (obj, value) => { obj.pathname = value; },
    get_search: (obj) => obj.search,
    set_search: (obj, value) => { obj.search = value; },
    get_searchParams: (obj) => obj.searchParams,
    get_hash: (obj) => obj.hash,
    set_hash: (obj, value) => { obj.hash = value; },
    parse: (url, base) => parse(url, base),
    canParse: (url, base) => canParse(url, base),
    toJSON: (obj) => obj.toJSON(),
    createObjectURL: (obj) => createObjectURL(obj),
    revokeObjectURL: (url) => revokeObjectURL(url)
  },

  webapi_URLSearchParams: {
    new: (init) => new URLSearchParams(init),
    get_size: (obj) => obj.size,
    append: (obj, name, value) => obj.append(name, value),
    delete: (obj, name, value) => obj.delete(name, value),
    get: (obj, name) => obj.get(name),
    getAll: (obj, name) => obj.getAll(name),
    has: (obj, name, value) => obj.has(name, value),
    set: (obj, name, value) => obj.set(name, value),
    sort: (obj) => obj.sort()
  },

  webapi_XMLHttpRequestEventTarget: {
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_ontimeout: (obj) => obj.ontimeout,
    set_ontimeout: (obj, value) => { obj.ontimeout = value; },
    get_onloadend: (obj) => obj.onloadend,
    set_onloadend: (obj, value) => { obj.onloadend = value; }
  },

  webapi_XMLHttpRequestUpload: {
  },

  webapi_XMLHttpRequest: {
    new: () => new XMLHttpRequest(),
    get_onreadystatechange: (obj) => obj.onreadystatechange,
    set_onreadystatechange: (obj, value) => { obj.onreadystatechange = value; },
    get_readyState: (obj) => obj.readyState,
    get_timeout: (obj) => obj.timeout,
    set_timeout: (obj, value) => { obj.timeout = value; },
    get_withCredentials: (obj) => obj.withCredentials,
    set_withCredentials: (obj, value) => { obj.withCredentials = value; },
    get_upload: (obj) => obj.upload,
    get_responseURL: (obj) => obj.responseURL,
    get_status: (obj) => obj.status,
    get_statusText: (obj) => obj.statusText,
    get_responseType: (obj) => obj.responseType,
    set_responseType: (obj, value) => { obj.responseType = value; },
    get_response: (obj) => obj.response,
    get_responseText: (obj) => obj.responseText,
    get_responseXML: (obj) => obj.responseXML,
    open: (obj, method_, url) => obj.open(method_, url),
    open_2: (obj, method_, url, async_, username, password) => obj.open(method_, url, async_, username, password),
    setRequestHeader: (obj, name, value) => obj.setRequestHeader(name, value),
    send: (obj, body) => obj.send(body),
    abort: (obj) => obj.abort(),
    getResponseHeader: (obj, name) => obj.getResponseHeader(name),
    getAllResponseHeaders: (obj) => obj.getAllResponseHeaders(),
    overrideMimeType: (obj, mime) => obj.overrideMimeType(mime)
  },

  webapi_FormData: {
    new: (form, submitter) => new FormData(form, submitter),
    append: (obj, name, value) => obj.append(name, value),
    append_2: (obj, name, blob_value, filename) => obj.append(name, blob_value, filename),
    delete: (obj, name) => obj.delete(name),
    get: (obj, name) => obj.get(name),
    getAll: (obj, name) => obj.getAll(name),
    has: (obj, name) => obj.has(name),
    set: (obj, name, value) => obj.set(name, value),
    set_2: (obj, name, blob_value, filename) => obj.set(name, blob_value, filename)
  },

  webapi_ProgressEvent: {
    new: (type_, event_init_dict) => new ProgressEvent(type_, event_init_dict),
    get_lengthComputable: (obj) => obj.lengthComputable,
    get_loaded: (obj) => obj.loaded,
    get_total: (obj) => obj.total
  },

  webapi_HTMLAllCollection: {
    get_length: (obj) => obj.length,
    item: (obj, name_or_index) => obj.item(name_or_index)
  },

  webapi_HTMLFormControlsCollection: {
  },

  webapi_RadioNodeList: {
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; }
  },

  webapi_HTMLOptionsCollection: {
    get_length: (obj) => obj.length,
    set_length: (obj, value) => { obj.length = value; },
    get_selectedIndex: (obj) => obj.selectedIndex,
    set_selectedIndex: (obj, value) => { obj.selectedIndex = value; },
    add: (obj, element, before) => obj.add(element, before),
    remove: (obj, index) => obj.remove(index)
  },

  webapi_DOMStringList: {
    get_length: (obj) => obj.length,
    contains: (obj, string) => obj.contains(string)
  },

  webapi_HTMLElement: {
    new: () => new HTMLElement(),
    get_title: (obj) => obj.title,
    set_title: (obj, value) => { obj.title = value; },
    get_lang: (obj) => obj.lang,
    set_lang: (obj, value) => { obj.lang = value; },
    get_translate: (obj) => obj.translate,
    set_translate: (obj, value) => { obj.translate = value; },
    get_dir: (obj) => obj.dir,
    set_dir: (obj, value) => { obj.dir = value; },
    get_hidden: (obj) => obj.hidden,
    set_hidden: (obj, value) => { obj.hidden = value; },
    get_inert: (obj) => obj.inert,
    set_inert: (obj, value) => { obj.inert = value; },
    get_accessKey: (obj) => obj.accessKey,
    set_accessKey: (obj, value) => { obj.accessKey = value; },
    get_accessKeyLabel: (obj) => obj.accessKeyLabel,
    get_draggable: (obj) => obj.draggable,
    set_draggable: (obj, value) => { obj.draggable = value; },
    get_spellcheck: (obj) => obj.spellcheck,
    set_spellcheck: (obj, value) => { obj.spellcheck = value; },
    get_writingSuggestions: (obj) => obj.writingSuggestions,
    set_writingSuggestions: (obj, value) => { obj.writingSuggestions = value; },
    get_autocapitalize: (obj) => obj.autocapitalize,
    set_autocapitalize: (obj, value) => { obj.autocapitalize = value; },
    get_autocorrect: (obj) => obj.autocorrect,
    set_autocorrect: (obj, value) => { obj.autocorrect = value; },
    get_innerText: (obj) => obj.innerText,
    set_innerText: (obj, value) => { obj.innerText = value; },
    get_outerText: (obj) => obj.outerText,
    set_outerText: (obj, value) => { obj.outerText = value; },
    get_popover: (obj) => obj.popover,
    set_popover: (obj, value) => { obj.popover = value; },
    get_headingOffset: (obj) => obj.headingOffset,
    set_headingOffset: (obj, value) => { obj.headingOffset = value; },
    get_headingReset: (obj) => obj.headingReset,
    set_headingReset: (obj, value) => { obj.headingReset = value; },
    get_scrollParent: (obj) => obj.scrollParent,
    get_offsetParent: (obj) => obj.offsetParent,
    get_offsetTop: (obj) => obj.offsetTop,
    get_offsetLeft: (obj) => obj.offsetLeft,
    get_offsetWidth: (obj) => obj.offsetWidth,
    get_offsetHeight: (obj) => obj.offsetHeight,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onauxclick: (obj) => obj.onauxclick,
    set_onauxclick: (obj, value) => { obj.onauxclick = value; },
    get_onbeforeinput: (obj) => obj.onbeforeinput,
    set_onbeforeinput: (obj, value) => { obj.onbeforeinput = value; },
    get_onbeforematch: (obj) => obj.onbeforematch,
    set_onbeforematch: (obj, value) => { obj.onbeforematch = value; },
    get_onbeforetoggle: (obj) => obj.onbeforetoggle,
    set_onbeforetoggle: (obj, value) => { obj.onbeforetoggle = value; },
    get_onblur: (obj) => obj.onblur,
    set_onblur: (obj, value) => { obj.onblur = value; },
    get_oncancel: (obj) => obj.oncancel,
    set_oncancel: (obj, value) => { obj.oncancel = value; },
    get_oncanplay: (obj) => obj.oncanplay,
    set_oncanplay: (obj, value) => { obj.oncanplay = value; },
    get_oncanplaythrough: (obj) => obj.oncanplaythrough,
    set_oncanplaythrough: (obj, value) => { obj.oncanplaythrough = value; },
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onclick: (obj) => obj.onclick,
    set_onclick: (obj, value) => { obj.onclick = value; },
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    get_oncommand: (obj) => obj.oncommand,
    set_oncommand: (obj, value) => { obj.oncommand = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextmenu: (obj) => obj.oncontextmenu,
    set_oncontextmenu: (obj, value) => { obj.oncontextmenu = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; },
    get_oncopy: (obj) => obj.oncopy,
    set_oncopy: (obj, value) => { obj.oncopy = value; },
    get_oncuechange: (obj) => obj.oncuechange,
    set_oncuechange: (obj, value) => { obj.oncuechange = value; },
    get_oncut: (obj) => obj.oncut,
    set_oncut: (obj, value) => { obj.oncut = value; },
    get_ondblclick: (obj) => obj.ondblclick,
    set_ondblclick: (obj, value) => { obj.ondblclick = value; },
    get_ondrag: (obj) => obj.ondrag,
    set_ondrag: (obj, value) => { obj.ondrag = value; },
    get_ondragend: (obj) => obj.ondragend,
    set_ondragend: (obj, value) => { obj.ondragend = value; },
    get_ondragenter: (obj) => obj.ondragenter,
    set_ondragenter: (obj, value) => { obj.ondragenter = value; },
    get_ondragleave: (obj) => obj.ondragleave,
    set_ondragleave: (obj, value) => { obj.ondragleave = value; },
    get_ondragover: (obj) => obj.ondragover,
    set_ondragover: (obj, value) => { obj.ondragover = value; },
    get_ondragstart: (obj) => obj.ondragstart,
    set_ondragstart: (obj, value) => { obj.ondragstart = value; },
    get_ondrop: (obj) => obj.ondrop,
    set_ondrop: (obj, value) => { obj.ondrop = value; },
    get_ondurationchange: (obj) => obj.ondurationchange,
    set_ondurationchange: (obj, value) => { obj.ondurationchange = value; },
    get_onemptied: (obj) => obj.onemptied,
    set_onemptied: (obj, value) => { obj.onemptied = value; },
    get_onended: (obj) => obj.onended,
    set_onended: (obj, value) => { obj.onended = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onfocus: (obj) => obj.onfocus,
    set_onfocus: (obj, value) => { obj.onfocus = value; },
    get_onformdata: (obj) => obj.onformdata,
    set_onformdata: (obj, value) => { obj.onformdata = value; },
    get_oninput: (obj) => obj.oninput,
    set_oninput: (obj, value) => { obj.oninput = value; },
    get_oninvalid: (obj) => obj.oninvalid,
    set_oninvalid: (obj, value) => { obj.oninvalid = value; },
    get_onkeydown: (obj) => obj.onkeydown,
    set_onkeydown: (obj, value) => { obj.onkeydown = value; },
    get_onkeypress: (obj) => obj.onkeypress,
    set_onkeypress: (obj, value) => { obj.onkeypress = value; },
    get_onkeyup: (obj) => obj.onkeyup,
    set_onkeyup: (obj, value) => { obj.onkeyup = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_onloadeddata: (obj) => obj.onloadeddata,
    set_onloadeddata: (obj, value) => { obj.onloadeddata = value; },
    get_onloadedmetadata: (obj) => obj.onloadedmetadata,
    set_onloadedmetadata: (obj, value) => { obj.onloadedmetadata = value; },
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onmousedown: (obj) => obj.onmousedown,
    set_onmousedown: (obj, value) => { obj.onmousedown = value; },
    get_onmouseenter: (obj) => obj.onmouseenter,
    set_onmouseenter: (obj, value) => { obj.onmouseenter = value; },
    get_onmouseleave: (obj) => obj.onmouseleave,
    set_onmouseleave: (obj, value) => { obj.onmouseleave = value; },
    get_onmousemove: (obj) => obj.onmousemove,
    set_onmousemove: (obj, value) => { obj.onmousemove = value; },
    get_onmouseout: (obj) => obj.onmouseout,
    set_onmouseout: (obj, value) => { obj.onmouseout = value; },
    get_onmouseover: (obj) => obj.onmouseover,
    set_onmouseover: (obj, value) => { obj.onmouseover = value; },
    get_onmouseup: (obj) => obj.onmouseup,
    set_onmouseup: (obj, value) => { obj.onmouseup = value; },
    get_onpaste: (obj) => obj.onpaste,
    set_onpaste: (obj, value) => { obj.onpaste = value; },
    get_onpause: (obj) => obj.onpause,
    set_onpause: (obj, value) => { obj.onpause = value; },
    get_onplay: (obj) => obj.onplay,
    set_onplay: (obj, value) => { obj.onplay = value; },
    get_onplaying: (obj) => obj.onplaying,
    set_onplaying: (obj, value) => { obj.onplaying = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onratechange: (obj) => obj.onratechange,
    set_onratechange: (obj, value) => { obj.onratechange = value; },
    get_onreset: (obj) => obj.onreset,
    set_onreset: (obj, value) => { obj.onreset = value; },
    get_onresize: (obj) => obj.onresize,
    set_onresize: (obj, value) => { obj.onresize = value; },
    get_onscroll: (obj) => obj.onscroll,
    set_onscroll: (obj, value) => { obj.onscroll = value; },
    get_onscrollend: (obj) => obj.onscrollend,
    set_onscrollend: (obj, value) => { obj.onscrollend = value; },
    get_onsecuritypolicyviolation: (obj) => obj.onsecuritypolicyviolation,
    set_onsecuritypolicyviolation: (obj, value) => { obj.onsecuritypolicyviolation = value; },
    get_onseeked: (obj) => obj.onseeked,
    set_onseeked: (obj, value) => { obj.onseeked = value; },
    get_onseeking: (obj) => obj.onseeking,
    set_onseeking: (obj, value) => { obj.onseeking = value; },
    get_onselect: (obj) => obj.onselect,
    set_onselect: (obj, value) => { obj.onselect = value; },
    get_onslotchange: (obj) => obj.onslotchange,
    set_onslotchange: (obj, value) => { obj.onslotchange = value; },
    get_onstalled: (obj) => obj.onstalled,
    set_onstalled: (obj, value) => { obj.onstalled = value; },
    get_onsubmit: (obj) => obj.onsubmit,
    set_onsubmit: (obj, value) => { obj.onsubmit = value; },
    get_onsuspend: (obj) => obj.onsuspend,
    set_onsuspend: (obj, value) => { obj.onsuspend = value; },
    get_ontimeupdate: (obj) => obj.ontimeupdate,
    set_ontimeupdate: (obj, value) => { obj.ontimeupdate = value; },
    get_ontoggle: (obj) => obj.ontoggle,
    set_ontoggle: (obj, value) => { obj.ontoggle = value; },
    get_onvolumechange: (obj) => obj.onvolumechange,
    set_onvolumechange: (obj, value) => { obj.onvolumechange = value; },
    get_onwaiting: (obj) => obj.onwaiting,
    set_onwaiting: (obj, value) => { obj.onwaiting = value; },
    get_onwebkitanimationend: (obj) => obj.onwebkitanimationend,
    set_onwebkitanimationend: (obj, value) => { obj.onwebkitanimationend = value; },
    get_onwebkitanimationiteration: (obj) => obj.onwebkitanimationiteration,
    set_onwebkitanimationiteration: (obj, value) => { obj.onwebkitanimationiteration = value; },
    get_onwebkitanimationstart: (obj) => obj.onwebkitanimationstart,
    set_onwebkitanimationstart: (obj, value) => { obj.onwebkitanimationstart = value; },
    get_onwebkittransitionend: (obj) => obj.onwebkittransitionend,
    set_onwebkittransitionend: (obj, value) => { obj.onwebkittransitionend = value; },
    get_onwheel: (obj) => obj.onwheel,
    set_onwheel: (obj, value) => { obj.onwheel = value; },
    get_contentEditable: (obj) => obj.contentEditable,
    set_contentEditable: (obj, value) => { obj.contentEditable = value; },
    get_enterKeyHint: (obj) => obj.enterKeyHint,
    set_enterKeyHint: (obj, value) => { obj.enterKeyHint = value; },
    get_isContentEditable: (obj) => obj.isContentEditable,
    get_inputMode: (obj) => obj.inputMode,
    set_inputMode: (obj, value) => { obj.inputMode = value; },
    get_dataset: (obj) => obj.dataset,
    get_nonce: (obj) => obj.nonce,
    set_nonce: (obj, value) => { obj.nonce = value; },
    get_autofocus: (obj) => obj.autofocus,
    set_autofocus: (obj, value) => { obj.autofocus = value; },
    get_tabIndex: (obj) => obj.tabIndex,
    set_tabIndex: (obj, value) => { obj.tabIndex = value; },
    get_style: (obj) => obj.style,
    click: (obj) => obj.click(),
    attachInternals: (obj) => obj.attachInternals(),
    showPopover: (obj, options) => obj.showPopover(options),
    hidePopover: (obj) => obj.hidePopover(),
    togglePopover: (obj, options) => obj.togglePopover(options),
    focus: (obj, options) => obj.focus(options),
    blur: (obj) => obj.blur()
  },

  webapi_HTMLUnknownElement: {
  },

  webapi_DOMStringMap: {
  },

  webapi_HTMLHtmlElement: {
    new: () => new HTMLHtmlElement(),
    get_version: (obj) => obj.version,
    set_version: (obj, value) => { obj.version = value; }
  },

  webapi_HTMLHeadElement: {
    new: () => new HTMLHeadElement()
  },

  webapi_HTMLTitleElement: {
    new: () => new HTMLTitleElement(),
    get_text: (obj) => obj.text,
    set_text: (obj, value) => { obj.text = value; }
  },

  webapi_HTMLBaseElement: {
    new: () => new HTMLBaseElement(),
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_target: (obj) => obj.target,
    set_target: (obj, value) => { obj.target = value; }
  },

  webapi_HTMLLinkElement: {
    new: () => new HTMLLinkElement(),
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_rel: (obj) => obj.rel,
    set_rel: (obj, value) => { obj.rel = value; },
    get_as: (obj) => obj.as,
    set_as: (obj, value) => { obj.as = value; },
    get_relList: (obj) => obj.relList,
    get_media: (obj) => obj.media,
    set_media: (obj, value) => { obj.media = value; },
    get_integrity: (obj) => obj.integrity,
    set_integrity: (obj, value) => { obj.integrity = value; },
    get_hreflang: (obj) => obj.hreflang,
    set_hreflang: (obj, value) => { obj.hreflang = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_sizes: (obj) => obj.sizes,
    get_imageSrcset: (obj) => obj.imageSrcset,
    set_imageSrcset: (obj, value) => { obj.imageSrcset = value; },
    get_imageSizes: (obj) => obj.imageSizes,
    set_imageSizes: (obj, value) => { obj.imageSizes = value; },
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_blocking: (obj) => obj.blocking,
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_fetchPriority: (obj) => obj.fetchPriority,
    set_fetchPriority: (obj, value) => { obj.fetchPriority = value; },
    get_charset: (obj) => obj.charset,
    set_charset: (obj, value) => { obj.charset = value; },
    get_rev: (obj) => obj.rev,
    set_rev: (obj, value) => { obj.rev = value; },
    get_target: (obj) => obj.target,
    set_target: (obj, value) => { obj.target = value; },
    get_sheet: (obj) => obj.sheet
  },

  webapi_HTMLMetaElement: {
    new: () => new HTMLMetaElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_httpEquiv: (obj) => obj.httpEquiv,
    set_httpEquiv: (obj, value) => { obj.httpEquiv = value; },
    get_content: (obj) => obj.content,
    set_content: (obj, value) => { obj.content = value; },
    get_media: (obj) => obj.media,
    set_media: (obj, value) => { obj.media = value; },
    get_scheme: (obj) => obj.scheme,
    set_scheme: (obj, value) => { obj.scheme = value; }
  },

  webapi_HTMLStyleElement: {
    new: () => new HTMLStyleElement(),
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_media: (obj) => obj.media,
    set_media: (obj, value) => { obj.media = value; },
    get_blocking: (obj) => obj.blocking,
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_sheet: (obj) => obj.sheet
  },

  webapi_HTMLBodyElement: {
    new: () => new HTMLBodyElement(),
    get_text: (obj) => obj.text,
    set_text: (obj, value) => { obj.text = value; },
    get_link: (obj) => obj.link,
    set_link: (obj, value) => { obj.link = value; },
    get_vLink: (obj) => obj.vLink,
    set_vLink: (obj, value) => { obj.vLink = value; },
    get_aLink: (obj) => obj.aLink,
    set_aLink: (obj, value) => { obj.aLink = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; },
    get_background: (obj) => obj.background,
    set_background: (obj, value) => { obj.background = value; },
    get_onafterprint: (obj) => obj.onafterprint,
    set_onafterprint: (obj, value) => { obj.onafterprint = value; },
    get_onbeforeprint: (obj) => obj.onbeforeprint,
    set_onbeforeprint: (obj, value) => { obj.onbeforeprint = value; },
    get_onbeforeunload: (obj) => obj.onbeforeunload,
    set_onbeforeunload: (obj, value) => { obj.onbeforeunload = value; },
    get_onhashchange: (obj) => obj.onhashchange,
    set_onhashchange: (obj, value) => { obj.onhashchange = value; },
    get_onlanguagechange: (obj) => obj.onlanguagechange,
    set_onlanguagechange: (obj, value) => { obj.onlanguagechange = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    get_onoffline: (obj) => obj.onoffline,
    set_onoffline: (obj, value) => { obj.onoffline = value; },
    get_ononline: (obj) => obj.ononline,
    set_ononline: (obj, value) => { obj.ononline = value; },
    get_onpagehide: (obj) => obj.onpagehide,
    set_onpagehide: (obj, value) => { obj.onpagehide = value; },
    get_onpagereveal: (obj) => obj.onpagereveal,
    set_onpagereveal: (obj, value) => { obj.onpagereveal = value; },
    get_onpageshow: (obj) => obj.onpageshow,
    set_onpageshow: (obj, value) => { obj.onpageshow = value; },
    get_onpageswap: (obj) => obj.onpageswap,
    set_onpageswap: (obj, value) => { obj.onpageswap = value; },
    get_onpopstate: (obj) => obj.onpopstate,
    set_onpopstate: (obj, value) => { obj.onpopstate = value; },
    get_onrejectionhandled: (obj) => obj.onrejectionhandled,
    set_onrejectionhandled: (obj, value) => { obj.onrejectionhandled = value; },
    get_onstorage: (obj) => obj.onstorage,
    set_onstorage: (obj, value) => { obj.onstorage = value; },
    get_onunhandledrejection: (obj) => obj.onunhandledrejection,
    set_onunhandledrejection: (obj, value) => { obj.onunhandledrejection = value; },
    get_onunload: (obj) => obj.onunload,
    set_onunload: (obj, value) => { obj.onunload = value; }
  },

  webapi_HTMLHeadingElement: {
    new: () => new HTMLHeadingElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
  },

  webapi_HTMLParagraphElement: {
    new: () => new HTMLParagraphElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
  },

  webapi_HTMLHRElement: {
    new: () => new HTMLHRElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_color: (obj) => obj.color,
    set_color: (obj, value) => { obj.color = value; },
    get_noShade: (obj) => obj.noShade,
    set_noShade: (obj, value) => { obj.noShade = value; },
    get_size: (obj) => obj.size,
    set_size: (obj, value) => { obj.size = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; }
  },

  webapi_HTMLPreElement: {
    new: () => new HTMLPreElement(),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; }
  },

  webapi_HTMLQuoteElement: {
    new: () => new HTMLQuoteElement(),
    get_cite: (obj) => obj.cite,
    set_cite: (obj, value) => { obj.cite = value; }
  },

  webapi_HTMLOListElement: {
    new: () => new HTMLOListElement(),
    get_reversed: (obj) => obj.reversed,
    set_reversed: (obj, value) => { obj.reversed = value; },
    get_start: (obj) => obj.start,
    set_start: (obj, value) => { obj.start = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_compact: (obj) => obj.compact,
    set_compact: (obj, value) => { obj.compact = value; }
  },

  webapi_HTMLUListElement: {
    new: () => new HTMLUListElement(),
    get_compact: (obj) => obj.compact,
    set_compact: (obj, value) => { obj.compact = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; }
  },

  webapi_HTMLMenuElement: {
    new: () => new HTMLMenuElement(),
    get_compact: (obj) => obj.compact,
    set_compact: (obj, value) => { obj.compact = value; }
  },

  webapi_HTMLLIElement: {
    new: () => new HTMLLIElement(),
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; }
  },

  webapi_HTMLDListElement: {
    new: () => new HTMLDListElement(),
    get_compact: (obj) => obj.compact,
    set_compact: (obj, value) => { obj.compact = value; }
  },

  webapi_HTMLDivElement: {
    new: () => new HTMLDivElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
  },

  webapi_HTMLAnchorElement: {
    new: () => new HTMLAnchorElement(),
    get_target: (obj) => obj.target,
    set_target: (obj, value) => { obj.target = value; },
    get_download: (obj) => obj.download,
    set_download: (obj, value) => { obj.download = value; },
    get_ping: (obj) => obj.ping,
    set_ping: (obj, value) => { obj.ping = value; },
    get_rel: (obj) => obj.rel,
    set_rel: (obj, value) => { obj.rel = value; },
    get_relList: (obj) => obj.relList,
    get_hreflang: (obj) => obj.hreflang,
    set_hreflang: (obj, value) => { obj.hreflang = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_text: (obj) => obj.text,
    set_text: (obj, value) => { obj.text = value; },
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_coords: (obj) => obj.coords,
    set_coords: (obj, value) => { obj.coords = value; },
    get_charset: (obj) => obj.charset,
    set_charset: (obj, value) => { obj.charset = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_rev: (obj) => obj.rev,
    set_rev: (obj, value) => { obj.rev = value; },
    get_shape: (obj) => obj.shape,
    set_shape: (obj, value) => { obj.shape = value; },
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    set_protocol: (obj, value) => { obj.protocol = value; },
    get_username: (obj) => obj.username,
    set_username: (obj, value) => { obj.username = value; },
    get_password: (obj) => obj.password,
    set_password: (obj, value) => { obj.password = value; },
    get_host: (obj) => obj.host,
    set_host: (obj, value) => { obj.host = value; },
    get_hostname: (obj) => obj.hostname,
    set_hostname: (obj, value) => { obj.hostname = value; },
    get_port: (obj) => obj.port,
    set_port: (obj, value) => { obj.port = value; },
    get_pathname: (obj) => obj.pathname,
    set_pathname: (obj, value) => { obj.pathname = value; },
    get_search: (obj) => obj.search,
    set_search: (obj, value) => { obj.search = value; },
    get_hash: (obj) => obj.hash,
    set_hash: (obj, value) => { obj.hash = value; }
  },

  webapi_HTMLDataElement: {
    new: () => new HTMLDataElement(),
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; }
  },

  webapi_HTMLTimeElement: {
    new: () => new HTMLTimeElement(),
    get_dateTime: (obj) => obj.dateTime,
    set_dateTime: (obj, value) => { obj.dateTime = value; }
  },

  webapi_HTMLSpanElement: {
    new: () => new HTMLSpanElement()
  },

  webapi_HTMLBRElement: {
    new: () => new HTMLBRElement(),
    get_clear: (obj) => obj.clear,
    set_clear: (obj, value) => { obj.clear = value; }
  },

  webapi_HTMLModElement: {
    new: () => new HTMLModElement(),
    get_cite: (obj) => obj.cite,
    set_cite: (obj, value) => { obj.cite = value; },
    get_dateTime: (obj) => obj.dateTime,
    set_dateTime: (obj, value) => { obj.dateTime = value; }
  },

  webapi_HTMLPictureElement: {
    new: () => new HTMLPictureElement()
  },

  webapi_HTMLSourceElement: {
    new: () => new HTMLSourceElement(),
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_srcset: (obj) => obj.srcset,
    set_srcset: (obj, value) => { obj.srcset = value; },
    get_sizes: (obj) => obj.sizes,
    set_sizes: (obj, value) => { obj.sizes = value; },
    get_media: (obj) => obj.media,
    set_media: (obj, value) => { obj.media = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; }
  },

  webapi_HTMLImageElement: {
    new: () => new HTMLImageElement(),
    get_alt: (obj) => obj.alt,
    set_alt: (obj, value) => { obj.alt = value; },
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_srcset: (obj) => obj.srcset,
    set_srcset: (obj, value) => { obj.srcset = value; },
    get_sizes: (obj) => obj.sizes,
    set_sizes: (obj, value) => { obj.sizes = value; },
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_useMap: (obj) => obj.useMap,
    set_useMap: (obj, value) => { obj.useMap = value; },
    get_isMap: (obj) => obj.isMap,
    set_isMap: (obj, value) => { obj.isMap = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_naturalWidth: (obj) => obj.naturalWidth,
    get_naturalHeight: (obj) => obj.naturalHeight,
    get_complete: (obj) => obj.complete,
    get_currentSrc: (obj) => obj.currentSrc,
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_decoding: (obj) => obj.decoding,
    set_decoding: (obj, value) => { obj.decoding = value; },
    get_loading: (obj) => obj.loading,
    set_loading: (obj, value) => { obj.loading = value; },
    get_fetchPriority: (obj) => obj.fetchPriority,
    set_fetchPriority: (obj, value) => { obj.fetchPriority = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_lowsrc: (obj) => obj.lowsrc,
    set_lowsrc: (obj, value) => { obj.lowsrc = value; },
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_hspace: (obj) => obj.hspace,
    set_hspace: (obj, value) => { obj.hspace = value; },
    get_vspace: (obj) => obj.vspace,
    set_vspace: (obj, value) => { obj.vspace = value; },
    get_longDesc: (obj) => obj.longDesc,
    set_longDesc: (obj, value) => { obj.longDesc = value; },
    get_border: (obj) => obj.border,
    set_border: (obj, value) => { obj.border = value; },
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    decode: (obj) => obj.decode()
  },

  webapi_HTMLIFrameElement: {
    new: () => new HTMLIFrameElement(),
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_srcdoc: (obj) => obj.srcdoc,
    set_srcdoc: (obj, value) => { obj.srcdoc = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_sandbox: (obj) => obj.sandbox,
    get_allow: (obj) => obj.allow,
    set_allow: (obj, value) => { obj.allow = value; },
    get_allowFullscreen: (obj) => obj.allowFullscreen,
    set_allowFullscreen: (obj, value) => { obj.allowFullscreen = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_loading: (obj) => obj.loading,
    set_loading: (obj, value) => { obj.loading = value; },
    get_contentDocument: (obj) => obj.contentDocument,
    get_contentWindow: (obj) => obj.contentWindow,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_scrolling: (obj) => obj.scrolling,
    set_scrolling: (obj, value) => { obj.scrolling = value; },
    get_frameBorder: (obj) => obj.frameBorder,
    set_frameBorder: (obj, value) => { obj.frameBorder = value; },
    get_longDesc: (obj) => obj.longDesc,
    set_longDesc: (obj, value) => { obj.longDesc = value; },
    get_marginHeight: (obj) => obj.marginHeight,
    set_marginHeight: (obj, value) => { obj.marginHeight = value; },
    get_marginWidth: (obj) => obj.marginWidth,
    set_marginWidth: (obj, value) => { obj.marginWidth = value; },
    getSVGDocument: (obj) => obj.getSVGDocument()
  },

  webapi_HTMLEmbedElement: {
    new: () => new HTMLEmbedElement(),
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    getSVGDocument: (obj) => obj.getSVGDocument()
  },

  webapi_HTMLObjectElement: {
    new: () => new HTMLObjectElement(),
    get_data: (obj) => obj.data,
    set_data: (obj, value) => { obj.data = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_form: (obj) => obj.form,
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_contentDocument: (obj) => obj.contentDocument,
    get_contentWindow: (obj) => obj.contentWindow,
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_archive: (obj) => obj.archive,
    set_archive: (obj, value) => { obj.archive = value; },
    get_code: (obj) => obj.code,
    set_code: (obj, value) => { obj.code = value; },
    get_declare: (obj) => obj.declare,
    set_declare: (obj, value) => { obj.declare = value; },
    get_hspace: (obj) => obj.hspace,
    set_hspace: (obj, value) => { obj.hspace = value; },
    get_standby: (obj) => obj.standby,
    set_standby: (obj, value) => { obj.standby = value; },
    get_vspace: (obj) => obj.vspace,
    set_vspace: (obj, value) => { obj.vspace = value; },
    get_codeBase: (obj) => obj.codeBase,
    set_codeBase: (obj, value) => { obj.codeBase = value; },
    get_codeType: (obj) => obj.codeType,
    set_codeType: (obj, value) => { obj.codeType = value; },
    get_useMap: (obj) => obj.useMap,
    set_useMap: (obj, value) => { obj.useMap = value; },
    get_border: (obj) => obj.border,
    set_border: (obj, value) => { obj.border = value; },
    getSVGDocument: (obj) => obj.getSVGDocument(),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error)
  },

  webapi_HTMLVideoElement: {
    new: () => new HTMLVideoElement(),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_videoWidth: (obj) => obj.videoWidth,
    get_videoHeight: (obj) => obj.videoHeight,
    get_poster: (obj) => obj.poster,
    set_poster: (obj, value) => { obj.poster = value; },
    get_playsInline: (obj) => obj.playsInline,
    set_playsInline: (obj, value) => { obj.playsInline = value; }
  },

  webapi_HTMLAudioElement: {
    new: () => new HTMLAudioElement()
  },

  webapi_HTMLTrackElement: {
    new: () => new HTMLTrackElement(),
    get_kind: (obj) => obj.kind,
    set_kind: (obj, value) => { obj.kind = value; },
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_srclang: (obj) => obj.srclang,
    set_srclang: (obj, value) => { obj.srclang = value; },
    get_label: (obj) => obj.label,
    set_label: (obj, value) => { obj.label = value; },
    get_default: (obj) => obj.default,
    set_default: (obj, value) => { obj.default = value; },
    get_readyState: (obj) => obj.readyState,
    get_track: (obj) => obj.track
  },

  webapi_HTMLMediaElement: {
    get_error: (obj) => obj.error,
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_srcObject: (obj) => obj.srcObject,
    set_srcObject: (obj, value) => { obj.srcObject = value; },
    get_currentSrc: (obj) => obj.currentSrc,
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_networkState: (obj) => obj.networkState,
    get_preload: (obj) => obj.preload,
    set_preload: (obj, value) => { obj.preload = value; },
    get_buffered: (obj) => obj.buffered,
    get_readyState: (obj) => obj.readyState,
    get_seeking: (obj) => obj.seeking,
    get_currentTime: (obj) => obj.currentTime,
    set_currentTime: (obj, value) => { obj.currentTime = value; },
    get_duration: (obj) => obj.duration,
    get_paused: (obj) => obj.paused,
    get_defaultPlaybackRate: (obj) => obj.defaultPlaybackRate,
    set_defaultPlaybackRate: (obj, value) => { obj.defaultPlaybackRate = value; },
    get_playbackRate: (obj) => obj.playbackRate,
    set_playbackRate: (obj, value) => { obj.playbackRate = value; },
    get_preservesPitch: (obj) => obj.preservesPitch,
    set_preservesPitch: (obj, value) => { obj.preservesPitch = value; },
    get_played: (obj) => obj.played,
    get_seekable: (obj) => obj.seekable,
    get_ended: (obj) => obj.ended,
    get_autoplay: (obj) => obj.autoplay,
    set_autoplay: (obj, value) => { obj.autoplay = value; },
    get_loop: (obj) => obj.loop,
    set_loop: (obj, value) => { obj.loop = value; },
    get_controls: (obj) => obj.controls,
    set_controls: (obj, value) => { obj.controls = value; },
    get_volume: (obj) => obj.volume,
    set_volume: (obj, value) => { obj.volume = value; },
    get_muted: (obj) => obj.muted,
    set_muted: (obj, value) => { obj.muted = value; },
    get_defaultMuted: (obj) => obj.defaultMuted,
    set_defaultMuted: (obj, value) => { obj.defaultMuted = value; },
    get_audioTracks: (obj) => obj.audioTracks,
    get_videoTracks: (obj) => obj.videoTracks,
    get_textTracks: (obj) => obj.textTracks,
    load: (obj) => obj.load(),
    canPlayType: (obj, type_) => obj.canPlayType(type_),
    fastSeek: (obj, time) => obj.fastSeek(time),
    getStartDate: (obj) => obj.getStartDate(),
    play: (obj) => obj.play(),
    pause: (obj) => obj.pause(),
    addTextTrack: (obj, kind, label, language) => obj.addTextTrack(kind, label, language)
  },

  webapi_MediaError: {
    get_code: (obj) => obj.code,
    get_message: (obj) => obj.message
  },

  webapi_AudioTrackList: {
    get_length: (obj) => obj.length,
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onaddtrack: (obj) => obj.onaddtrack,
    set_onaddtrack: (obj, value) => { obj.onaddtrack = value; },
    get_onremovetrack: (obj) => obj.onremovetrack,
    set_onremovetrack: (obj, value) => { obj.onremovetrack = value; },
    getTrackById: (obj, id) => obj.getTrackById(id)
  },

  webapi_AudioTrack: {
    get_id: (obj) => obj.id,
    get_kind: (obj) => obj.kind,
    get_label: (obj) => obj.label,
    get_language: (obj) => obj.language,
    get_enabled: (obj) => obj.enabled,
    set_enabled: (obj, value) => { obj.enabled = value; }
  },

  webapi_VideoTrackList: {
    get_length: (obj) => obj.length,
    get_selectedIndex: (obj) => obj.selectedIndex,
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onaddtrack: (obj) => obj.onaddtrack,
    set_onaddtrack: (obj, value) => { obj.onaddtrack = value; },
    get_onremovetrack: (obj) => obj.onremovetrack,
    set_onremovetrack: (obj, value) => { obj.onremovetrack = value; },
    getTrackById: (obj, id) => obj.getTrackById(id)
  },

  webapi_VideoTrack: {
    get_id: (obj) => obj.id,
    get_kind: (obj) => obj.kind,
    get_label: (obj) => obj.label,
    get_language: (obj) => obj.language,
    get_selected: (obj) => obj.selected,
    set_selected: (obj, value) => { obj.selected = value; }
  },

  webapi_TextTrackList: {
    get_length: (obj) => obj.length,
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    get_onaddtrack: (obj) => obj.onaddtrack,
    set_onaddtrack: (obj, value) => { obj.onaddtrack = value; },
    get_onremovetrack: (obj) => obj.onremovetrack,
    set_onremovetrack: (obj, value) => { obj.onremovetrack = value; },
    getTrackById: (obj, id) => obj.getTrackById(id)
  },

  webapi_TextTrack: {
    get_kind: (obj) => obj.kind,
    get_label: (obj) => obj.label,
    get_language: (obj) => obj.language,
    get_id: (obj) => obj.id,
    get_inBandMetadataTrackDispatchType: (obj) => obj.inBandMetadataTrackDispatchType,
    get_mode: (obj) => obj.mode,
    set_mode: (obj, value) => { obj.mode = value; },
    get_cues: (obj) => obj.cues,
    get_activeCues: (obj) => obj.activeCues,
    get_oncuechange: (obj) => obj.oncuechange,
    set_oncuechange: (obj, value) => { obj.oncuechange = value; },
    addCue: (obj, cue) => obj.addCue(cue),
    removeCue: (obj, cue) => obj.removeCue(cue)
  },

  webapi_TextTrackCueList: {
    get_length: (obj) => obj.length,
    getCueById: (obj, id) => obj.getCueById(id)
  },

  webapi_TextTrackCue: {
    get_track: (obj) => obj.track,
    get_id: (obj) => obj.id,
    set_id: (obj, value) => { obj.id = value; },
    get_startTime: (obj) => obj.startTime,
    set_startTime: (obj, value) => { obj.startTime = value; },
    get_endTime: (obj) => obj.endTime,
    set_endTime: (obj, value) => { obj.endTime = value; },
    get_pauseOnExit: (obj) => obj.pauseOnExit,
    set_pauseOnExit: (obj, value) => { obj.pauseOnExit = value; },
    get_onenter: (obj) => obj.onenter,
    set_onenter: (obj, value) => { obj.onenter = value; },
    get_onexit: (obj) => obj.onexit,
    set_onexit: (obj, value) => { obj.onexit = value; }
  },

  webapi_TimeRanges: {
    get_length: (obj) => obj.length,
    start: (obj, index) => obj.start(index),
    end: (obj, index) => obj.end(index)
  },

  webapi_TrackEvent: {
    new: (type_, event_init_dict) => new TrackEvent(type_, event_init_dict),
    get_track: (obj) => obj.track
  },

  webapi_HTMLMapElement: {
    new: () => new HTMLMapElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_areas: (obj) => obj.areas
  },

  webapi_HTMLAreaElement: {
    new: () => new HTMLAreaElement(),
    get_alt: (obj) => obj.alt,
    set_alt: (obj, value) => { obj.alt = value; },
    get_coords: (obj) => obj.coords,
    set_coords: (obj, value) => { obj.coords = value; },
    get_shape: (obj) => obj.shape,
    set_shape: (obj, value) => { obj.shape = value; },
    get_target: (obj) => obj.target,
    set_target: (obj, value) => { obj.target = value; },
    get_download: (obj) => obj.download,
    set_download: (obj, value) => { obj.download = value; },
    get_ping: (obj) => obj.ping,
    set_ping: (obj, value) => { obj.ping = value; },
    get_rel: (obj) => obj.rel,
    set_rel: (obj, value) => { obj.rel = value; },
    get_relList: (obj) => obj.relList,
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_noHref: (obj) => obj.noHref,
    set_noHref: (obj, value) => { obj.noHref = value; },
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    set_protocol: (obj, value) => { obj.protocol = value; },
    get_username: (obj) => obj.username,
    set_username: (obj, value) => { obj.username = value; },
    get_password: (obj) => obj.password,
    set_password: (obj, value) => { obj.password = value; },
    get_host: (obj) => obj.host,
    set_host: (obj, value) => { obj.host = value; },
    get_hostname: (obj) => obj.hostname,
    set_hostname: (obj, value) => { obj.hostname = value; },
    get_port: (obj) => obj.port,
    set_port: (obj, value) => { obj.port = value; },
    get_pathname: (obj) => obj.pathname,
    set_pathname: (obj, value) => { obj.pathname = value; },
    get_search: (obj) => obj.search,
    set_search: (obj, value) => { obj.search = value; },
    get_hash: (obj) => obj.hash,
    set_hash: (obj, value) => { obj.hash = value; }
  },

  webapi_HTMLTableElement: {
    new: () => new HTMLTableElement(),
    get_caption: (obj) => obj.caption,
    set_caption: (obj, value) => { obj.caption = value; },
    get_tHead: (obj) => obj.tHead,
    set_tHead: (obj, value) => { obj.tHead = value; },
    get_tFoot: (obj) => obj.tFoot,
    set_tFoot: (obj, value) => { obj.tFoot = value; },
    get_tBodies: (obj) => obj.tBodies,
    get_rows: (obj) => obj.rows,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_border: (obj) => obj.border,
    set_border: (obj, value) => { obj.border = value; },
    get_frame: (obj) => obj.frame,
    set_frame: (obj, value) => { obj.frame = value; },
    get_rules: (obj) => obj.rules,
    set_rules: (obj, value) => { obj.rules = value; },
    get_summary: (obj) => obj.summary,
    set_summary: (obj, value) => { obj.summary = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; },
    get_cellPadding: (obj) => obj.cellPadding,
    set_cellPadding: (obj, value) => { obj.cellPadding = value; },
    get_cellSpacing: (obj) => obj.cellSpacing,
    set_cellSpacing: (obj, value) => { obj.cellSpacing = value; },
    createCaption: (obj) => obj.createCaption(),
    deleteCaption: (obj) => obj.deleteCaption(),
    createTHead: (obj) => obj.createTHead(),
    deleteTHead: (obj) => obj.deleteTHead(),
    createTFoot: (obj) => obj.createTFoot(),
    deleteTFoot: (obj) => obj.deleteTFoot(),
    createTBody: (obj) => obj.createTBody(),
    insertRow: (obj, index) => obj.insertRow(index),
    deleteRow: (obj, index) => obj.deleteRow(index)
  },

  webapi_HTMLTableCaptionElement: {
    new: () => new HTMLTableCaptionElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
  },

  webapi_HTMLTableColElement: {
    new: () => new HTMLTableColElement(),
    get_span: (obj) => obj.span,
    set_span: (obj, value) => { obj.span = value; },
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_ch: (obj) => obj.ch,
    set_ch: (obj, value) => { obj.ch = value; },
    get_chOff: (obj) => obj.chOff,
    set_chOff: (obj, value) => { obj.chOff = value; },
    get_vAlign: (obj) => obj.vAlign,
    set_vAlign: (obj, value) => { obj.vAlign = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; }
  },

  webapi_HTMLTableSectionElement: {
    new: () => new HTMLTableSectionElement(),
    get_rows: (obj) => obj.rows,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_ch: (obj) => obj.ch,
    set_ch: (obj, value) => { obj.ch = value; },
    get_chOff: (obj) => obj.chOff,
    set_chOff: (obj, value) => { obj.chOff = value; },
    get_vAlign: (obj) => obj.vAlign,
    set_vAlign: (obj, value) => { obj.vAlign = value; },
    insertRow: (obj, index) => obj.insertRow(index),
    deleteRow: (obj, index) => obj.deleteRow(index)
  },

  webapi_HTMLTableRowElement: {
    new: () => new HTMLTableRowElement(),
    get_rowIndex: (obj) => obj.rowIndex,
    get_sectionRowIndex: (obj) => obj.sectionRowIndex,
    get_cells: (obj) => obj.cells,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_ch: (obj) => obj.ch,
    set_ch: (obj, value) => { obj.ch = value; },
    get_chOff: (obj) => obj.chOff,
    set_chOff: (obj, value) => { obj.chOff = value; },
    get_vAlign: (obj) => obj.vAlign,
    set_vAlign: (obj, value) => { obj.vAlign = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; },
    insertCell: (obj, index) => obj.insertCell(index),
    deleteCell: (obj, index) => obj.deleteCell(index)
  },

  webapi_HTMLTableCellElement: {
    new: () => new HTMLTableCellElement(),
    get_colSpan: (obj) => obj.colSpan,
    set_colSpan: (obj, value) => { obj.colSpan = value; },
    get_rowSpan: (obj) => obj.rowSpan,
    set_rowSpan: (obj, value) => { obj.rowSpan = value; },
    get_headers: (obj) => obj.headers,
    set_headers: (obj, value) => { obj.headers = value; },
    get_cellIndex: (obj) => obj.cellIndex,
    get_scope: (obj) => obj.scope,
    set_scope: (obj, value) => { obj.scope = value; },
    get_abbr: (obj) => obj.abbr,
    set_abbr: (obj, value) => { obj.abbr = value; },
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_axis: (obj) => obj.axis,
    set_axis: (obj, value) => { obj.axis = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_ch: (obj) => obj.ch,
    set_ch: (obj, value) => { obj.ch = value; },
    get_chOff: (obj) => obj.chOff,
    set_chOff: (obj, value) => { obj.chOff = value; },
    get_noWrap: (obj) => obj.noWrap,
    set_noWrap: (obj, value) => { obj.noWrap = value; },
    get_vAlign: (obj) => obj.vAlign,
    set_vAlign: (obj, value) => { obj.vAlign = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; }
  },

  webapi_HTMLFormElement: {
    new: () => new HTMLFormElement(),
    get_acceptCharset: (obj) => obj.acceptCharset,
    set_acceptCharset: (obj, value) => { obj.acceptCharset = value; },
    get_action: (obj) => obj.action,
    set_action: (obj, value) => { obj.action = value; },
    get_autocomplete: (obj) => obj.autocomplete,
    set_autocomplete: (obj, value) => { obj.autocomplete = value; },
    get_enctype: (obj) => obj.enctype,
    set_enctype: (obj, value) => { obj.enctype = value; },
    get_encoding: (obj) => obj.encoding,
    set_encoding: (obj, value) => { obj.encoding = value; },
    get_method: (obj) => obj.method,
    set_method: (obj, value) => { obj.method = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_noValidate: (obj) => obj.noValidate,
    set_noValidate: (obj, value) => { obj.noValidate = value; },
    get_target: (obj) => obj.target,
    set_target: (obj, value) => { obj.target = value; },
    get_rel: (obj) => obj.rel,
    set_rel: (obj, value) => { obj.rel = value; },
    get_relList: (obj) => obj.relList,
    get_elements: (obj) => obj.elements,
    get_length: (obj) => obj.length,
    submit: (obj) => obj.submit(),
    requestSubmit: (obj, submitter) => obj.requestSubmit(submitter),
    reset: (obj) => obj.reset(),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity()
  },

  webapi_HTMLLabelElement: {
    new: () => new HTMLLabelElement(),
    get_form: (obj) => obj.form,
    get_htmlFor: (obj) => obj.htmlFor,
    set_htmlFor: (obj, value) => { obj.htmlFor = value; },
    get_control: (obj) => obj.control
  },

  webapi_HTMLInputElement: {
    new: () => new HTMLInputElement(),
    get_accept: (obj) => obj.accept,
    set_accept: (obj, value) => { obj.accept = value; },
    get_alpha: (obj) => obj.alpha,
    set_alpha: (obj, value) => { obj.alpha = value; },
    get_alt: (obj) => obj.alt,
    set_alt: (obj, value) => { obj.alt = value; },
    get_autocomplete: (obj) => obj.autocomplete,
    set_autocomplete: (obj, value) => { obj.autocomplete = value; },
    get_defaultChecked: (obj) => obj.defaultChecked,
    set_defaultChecked: (obj, value) => { obj.defaultChecked = value; },
    get_checked: (obj) => obj.checked,
    set_checked: (obj, value) => { obj.checked = value; },
    get_colorSpace: (obj) => obj.colorSpace,
    set_colorSpace: (obj, value) => { obj.colorSpace = value; },
    get_dirName: (obj) => obj.dirName,
    set_dirName: (obj, value) => { obj.dirName = value; },
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_files: (obj) => obj.files,
    set_files: (obj, value) => { obj.files = value; },
    get_formAction: (obj) => obj.formAction,
    set_formAction: (obj, value) => { obj.formAction = value; },
    get_formEnctype: (obj) => obj.formEnctype,
    set_formEnctype: (obj, value) => { obj.formEnctype = value; },
    get_formMethod: (obj) => obj.formMethod,
    set_formMethod: (obj, value) => { obj.formMethod = value; },
    get_formNoValidate: (obj) => obj.formNoValidate,
    set_formNoValidate: (obj, value) => { obj.formNoValidate = value; },
    get_formTarget: (obj) => obj.formTarget,
    set_formTarget: (obj, value) => { obj.formTarget = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_indeterminate: (obj) => obj.indeterminate,
    set_indeterminate: (obj, value) => { obj.indeterminate = value; },
    get_list: (obj) => obj.list,
    get_max: (obj) => obj.max,
    set_max: (obj, value) => { obj.max = value; },
    get_maxLength: (obj) => obj.maxLength,
    set_maxLength: (obj, value) => { obj.maxLength = value; },
    get_min: (obj) => obj.min,
    set_min: (obj, value) => { obj.min = value; },
    get_minLength: (obj) => obj.minLength,
    set_minLength: (obj, value) => { obj.minLength = value; },
    get_multiple: (obj) => obj.multiple,
    set_multiple: (obj, value) => { obj.multiple = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_pattern: (obj) => obj.pattern,
    set_pattern: (obj, value) => { obj.pattern = value; },
    get_placeholder: (obj) => obj.placeholder,
    set_placeholder: (obj, value) => { obj.placeholder = value; },
    get_readOnly: (obj) => obj.readOnly,
    set_readOnly: (obj, value) => { obj.readOnly = value; },
    get_required: (obj) => obj.required,
    set_required: (obj, value) => { obj.required = value; },
    get_size: (obj) => obj.size,
    set_size: (obj, value) => { obj.size = value; },
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_step: (obj) => obj.step,
    set_step: (obj, value) => { obj.step = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_defaultValue: (obj) => obj.defaultValue,
    set_defaultValue: (obj, value) => { obj.defaultValue = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_valueAsDate: (obj) => obj.valueAsDate,
    set_valueAsDate: (obj, value) => { obj.valueAsDate = value; },
    get_valueAsNumber: (obj) => obj.valueAsNumber,
    set_valueAsNumber: (obj, value) => { obj.valueAsNumber = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    get_selectionStart: (obj) => obj.selectionStart,
    set_selectionStart: (obj, value) => { obj.selectionStart = value; },
    get_selectionEnd: (obj) => obj.selectionEnd,
    set_selectionEnd: (obj, value) => { obj.selectionEnd = value; },
    get_selectionDirection: (obj) => obj.selectionDirection,
    set_selectionDirection: (obj, value) => { obj.selectionDirection = value; },
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; },
    get_useMap: (obj) => obj.useMap,
    set_useMap: (obj, value) => { obj.useMap = value; },
    get_popoverTargetElement: (obj) => obj.popoverTargetElement,
    set_popoverTargetElement: (obj, value) => { obj.popoverTargetElement = value; },
    get_popoverTargetAction: (obj) => obj.popoverTargetAction,
    set_popoverTargetAction: (obj, value) => { obj.popoverTargetAction = value; },
    stepUp: (obj, n) => obj.stepUp(n),
    stepDown: (obj, n) => obj.stepDown(n),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error),
    select: (obj) => obj.select(),
    setRangeText: (obj, replacement) => obj.setRangeText(replacement),
    setRangeText_2: (obj, replacement, start, end, selection_mode) => obj.setRangeText(replacement, start, end, selection_mode),
    setSelectionRange: (obj, start, end, direction) => obj.setSelectionRange(start, end, direction),
    showPicker: (obj) => obj.showPicker()
  },

  webapi_HTMLButtonElement: {
    new: () => new HTMLButtonElement(),
    get_command: (obj) => obj.command,
    set_command: (obj, value) => { obj.command = value; },
    get_commandForElement: (obj) => obj.commandForElement,
    set_commandForElement: (obj, value) => { obj.commandForElement = value; },
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_formAction: (obj) => obj.formAction,
    set_formAction: (obj, value) => { obj.formAction = value; },
    get_formEnctype: (obj) => obj.formEnctype,
    set_formEnctype: (obj, value) => { obj.formEnctype = value; },
    get_formMethod: (obj) => obj.formMethod,
    set_formMethod: (obj, value) => { obj.formMethod = value; },
    get_formNoValidate: (obj) => obj.formNoValidate,
    set_formNoValidate: (obj, value) => { obj.formNoValidate = value; },
    get_formTarget: (obj) => obj.formTarget,
    set_formTarget: (obj, value) => { obj.formTarget = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    get_popoverTargetElement: (obj) => obj.popoverTargetElement,
    set_popoverTargetElement: (obj, value) => { obj.popoverTargetElement = value; },
    get_popoverTargetAction: (obj) => obj.popoverTargetAction,
    set_popoverTargetAction: (obj, value) => { obj.popoverTargetAction = value; },
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error)
  },

  webapi_HTMLSelectElement: {
    new: () => new HTMLSelectElement(),
    get_autocomplete: (obj) => obj.autocomplete,
    set_autocomplete: (obj, value) => { obj.autocomplete = value; },
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_multiple: (obj) => obj.multiple,
    set_multiple: (obj, value) => { obj.multiple = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_required: (obj) => obj.required,
    set_required: (obj, value) => { obj.required = value; },
    get_size: (obj) => obj.size,
    set_size: (obj, value) => { obj.size = value; },
    get_type: (obj) => obj.type,
    get_options: (obj) => obj.options,
    get_length: (obj) => obj.length,
    set_length: (obj, value) => { obj.length = value; },
    get_selectedOptions: (obj) => obj.selectedOptions,
    get_selectedIndex: (obj) => obj.selectedIndex,
    set_selectedIndex: (obj, value) => { obj.selectedIndex = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    namedItem: (obj, name) => obj.namedItem(name),
    add: (obj, element, before) => obj.add(element, before),
    remove: (obj) => obj.remove(),
    remove_2: (obj, index) => obj.remove(index),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error),
    showPicker: (obj) => obj.showPicker()
  },

  webapi_HTMLDataListElement: {
    new: () => new HTMLDataListElement(),
    get_options: (obj) => obj.options
  },

  webapi_HTMLOptGroupElement: {
    new: () => new HTMLOptGroupElement(),
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_label: (obj) => obj.label,
    set_label: (obj, value) => { obj.label = value; }
  },

  webapi_HTMLOptionElement: {
    new: () => new HTMLOptionElement(),
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_label: (obj) => obj.label,
    set_label: (obj, value) => { obj.label = value; },
    get_defaultSelected: (obj) => obj.defaultSelected,
    set_defaultSelected: (obj, value) => { obj.defaultSelected = value; },
    get_selected: (obj) => obj.selected,
    set_selected: (obj, value) => { obj.selected = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_text: (obj) => obj.text,
    set_text: (obj, value) => { obj.text = value; },
    get_index: (obj) => obj.index
  },

  webapi_HTMLTextAreaElement: {
    new: () => new HTMLTextAreaElement(),
    get_autocomplete: (obj) => obj.autocomplete,
    set_autocomplete: (obj, value) => { obj.autocomplete = value; },
    get_cols: (obj) => obj.cols,
    set_cols: (obj, value) => { obj.cols = value; },
    get_dirName: (obj) => obj.dirName,
    set_dirName: (obj, value) => { obj.dirName = value; },
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_maxLength: (obj) => obj.maxLength,
    set_maxLength: (obj, value) => { obj.maxLength = value; },
    get_minLength: (obj) => obj.minLength,
    set_minLength: (obj, value) => { obj.minLength = value; },
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_placeholder: (obj) => obj.placeholder,
    set_placeholder: (obj, value) => { obj.placeholder = value; },
    get_readOnly: (obj) => obj.readOnly,
    set_readOnly: (obj, value) => { obj.readOnly = value; },
    get_required: (obj) => obj.required,
    set_required: (obj, value) => { obj.required = value; },
    get_rows: (obj) => obj.rows,
    set_rows: (obj, value) => { obj.rows = value; },
    get_wrap: (obj) => obj.wrap,
    set_wrap: (obj, value) => { obj.wrap = value; },
    get_type: (obj) => obj.type,
    get_defaultValue: (obj) => obj.defaultValue,
    set_defaultValue: (obj, value) => { obj.defaultValue = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_textLength: (obj) => obj.textLength,
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    get_selectionStart: (obj) => obj.selectionStart,
    set_selectionStart: (obj, value) => { obj.selectionStart = value; },
    get_selectionEnd: (obj) => obj.selectionEnd,
    set_selectionEnd: (obj, value) => { obj.selectionEnd = value; },
    get_selectionDirection: (obj) => obj.selectionDirection,
    set_selectionDirection: (obj, value) => { obj.selectionDirection = value; },
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error),
    select: (obj) => obj.select(),
    setRangeText: (obj, replacement) => obj.setRangeText(replacement),
    setRangeText_2: (obj, replacement, start, end, selection_mode) => obj.setRangeText(replacement, start, end, selection_mode),
    setSelectionRange: (obj, start, end, direction) => obj.setSelectionRange(start, end, direction)
  },

  webapi_HTMLOutputElement: {
    new: () => new HTMLOutputElement(),
    get_htmlFor: (obj) => obj.htmlFor,
    get_form: (obj) => obj.form,
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_type: (obj) => obj.type,
    get_defaultValue: (obj) => obj.defaultValue,
    set_defaultValue: (obj, value) => { obj.defaultValue = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error)
  },

  webapi_HTMLProgressElement: {
    new: () => new HTMLProgressElement(),
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_max: (obj) => obj.max,
    set_max: (obj, value) => { obj.max = value; },
    get_position: (obj) => obj.position,
    get_labels: (obj) => obj.labels
  },

  webapi_HTMLMeterElement: {
    new: () => new HTMLMeterElement(),
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_min: (obj) => obj.min,
    set_min: (obj, value) => { obj.min = value; },
    get_max: (obj) => obj.max,
    set_max: (obj, value) => { obj.max = value; },
    get_low: (obj) => obj.low,
    set_low: (obj, value) => { obj.low = value; },
    get_high: (obj) => obj.high,
    set_high: (obj, value) => { obj.high = value; },
    get_optimum: (obj) => obj.optimum,
    set_optimum: (obj, value) => { obj.optimum = value; },
    get_labels: (obj) => obj.labels
  },

  webapi_HTMLFieldSetElement: {
    new: () => new HTMLFieldSetElement(),
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; },
    get_form: (obj) => obj.form,
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_type: (obj) => obj.type,
    get_elements: (obj) => obj.elements,
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error)
  },

  webapi_HTMLLegendElement: {
    new: () => new HTMLLegendElement(),
    get_form: (obj) => obj.form,
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
  },

  webapi_HTMLSelectedContentElement: {
    new: () => new HTMLSelectedContentElement()
  },

  webapi_ValidityState: {
    get_valueMissing: (obj) => obj.valueMissing,
    get_typeMismatch: (obj) => obj.typeMismatch,
    get_patternMismatch: (obj) => obj.patternMismatch,
    get_tooLong: (obj) => obj.tooLong,
    get_tooShort: (obj) => obj.tooShort,
    get_rangeUnderflow: (obj) => obj.rangeUnderflow,
    get_rangeOverflow: (obj) => obj.rangeOverflow,
    get_stepMismatch: (obj) => obj.stepMismatch,
    get_badInput: (obj) => obj.badInput,
    get_customError: (obj) => obj.customError,
    get_valid: (obj) => obj.valid
  },

  webapi_SubmitEvent: {
    new: (type_, event_init_dict) => new SubmitEvent(type_, event_init_dict),
    get_submitter: (obj) => obj.submitter
  },

  webapi_FormDataEvent: {
    new: (type_, event_init_dict) => new FormDataEvent(type_, event_init_dict),
    get_formData: (obj) => obj.formData
  },

  webapi_HTMLDetailsElement: {
    new: () => new HTMLDetailsElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_open: (obj) => obj.open,
    set_open: (obj, value) => { obj.open = value; }
  },

  webapi_HTMLDialogElement: {
    new: () => new HTMLDialogElement(),
    get_open: (obj) => obj.open,
    set_open: (obj, value) => { obj.open = value; },
    get_returnValue: (obj) => obj.returnValue,
    set_returnValue: (obj, value) => { obj.returnValue = value; },
    get_closedBy: (obj) => obj.closedBy,
    set_closedBy: (obj, value) => { obj.closedBy = value; },
    show: (obj) => obj.show(),
    showModal: (obj) => obj.showModal(),
    close: (obj, return_value) => obj.close(return_value),
    requestClose: (obj, return_value) => obj.requestClose(return_value)
  },

  webapi_HTMLScriptElement: {
    new: () => new HTMLScriptElement(),
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_noModule: (obj) => obj.noModule,
    set_noModule: (obj, value) => { obj.noModule = value; },
    get_async: (obj) => obj.async,
    set_async: (obj, value) => { obj.async = value; },
    get_defer: (obj) => obj.defer,
    set_defer: (obj, value) => { obj.defer = value; },
    get_blocking: (obj) => obj.blocking,
    get_crossOrigin: (obj) => obj.crossOrigin,
    set_crossOrigin: (obj, value) => { obj.crossOrigin = value; },
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    set_referrerPolicy: (obj, value) => { obj.referrerPolicy = value; },
    get_integrity: (obj) => obj.integrity,
    set_integrity: (obj, value) => { obj.integrity = value; },
    get_fetchPriority: (obj) => obj.fetchPriority,
    set_fetchPriority: (obj, value) => { obj.fetchPriority = value; },
    get_text: (obj) => obj.text,
    set_text: (obj, value) => { obj.text = value; },
    get_charset: (obj) => obj.charset,
    set_charset: (obj, value) => { obj.charset = value; },
    get_event: (obj) => obj.event,
    set_event: (obj, value) => { obj.event = value; },
    get_htmlFor: (obj) => obj.htmlFor,
    set_htmlFor: (obj, value) => { obj.htmlFor = value; },
    supports: (type_) => supports(type_)
  },

  webapi_HTMLTemplateElement: {
    new: () => new HTMLTemplateElement(),
    get_content: (obj) => obj.content,
    get_shadowRootMode: (obj) => obj.shadowRootMode,
    set_shadowRootMode: (obj, value) => { obj.shadowRootMode = value; },
    get_shadowRootDelegatesFocus: (obj) => obj.shadowRootDelegatesFocus,
    set_shadowRootDelegatesFocus: (obj, value) => { obj.shadowRootDelegatesFocus = value; },
    get_shadowRootClonable: (obj) => obj.shadowRootClonable,
    set_shadowRootClonable: (obj, value) => { obj.shadowRootClonable = value; },
    get_shadowRootSerializable: (obj) => obj.shadowRootSerializable,
    set_shadowRootSerializable: (obj, value) => { obj.shadowRootSerializable = value; },
    get_shadowRootCustomElementRegistry: (obj) => obj.shadowRootCustomElementRegistry,
    set_shadowRootCustomElementRegistry: (obj, value) => { obj.shadowRootCustomElementRegistry = value; }
  },

  webapi_HTMLSlotElement: {
    new: () => new HTMLSlotElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    assignedNodes: (obj, options) => obj.assignedNodes(options),
    assignedElements: (obj, options) => obj.assignedElements(options),
    assign: (obj, nodes) => obj.assign(nodes)
  },

  webapi_HTMLCanvasElement: {
    new: () => new HTMLCanvasElement(),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    getContext: (obj, context_id, options) => obj.getContext(context_id, options),
    toDataURL: (obj, type_, quality) => obj.toDataURL(type_, quality),
    toBlob: (obj, _callback, type_, quality) => obj.toBlob(_callback, type_, quality),
    transferControlToOffscreen: (obj) => obj.transferControlToOffscreen()
  },

  webapi_CanvasRenderingContext2D: {
    get_canvas: (obj) => obj.canvas,
    get_globalAlpha: (obj) => obj.globalAlpha,
    set_globalAlpha: (obj, value) => { obj.globalAlpha = value; },
    get_globalCompositeOperation: (obj) => obj.globalCompositeOperation,
    set_globalCompositeOperation: (obj, value) => { obj.globalCompositeOperation = value; },
    get_imageSmoothingEnabled: (obj) => obj.imageSmoothingEnabled,
    set_imageSmoothingEnabled: (obj, value) => { obj.imageSmoothingEnabled = value; },
    get_imageSmoothingQuality: (obj) => obj.imageSmoothingQuality,
    set_imageSmoothingQuality: (obj, value) => { obj.imageSmoothingQuality = value; },
    get_strokeStyle: (obj) => obj.strokeStyle,
    set_strokeStyle: (obj, value) => { obj.strokeStyle = value; },
    get_fillStyle: (obj) => obj.fillStyle,
    set_fillStyle: (obj, value) => { obj.fillStyle = value; },
    get_shadowOffsetX: (obj) => obj.shadowOffsetX,
    set_shadowOffsetX: (obj, value) => { obj.shadowOffsetX = value; },
    get_shadowOffsetY: (obj) => obj.shadowOffsetY,
    set_shadowOffsetY: (obj, value) => { obj.shadowOffsetY = value; },
    get_shadowBlur: (obj) => obj.shadowBlur,
    set_shadowBlur: (obj, value) => { obj.shadowBlur = value; },
    get_shadowColor: (obj) => obj.shadowColor,
    set_shadowColor: (obj, value) => { obj.shadowColor = value; },
    get_filter: (obj) => obj.filter,
    set_filter: (obj, value) => { obj.filter = value; },
    get_lineWidth: (obj) => obj.lineWidth,
    set_lineWidth: (obj, value) => { obj.lineWidth = value; },
    get_lineCap: (obj) => obj.lineCap,
    set_lineCap: (obj, value) => { obj.lineCap = value; },
    get_lineJoin: (obj) => obj.lineJoin,
    set_lineJoin: (obj, value) => { obj.lineJoin = value; },
    get_miterLimit: (obj) => obj.miterLimit,
    set_miterLimit: (obj, value) => { obj.miterLimit = value; },
    get_lineDashOffset: (obj) => obj.lineDashOffset,
    set_lineDashOffset: (obj, value) => { obj.lineDashOffset = value; },
    get_lang: (obj) => obj.lang,
    set_lang: (obj, value) => { obj.lang = value; },
    get_font: (obj) => obj.font,
    set_font: (obj, value) => { obj.font = value; },
    get_textAlign: (obj) => obj.textAlign,
    set_textAlign: (obj, value) => { obj.textAlign = value; },
    get_textBaseline: (obj) => obj.textBaseline,
    set_textBaseline: (obj, value) => { obj.textBaseline = value; },
    get_direction: (obj) => obj.direction,
    set_direction: (obj, value) => { obj.direction = value; },
    get_letterSpacing: (obj) => obj.letterSpacing,
    set_letterSpacing: (obj, value) => { obj.letterSpacing = value; },
    get_fontKerning: (obj) => obj.fontKerning,
    set_fontKerning: (obj, value) => { obj.fontKerning = value; },
    get_fontStretch: (obj) => obj.fontStretch,
    set_fontStretch: (obj, value) => { obj.fontStretch = value; },
    get_fontVariantCaps: (obj) => obj.fontVariantCaps,
    set_fontVariantCaps: (obj, value) => { obj.fontVariantCaps = value; },
    get_textRendering: (obj) => obj.textRendering,
    set_textRendering: (obj, value) => { obj.textRendering = value; },
    get_wordSpacing: (obj) => obj.wordSpacing,
    set_wordSpacing: (obj, value) => { obj.wordSpacing = value; },
    getContextAttributes: (obj) => obj.getContextAttributes(),
    save: (obj) => obj.save(),
    restore: (obj) => obj.restore(),
    reset: (obj) => obj.reset(),
    isContextLost: (obj) => obj.isContextLost(),
    scale: (obj, x, y) => obj.scale(x, y),
    rotate: (obj, angle) => obj.rotate(angle),
    translate: (obj, x, y) => obj.translate(x, y),
    transform: (obj, a, b, c, d, e, f) => obj.transform(a, b, c, d, e, f),
    getTransform: (obj) => obj.getTransform(),
    setTransform: (obj, a, b, c, d, e, f) => obj.setTransform(a, b, c, d, e, f),
    setTransform_2: (obj, transform) => obj.setTransform(transform),
    resetTransform: (obj) => obj.resetTransform(),
    createLinearGradient: (obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1),
    createRadialGradient: (obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1),
    createConicGradient: (obj, start_angle, x, y) => obj.createConicGradient(start_angle, x, y),
    createPattern: (obj, image, repetition) => obj.createPattern(image, repetition),
    clearRect: (obj, x, y, w, h) => obj.clearRect(x, y, w, h),
    fillRect: (obj, x, y, w, h) => obj.fillRect(x, y, w, h),
    strokeRect: (obj, x, y, w, h) => obj.strokeRect(x, y, w, h),
    beginPath: (obj) => obj.beginPath(),
    fill: (obj, fill_rule) => obj.fill(fill_rule),
    fill_2: (obj, path, fill_rule) => obj.fill(path, fill_rule),
    stroke: (obj) => obj.stroke(),
    stroke_2: (obj, path) => obj.stroke(path),
    clip: (obj, fill_rule) => obj.clip(fill_rule),
    clip_2: (obj, path, fill_rule) => obj.clip(path, fill_rule),
    isPointInPath: (obj, x, y, fill_rule) => obj.isPointInPath(x, y, fill_rule),
    isPointInPath_2: (obj, path, x, y, fill_rule) => obj.isPointInPath(path, x, y, fill_rule),
    isPointInStroke: (obj, x, y) => obj.isPointInStroke(x, y),
    isPointInStroke_2: (obj, path, x, y) => obj.isPointInStroke(path, x, y),
    drawFocusIfNeeded: (obj, element) => obj.drawFocusIfNeeded(element),
    drawFocusIfNeeded_2: (obj, path, element) => obj.drawFocusIfNeeded(path, element),
    fillText: (obj, text, x, y, max_width) => obj.fillText(text, x, y, max_width),
    strokeText: (obj, text, x, y, max_width) => obj.strokeText(text, x, y, max_width),
    measureText: (obj, text) => obj.measureText(text),
    drawImage: (obj, image, dx, dy) => obj.drawImage(image, dx, dy),
    drawImage_2: (obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh),
    drawImage_3: (obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh),
    createImageData: (obj, sw, sh, settings) => obj.createImageData(sw, sh, settings),
    createImageData_2: (obj, image_data) => obj.createImageData(image_data),
    getImageData: (obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings),
    putImageData: (obj, image_data, dx, dy) => obj.putImageData(image_data, dx, dy),
    putImageData_2: (obj, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => obj.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height),
    setLineDash: (obj, segments) => obj.setLineDash(segments),
    getLineDash: (obj) => obj.getLineDash(),
    closePath: (obj) => obj.closePath(),
    moveTo: (obj, x, y) => obj.moveTo(x, y),
    lineTo: (obj, x, y) => obj.lineTo(x, y),
    quadraticCurveTo: (obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y),
    bezierCurveTo: (obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y),
    arcTo: (obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius),
    rect: (obj, x, y, w, h) => obj.rect(x, y, w, h),
    roundRect: (obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii),
    arc: (obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise),
    ellipse: (obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)
  },

  webapi_CanvasGradient: {
    addColorStop: (obj, offset, color) => obj.addColorStop(offset, color)
  },

  webapi_CanvasPattern: {
    setTransform: (obj, transform) => obj.setTransform(transform)
  },

  webapi_TextMetrics: {
    get_width: (obj) => obj.width,
    get_actualBoundingBoxLeft: (obj) => obj.actualBoundingBoxLeft,
    get_actualBoundingBoxRight: (obj) => obj.actualBoundingBoxRight,
    get_fontBoundingBoxAscent: (obj) => obj.fontBoundingBoxAscent,
    get_fontBoundingBoxDescent: (obj) => obj.fontBoundingBoxDescent,
    get_actualBoundingBoxAscent: (obj) => obj.actualBoundingBoxAscent,
    get_actualBoundingBoxDescent: (obj) => obj.actualBoundingBoxDescent,
    get_emHeightAscent: (obj) => obj.emHeightAscent,
    get_emHeightDescent: (obj) => obj.emHeightDescent,
    get_hangingBaseline: (obj) => obj.hangingBaseline,
    get_alphabeticBaseline: (obj) => obj.alphabeticBaseline,
    get_ideographicBaseline: (obj) => obj.ideographicBaseline
  },

  webapi_Path2D: {
    new: (path) => new Path2D(path),
    addPath: (obj, path, transform) => obj.addPath(path, transform),
    closePath: (obj) => obj.closePath(),
    moveTo: (obj, x, y) => obj.moveTo(x, y),
    lineTo: (obj, x, y) => obj.lineTo(x, y),
    quadraticCurveTo: (obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y),
    bezierCurveTo: (obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y),
    arcTo: (obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius),
    rect: (obj, x, y, w, h) => obj.rect(x, y, w, h),
    roundRect: (obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii),
    arc: (obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise),
    ellipse: (obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)
  },

  webapi_ImageBitmapRenderingContext: {
    get_canvas: (obj) => obj.canvas,
    transferFromImageBitmap: (obj, bitmap) => obj.transferFromImageBitmap(bitmap)
  },

  webapi_OffscreenCanvas: {
    new: (width, height) => new OffscreenCanvas(width, height),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; },
    getContext: (obj, context_id, options) => obj.getContext(context_id, options),
    transferToImageBitmap: (obj) => obj.transferToImageBitmap(),
    convertToBlob: (obj, options) => obj.convertToBlob(options)
  },

  webapi_OffscreenCanvasRenderingContext2D: {
    get_canvas: (obj) => obj.canvas,
    get_globalAlpha: (obj) => obj.globalAlpha,
    set_globalAlpha: (obj, value) => { obj.globalAlpha = value; },
    get_globalCompositeOperation: (obj) => obj.globalCompositeOperation,
    set_globalCompositeOperation: (obj, value) => { obj.globalCompositeOperation = value; },
    get_imageSmoothingEnabled: (obj) => obj.imageSmoothingEnabled,
    set_imageSmoothingEnabled: (obj, value) => { obj.imageSmoothingEnabled = value; },
    get_imageSmoothingQuality: (obj) => obj.imageSmoothingQuality,
    set_imageSmoothingQuality: (obj, value) => { obj.imageSmoothingQuality = value; },
    get_strokeStyle: (obj) => obj.strokeStyle,
    set_strokeStyle: (obj, value) => { obj.strokeStyle = value; },
    get_fillStyle: (obj) => obj.fillStyle,
    set_fillStyle: (obj, value) => { obj.fillStyle = value; },
    get_shadowOffsetX: (obj) => obj.shadowOffsetX,
    set_shadowOffsetX: (obj, value) => { obj.shadowOffsetX = value; },
    get_shadowOffsetY: (obj) => obj.shadowOffsetY,
    set_shadowOffsetY: (obj, value) => { obj.shadowOffsetY = value; },
    get_shadowBlur: (obj) => obj.shadowBlur,
    set_shadowBlur: (obj, value) => { obj.shadowBlur = value; },
    get_shadowColor: (obj) => obj.shadowColor,
    set_shadowColor: (obj, value) => { obj.shadowColor = value; },
    get_filter: (obj) => obj.filter,
    set_filter: (obj, value) => { obj.filter = value; },
    get_lineWidth: (obj) => obj.lineWidth,
    set_lineWidth: (obj, value) => { obj.lineWidth = value; },
    get_lineCap: (obj) => obj.lineCap,
    set_lineCap: (obj, value) => { obj.lineCap = value; },
    get_lineJoin: (obj) => obj.lineJoin,
    set_lineJoin: (obj, value) => { obj.lineJoin = value; },
    get_miterLimit: (obj) => obj.miterLimit,
    set_miterLimit: (obj, value) => { obj.miterLimit = value; },
    get_lineDashOffset: (obj) => obj.lineDashOffset,
    set_lineDashOffset: (obj, value) => { obj.lineDashOffset = value; },
    get_lang: (obj) => obj.lang,
    set_lang: (obj, value) => { obj.lang = value; },
    get_font: (obj) => obj.font,
    set_font: (obj, value) => { obj.font = value; },
    get_textAlign: (obj) => obj.textAlign,
    set_textAlign: (obj, value) => { obj.textAlign = value; },
    get_textBaseline: (obj) => obj.textBaseline,
    set_textBaseline: (obj, value) => { obj.textBaseline = value; },
    get_direction: (obj) => obj.direction,
    set_direction: (obj, value) => { obj.direction = value; },
    get_letterSpacing: (obj) => obj.letterSpacing,
    set_letterSpacing: (obj, value) => { obj.letterSpacing = value; },
    get_fontKerning: (obj) => obj.fontKerning,
    set_fontKerning: (obj, value) => { obj.fontKerning = value; },
    get_fontStretch: (obj) => obj.fontStretch,
    set_fontStretch: (obj, value) => { obj.fontStretch = value; },
    get_fontVariantCaps: (obj) => obj.fontVariantCaps,
    set_fontVariantCaps: (obj, value) => { obj.fontVariantCaps = value; },
    get_textRendering: (obj) => obj.textRendering,
    set_textRendering: (obj, value) => { obj.textRendering = value; },
    get_wordSpacing: (obj) => obj.wordSpacing,
    set_wordSpacing: (obj, value) => { obj.wordSpacing = value; },
    getContextAttributes: (obj) => obj.getContextAttributes(),
    save: (obj) => obj.save(),
    restore: (obj) => obj.restore(),
    reset: (obj) => obj.reset(),
    isContextLost: (obj) => obj.isContextLost(),
    scale: (obj, x, y) => obj.scale(x, y),
    rotate: (obj, angle) => obj.rotate(angle),
    translate: (obj, x, y) => obj.translate(x, y),
    transform: (obj, a, b, c, d, e, f) => obj.transform(a, b, c, d, e, f),
    getTransform: (obj) => obj.getTransform(),
    setTransform: (obj, a, b, c, d, e, f) => obj.setTransform(a, b, c, d, e, f),
    setTransform_2: (obj, transform) => obj.setTransform(transform),
    resetTransform: (obj) => obj.resetTransform(),
    createLinearGradient: (obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1),
    createRadialGradient: (obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1),
    createConicGradient: (obj, start_angle, x, y) => obj.createConicGradient(start_angle, x, y),
    createPattern: (obj, image, repetition) => obj.createPattern(image, repetition),
    clearRect: (obj, x, y, w, h) => obj.clearRect(x, y, w, h),
    fillRect: (obj, x, y, w, h) => obj.fillRect(x, y, w, h),
    strokeRect: (obj, x, y, w, h) => obj.strokeRect(x, y, w, h),
    beginPath: (obj) => obj.beginPath(),
    fill: (obj, fill_rule) => obj.fill(fill_rule),
    fill_2: (obj, path, fill_rule) => obj.fill(path, fill_rule),
    stroke: (obj) => obj.stroke(),
    stroke_2: (obj, path) => obj.stroke(path),
    clip: (obj, fill_rule) => obj.clip(fill_rule),
    clip_2: (obj, path, fill_rule) => obj.clip(path, fill_rule),
    isPointInPath: (obj, x, y, fill_rule) => obj.isPointInPath(x, y, fill_rule),
    isPointInPath_2: (obj, path, x, y, fill_rule) => obj.isPointInPath(path, x, y, fill_rule),
    isPointInStroke: (obj, x, y) => obj.isPointInStroke(x, y),
    isPointInStroke_2: (obj, path, x, y) => obj.isPointInStroke(path, x, y),
    fillText: (obj, text, x, y, max_width) => obj.fillText(text, x, y, max_width),
    strokeText: (obj, text, x, y, max_width) => obj.strokeText(text, x, y, max_width),
    measureText: (obj, text) => obj.measureText(text),
    drawImage: (obj, image, dx, dy) => obj.drawImage(image, dx, dy),
    drawImage_2: (obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh),
    drawImage_3: (obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh),
    createImageData: (obj, sw, sh, settings) => obj.createImageData(sw, sh, settings),
    createImageData_2: (obj, image_data) => obj.createImageData(image_data),
    getImageData: (obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings),
    putImageData: (obj, image_data, dx, dy) => obj.putImageData(image_data, dx, dy),
    putImageData_2: (obj, image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height) => obj.putImageData(image_data, dx, dy, dirty_x, dirty_y, dirty_width, dirty_height),
    setLineDash: (obj, segments) => obj.setLineDash(segments),
    getLineDash: (obj) => obj.getLineDash(),
    closePath: (obj) => obj.closePath(),
    moveTo: (obj, x, y) => obj.moveTo(x, y),
    lineTo: (obj, x, y) => obj.lineTo(x, y),
    quadraticCurveTo: (obj, cpx, cpy, x, y) => obj.quadraticCurveTo(cpx, cpy, x, y),
    bezierCurveTo: (obj, cp1x, cp1y, cp2x, cp2y, x, y) => obj.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, x, y),
    arcTo: (obj, x1, y1, x2, y2, radius) => obj.arcTo(x1, y1, x2, y2, radius),
    rect: (obj, x, y, w, h) => obj.rect(x, y, w, h),
    roundRect: (obj, x, y, w, h, radii) => obj.roundRect(x, y, w, h, radii),
    arc: (obj, x, y, radius, start_angle, end_angle, counterclockwise) => obj.arc(x, y, radius, start_angle, end_angle, counterclockwise),
    ellipse: (obj, x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise) => obj.ellipse(x, y, radius_x, radius_y, rotation, start_angle, end_angle, counterclockwise)
  },

  webapi_CustomElementRegistry: {
    new: () => new CustomElementRegistry(),
    define: (obj, name, constructor_, options) => obj.define(name, constructor_, options),
    get: (obj, name) => obj.get(name),
    getName: (obj, constructor_) => obj.getName(constructor_),
    whenDefined: (obj, name) => obj.whenDefined(name),
    upgrade: (obj, root) => obj.upgrade(root),
    initialize: (obj, root) => obj.initialize(root)
  },

  webapi_ElementInternals: {
    get_shadowRoot: (obj) => obj.shadowRoot,
    get_form: (obj) => obj.form,
    get_willValidate: (obj) => obj.willValidate,
    get_validity: (obj) => obj.validity,
    get_validationMessage: (obj) => obj.validationMessage,
    get_labels: (obj) => obj.labels,
    get_states: (obj) => obj.states,
    setFormValue: (obj, value, state) => obj.setFormValue(value, state),
    setValidity: (obj, flags, message, anchor) => obj.setValidity(flags, message, anchor),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity()
  },

  webapi_CustomStateSet: {
  },

  webapi_VisibilityStateEntry: {
    get_name: (obj) => obj.name,
    get_entryType: (obj) => obj.entryType,
    get_startTime: (obj) => obj.startTime,
    get_duration: (obj) => obj.duration
  },

  webapi_UserActivation: {
    get_hasBeenActive: (obj) => obj.hasBeenActive,
    get_isActive: (obj) => obj.isActive
  },

  webapi_Navigator: {
    get_userActivation: (obj) => obj.userActivation,
    get_appCodeName: (obj) => obj.appCodeName,
    get_appName: (obj) => obj.appName,
    get_appVersion: (obj) => obj.appVersion,
    get_platform: (obj) => obj.platform,
    get_product: (obj) => obj.product,
    get_productSub: (obj) => obj.productSub,
    get_userAgent: (obj) => obj.userAgent,
    get_vendor: (obj) => obj.vendor,
    get_vendorSub: (obj) => obj.vendorSub,
    get_oscpu: (obj) => obj.oscpu,
    get_language: (obj) => obj.language,
    get_languages: (obj) => obj.languages,
    get_onLine: (obj) => obj.onLine,
    get_cookieEnabled: (obj) => obj.cookieEnabled,
    get_plugins: (obj) => obj.plugins,
    get_mimeTypes: (obj) => obj.mimeTypes,
    get_pdfViewerEnabled: (obj) => obj.pdfViewerEnabled,
    get_hardwareConcurrency: (obj) => obj.hardwareConcurrency,
    taintEnabled: (obj) => obj.taintEnabled(),
    registerProtocolHandler: (obj, scheme, url) => obj.registerProtocolHandler(scheme, url),
    unregisterProtocolHandler: (obj, scheme, url) => obj.unregisterProtocolHandler(scheme, url),
    javaEnabled: (obj) => obj.javaEnabled()
  },

  webapi_ToggleEvent: {
    new: (type_, event_init_dict) => new ToggleEvent(type_, event_init_dict),
    get_oldState: (obj) => obj.oldState,
    get_newState: (obj) => obj.newState,
    get_source: (obj) => obj.source
  },

  webapi_CommandEvent: {
    new: (type_, event_init_dict) => new CommandEvent(type_, event_init_dict),
    get_source: (obj) => obj.source,
    get_command: (obj) => obj.command
  },

  webapi_CloseWatcher: {
    new: (options) => new CloseWatcher(options),
    get_oncancel: (obj) => obj.oncancel,
    set_oncancel: (obj, value) => { obj.oncancel = value; },
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    requestClose: (obj) => obj.requestClose(),
    close: (obj) => obj.close(),
    destroy: (obj) => obj.destroy()
  },

  webapi_DataTransfer: {
    new: () => new DataTransfer(),
    get_dropEffect: (obj) => obj.dropEffect,
    set_dropEffect: (obj, value) => { obj.dropEffect = value; },
    get_effectAllowed: (obj) => obj.effectAllowed,
    set_effectAllowed: (obj, value) => { obj.effectAllowed = value; },
    get_items: (obj) => obj.items,
    get_types: (obj) => obj.types,
    get_files: (obj) => obj.files,
    setDragImage: (obj, image, x, y) => obj.setDragImage(image, x, y),
    getData: (obj, format) => obj.getData(format),
    setData: (obj, format, data) => obj.setData(format, data),
    clearData: (obj, format) => obj.clearData(format)
  },

  webapi_DataTransferItemList: {
    get_length: (obj) => obj.length,
    add: (obj, data, type_) => obj.add(data, type_),
    add_2: (obj, data) => obj.add(data),
    remove: (obj, index) => obj.remove(index),
    clear: (obj) => obj.clear()
  },

  webapi_DataTransferItem: {
    get_kind: (obj) => obj.kind,
    get_type: (obj) => obj.type,
    getAsString: (obj, _callback) => obj.getAsString(_callback),
    getAsFile: (obj) => obj.getAsFile()
  },

  webapi_DragEvent: {
    new: (type_, event_init_dict) => new DragEvent(type_, event_init_dict),
    get_dataTransfer: (obj) => obj.dataTransfer
  },

  webapi_Origin: {
    new: () => new Origin(),
    get_opaque: (obj) => obj.opaque,
    from: (value) => from(value),
    isSameOrigin: (obj, other) => obj.isSameOrigin(other),
    isSameSite: (obj, other) => obj.isSameSite(other)
  },

  webapi_BarProp: {
    get_visible: (obj) => obj.visible
  },

  webapi_Location: {
    get_href: (obj) => obj.href,
    set_href: (obj, value) => { obj.href = value; },
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    set_protocol: (obj, value) => { obj.protocol = value; },
    get_host: (obj) => obj.host,
    set_host: (obj, value) => { obj.host = value; },
    get_hostname: (obj) => obj.hostname,
    set_hostname: (obj, value) => { obj.hostname = value; },
    get_port: (obj) => obj.port,
    set_port: (obj, value) => { obj.port = value; },
    get_pathname: (obj) => obj.pathname,
    set_pathname: (obj, value) => { obj.pathname = value; },
    get_search: (obj) => obj.search,
    set_search: (obj, value) => { obj.search = value; },
    get_hash: (obj) => obj.hash,
    set_hash: (obj, value) => { obj.hash = value; },
    get_ancestorOrigins: (obj) => obj.ancestorOrigins,
    assign: (obj, url) => obj.assign(url),
    replace: (obj, url) => obj.replace(url),
    reload: (obj) => obj.reload()
  },

  webapi_History: {
    get_length: (obj) => obj.length,
    get_scrollRestoration: (obj) => obj.scrollRestoration,
    set_scrollRestoration: (obj, value) => { obj.scrollRestoration = value; },
    get_state: (obj) => obj.state,
    go: (obj, delta) => obj.go(delta),
    back: (obj) => obj.back(),
    forward: (obj) => obj.forward(),
    pushState: (obj, data, unused, url) => obj.pushState(data, unused, url),
    replaceState: (obj, data, unused, url) => obj.replaceState(data, unused, url)
  },

  webapi_Navigation: {
    get_currentEntry: (obj) => obj.currentEntry,
    get_transition: (obj) => obj.transition,
    get_activation: (obj) => obj.activation,
    get_canGoBack: (obj) => obj.canGoBack,
    get_canGoForward: (obj) => obj.canGoForward,
    get_onnavigate: (obj) => obj.onnavigate,
    set_onnavigate: (obj, value) => { obj.onnavigate = value; },
    get_onnavigatesuccess: (obj) => obj.onnavigatesuccess,
    set_onnavigatesuccess: (obj, value) => { obj.onnavigatesuccess = value; },
    get_onnavigateerror: (obj) => obj.onnavigateerror,
    set_onnavigateerror: (obj, value) => { obj.onnavigateerror = value; },
    get_oncurrententrychange: (obj) => obj.oncurrententrychange,
    set_oncurrententrychange: (obj, value) => { obj.oncurrententrychange = value; },
    entries: (obj) => obj.entries(),
    updateCurrentEntry: (obj, options) => obj.updateCurrentEntry(options),
    navigate: (obj, url, options) => obj.navigate(url, options),
    reload: (obj, options) => obj.reload(options),
    traverseTo: (obj, key, options) => obj.traverseTo(key, options),
    back: (obj, options) => obj.back(options),
    forward: (obj, options) => obj.forward(options)
  },

  webapi_NavigationHistoryEntry: {
    get_url: (obj) => obj.url,
    get_key: (obj) => obj.key,
    get_id: (obj) => obj.id,
    get_index: (obj) => obj.index,
    get_sameDocument: (obj) => obj.sameDocument,
    get_ondispose: (obj) => obj.ondispose,
    set_ondispose: (obj, value) => { obj.ondispose = value; },
    getState: (obj) => obj.getState()
  },

  webapi_NavigationTransition: {
    get_navigationType: (obj) => obj.navigationType,
    get_from: (obj) => obj.from,
    get_to: (obj) => obj.to,
    get_committed: (obj) => obj.committed,
    get_finished: (obj) => obj.finished
  },

  webapi_NavigationActivation: {
    get_from: (obj) => obj.from,
    get_entry: (obj) => obj.entry,
    get_navigationType: (obj) => obj.navigationType
  },

  webapi_NavigateEvent: {
    new: (type_, event_init_dict) => new NavigateEvent(type_, event_init_dict),
    get_navigationType: (obj) => obj.navigationType,
    get_destination: (obj) => obj.destination,
    get_canIntercept: (obj) => obj.canIntercept,
    get_userInitiated: (obj) => obj.userInitiated,
    get_hashChange: (obj) => obj.hashChange,
    get_signal: (obj) => obj.signal,
    get_formData: (obj) => obj.formData,
    get_downloadRequest: (obj) => obj.downloadRequest,
    get_info: (obj) => obj.info,
    get_hasUAVisualTransition: (obj) => obj.hasUAVisualTransition,
    get_sourceElement: (obj) => obj.sourceElement,
    intercept: (obj, options) => obj.intercept(options),
    scroll: (obj) => obj.scroll()
  },

  webapi_NavigationPrecommitController: {
    redirect: (obj, url, options) => obj.redirect(url, options),
    addHandler: (obj, handler) => obj.addHandler(handler)
  },

  webapi_NavigationDestination: {
    get_url: (obj) => obj.url,
    get_key: (obj) => obj.key,
    get_id: (obj) => obj.id,
    get_index: (obj) => obj.index,
    get_sameDocument: (obj) => obj.sameDocument,
    getState: (obj) => obj.getState()
  },

  webapi_NavigationCurrentEntryChangeEvent: {
    new: (type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict),
    get_navigationType: (obj) => obj.navigationType,
    get_from: (obj) => obj.from
  },

  webapi_PopStateEvent: {
    new: (type_, event_init_dict) => new PopStateEvent(type_, event_init_dict),
    get_state: (obj) => obj.state,
    get_hasUAVisualTransition: (obj) => obj.hasUAVisualTransition
  },

  webapi_HashChangeEvent: {
    new: (type_, event_init_dict) => new HashChangeEvent(type_, event_init_dict),
    get_oldURL: (obj) => obj.oldURL,
    get_newURL: (obj) => obj.newURL
  },

  webapi_PageSwapEvent: {
    new: (type_, event_init_dict) => new PageSwapEvent(type_, event_init_dict),
    get_activation: (obj) => obj.activation,
    get_viewTransition: (obj) => obj.viewTransition
  },

  webapi_PageRevealEvent: {
    new: (type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict),
    get_viewTransition: (obj) => obj.viewTransition
  },

  webapi_PageTransitionEvent: {
    new: (type_, event_init_dict) => new PageTransitionEvent(type_, event_init_dict),
    get_persisted: (obj) => obj.persisted
  },

  webapi_BeforeUnloadEvent: {
    get_returnValue: (obj) => obj.returnValue,
    set_returnValue: (obj, value) => { obj.returnValue = value; }
  },

  webapi_NotRestoredReasonDetails: {
    get_reason: (obj) => obj.reason,
    toJSON: (obj) => obj.toJSON()
  },

  webapi_NotRestoredReasons: {
    get_src: (obj) => obj.src,
    get_id: (obj) => obj.id,
    get_name: (obj) => obj.name,
    get_url: (obj) => obj.url,
    get_reasons: (obj) => obj.reasons,
    get_children: (obj) => obj.children,
    toJSON: (obj) => obj.toJSON()
  },

  webapi_ErrorEvent: {
    new: (type_, event_init_dict) => new ErrorEvent(type_, event_init_dict),
    get_message: (obj) => obj.message,
    get_filename: (obj) => obj.filename,
    get_lineno: (obj) => obj.lineno,
    get_colno: (obj) => obj.colno,
    get_error: (obj) => obj.error
  },

  webapi_PromiseRejectionEvent: {
    new: (type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict),
    get_promise: (obj) => obj.promise,
    get_reason: (obj) => obj.reason
  },

  webapi_DOMParser: {
    new: () => new DOMParser(),
    parseFromString: (obj, string, type_) => obj.parseFromString(string, type_)
  },

  webapi_XMLSerializer: {
    new: () => new XMLSerializer(),
    serializeToString: (obj, root) => obj.serializeToString(root)
  },

  webapi_PluginArray: {
    get_length: (obj) => obj.length,
    refresh: (obj) => obj.refresh()
  },

  webapi_MimeTypeArray: {
    get_length: (obj) => obj.length
  },

  webapi_Plugin: {
    get_name: (obj) => obj.name,
    get_description: (obj) => obj.description,
    get_filename: (obj) => obj.filename,
    get_length: (obj) => obj.length
  },

  webapi_MimeType: {
    get_type: (obj) => obj.type,
    get_description: (obj) => obj.description,
    get_suffixes: (obj) => obj.suffixes,
    get_enabledPlugin: (obj) => obj.enabledPlugin
  },

  webapi_ImageData: {
    new: (sw, sh, settings) => new ImageData(sw, sh, settings),
    new_2: (data, sw, sh, settings) => new ImageData(data, sw, sh, settings),
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_data: (obj) => obj.data,
    get_pixelFormat: (obj) => obj.pixelFormat,
    get_colorSpace: (obj) => obj.colorSpace
  },

  webapi_ImageBitmap: {
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    close: (obj) => obj.close()
  },

  webapi_MessageEvent: {
    new: (type_, event_init_dict) => new MessageEvent(type_, event_init_dict),
    get_data: (obj) => obj.data,
    get_origin: (obj) => obj.origin,
    get_lastEventId: (obj) => obj.lastEventId,
    get_source: (obj) => obj.source,
    get_ports: (obj) => obj.ports,
    initMessageEvent: (obj, type_, bubbles, cancelable, data, origin, last_event_id, source, ports) => obj.initMessageEvent(type_, bubbles, cancelable, data, origin, last_event_id, source, ports)
  },

  webapi_EventSource: {
    new: (url, event_source_init_dict) => new EventSource(url, event_source_init_dict),
    get_url: (obj) => obj.url,
    get_withCredentials: (obj) => obj.withCredentials,
    get_readyState: (obj) => obj.readyState,
    get_onopen: (obj) => obj.onopen,
    set_onopen: (obj, value) => { obj.onopen = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    close: (obj) => obj.close()
  },

  webapi_MessageChannel: {
    new: () => new MessageChannel(),
    get_port1: (obj) => obj.port1,
    get_port2: (obj) => obj.port2
  },

  webapi_MessagePort: {
    get_onclose: (obj) => obj.onclose,
    set_onclose: (obj, value) => { obj.onclose = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    postMessage: (obj, message, transfer) => obj.postMessage(message, transfer),
    postMessage_2: (obj, message, options) => obj.postMessage(message, options),
    start: (obj) => obj.start(),
    close: (obj) => obj.close()
  },

  webapi_BroadcastChannel: {
    new: (name) => new BroadcastChannel(name),
    get_name: (obj) => obj.name,
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    postMessage: (obj, message) => obj.postMessage(message),
    close: (obj) => obj.close()
  },

  webapi_WorkerGlobalScope: {
    get_self: (obj) => obj.self,
    get_location: (obj) => obj.location,
    get_navigator: (obj) => obj.navigator,
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onlanguagechange: (obj) => obj.onlanguagechange,
    set_onlanguagechange: (obj, value) => { obj.onlanguagechange = value; },
    get_onoffline: (obj) => obj.onoffline,
    set_onoffline: (obj, value) => { obj.onoffline = value; },
    get_ononline: (obj) => obj.ononline,
    set_ononline: (obj, value) => { obj.ononline = value; },
    get_onrejectionhandled: (obj) => obj.onrejectionhandled,
    set_onrejectionhandled: (obj, value) => { obj.onrejectionhandled = value; },
    get_onunhandledrejection: (obj) => obj.onunhandledrejection,
    set_onunhandledrejection: (obj, value) => { obj.onunhandledrejection = value; },
    get_origin: (obj) => obj.origin,
    get_isSecureContext: (obj) => obj.isSecureContext,
    get_crossOriginIsolated: (obj) => obj.crossOriginIsolated,
    get_performance: (obj) => obj.performance,
    get_trustedTypes: (obj) => obj.trustedTypes,
    importScripts: (obj, urls) => obj.importScripts(urls),
    reportError: (obj, e) => obj.reportError(e),
    btoa: (obj, data) => obj.btoa(data),
    atob: (obj, data) => obj.atob(data),
    setTimeout: (obj, handler, timeout, _arguments) => obj.setTimeout(handler, timeout, _arguments),
    clearTimeout: (obj, id) => obj.clearTimeout(id),
    setInterval: (obj, handler, timeout, _arguments) => obj.setInterval(handler, timeout, _arguments),
    clearInterval: (obj, id) => obj.clearInterval(id),
    queueMicrotask: (obj, callback) => obj.queueMicrotask(callback),
    createImageBitmap: (obj, image, options) => obj.createImageBitmap(image, options),
    createImageBitmap_2: (obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap(image, sx, sy, sw, sh, options),
    structuredClone: (obj, value, options) => obj.structuredClone(value, options),
    fetch: (obj, input, init) => obj.fetch(input, init)
  },

  webapi_DedicatedWorkerGlobalScope: {
    get_name: (obj) => obj.name,
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    postMessage: (obj, message, transfer) => obj.postMessage(message, transfer),
    postMessage_2: (obj, message, options) => obj.postMessage(message, options),
    close: (obj) => obj.close(),
    requestAnimationFrame: (obj, callback) => obj.requestAnimationFrame(callback),
    cancelAnimationFrame: (obj, handle) => obj.cancelAnimationFrame(handle)
  },

  webapi_SharedWorkerGlobalScope: {
    get_name: (obj) => obj.name,
    get_onconnect: (obj) => obj.onconnect,
    set_onconnect: (obj, value) => { obj.onconnect = value; },
    close: (obj) => obj.close()
  },

  webapi_Worker: {
    new: (script_url, options) => new Worker(script_url, options),
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    terminate: (obj) => obj.terminate(),
    postMessage: (obj, message, transfer) => obj.postMessage(message, transfer),
    postMessage_2: (obj, message, options) => obj.postMessage(message, options)
  },

  webapi_SharedWorker: {
    new: (script_url, options) => new SharedWorker(script_url, options),
    get_port: (obj) => obj.port,
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; }
  },

  webapi_WorkerNavigator: {
    get_appCodeName: (obj) => obj.appCodeName,
    get_appName: (obj) => obj.appName,
    get_appVersion: (obj) => obj.appVersion,
    get_platform: (obj) => obj.platform,
    get_product: (obj) => obj.product,
    get_productSub: (obj) => obj.productSub,
    get_userAgent: (obj) => obj.userAgent,
    get_vendor: (obj) => obj.vendor,
    get_vendorSub: (obj) => obj.vendorSub,
    get_oscpu: (obj) => obj.oscpu,
    get_language: (obj) => obj.language,
    get_languages: (obj) => obj.languages,
    get_onLine: (obj) => obj.onLine,
    get_hardwareConcurrency: (obj) => obj.hardwareConcurrency,
    taintEnabled: (obj) => obj.taintEnabled()
  },

  webapi_WorkerLocation: {
    get_href: (obj) => obj.href,
    get_origin: (obj) => obj.origin,
    get_protocol: (obj) => obj.protocol,
    get_host: (obj) => obj.host,
    get_hostname: (obj) => obj.hostname,
    get_port: (obj) => obj.port,
    get_pathname: (obj) => obj.pathname,
    get_search: (obj) => obj.search,
    get_hash: (obj) => obj.hash
  },

  webapi_WorkletGlobalScope: {
  },

  webapi_Worklet: {
    addModule: (obj, module_url, options) => obj.addModule(module_url, options)
  },

  webapi_Storage: {
    get_length: (obj) => obj.length,
    key: (obj, index) => obj.key(index),
    clear: (obj) => obj.clear()
  },

  webapi_StorageEvent: {
    new: (type_, event_init_dict) => new StorageEvent(type_, event_init_dict),
    get_key: (obj) => obj.key,
    get_oldValue: (obj) => obj.oldValue,
    get_newValue: (obj) => obj.newValue,
    get_url: (obj) => obj.url,
    get_storageArea: (obj) => obj.storageArea,
    initStorageEvent: (obj, type_, bubbles, cancelable, key, old_value, new_value, url, storage_area) => obj.initStorageEvent(type_, bubbles, cancelable, key, old_value, new_value, url, storage_area)
  },

  webapi_HTMLMarqueeElement: {
    new: () => new HTMLMarqueeElement(),
    get_behavior: (obj) => obj.behavior,
    set_behavior: (obj, value) => { obj.behavior = value; },
    get_bgColor: (obj) => obj.bgColor,
    set_bgColor: (obj, value) => { obj.bgColor = value; },
    get_direction: (obj) => obj.direction,
    set_direction: (obj, value) => { obj.direction = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_hspace: (obj) => obj.hspace,
    set_hspace: (obj, value) => { obj.hspace = value; },
    get_loop: (obj) => obj.loop,
    set_loop: (obj, value) => { obj.loop = value; },
    get_scrollAmount: (obj) => obj.scrollAmount,
    set_scrollAmount: (obj, value) => { obj.scrollAmount = value; },
    get_scrollDelay: (obj) => obj.scrollDelay,
    set_scrollDelay: (obj, value) => { obj.scrollDelay = value; },
    get_trueSpeed: (obj) => obj.trueSpeed,
    set_trueSpeed: (obj, value) => { obj.trueSpeed = value; },
    get_vspace: (obj) => obj.vspace,
    set_vspace: (obj, value) => { obj.vspace = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    start: (obj) => obj.start(),
    stop: (obj) => obj.stop()
  },

  webapi_HTMLFrameSetElement: {
    new: () => new HTMLFrameSetElement(),
    get_cols: (obj) => obj.cols,
    set_cols: (obj, value) => { obj.cols = value; },
    get_rows: (obj) => obj.rows,
    set_rows: (obj, value) => { obj.rows = value; },
    get_onafterprint: (obj) => obj.onafterprint,
    set_onafterprint: (obj, value) => { obj.onafterprint = value; },
    get_onbeforeprint: (obj) => obj.onbeforeprint,
    set_onbeforeprint: (obj, value) => { obj.onbeforeprint = value; },
    get_onbeforeunload: (obj) => obj.onbeforeunload,
    set_onbeforeunload: (obj, value) => { obj.onbeforeunload = value; },
    get_onhashchange: (obj) => obj.onhashchange,
    set_onhashchange: (obj, value) => { obj.onhashchange = value; },
    get_onlanguagechange: (obj) => obj.onlanguagechange,
    set_onlanguagechange: (obj, value) => { obj.onlanguagechange = value; },
    get_onmessage: (obj) => obj.onmessage,
    set_onmessage: (obj, value) => { obj.onmessage = value; },
    get_onmessageerror: (obj) => obj.onmessageerror,
    set_onmessageerror: (obj, value) => { obj.onmessageerror = value; },
    get_onoffline: (obj) => obj.onoffline,
    set_onoffline: (obj, value) => { obj.onoffline = value; },
    get_ononline: (obj) => obj.ononline,
    set_ononline: (obj, value) => { obj.ononline = value; },
    get_onpagehide: (obj) => obj.onpagehide,
    set_onpagehide: (obj, value) => { obj.onpagehide = value; },
    get_onpagereveal: (obj) => obj.onpagereveal,
    set_onpagereveal: (obj, value) => { obj.onpagereveal = value; },
    get_onpageshow: (obj) => obj.onpageshow,
    set_onpageshow: (obj, value) => { obj.onpageshow = value; },
    get_onpageswap: (obj) => obj.onpageswap,
    set_onpageswap: (obj, value) => { obj.onpageswap = value; },
    get_onpopstate: (obj) => obj.onpopstate,
    set_onpopstate: (obj, value) => { obj.onpopstate = value; },
    get_onrejectionhandled: (obj) => obj.onrejectionhandled,
    set_onrejectionhandled: (obj, value) => { obj.onrejectionhandled = value; },
    get_onstorage: (obj) => obj.onstorage,
    set_onstorage: (obj, value) => { obj.onstorage = value; },
    get_onunhandledrejection: (obj) => obj.onunhandledrejection,
    set_onunhandledrejection: (obj, value) => { obj.onunhandledrejection = value; },
    get_onunload: (obj) => obj.onunload,
    set_onunload: (obj, value) => { obj.onunload = value; }
  },

  webapi_HTMLFrameElement: {
    new: () => new HTMLFrameElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_scrolling: (obj) => obj.scrolling,
    set_scrolling: (obj, value) => { obj.scrolling = value; },
    get_src: (obj) => obj.src,
    set_src: (obj, value) => { obj.src = value; },
    get_frameBorder: (obj) => obj.frameBorder,
    set_frameBorder: (obj, value) => { obj.frameBorder = value; },
    get_longDesc: (obj) => obj.longDesc,
    set_longDesc: (obj, value) => { obj.longDesc = value; },
    get_noResize: (obj) => obj.noResize,
    set_noResize: (obj, value) => { obj.noResize = value; },
    get_contentDocument: (obj) => obj.contentDocument,
    get_contentWindow: (obj) => obj.contentWindow,
    get_marginHeight: (obj) => obj.marginHeight,
    set_marginHeight: (obj, value) => { obj.marginHeight = value; },
    get_marginWidth: (obj) => obj.marginWidth,
    set_marginWidth: (obj, value) => { obj.marginWidth = value; }
  },

  webapi_HTMLDirectoryElement: {
    new: () => new HTMLDirectoryElement(),
    get_compact: (obj) => obj.compact,
    set_compact: (obj, value) => { obj.compact = value; }
  },

  webapi_HTMLFontElement: {
    new: () => new HTMLFontElement(),
    get_color: (obj) => obj.color,
    set_color: (obj, value) => { obj.color = value; },
    get_face: (obj) => obj.face,
    set_face: (obj, value) => { obj.face = value; },
    get_size: (obj) => obj.size,
    set_size: (obj, value) => { obj.size = value; }
  },

  webapi_HTMLParamElement: {
    new: () => new HTMLParamElement(),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; },
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; },
    get_type: (obj) => obj.type,
    set_type: (obj, value) => { obj.type = value; },
    get_valueType: (obj) => obj.valueType,
    set_valueType: (obj, value) => { obj.valueType = value; }
  },

  webapi_External: {
    AddSearchProvider: (obj) => obj.AddSearchProvider(),
    IsSearchProviderInstalled: (obj) => obj.IsSearchProviderInstalled()
  },

  webapi_MediaList: {
    get_mediaText: (obj) => obj.mediaText,
    set_mediaText: (obj, value) => { obj.mediaText = value; },
    get_length: (obj) => obj.length,
    appendMedium: (obj, medium) => obj.appendMedium(medium),
    deleteMedium: (obj, medium) => obj.deleteMedium(medium)
  },

  webapi_StyleSheet: {
    get_type: (obj) => obj.type,
    get_href: (obj) => obj.href,
    get_ownerNode: (obj) => obj.ownerNode,
    get_parentStyleSheet: (obj) => obj.parentStyleSheet,
    get_title: (obj) => obj.title,
    get_media: (obj) => obj.media,
    get_disabled: (obj) => obj.disabled,
    set_disabled: (obj, value) => { obj.disabled = value; }
  },

  webapi_CSSStyleSheet: {
    new: (options) => new CSSStyleSheet(options),
    get_ownerRule: (obj) => obj.ownerRule,
    get_cssRules: (obj) => obj.cssRules,
    get_rules: (obj) => obj.rules,
    insertRule: (obj, rule, index) => obj.insertRule(rule, index),
    deleteRule: (obj, index) => obj.deleteRule(index),
    replace: (obj, text) => obj.replace(text),
    replaceSync: (obj, text) => obj.replaceSync(text),
    addRule: (obj, selector, style, index) => obj.addRule(selector, style, index),
    removeRule: (obj, index) => obj.removeRule(index)
  },

  webapi_StyleSheetList: {
    get_length: (obj) => obj.length
  },

  webapi_CSSRuleList: {
    get_length: (obj) => obj.length
  },

  webapi_CSSRule: {
    get_cssText: (obj) => obj.cssText,
    set_cssText: (obj, value) => { obj.cssText = value; },
    get_parentRule: (obj) => obj.parentRule,
    get_parentStyleSheet: (obj) => obj.parentStyleSheet,
    get_type: (obj) => obj.type
  },

  webapi_CSSStyleRule: {
    get_selectorText: (obj) => obj.selectorText,
    set_selectorText: (obj, value) => { obj.selectorText = value; },
    get_style: (obj) => obj.style
  },

  webapi_CSSImportRule: {
    get_href: (obj) => obj.href,
    get_media: (obj) => obj.media,
    get_styleSheet: (obj) => obj.styleSheet,
    get_layerName: (obj) => obj.layerName,
    get_supportsText: (obj) => obj.supportsText
  },

  webapi_CSSGroupingRule: {
    get_cssRules: (obj) => obj.cssRules,
    insertRule: (obj, rule, index) => obj.insertRule(rule, index),
    deleteRule: (obj, index) => obj.deleteRule(index)
  },

  webapi_CSSPageDescriptors: {
    get_margin: (obj) => obj.margin,
    set_margin: (obj, value) => { obj.margin = value; },
    get_marginTop: (obj) => obj.marginTop,
    set_marginTop: (obj, value) => { obj.marginTop = value; },
    get_marginRight: (obj) => obj.marginRight,
    set_marginRight: (obj, value) => { obj.marginRight = value; },
    get_marginBottom: (obj) => obj.marginBottom,
    set_marginBottom: (obj, value) => { obj.marginBottom = value; },
    get_marginLeft: (obj) => obj.marginLeft,
    set_marginLeft: (obj, value) => { obj.marginLeft = value; },
    "get_margin-top": (obj) => obj["margin-top"],
    "set_margin-top": (obj, value) => { obj["margin-top"] = value; },
    "get_margin-right": (obj) => obj["margin-right"],
    "set_margin-right": (obj, value) => { obj["margin-right"] = value; },
    "get_margin-bottom": (obj) => obj["margin-bottom"],
    "set_margin-bottom": (obj, value) => { obj["margin-bottom"] = value; },
    "get_margin-left": (obj) => obj["margin-left"],
    "set_margin-left": (obj, value) => { obj["margin-left"] = value; },
    get_size: (obj) => obj.size,
    set_size: (obj, value) => { obj.size = value; },
    get_pageOrientation: (obj) => obj.pageOrientation,
    set_pageOrientation: (obj, value) => { obj.pageOrientation = value; },
    "get_page-orientation": (obj) => obj["page-orientation"],
    "set_page-orientation": (obj, value) => { obj["page-orientation"] = value; },
    get_marks: (obj) => obj.marks,
    set_marks: (obj, value) => { obj.marks = value; },
    get_bleed: (obj) => obj.bleed,
    set_bleed: (obj, value) => { obj.bleed = value; }
  },

  webapi_CSSPageRule: {
    get_selectorText: (obj) => obj.selectorText,
    set_selectorText: (obj, value) => { obj.selectorText = value; },
    get_style: (obj) => obj.style
  },

  webapi_CSSMarginRule: {
    get_name: (obj) => obj.name,
    get_style: (obj) => obj.style
  },

  webapi_CSSNamespaceRule: {
    get_namespaceURI: (obj) => obj.namespaceURI,
    get_prefix: (obj) => obj.prefix
  },

  webapi_CSSStyleDeclaration: {
    get_cssText: (obj) => obj.cssText,
    set_cssText: (obj, value) => { obj.cssText = value; },
    get_length: (obj) => obj.length,
    get_parentRule: (obj) => obj.parentRule,
    getPropertyValue: (obj, property) => obj.getPropertyValue(property),
    getPropertyPriority: (obj, property) => obj.getPropertyPriority(property),
    setProperty: (obj, property, value, priority) => obj.setProperty(property, value, priority),
    removeProperty: (obj, property) => obj.removeProperty(property)
  },

  webapi_CSSStyleProperties: {
    get_cssFloat: (obj) => obj.cssFloat,
    set_cssFloat: (obj, value) => { obj.cssFloat = value; }
  },

  webapi_Headers: {
    new: (init) => new Headers(init),
    append: (obj, name, value) => obj.append(name, value),
    delete: (obj, name) => obj.delete(name),
    get: (obj, name) => obj.get(name),
    getSetCookie: (obj) => obj.getSetCookie(),
    has: (obj, name) => obj.has(name),
    set: (obj, name, value) => obj.set(name, value)
  },

  webapi_Request: {
    new: (input, init) => new Request(input, init),
    get_method: (obj) => obj.method,
    get_url: (obj) => obj.url,
    get_headers: (obj) => obj.headers,
    get_destination: (obj) => obj.destination,
    get_referrer: (obj) => obj.referrer,
    get_referrerPolicy: (obj) => obj.referrerPolicy,
    get_mode: (obj) => obj.mode,
    get_credentials: (obj) => obj.credentials,
    get_cache: (obj) => obj.cache,
    get_redirect: (obj) => obj.redirect,
    get_integrity: (obj) => obj.integrity,
    get_keepalive: (obj) => obj.keepalive,
    get_isReloadNavigation: (obj) => obj.isReloadNavigation,
    get_isHistoryNavigation: (obj) => obj.isHistoryNavigation,
    get_signal: (obj) => obj.signal,
    get_duplex: (obj) => obj.duplex,
    get_body: (obj) => obj.body,
    get_bodyUsed: (obj) => obj.bodyUsed,
    clone: (obj) => obj.clone(),
    arrayBuffer: (obj) => obj.arrayBuffer(),
    blob: (obj) => obj.blob(),
    bytes: (obj) => obj.bytes(),
    formData: (obj) => obj.formData(),
    json: (obj) => obj.json(),
    text: (obj) => obj.text()
  },

  webapi_Response: {
    new: (body, init) => new Response(body, init),
    get_type: (obj) => obj.type,
    get_url: (obj) => obj.url,
    get_redirected: (obj) => obj.redirected,
    get_status: (obj) => obj.status,
    get_ok: (obj) => obj.ok,
    get_statusText: (obj) => obj.statusText,
    get_headers: (obj) => obj.headers,
    get_body: (obj) => obj.body,
    get_bodyUsed: (obj) => obj.bodyUsed,
    error: () => error(),
    redirect: (url, status) => redirect(url, status),
    json: (data, init) => json(data, init),
    clone: (obj) => obj.clone(),
    arrayBuffer: (obj) => obj.arrayBuffer(),
    blob: (obj) => obj.blob(),
    bytes: (obj) => obj.bytes(),
    formData: (obj) => obj.formData(),
    json_2: (obj) => obj.json(),
    text: (obj) => obj.text()
  },

  webapi_FetchLaterResult: {
    get_activated: (obj) => obj.activated
  },

  webapi_QuotaExceededError: {
    new: (message, options) => new QuotaExceededError(message, options),
    get_quota: (obj) => obj.quota,
    get_requested: (obj) => obj.requested
  },

  webapi_DOMException: {
    new: (message, name) => new DOMException(message, name),
    get_name: (obj) => obj.name,
    get_message: (obj) => obj.message,
    get_code: (obj) => obj.code
  },

  webapi_Blob: {
    new: (blob_parts, options) => new Blob(blob_parts, options),
    get_size: (obj) => obj.size,
    get_type: (obj) => obj.type,
    slice: (obj, start, end, content_type) => obj.slice(start, end, content_type),
    stream: (obj) => obj.stream(),
    text: (obj) => obj.text(),
    arrayBuffer: (obj) => obj.arrayBuffer(),
    bytes: (obj) => obj.bytes()
  },

  webapi_File: {
    new: (file_bits, file_name, options) => new File(file_bits, file_name, options),
    get_name: (obj) => obj.name,
    get_lastModified: (obj) => obj.lastModified
  },

  webapi_FileList: {
    get_length: (obj) => obj.length
  },

  webapi_FileReader: {
    new: () => new FileReader(),
    get_readyState: (obj) => obj.readyState,
    get_result: (obj) => obj.result,
    get_error: (obj) => obj.error,
    get_onloadstart: (obj) => obj.onloadstart,
    set_onloadstart: (obj, value) => { obj.onloadstart = value; },
    get_onprogress: (obj) => obj.onprogress,
    set_onprogress: (obj, value) => { obj.onprogress = value; },
    get_onload: (obj) => obj.onload,
    set_onload: (obj, value) => { obj.onload = value; },
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; },
    get_onerror: (obj) => obj.onerror,
    set_onerror: (obj, value) => { obj.onerror = value; },
    get_onloadend: (obj) => obj.onloadend,
    set_onloadend: (obj, value) => { obj.onloadend = value; },
    readAsArrayBuffer: (obj, blob) => obj.readAsArrayBuffer(blob),
    readAsBinaryString: (obj, blob) => obj.readAsBinaryString(blob),
    readAsText: (obj, blob, encoding) => obj.readAsText(blob, encoding),
    readAsDataURL: (obj, blob) => obj.readAsDataURL(blob),
    abort: (obj) => obj.abort()
  },

  webapi_FileReaderSync: {
    new: () => new FileReaderSync(),
    readAsArrayBuffer: (obj, blob) => obj.readAsArrayBuffer(blob),
    readAsBinaryString: (obj, blob) => obj.readAsBinaryString(blob),
    readAsText: (obj, blob, encoding) => obj.readAsText(blob, encoding),
    readAsDataURL: (obj, blob) => obj.readAsDataURL(blob)
  },

  webapi_Performance: {
    get_timeOrigin: (obj) => obj.timeOrigin,
    now: (obj) => obj.now(),
    toJSON: (obj) => obj.toJSON(),
    getEntries: (obj) => obj.getEntries(),
    getEntriesByType: (obj, type_) => obj.getEntriesByType(type_),
    getEntriesByName: (obj, name, type_) => obj.getEntriesByName(name, type_)
  },

  webapi_DOMPointReadOnly: {
    new: (x, y, z, w) => new DOMPointReadOnly(x, y, z, w),
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_z: (obj) => obj.z,
    get_w: (obj) => obj.w,
    fromPoint: (other) => fromPoint(other),
    matrixTransform: (obj, matrix) => obj.matrixTransform(matrix),
    toJSON: (obj) => obj.toJSON()
  },

  webapi_DOMPoint: {
    new: (x, y, z, w) => new DOMPoint(x, y, z, w),
    get_x: (obj) => obj.x,
    set_x: (obj, value) => { obj.x = value; },
    get_y: (obj) => obj.y,
    set_y: (obj, value) => { obj.y = value; },
    get_z: (obj) => obj.z,
    set_z: (obj, value) => { obj.z = value; },
    get_w: (obj) => obj.w,
    set_w: (obj, value) => { obj.w = value; },
    fromPoint: (other) => fromPoint(other)
  },

  webapi_DOMRectReadOnly: {
    new: (x, y, width, height) => new DOMRectReadOnly(x, y, width, height),
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_top: (obj) => obj.top,
    get_right: (obj) => obj.right,
    get_bottom: (obj) => obj.bottom,
    get_left: (obj) => obj.left,
    fromRect: (other) => fromRect(other),
    toJSON: (obj) => obj.toJSON()
  },

  webapi_DOMRect: {
    new: (x, y, width, height) => new DOMRect(x, y, width, height),
    get_x: (obj) => obj.x,
    set_x: (obj, value) => { obj.x = value; },
    get_y: (obj) => obj.y,
    set_y: (obj, value) => { obj.y = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    fromRect: (other) => fromRect(other)
  },

  webapi_DOMRectList: {
    get_length: (obj) => obj.length
  },

  webapi_DOMQuad: {
    new: (p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4),
    get_p1: (obj) => obj.p1,
    get_p2: (obj) => obj.p2,
    get_p3: (obj) => obj.p3,
    get_p4: (obj) => obj.p4,
    fromRect: (other) => fromRect(other),
    fromQuad: (other) => fromQuad(other),
    getBounds: (obj) => obj.getBounds(),
    toJSON: (obj) => obj.toJSON()
  },

  webapi_DOMMatrixReadOnly: {
    new: (init) => new DOMMatrixReadOnly(init),
    get_a: (obj) => obj.a,
    get_b: (obj) => obj.b,
    get_c: (obj) => obj.c,
    get_d: (obj) => obj.d,
    get_e: (obj) => obj.e,
    get_f: (obj) => obj.f,
    get_m11: (obj) => obj.m11,
    get_m12: (obj) => obj.m12,
    get_m13: (obj) => obj.m13,
    get_m14: (obj) => obj.m14,
    get_m21: (obj) => obj.m21,
    get_m22: (obj) => obj.m22,
    get_m23: (obj) => obj.m23,
    get_m24: (obj) => obj.m24,
    get_m31: (obj) => obj.m31,
    get_m32: (obj) => obj.m32,
    get_m33: (obj) => obj.m33,
    get_m34: (obj) => obj.m34,
    get_m41: (obj) => obj.m41,
    get_m42: (obj) => obj.m42,
    get_m43: (obj) => obj.m43,
    get_m44: (obj) => obj.m44,
    get_is2D: (obj) => obj.is2D,
    get_isIdentity: (obj) => obj.isIdentity,
    fromMatrix: (other) => fromMatrix(other),
    fromFloat32Array: (array32) => fromFloat32Array(array32),
    fromFloat64Array: (array64) => fromFloat64Array(array64),
    translate: (obj, tx, ty, tz) => obj.translate(tx, ty, tz),
    scale: (obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z),
    scaleNonUniform: (obj, scale_x, scale_y) => obj.scaleNonUniform(scale_x, scale_y),
    scale3d: (obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(scale, origin_x, origin_y, origin_z),
    rotate: (obj, rot_x, rot_y, rot_z) => obj.rotate(rot_x, rot_y, rot_z),
    rotateFromVector: (obj, x, y) => obj.rotateFromVector(x, y),
    rotateAxisAngle: (obj, x, y, z, angle) => obj.rotateAxisAngle(x, y, z, angle),
    skewX: (obj, sx) => obj.skewX(sx),
    skewY: (obj, sy) => obj.skewY(sy),
    multiply: (obj, other) => obj.multiply(other),
    flipX: (obj) => obj.flipX(),
    flipY: (obj) => obj.flipY(),
    inverse: (obj) => obj.inverse(),
    transformPoint: (obj, point) => obj.transformPoint(point),
    toFloat32Array: (obj) => obj.toFloat32Array(),
    toFloat64Array: (obj) => obj.toFloat64Array(),
    toJSON: (obj) => obj.toJSON()
  },

  webapi_DOMMatrix: {
    new: (init) => new DOMMatrix(init),
    get_a: (obj) => obj.a,
    set_a: (obj, value) => { obj.a = value; },
    get_b: (obj) => obj.b,
    set_b: (obj, value) => { obj.b = value; },
    get_c: (obj) => obj.c,
    set_c: (obj, value) => { obj.c = value; },
    get_d: (obj) => obj.d,
    set_d: (obj, value) => { obj.d = value; },
    get_e: (obj) => obj.e,
    set_e: (obj, value) => { obj.e = value; },
    get_f: (obj) => obj.f,
    set_f: (obj, value) => { obj.f = value; },
    get_m11: (obj) => obj.m11,
    set_m11: (obj, value) => { obj.m11 = value; },
    get_m12: (obj) => obj.m12,
    set_m12: (obj, value) => { obj.m12 = value; },
    get_m13: (obj) => obj.m13,
    set_m13: (obj, value) => { obj.m13 = value; },
    get_m14: (obj) => obj.m14,
    set_m14: (obj, value) => { obj.m14 = value; },
    get_m21: (obj) => obj.m21,
    set_m21: (obj, value) => { obj.m21 = value; },
    get_m22: (obj) => obj.m22,
    set_m22: (obj, value) => { obj.m22 = value; },
    get_m23: (obj) => obj.m23,
    set_m23: (obj, value) => { obj.m23 = value; },
    get_m24: (obj) => obj.m24,
    set_m24: (obj, value) => { obj.m24 = value; },
    get_m31: (obj) => obj.m31,
    set_m31: (obj, value) => { obj.m31 = value; },
    get_m32: (obj) => obj.m32,
    set_m32: (obj, value) => { obj.m32 = value; },
    get_m33: (obj) => obj.m33,
    set_m33: (obj, value) => { obj.m33 = value; },
    get_m34: (obj) => obj.m34,
    set_m34: (obj, value) => { obj.m34 = value; },
    get_m41: (obj) => obj.m41,
    set_m41: (obj, value) => { obj.m41 = value; },
    get_m42: (obj) => obj.m42,
    set_m42: (obj, value) => { obj.m42 = value; },
    get_m43: (obj) => obj.m43,
    set_m43: (obj, value) => { obj.m43 = value; },
    get_m44: (obj) => obj.m44,
    set_m44: (obj, value) => { obj.m44 = value; },
    fromMatrix: (other) => fromMatrix(other),
    fromFloat32Array: (array32) => fromFloat32Array(array32),
    fromFloat64Array: (array64) => fromFloat64Array(array64),
    multiplySelf: (obj, other) => obj.multiplySelf(other),
    preMultiplySelf: (obj, other) => obj.preMultiplySelf(other),
    translateSelf: (obj, tx, ty, tz) => obj.translateSelf(tx, ty, tz),
    scaleSelf: (obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scaleSelf(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z),
    scale3dSelf: (obj, scale, origin_x, origin_y, origin_z) => obj.scale3dSelf(scale, origin_x, origin_y, origin_z),
    rotateSelf: (obj, rot_x, rot_y, rot_z) => obj.rotateSelf(rot_x, rot_y, rot_z),
    rotateFromVectorSelf: (obj, x, y) => obj.rotateFromVectorSelf(x, y),
    rotateAxisAngleSelf: (obj, x, y, z, angle) => obj.rotateAxisAngleSelf(x, y, z, angle),
    skewXSelf: (obj, sx) => obj.skewXSelf(sx),
    skewYSelf: (obj, sy) => obj.skewYSelf(sy),
    invertSelf: (obj) => obj.invertSelf(),
    setMatrixValue: (obj, transform_list) => obj.setMatrixValue(transform_list)
  },

  webapi_UIEvent: {
    new: (type_, event_init_dict) => new UIEvent(type_, event_init_dict),
    get_view: (obj) => obj.view,
    get_detail: (obj) => obj.detail,
    get_which: (obj) => obj.which,
    initUIEvent: (obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => obj.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)
  },

  webapi_FocusEvent: {
    new: (type_, event_init_dict) => new FocusEvent(type_, event_init_dict),
    get_relatedTarget: (obj) => obj.relatedTarget
  },

  webapi_MouseEvent: {
    new: (type_, event_init_dict) => new MouseEvent(type_, event_init_dict),
    get_screenX: (obj) => obj.screenX,
    get_screenY: (obj) => obj.screenY,
    get_clientX: (obj) => obj.clientX,
    get_clientY: (obj) => obj.clientY,
    get_layerX: (obj) => obj.layerX,
    get_layerY: (obj) => obj.layerY,
    get_ctrlKey: (obj) => obj.ctrlKey,
    get_shiftKey: (obj) => obj.shiftKey,
    get_altKey: (obj) => obj.altKey,
    get_metaKey: (obj) => obj.metaKey,
    get_button: (obj) => obj.button,
    get_buttons: (obj) => obj.buttons,
    get_relatedTarget: (obj) => obj.relatedTarget,
    get_pageX: (obj) => obj.pageX,
    get_pageY: (obj) => obj.pageY,
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_offsetX: (obj) => obj.offsetX,
    get_offsetY: (obj) => obj.offsetY,
    getModifierState: (obj, key_arg) => obj.getModifierState(key_arg),
    initMouseEvent: (obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => obj.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)
  },

  webapi_WheelEvent: {
    new: (type_, event_init_dict) => new WheelEvent(type_, event_init_dict),
    get_deltaX: (obj) => obj.deltaX,
    get_deltaY: (obj) => obj.deltaY,
    get_deltaZ: (obj) => obj.deltaZ,
    get_deltaMode: (obj) => obj.deltaMode
  },

  webapi_InputEvent: {
    new: (type_, event_init_dict) => new InputEvent(type_, event_init_dict),
    get_data: (obj) => obj.data,
    get_isComposing: (obj) => obj.isComposing,
    get_inputType: (obj) => obj.inputType
  },

  webapi_KeyboardEvent: {
    new: (type_, event_init_dict) => new KeyboardEvent(type_, event_init_dict),
    get_key: (obj) => obj.key,
    get_code: (obj) => obj.code,
    get_location: (obj) => obj.location,
    get_ctrlKey: (obj) => obj.ctrlKey,
    get_shiftKey: (obj) => obj.shiftKey,
    get_altKey: (obj) => obj.altKey,
    get_metaKey: (obj) => obj.metaKey,
    get_repeat: (obj) => obj.repeat,
    get_isComposing: (obj) => obj.isComposing,
    get_charCode: (obj) => obj.charCode,
    get_keyCode: (obj) => obj.keyCode,
    getModifierState: (obj, key_arg) => obj.getModifierState(key_arg),
    initKeyboardEvent: (obj, type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key) => obj.initKeyboardEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, key_arg, location_arg, ctrl_key, alt_key, shift_key, meta_key)
  },

  webapi_CompositionEvent: {
    new: (type_, event_init_dict) => new CompositionEvent(type_, event_init_dict),
    get_data: (obj) => obj.data,
    initCompositionEvent: (obj, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => obj.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg)
  },

  webapi_TextEvent: {
    get_data: (obj) => obj.data,
    initTextEvent: (obj, type_, bubbles, cancelable, view, data) => obj.initTextEvent(type_, bubbles, cancelable, view, data)
  },

  webapi_MediaQueryList: {
    get_media: (obj) => obj.media,
    get_matches: (obj) => obj.matches,
    get_onchange: (obj) => obj.onchange,
    set_onchange: (obj, value) => { obj.onchange = value; },
    addListener: (obj, callback) => obj.addListener(callback),
    removeListener: (obj, callback) => obj.removeListener(callback)
  },

  webapi_MediaQueryListEvent: {
    new: (type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict),
    get_media: (obj) => obj.media,
    get_matches: (obj) => obj.matches
  },

  webapi_Screen: {
    get_availWidth: (obj) => obj.availWidth,
    get_availHeight: (obj) => obj.availHeight,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_colorDepth: (obj) => obj.colorDepth,
    get_pixelDepth: (obj) => obj.pixelDepth
  },

  webapi_CaretPosition: {
    get_offsetNode: (obj) => obj.offsetNode,
    get_offset: (obj) => obj.offset,
    getClientRect: (obj) => obj.getClientRect()
  },

  webapi_VisualViewport: {
    get_offsetLeft: (obj) => obj.offsetLeft,
    get_offsetTop: (obj) => obj.offsetTop,
    get_pageLeft: (obj) => obj.pageLeft,
    get_pageTop: (obj) => obj.pageTop,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_scale: (obj) => obj.scale,
    get_onresize: (obj) => obj.onresize,
    set_onresize: (obj, value) => { obj.onresize = value; },
    get_onscroll: (obj) => obj.onscroll,
    set_onscroll: (obj, value) => { obj.onscroll = value; },
    get_onscrollend: (obj) => obj.onscrollend,
    set_onscrollend: (obj, value) => { obj.onscrollend = value; }
  },

  webapi_TrustedHTML: {
    toJSON: (obj) => obj.toJSON()
  },

  webapi_TrustedScript: {
    toJSON: (obj) => obj.toJSON()
  },

  webapi_TrustedScriptURL: {
    toJSON: (obj) => obj.toJSON()
  },

  webapi_TrustedTypePolicyFactory: {
    get_emptyHTML: (obj) => obj.emptyHTML,
    get_emptyScript: (obj) => obj.emptyScript,
    get_defaultPolicy: (obj) => obj.defaultPolicy,
    createPolicy: (obj, policy_name, policy_options) => obj.createPolicy(policy_name, policy_options),
    isHTML: (obj, value) => obj.isHTML(value),
    isScript: (obj, value) => obj.isScript(value),
    isScriptURL: (obj, value) => obj.isScriptURL(value),
    getAttributeType: (obj, tag_name, attribute, element_ns, attr_ns) => obj.getAttributeType(tag_name, attribute, element_ns, attr_ns),
    getPropertyType: (obj, tag_name, property, element_ns) => obj.getPropertyType(tag_name, property, element_ns)
  },

  webapi_TrustedTypePolicy: {
    get_name: (obj) => obj.name,
    createHTML: (obj, input, _arguments) => obj.createHTML(input, _arguments),
    createScript: (obj, input, _arguments) => obj.createScript(input, _arguments),
    createScriptURL: (obj, input, _arguments) => obj.createScriptURL(input, _arguments)
  },

  webapi_PerformanceEntry: {
    get_id: (obj) => obj.id,
    get_name: (obj) => obj.name,
    get_entryType: (obj) => obj.entryType,
    get_startTime: (obj) => obj.startTime,
    get_duration: (obj) => obj.duration,
    get_navigationId: (obj) => obj.navigationId,
    toJSON: (obj) => obj.toJSON()
  },

  webapi_PerformanceObserver: {
    new: (callback) => new PerformanceObserver(callback),
    get_supportedEntryTypes: (obj) => obj.supportedEntryTypes,
    observe: (obj, options) => obj.observe(options),
    disconnect: (obj) => obj.disconnect(),
    takeRecords: (obj) => obj.takeRecords()
  },

  webapi_PerformanceObserverEntryList: {
    getEntries: (obj) => obj.getEntries(),
    getEntriesByType: (obj, type_) => obj.getEntriesByType(type_),
    getEntriesByName: (obj, name, type_) => obj.getEntriesByName(name, type_)
  },

  webapi_SVGBoundingBoxOptions: {
    new: (fill, stroke, markers, clipped) => {
      const obj = {};
      if (fill !== undefined) obj.fill = fill;
      if (stroke !== undefined) obj.stroke = stroke;
      if (markers !== undefined) obj.markers = markers;
      if (clipped !== undefined) obj.clipped = clipped;
      return obj;
    }
  },

  webapi_EventInit: {
    new: (bubbles, cancelable, composed) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      return obj;
    }
  },

  webapi_CustomEventInit: {
    new: (bubbles, cancelable, composed, detail) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (detail !== undefined) obj.detail = detail;
      return obj;
    }
  },

  webapi_EventListenerOptions: {
    new: (capture) => {
      const obj = {};
      if (capture !== undefined) obj.capture = capture;
      return obj;
    }
  },

  webapi_AddEventListenerOptions: {
    new: (capture, passive, once, signal) => {
      const obj = {};
      if (capture !== undefined) obj.capture = capture;
      if (passive !== undefined) obj.passive = passive;
      if (once !== undefined) obj.once = once;
      if (signal !== undefined) obj.signal = signal;
      return obj;
    }
  },

  webapi_MutationObserverInit: {
    new: (childList, attributes, characterData, subtree, attributeOldValue, characterDataOldValue, attributeFilter) => {
      const obj = {};
      if (childList !== undefined) obj.childList = childList;
      if (attributes !== undefined) obj.attributes = attributes;
      if (characterData !== undefined) obj.characterData = characterData;
      if (subtree !== undefined) obj.subtree = subtree;
      if (attributeOldValue !== undefined) obj.attributeOldValue = attributeOldValue;
      if (characterDataOldValue !== undefined) obj.characterDataOldValue = characterDataOldValue;
      if (attributeFilter !== undefined) obj.attributeFilter = attributeFilter;
      return obj;
    }
  },

  webapi_GetRootNodeOptions: {
    new: (composed) => {
      const obj = {};
      if (composed !== undefined) obj.composed = composed;
      return obj;
    }
  },

  webapi_ElementCreationOptions: {
    new: (customElementRegistry, is) => {
      const obj = {};
      if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
      if (is !== undefined) obj.is = is;
      return obj;
    }
  },

  webapi_ImportNodeOptions: {
    new: (customElementRegistry, selfOnly) => {
      const obj = {};
      if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
      if (selfOnly !== undefined) obj.selfOnly = selfOnly;
      return obj;
    }
  },

  webapi_ShadowRootInit: {
    new: (mode, delegatesFocus, slotAssignment, clonable, serializable, customElementRegistry) => {
      const obj = {};
      if (mode !== undefined) obj.mode = mode;
      if (delegatesFocus !== undefined) obj.delegatesFocus = delegatesFocus;
      if (slotAssignment !== undefined) obj.slotAssignment = slotAssignment;
      if (clonable !== undefined) obj.clonable = clonable;
      if (serializable !== undefined) obj.serializable = serializable;
      if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
      return obj;
    }
  },

  webapi_StaticRangeInit: {
    new: (startContainer, startOffset, endContainer, endOffset) => {
      const obj = {};
      if (startContainer !== undefined) obj.startContainer = startContainer;
      if (startOffset !== undefined) obj.startOffset = startOffset;
      if (endContainer !== undefined) obj.endContainer = endContainer;
      if (endOffset !== undefined) obj.endOffset = endOffset;
      return obj;
    }
  },

  webapi_ProgressEventInit: {
    new: (bubbles, cancelable, composed, lengthComputable, loaded, total) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (lengthComputable !== undefined) obj.lengthComputable = lengthComputable;
      if (loaded !== undefined) obj.loaded = loaded;
      if (total !== undefined) obj.total = total;
      return obj;
    }
  },

  webapi_ShowPopoverOptions: {
    new: (source) => {
      const obj = {};
      if (source !== undefined) obj.source = source;
      return obj;
    }
  },

  webapi_TogglePopoverOptions: {
    new: (source, force) => {
      const obj = {};
      if (source !== undefined) obj.source = source;
      if (force !== undefined) obj.force = force;
      return obj;
    }
  },

  webapi_TrackEventInit: {
    new: (bubbles, cancelable, composed, track) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (track !== undefined) obj.track = track;
      return obj;
    }
  },

  webapi_SubmitEventInit: {
    new: (bubbles, cancelable, composed, submitter) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (submitter !== undefined) obj.submitter = submitter;
      return obj;
    }
  },

  webapi_FormDataEventInit: {
    new: (bubbles, cancelable, composed, formData) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (formData !== undefined) obj.formData = formData;
      return obj;
    }
  },

  webapi_AssignedNodesOptions: {
    new: (flatten) => {
      const obj = {};
      if (flatten !== undefined) obj.flatten = flatten;
      return obj;
    }
  },

  webapi_CanvasRenderingContext2DSettings: {
    new: (alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
      const obj = {};
      if (alpha !== undefined) obj.alpha = alpha;
      if (desynchronized !== undefined) obj.desynchronized = desynchronized;
      if (colorSpace !== undefined) obj.colorSpace = colorSpace;
      if (colorType !== undefined) obj.colorType = colorType;
      if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
      return obj;
    }
  },

  webapi_ImageBitmapRenderingContextSettings: {
    new: (alpha) => {
      const obj = {};
      if (alpha !== undefined) obj.alpha = alpha;
      return obj;
    }
  },

  webapi_ImageEncodeOptions: {
    new: (type, quality) => {
      const obj = {};
      if (type !== undefined) obj.type = type;
      if (quality !== undefined) obj.quality = quality;
      return obj;
    }
  },

  webapi_ElementDefinitionOptions: {
    new: (_extends) => {
      const obj = {};
      if (_extends !== undefined) obj.extends = _extends;
      return obj;
    }
  },

  webapi_ValidityStateFlags: {
    new: (valueMissing, typeMismatch, patternMismatch, tooLong, tooShort, rangeUnderflow, rangeOverflow, stepMismatch, badInput, customError) => {
      const obj = {};
      if (valueMissing !== undefined) obj.valueMissing = valueMissing;
      if (typeMismatch !== undefined) obj.typeMismatch = typeMismatch;
      if (patternMismatch !== undefined) obj.patternMismatch = patternMismatch;
      if (tooLong !== undefined) obj.tooLong = tooLong;
      if (tooShort !== undefined) obj.tooShort = tooShort;
      if (rangeUnderflow !== undefined) obj.rangeUnderflow = rangeUnderflow;
      if (rangeOverflow !== undefined) obj.rangeOverflow = rangeOverflow;
      if (stepMismatch !== undefined) obj.stepMismatch = stepMismatch;
      if (badInput !== undefined) obj.badInput = badInput;
      if (customError !== undefined) obj.customError = customError;
      return obj;
    }
  },

  webapi_ToggleEventInit: {
    new: (bubbles, cancelable, composed, oldState, newState, source) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (oldState !== undefined) obj.oldState = oldState;
      if (newState !== undefined) obj.newState = newState;
      if (source !== undefined) obj.source = source;
      return obj;
    }
  },

  webapi_CommandEventInit: {
    new: (bubbles, cancelable, composed, source, command) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (source !== undefined) obj.source = source;
      if (command !== undefined) obj.command = command;
      return obj;
    }
  },

  webapi_FocusOptions: {
    new: (preventScroll, focusVisible) => {
      const obj = {};
      if (preventScroll !== undefined) obj.preventScroll = preventScroll;
      if (focusVisible !== undefined) obj.focusVisible = focusVisible;
      return obj;
    }
  },

  webapi_CloseWatcherOptions: {
    new: (signal) => {
      const obj = {};
      if (signal !== undefined) obj.signal = signal;
      return obj;
    }
  },

  webapi_DragEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget, dataTransfer) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
      if (shiftKey !== undefined) obj.shiftKey = shiftKey;
      if (altKey !== undefined) obj.altKey = altKey;
      if (metaKey !== undefined) obj.metaKey = metaKey;
      if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
      if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
      if (modifierFn !== undefined) obj.modifierFn = modifierFn;
      if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
      if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
      if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
      if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
      if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
      if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
      if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
      if (screenX !== undefined) obj.screenX = screenX;
      if (screenY !== undefined) obj.screenY = screenY;
      if (clientX !== undefined) obj.clientX = clientX;
      if (clientY !== undefined) obj.clientY = clientY;
      if (button !== undefined) obj.button = button;
      if (buttons !== undefined) obj.buttons = buttons;
      if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
      if (dataTransfer !== undefined) obj.dataTransfer = dataTransfer;
      return obj;
    }
  },

  webapi_WindowPostMessageOptions: {
    new: (transfer, targetOrigin) => {
      const obj = {};
      if (transfer !== undefined) obj.transfer = transfer;
      if (targetOrigin !== undefined) obj.targetOrigin = targetOrigin;
      return obj;
    }
  },

  webapi_NavigationUpdateCurrentEntryOptions: {
    new: (state) => {
      const obj = {};
      if (state !== undefined) obj.state = state;
      return obj;
    }
  },

  webapi_NavigationOptions: {
    new: (info) => {
      const obj = {};
      if (info !== undefined) obj.info = info;
      return obj;
    }
  },

  webapi_NavigationNavigateOptions: {
    new: (info, state, history) => {
      const obj = {};
      if (info !== undefined) obj.info = info;
      if (state !== undefined) obj.state = state;
      if (history !== undefined) obj.history = history;
      return obj;
    }
  },

  webapi_NavigationReloadOptions: {
    new: (info, state) => {
      const obj = {};
      if (info !== undefined) obj.info = info;
      if (state !== undefined) obj.state = state;
      return obj;
    }
  },

  webapi_NavigationResult: {
    new: (committed, finished) => {
      const obj = {};
      if (committed !== undefined) obj.committed = committed;
      if (finished !== undefined) obj.finished = finished;
      return obj;
    }
  },

  webapi_NavigateEventInit: {
    new: (bubbles, cancelable, composed, navigationType, destination, canIntercept, userInitiated, hashChange, signal, formData, downloadRequest, info, hasUAVisualTransition, sourceElement) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (navigationType !== undefined) obj.navigationType = navigationType;
      if (destination !== undefined) obj.destination = destination;
      if (canIntercept !== undefined) obj.canIntercept = canIntercept;
      if (userInitiated !== undefined) obj.userInitiated = userInitiated;
      if (hashChange !== undefined) obj.hashChange = hashChange;
      if (signal !== undefined) obj.signal = signal;
      if (formData !== undefined) obj.formData = formData;
      if (downloadRequest !== undefined) obj.downloadRequest = downloadRequest;
      if (info !== undefined) obj.info = info;
      if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
      if (sourceElement !== undefined) obj.sourceElement = sourceElement;
      return obj;
    }
  },

  webapi_NavigationInterceptOptions: {
    new: (precommitHandler, handler, focusReset, scroll) => {
      const obj = {};
      if (precommitHandler !== undefined) obj.precommitHandler = precommitHandler;
      if (handler !== undefined) obj.handler = handler;
      if (focusReset !== undefined) obj.focusReset = focusReset;
      if (scroll !== undefined) obj.scroll = scroll;
      return obj;
    }
  },

  webapi_NavigationCurrentEntryChangeEventInit: {
    new: (bubbles, cancelable, composed, navigationType, from) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (navigationType !== undefined) obj.navigationType = navigationType;
      if (from !== undefined) obj.from = from;
      return obj;
    }
  },

  webapi_PopStateEventInit: {
    new: (bubbles, cancelable, composed, state, hasUAVisualTransition) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (state !== undefined) obj.state = state;
      if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
      return obj;
    }
  },

  webapi_HashChangeEventInit: {
    new: (bubbles, cancelable, composed, oldURL, newURL) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (oldURL !== undefined) obj.oldURL = oldURL;
      if (newURL !== undefined) obj.newURL = newURL;
      return obj;
    }
  },

  webapi_PageSwapEventInit: {
    new: (bubbles, cancelable, composed, activation, viewTransition) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (activation !== undefined) obj.activation = activation;
      if (viewTransition !== undefined) obj.viewTransition = viewTransition;
      return obj;
    }
  },

  webapi_PageRevealEventInit: {
    new: (bubbles, cancelable, composed, viewTransition) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (viewTransition !== undefined) obj.viewTransition = viewTransition;
      return obj;
    }
  },

  webapi_PageTransitionEventInit: {
    new: (bubbles, cancelable, composed, persisted) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (persisted !== undefined) obj.persisted = persisted;
      return obj;
    }
  },

  webapi_ErrorEventInit: {
    new: (bubbles, cancelable, composed, message, filename, lineno, colno, error) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (message !== undefined) obj.message = message;
      if (filename !== undefined) obj.filename = filename;
      if (lineno !== undefined) obj.lineno = lineno;
      if (colno !== undefined) obj.colno = colno;
      if (error !== undefined) obj.error = error;
      return obj;
    }
  },

  webapi_PromiseRejectionEventInit: {
    new: (bubbles, cancelable, composed, promise, reason) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (promise !== undefined) obj.promise = promise;
      if (reason !== undefined) obj.reason = reason;
      return obj;
    }
  },

  webapi_GetHTMLOptions: {
    new: (serializableShadowRoots, shadowRoots) => {
      const obj = {};
      if (serializableShadowRoots !== undefined) obj.serializableShadowRoots = serializableShadowRoots;
      if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
      return obj;
    }
  },

  webapi_ImageDataSettings: {
    new: (colorSpace, pixelFormat) => {
      const obj = {};
      if (colorSpace !== undefined) obj.colorSpace = colorSpace;
      if (pixelFormat !== undefined) obj.pixelFormat = pixelFormat;
      return obj;
    }
  },

  webapi_ImageBitmapOptions: {
    new: (imageOrientation, premultiplyAlpha, colorSpaceConversion, resizeWidth, resizeHeight, resizeQuality) => {
      const obj = {};
      if (imageOrientation !== undefined) obj.imageOrientation = imageOrientation;
      if (premultiplyAlpha !== undefined) obj.premultiplyAlpha = premultiplyAlpha;
      if (colorSpaceConversion !== undefined) obj.colorSpaceConversion = colorSpaceConversion;
      if (resizeWidth !== undefined) obj.resizeWidth = resizeWidth;
      if (resizeHeight !== undefined) obj.resizeHeight = resizeHeight;
      if (resizeQuality !== undefined) obj.resizeQuality = resizeQuality;
      return obj;
    }
  },

  webapi_MessageEventInit: {
    new: (bubbles, cancelable, composed, data, origin, lastEventId, source, ports) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (data !== undefined) obj.data = data;
      if (origin !== undefined) obj.origin = origin;
      if (lastEventId !== undefined) obj.lastEventId = lastEventId;
      if (source !== undefined) obj.source = source;
      if (ports !== undefined) obj.ports = ports;
      return obj;
    }
  },

  webapi_EventSourceInit: {
    new: (withCredentials) => {
      const obj = {};
      if (withCredentials !== undefined) obj.withCredentials = withCredentials;
      return obj;
    }
  },

  webapi_StructuredSerializeOptions: {
    new: (transfer) => {
      const obj = {};
      if (transfer !== undefined) obj.transfer = transfer;
      return obj;
    }
  },

  webapi_WorkerOptions: {
    new: (name, type, credentials) => {
      const obj = {};
      if (name !== undefined) obj.name = name;
      if (type !== undefined) obj.type = type;
      if (credentials !== undefined) obj.credentials = credentials;
      return obj;
    }
  },

  webapi_WorkletOptions: {
    new: (credentials) => {
      const obj = {};
      if (credentials !== undefined) obj.credentials = credentials;
      return obj;
    }
  },

  webapi_StorageEventInit: {
    new: (bubbles, cancelable, composed, key, oldValue, newValue, url, storageArea) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (key !== undefined) obj.key = key;
      if (oldValue !== undefined) obj.oldValue = oldValue;
      if (newValue !== undefined) obj.newValue = newValue;
      if (url !== undefined) obj.url = url;
      if (storageArea !== undefined) obj.storageArea = storageArea;
      return obj;
    }
  },

  webapi_CSSStyleSheetInit: {
    new: (baseURL, media, disabled) => {
      const obj = {};
      if (baseURL !== undefined) obj.baseURL = baseURL;
      if (media !== undefined) obj.media = media;
      if (disabled !== undefined) obj.disabled = disabled;
      return obj;
    }
  },

  webapi_RequestInit: {
    new: (method, headers, body, referrer, referrerPolicy, mode, credentials, cache, redirect, integrity, keepalive, signal, duplex, priority, window) => {
      const obj = {};
      if (method !== undefined) obj.method = method;
      if (headers !== undefined) obj.headers = headers;
      if (body !== undefined) obj.body = body;
      if (referrer !== undefined) obj.referrer = referrer;
      if (referrerPolicy !== undefined) obj.referrerPolicy = referrerPolicy;
      if (mode !== undefined) obj.mode = mode;
      if (credentials !== undefined) obj.credentials = credentials;
      if (cache !== undefined) obj.cache = cache;
      if (redirect !== undefined) obj.redirect = redirect;
      if (integrity !== undefined) obj.integrity = integrity;
      if (keepalive !== undefined) obj.keepalive = keepalive;
      if (signal !== undefined) obj.signal = signal;
      if (duplex !== undefined) obj.duplex = duplex;
      if (priority !== undefined) obj.priority = priority;
      if (window !== undefined) obj.window = window;
      return obj;
    }
  },

  webapi_ResponseInit: {
    new: (status, statusText, headers) => {
      const obj = {};
      if (status !== undefined) obj.status = status;
      if (statusText !== undefined) obj.statusText = statusText;
      if (headers !== undefined) obj.headers = headers;
      return obj;
    }
  },

  webapi_DeferredRequestInit: {
    new: (method, headers, body, referrer, referrerPolicy, mode, credentials, cache, redirect, integrity, keepalive, signal, duplex, priority, window, activateAfter) => {
      const obj = {};
      if (method !== undefined) obj.method = method;
      if (headers !== undefined) obj.headers = headers;
      if (body !== undefined) obj.body = body;
      if (referrer !== undefined) obj.referrer = referrer;
      if (referrerPolicy !== undefined) obj.referrerPolicy = referrerPolicy;
      if (mode !== undefined) obj.mode = mode;
      if (credentials !== undefined) obj.credentials = credentials;
      if (cache !== undefined) obj.cache = cache;
      if (redirect !== undefined) obj.redirect = redirect;
      if (integrity !== undefined) obj.integrity = integrity;
      if (keepalive !== undefined) obj.keepalive = keepalive;
      if (signal !== undefined) obj.signal = signal;
      if (duplex !== undefined) obj.duplex = duplex;
      if (priority !== undefined) obj.priority = priority;
      if (window !== undefined) obj.window = window;
      if (activateAfter !== undefined) obj.activateAfter = activateAfter;
      return obj;
    }
  },

  webapi_QuotaExceededErrorOptions: {
    new: (quota, requested) => {
      const obj = {};
      if (quota !== undefined) obj.quota = quota;
      if (requested !== undefined) obj.requested = requested;
      return obj;
    }
  },

  webapi_BlobPropertyBag: {
    new: (type, endings) => {
      const obj = {};
      if (type !== undefined) obj.type = type;
      if (endings !== undefined) obj.endings = endings;
      return obj;
    }
  },

  webapi_FilePropertyBag: {
    new: (type, endings, lastModified) => {
      const obj = {};
      if (type !== undefined) obj.type = type;
      if (endings !== undefined) obj.endings = endings;
      if (lastModified !== undefined) obj.lastModified = lastModified;
      return obj;
    }
  },

  webapi_DOMPointInit: {
    new: (x, y, z, w) => {
      const obj = {};
      if (x !== undefined) obj.x = x;
      if (y !== undefined) obj.y = y;
      if (z !== undefined) obj.z = z;
      if (w !== undefined) obj.w = w;
      return obj;
    }
  },

  webapi_DOMRectInit: {
    new: (x, y, width, height) => {
      const obj = {};
      if (x !== undefined) obj.x = x;
      if (y !== undefined) obj.y = y;
      if (width !== undefined) obj.width = width;
      if (height !== undefined) obj.height = height;
      return obj;
    }
  },

  webapi_DOMQuadInit: {
    new: (p1, p2, p3, p4) => {
      const obj = {};
      if (p1 !== undefined) obj.p1 = p1;
      if (p2 !== undefined) obj.p2 = p2;
      if (p3 !== undefined) obj.p3 = p3;
      if (p4 !== undefined) obj.p4 = p4;
      return obj;
    }
  },

  webapi_DOMMatrix2DInit: {
    new: (a, b, c, d, e, f, m11, m12, m21, m22, m41, m42) => {
      const obj = {};
      if (a !== undefined) obj.a = a;
      if (b !== undefined) obj.b = b;
      if (c !== undefined) obj.c = c;
      if (d !== undefined) obj.d = d;
      if (e !== undefined) obj.e = e;
      if (f !== undefined) obj.f = f;
      if (m11 !== undefined) obj.m11 = m11;
      if (m12 !== undefined) obj.m12 = m12;
      if (m21 !== undefined) obj.m21 = m21;
      if (m22 !== undefined) obj.m22 = m22;
      if (m41 !== undefined) obj.m41 = m41;
      if (m42 !== undefined) obj.m42 = m42;
      return obj;
    }
  },

  webapi_DOMMatrixInit: {
    new: (a, b, c, d, e, f, m11, m12, m21, m22, m41, m42, m13, m14, m23, m24, m31, m32, m33, m34, m43, m44, is2D) => {
      const obj = {};
      if (a !== undefined) obj.a = a;
      if (b !== undefined) obj.b = b;
      if (c !== undefined) obj.c = c;
      if (d !== undefined) obj.d = d;
      if (e !== undefined) obj.e = e;
      if (f !== undefined) obj.f = f;
      if (m11 !== undefined) obj.m11 = m11;
      if (m12 !== undefined) obj.m12 = m12;
      if (m21 !== undefined) obj.m21 = m21;
      if (m22 !== undefined) obj.m22 = m22;
      if (m41 !== undefined) obj.m41 = m41;
      if (m42 !== undefined) obj.m42 = m42;
      if (m13 !== undefined) obj.m13 = m13;
      if (m14 !== undefined) obj.m14 = m14;
      if (m23 !== undefined) obj.m23 = m23;
      if (m24 !== undefined) obj.m24 = m24;
      if (m31 !== undefined) obj.m31 = m31;
      if (m32 !== undefined) obj.m32 = m32;
      if (m33 !== undefined) obj.m33 = m33;
      if (m34 !== undefined) obj.m34 = m34;
      if (m43 !== undefined) obj.m43 = m43;
      if (m44 !== undefined) obj.m44 = m44;
      if (is2D !== undefined) obj.is2D = is2D;
      return obj;
    }
  },

  webapi_UIEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      return obj;
    }
  },

  webapi_FocusEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, relatedTarget) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
      return obj;
    }
  },

  webapi_MouseEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
      if (shiftKey !== undefined) obj.shiftKey = shiftKey;
      if (altKey !== undefined) obj.altKey = altKey;
      if (metaKey !== undefined) obj.metaKey = metaKey;
      if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
      if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
      if (modifierFn !== undefined) obj.modifierFn = modifierFn;
      if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
      if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
      if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
      if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
      if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
      if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
      if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
      if (screenX !== undefined) obj.screenX = screenX;
      if (screenY !== undefined) obj.screenY = screenY;
      if (clientX !== undefined) obj.clientX = clientX;
      if (clientY !== undefined) obj.clientY = clientY;
      if (button !== undefined) obj.button = button;
      if (buttons !== undefined) obj.buttons = buttons;
      if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
      return obj;
    }
  },

  webapi_EventModifierInit: {
    new: (bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
      if (shiftKey !== undefined) obj.shiftKey = shiftKey;
      if (altKey !== undefined) obj.altKey = altKey;
      if (metaKey !== undefined) obj.metaKey = metaKey;
      if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
      if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
      if (modifierFn !== undefined) obj.modifierFn = modifierFn;
      if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
      if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
      if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
      if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
      if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
      if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
      if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
      return obj;
    }
  },

  webapi_WheelEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, screenX, screenY, clientX, clientY, button, buttons, relatedTarget, deltaX, deltaY, deltaZ, deltaMode) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
      if (shiftKey !== undefined) obj.shiftKey = shiftKey;
      if (altKey !== undefined) obj.altKey = altKey;
      if (metaKey !== undefined) obj.metaKey = metaKey;
      if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
      if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
      if (modifierFn !== undefined) obj.modifierFn = modifierFn;
      if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
      if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
      if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
      if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
      if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
      if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
      if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
      if (screenX !== undefined) obj.screenX = screenX;
      if (screenY !== undefined) obj.screenY = screenY;
      if (clientX !== undefined) obj.clientX = clientX;
      if (clientY !== undefined) obj.clientY = clientY;
      if (button !== undefined) obj.button = button;
      if (buttons !== undefined) obj.buttons = buttons;
      if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
      if (deltaX !== undefined) obj.deltaX = deltaX;
      if (deltaY !== undefined) obj.deltaY = deltaY;
      if (deltaZ !== undefined) obj.deltaZ = deltaZ;
      if (deltaMode !== undefined) obj.deltaMode = deltaMode;
      return obj;
    }
  },

  webapi_InputEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, data, isComposing, inputType) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (data !== undefined) obj.data = data;
      if (isComposing !== undefined) obj.isComposing = isComposing;
      if (inputType !== undefined) obj.inputType = inputType;
      return obj;
    }
  },

  webapi_KeyboardEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock, key, code, location, repeat, isComposing, charCode, keyCode) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (ctrlKey !== undefined) obj.ctrlKey = ctrlKey;
      if (shiftKey !== undefined) obj.shiftKey = shiftKey;
      if (altKey !== undefined) obj.altKey = altKey;
      if (metaKey !== undefined) obj.metaKey = metaKey;
      if (modifierAltGraph !== undefined) obj.modifierAltGraph = modifierAltGraph;
      if (modifierCapsLock !== undefined) obj.modifierCapsLock = modifierCapsLock;
      if (modifierFn !== undefined) obj.modifierFn = modifierFn;
      if (modifierFnLock !== undefined) obj.modifierFnLock = modifierFnLock;
      if (modifierHyper !== undefined) obj.modifierHyper = modifierHyper;
      if (modifierNumLock !== undefined) obj.modifierNumLock = modifierNumLock;
      if (modifierScrollLock !== undefined) obj.modifierScrollLock = modifierScrollLock;
      if (modifierSuper !== undefined) obj.modifierSuper = modifierSuper;
      if (modifierSymbol !== undefined) obj.modifierSymbol = modifierSymbol;
      if (modifierSymbolLock !== undefined) obj.modifierSymbolLock = modifierSymbolLock;
      if (key !== undefined) obj.key = key;
      if (code !== undefined) obj.code = code;
      if (location !== undefined) obj.location = location;
      if (repeat !== undefined) obj.repeat = repeat;
      if (isComposing !== undefined) obj.isComposing = isComposing;
      if (charCode !== undefined) obj.charCode = charCode;
      if (keyCode !== undefined) obj.keyCode = keyCode;
      return obj;
    }
  },

  webapi_CompositionEventInit: {
    new: (bubbles, cancelable, composed, view, detail, which, data) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      if (data !== undefined) obj.data = data;
      return obj;
    }
  },

  webapi_ScrollOptions: {
    new: (behavior) => {
      const obj = {};
      if (behavior !== undefined) obj.behavior = behavior;
      return obj;
    }
  },

  webapi_ScrollToOptions: {
    new: (behavior, left, top) => {
      const obj = {};
      if (behavior !== undefined) obj.behavior = behavior;
      if (left !== undefined) obj.left = left;
      if (top !== undefined) obj.top = top;
      return obj;
    }
  },

  webapi_MediaQueryListEventInit: {
    new: (bubbles, cancelable, composed, media, matches) => {
      const obj = {};
      if (bubbles !== undefined) obj.bubbles = bubbles;
      if (cancelable !== undefined) obj.cancelable = cancelable;
      if (composed !== undefined) obj.composed = composed;
      if (media !== undefined) obj.media = media;
      if (matches !== undefined) obj.matches = matches;
      return obj;
    }
  },

  webapi_CaretPositionFromPointOptions: {
    new: (shadowRoots) => {
      const obj = {};
      if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
      return obj;
    }
  },

  webapi_ScrollIntoViewOptions: {
    new: (behavior, block, inline, container) => {
      const obj = {};
      if (behavior !== undefined) obj.behavior = behavior;
      if (block !== undefined) obj.block = block;
      if (inline !== undefined) obj.inline = inline;
      if (container !== undefined) obj.container = container;
      return obj;
    }
  },

  webapi_CheckVisibilityOptions: {
    new: (checkOpacity, checkVisibilityCSS, contentVisibilityAuto, opacityProperty, visibilityProperty) => {
      const obj = {};
      if (checkOpacity !== undefined) obj.checkOpacity = checkOpacity;
      if (checkVisibilityCSS !== undefined) obj.checkVisibilityCSS = checkVisibilityCSS;
      if (contentVisibilityAuto !== undefined) obj.contentVisibilityAuto = contentVisibilityAuto;
      if (opacityProperty !== undefined) obj.opacityProperty = opacityProperty;
      if (visibilityProperty !== undefined) obj.visibilityProperty = visibilityProperty;
      return obj;
    }
  },

  webapi_BoxQuadOptions: {
    new: (box, relativeTo) => {
      const obj = {};
      if (box !== undefined) obj.box = box;
      if (relativeTo !== undefined) obj.relativeTo = relativeTo;
      return obj;
    }
  },

  webapi_ConvertCoordinateOptions: {
    new: (fromBox, toBox) => {
      const obj = {};
      if (fromBox !== undefined) obj.fromBox = fromBox;
      if (toBox !== undefined) obj.toBox = toBox;
      return obj;
    }
  },

  webapi_TrustedTypePolicyOptions: {
    new: (createHTML, createScript, createScriptURL) => {
      const obj = {};
      if (createHTML !== undefined) obj.createHTML = createHTML;
      if (createScript !== undefined) obj.createScript = createScript;
      if (createScriptURL !== undefined) obj.createScriptURL = createScriptURL;
      return obj;
    }
  },

  webapi_PerformanceObserverCallbackOptions: {
    new: (droppedEntriesCount) => {
      const obj = {};
      if (droppedEntriesCount !== undefined) obj.droppedEntriesCount = droppedEntriesCount;
      return obj;
    }
  },

  webapi_PerformanceObserverInit: {
    new: (entryTypes, type, buffered) => {
      const obj = {};
      if (entryTypes !== undefined) obj.entryTypes = entryTypes;
      if (type !== undefined) obj.type = type;
      if (buffered !== undefined) obj.buffered = buffered;
      return obj;
    }
  },

  webapi_MutationCallback: {
    new: (f) => f
  },

  webapi_BlobCallback: {
    new: (f) => f
  },

  webapi_CustomElementConstructor: {
    new: (f) => f
  },

  webapi_FunctionStringCallback: {
    new: (f) => f
  },

  webapi_NavigationInterceptHandler: {
    new: (f) => f
  },

  webapi_NavigationPrecommitHandler: {
    new: (f) => f
  },

  webapi_EventHandlerNonNull: {
    new: (f) => f
  },

  webapi_OnErrorEventHandlerNonNull: {
    new: (f) => f
  },

  webapi_OnBeforeUnloadEventHandlerNonNull: {
    new: (f) => f
  },

  webapi_FrameRequestCallback: {
    new: (f) => f
  },

  webapi_Function: {
    new: (f) => f
  },

  webapi_VoidFunction: {
    new: (f) => f
  },

  webapi_CreateHTMLCallback: {
    new: (f) => f
  },

  webapi_CreateScriptCallback: {
    new: (f) => f
  },

  webapi_CreateScriptURLCallback: {
    new: (f) => f
  },

  webapi_PerformanceObserverCallback: {
    new: (f) => f
  },

  webapi_EventListener: {
    new: (f) => f
  },

  webapi_NodeFilter: {
    new: (f) => f
  },

  webapi_XPathNSResolver: {
    new: (f) => f
  }
};
