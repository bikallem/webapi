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

  webapi_Globals: {
    document: () => document,
    window: () => window,
    console: () => console,
    navigator: () => navigator
  },

  webapi_Console: {
    log: (console, ...args) => console.log(...args),
    warn: (console, ...args) => console.warn(...args),
    error: (console, ...args) => console.error(...args),
    info: (console, ...args) => console.info(...args),
    debug: (console, ...args) => console.debug(...args)
  },

  webapi_Blob: {
    new: (blobParts, options) => new Blob(blobParts, options),
    slice: (obj, start, end, contentType) => obj.slice(start, end, contentType),
    stream: (obj) => obj.stream(),
    text: (obj) => obj.text(),
    arrayBuffer: (obj) => obj.arrayBuffer(),
    bytes: (obj) => obj.bytes(),
    get_size: (obj) => obj.size,
    get_type: (obj) => obj.type
  },

  webapi_Document: {
    new: () => new Document(),
    elementFromPoint: (obj, x, y) => obj.elementFromPoint(x, y),
    elementsFromPoint: (obj, x, y) => obj.elementsFromPoint(x, y),
    caretPositionFromPoint: (obj, x, y, options) => obj.caretPositionFromPoint(x, y, options),
    getElementsByTagName: (obj, qualifiedName) => obj.getElementsByTagName(qualifiedName),
    getElementsByTagNameNS: (obj, namespace, localName) => obj.getElementsByTagNameNS(namespace, localName),
    getElementsByClassName: (obj, classNames) => obj.getElementsByClassName(classNames),
    createElement: (obj, localName, options) => obj.createElement(localName, options),
    createElementNS: (obj, namespace, qualifiedName, options) => obj.createElementNS(namespace, qualifiedName, options),
    createDocumentFragment: (obj) => obj.createDocumentFragment(),
    createTextNode: (obj, data) => obj.createTextNode(data),
    createCDATASection: (obj, data) => obj.createCDATASection(data),
    createComment: (obj, data) => obj.createComment(data),
    createProcessingInstruction: (obj, target, data) => obj.createProcessingInstruction(target, data),
    importNode: (obj, node, options) => obj.importNode(node, options),
    adoptNode: (obj, node) => obj.adoptNode(node),
    createAttribute: (obj, localName) => obj.createAttribute(localName),
    createAttributeNS: (obj, namespace, qualifiedName) => obj.createAttributeNS(namespace, qualifiedName),
    createEvent: (obj, interface_) => obj.createEvent(interface_),
    createRange: (obj) => obj.createRange(),
    createNodeIterator: (obj, root, whatToShow, filter) => obj.createNodeIterator(root, whatToShow, filter),
    createTreeWalker: (obj, root, whatToShow, filter) => obj.createTreeWalker(root, whatToShow, filter),
    parseHTMLUnsafe: (html) => parseHTMLUnsafe(html),
    getElementsByName: (obj, elementName) => obj.getElementsByName(elementName),
    open: (obj, unused1, unused2) => obj.open(unused1, unused2),
    open: (obj, url, name, features) => obj.open(url, name, features),
    close: (obj) => obj.close(),
    write: (obj, text) => obj.write(text),
    writeln: (obj, text) => obj.writeln(text),
    hasFocus: (obj) => obj.hasFocus(),
    execCommand: (obj, commandId, showUI, value) => obj.execCommand(commandId, showUI, value),
    queryCommandEnabled: (obj, commandId) => obj.queryCommandEnabled(commandId),
    queryCommandIndeterm: (obj, commandId) => obj.queryCommandIndeterm(commandId),
    queryCommandState: (obj, commandId) => obj.queryCommandState(commandId),
    queryCommandSupported: (obj, commandId) => obj.queryCommandSupported(commandId),
    queryCommandValue: (obj, commandId) => obj.queryCommandValue(commandId),
    clear: (obj) => obj.clear(),
    captureEvents: (obj) => obj.captureEvents(),
    releaseEvents: (obj) => obj.releaseEvents(),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options),
    getElementById: (obj, elementId) => obj.getElementById(elementId),
    prepend: (obj, nodes) => obj.prepend(nodes),
    append: (obj, nodes) => obj.append(nodes),
    replaceChildren: (obj, nodes) => obj.replaceChildren(nodes),
    moveBefore: (obj, node, child) => obj.moveBefore(node, child),
    querySelector: (obj, selectors) => obj.querySelector(selectors),
    querySelectorAll: (obj, selectors) => obj.querySelectorAll(selectors),
    createExpression: (obj, expression, resolver) => obj.createExpression(expression, resolver),
    createNSResolver: (obj, nodeResolver) => obj.createNSResolver(nodeResolver),
    evaluate: (obj, expression, contextNode, resolver, type, result) => obj.evaluate(expression, contextNode, resolver, type, result),
    get_rootElement: (obj) => obj.rootElement,
    get_scrollingElement: (obj) => obj.scrollingElement,
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
    get_styleSheets: (obj) => obj.styleSheets,
    get_adoptedStyleSheets: (obj) => obj.adoptedStyleSheets,
    set_adoptedStyleSheets: (obj, value) => { obj.adoptedStyleSheets = value; },
    get_customElementRegistry: (obj) => obj.customElementRegistry,
    get_activeElement: (obj) => obj.activeElement,
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
    set_onwheel: (obj, value) => { obj.onwheel = value; }
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

  webapi_Window: {
    matchMedia: (obj, query) => obj.matchMedia(query),
    moveTo: (obj, x, y) => obj.moveTo(x, y),
    moveBy: (obj, x, y) => obj.moveBy(x, y),
    resizeTo: (obj, width, height) => obj.resizeTo(width, height),
    resizeBy: (obj, x, y) => obj.resizeBy(x, y),
    scroll: (obj, options) => obj.scroll(options),
    scroll: (obj, x, y) => obj.scroll(x, y),
    scrollTo: (obj, options) => obj.scrollTo(options),
    scrollTo: (obj, x, y) => obj.scrollTo(x, y),
    scrollBy: (obj, options) => obj.scrollBy(options),
    scrollBy: (obj, x, y) => obj.scrollBy(x, y),
    getComputedStyle: (obj, elt, pseudoElt) => obj.getComputedStyle(elt, pseudoElt),
    close: (obj) => obj.close(),
    stop: (obj) => obj.stop(),
    focus: (obj) => obj.focus(),
    blur: (obj) => obj.blur(),
    open: (obj, url, target, features) => obj.open(url, target, features),
    alert: (obj) => obj.alert(),
    alert: (obj, message) => obj.alert(message),
    confirm: (obj, message) => obj.confirm(message),
    prompt: (obj, message, default_) => obj.prompt(message, default_),
    print: (obj) => obj.print(),
    postMessage: (obj, message, targetOrigin, transfer) => obj.postMessage(message, targetOrigin, transfer),
    postMessage: (obj, message, options) => obj.postMessage(message, options),
    captureEvents: (obj) => obj.captureEvents(),
    releaseEvents: (obj) => obj.releaseEvents(),
    reportError: (obj, e) => obj.reportError(e),
    btoa: (obj, data) => obj.btoa(data),
    atob: (obj, data) => obj.atob(data),
    setTimeout: (obj, handler, timeout, arguments_) => obj.setTimeout(handler, timeout, arguments_),
    clearTimeout: (obj, id) => obj.clearTimeout(id),
    setInterval: (obj, handler, timeout, arguments_) => obj.setInterval(handler, timeout, arguments_),
    clearInterval: (obj, id) => obj.clearInterval(id),
    queueMicrotask: (obj, callback) => obj.queueMicrotask(callback),
    createImageBitmap: (obj, image, options) => obj.createImageBitmap(image, options),
    createImageBitmap: (obj, image, sx, sy, sw, sh, options) => obj.createImageBitmap(image, sx, sy, sw, sh, options),
    structuredClone: (obj, value, options) => obj.structuredClone(value, options),
    requestAnimationFrame: (obj, callback) => obj.requestAnimationFrame(callback),
    cancelAnimationFrame: (obj, handle) => obj.cancelAnimationFrame(handle),
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
    get_sessionStorage: (obj) => obj.sessionStorage,
    get_localStorage: (obj) => obj.localStorage
  },

  webapi_Element: {
    getClientRects: (obj) => obj.getClientRects(),
    getBoundingClientRect: (obj) => obj.getBoundingClientRect(),
    checkVisibility: (obj, options) => obj.checkVisibility(options),
    scrollIntoView: (obj, arg) => obj.scrollIntoView(arg),
    scroll: (obj, options) => obj.scroll(options),
    scroll: (obj, x, y) => obj.scroll(x, y),
    scrollTo: (obj, options) => obj.scrollTo(options),
    scrollTo: (obj, x, y) => obj.scrollTo(x, y),
    scrollBy: (obj, options) => obj.scrollBy(options),
    scrollBy: (obj, x, y) => obj.scrollBy(x, y),
    hasAttributes: (obj) => obj.hasAttributes(),
    getAttributeNames: (obj) => obj.getAttributeNames(),
    getAttribute: (obj, qualifiedName) => obj.getAttribute(qualifiedName),
    getAttributeNS: (obj, namespace, localName) => obj.getAttributeNS(namespace, localName),
    setAttribute: (obj, qualifiedName, value) => obj.setAttribute(qualifiedName, value),
    setAttributeNS: (obj, namespace, qualifiedName, value) => obj.setAttributeNS(namespace, qualifiedName, value),
    removeAttribute: (obj, qualifiedName) => obj.removeAttribute(qualifiedName),
    removeAttributeNS: (obj, namespace, localName) => obj.removeAttributeNS(namespace, localName),
    toggleAttribute: (obj, qualifiedName, force) => obj.toggleAttribute(qualifiedName, force),
    hasAttribute: (obj, qualifiedName) => obj.hasAttribute(qualifiedName),
    hasAttributeNS: (obj, namespace, localName) => obj.hasAttributeNS(namespace, localName),
    getAttributeNode: (obj, qualifiedName) => obj.getAttributeNode(qualifiedName),
    getAttributeNodeNS: (obj, namespace, localName) => obj.getAttributeNodeNS(namespace, localName),
    setAttributeNode: (obj, attr) => obj.setAttributeNode(attr),
    setAttributeNodeNS: (obj, attr) => obj.setAttributeNodeNS(attr),
    removeAttributeNode: (obj, attr) => obj.removeAttributeNode(attr),
    attachShadow: (obj, init) => obj.attachShadow(init),
    closest: (obj, selectors) => obj.closest(selectors),
    matches: (obj, selectors) => obj.matches(selectors),
    webkitMatchesSelector: (obj, selectors) => obj.webkitMatchesSelector(selectors),
    getElementsByTagName: (obj, qualifiedName) => obj.getElementsByTagName(qualifiedName),
    getElementsByTagNameNS: (obj, namespace, localName) => obj.getElementsByTagNameNS(namespace, localName),
    getElementsByClassName: (obj, classNames) => obj.getElementsByClassName(classNames),
    insertAdjacentElement: (obj, where, element) => obj.insertAdjacentElement(where, element),
    insertAdjacentText: (obj, where, data) => obj.insertAdjacentText(where, data),
    setHTMLUnsafe: (obj, html) => obj.setHTMLUnsafe(html),
    getHTML: (obj, options) => obj.getHTML(options),
    insertAdjacentHTML: (obj, position, string) => obj.insertAdjacentHTML(position, string),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options),
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
    get_children: (obj) => obj.children,
    get_firstElementChild: (obj) => obj.firstElementChild,
    get_lastElementChild: (obj) => obj.lastElementChild,
    get_childElementCount: (obj) => obj.childElementCount,
    get_previousElementSibling: (obj) => obj.previousElementSibling,
    get_nextElementSibling: (obj) => obj.nextElementSibling,
    get_assignedSlot: (obj) => obj.assignedSlot
  },

  webapi_HTMLElement: {
    new: () => new HTMLElement(),
    click: (obj) => obj.click(),
    attachInternals: (obj) => obj.attachInternals(),
    showPopover: (obj, options) => obj.showPopover(options),
    hidePopover: (obj) => obj.hidePopover(),
    togglePopover: (obj, options) => obj.togglePopover(options),
    focus: (obj, options) => obj.focus(options),
    blur: (obj) => obj.blur(),
    get_scrollParent: (obj) => obj.scrollParent,
    get_offsetParent: (obj) => obj.offsetParent,
    get_offsetTop: (obj) => obj.offsetTop,
    get_offsetLeft: (obj) => obj.offsetLeft,
    get_offsetWidth: (obj) => obj.offsetWidth,
    get_offsetHeight: (obj) => obj.offsetHeight,
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
    get_style: (obj) => obj.style,
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
    set_tabIndex: (obj, value) => { obj.tabIndex = value; }
  },

  webapi_HTMLImageElement: {
    new: () => new HTMLImageElement(),
    decode: (obj) => obj.decode(),
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
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
    set_border: (obj, value) => { obj.border = value; }
  },

  webapi_Range: {
    new: () => new Range(),
    getClientRects: (obj) => obj.getClientRects(),
    getBoundingClientRect: (obj) => obj.getBoundingClientRect(),
    setStart: (obj, node, offset) => obj.setStart(node, offset),
    setEnd: (obj, node, offset) => obj.setEnd(node, offset),
    setStartBefore: (obj, node) => obj.setStartBefore(node),
    setStartAfter: (obj, node) => obj.setStartAfter(node),
    setEndBefore: (obj, node) => obj.setEndBefore(node),
    setEndAfter: (obj, node) => obj.setEndAfter(node),
    collapse: (obj, toStart) => obj.collapse(toStart),
    selectNode: (obj, node) => obj.selectNode(node),
    selectNodeContents: (obj, node) => obj.selectNodeContents(node),
    compareBoundaryPoints: (obj, how, sourceRange) => obj.compareBoundaryPoints(how, sourceRange),
    deleteContents: (obj) => obj.deleteContents(),
    extractContents: (obj) => obj.extractContents(),
    cloneContents: (obj) => obj.cloneContents(),
    insertNode: (obj, node) => obj.insertNode(node),
    surroundContents: (obj, newParent) => obj.surroundContents(newParent),
    cloneRange: (obj) => obj.cloneRange(),
    detach: (obj) => obj.detach(),
    isPointInRange: (obj, node, offset) => obj.isPointInRange(node, offset),
    comparePoint: (obj, node, offset) => obj.comparePoint(node, offset),
    intersectsNode: (obj, node) => obj.intersectsNode(node),
    createContextualFragment: (obj, string) => obj.createContextualFragment(string),
    get_commonAncestorContainer: (obj) => obj.commonAncestorContainer
  },

  webapi_MouseEvent: {
    new: (type, eventInitDict) => new MouseEvent(type, eventInitDict),
    getModifierState: (obj, keyArg) => obj.getModifierState(keyArg),
    initMouseEvent: (obj, typeArg, bubblesArg, cancelableArg, viewArg, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, relatedTargetArg) => obj.initMouseEvent(typeArg, bubblesArg, cancelableArg, viewArg, detailArg, screenXArg, screenYArg, clientXArg, clientYArg, ctrlKeyArg, altKeyArg, shiftKeyArg, metaKeyArg, buttonArg, relatedTargetArg),
    get_pageX: (obj) => obj.pageX,
    get_pageY: (obj) => obj.pageY,
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_offsetX: (obj) => obj.offsetX,
    get_offsetY: (obj) => obj.offsetY,
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
    get_relatedTarget: (obj) => obj.relatedTarget
  },

  webapi_Event: {
    new: (type, eventInitDict) => new Event(type, eventInitDict),
    composedPath: (obj) => obj.composedPath(),
    stopPropagation: (obj) => obj.stopPropagation(),
    stopImmediatePropagation: (obj) => obj.stopImmediatePropagation(),
    preventDefault: (obj) => obj.preventDefault(),
    initEvent: (obj, type, bubbles, cancelable) => obj.initEvent(type, bubbles, cancelable),
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
    get_timeStamp: (obj) => obj.timeStamp
  },

  webapi_CustomEvent: {
    new: (type, eventInitDict) => new CustomEvent(type, eventInitDict),
    initCustomEvent: (obj, type, bubbles, cancelable, detail) => obj.initCustomEvent(type, bubbles, cancelable, detail),
    get_detail: (obj) => obj.detail
  },

  webapi_EventTarget: {
    new: () => new EventTarget(),
    addEventListener: (obj, type, callback, options) => obj.addEventListener(type, callback, options),
    removeEventListener: (obj, type, callback, options) => obj.removeEventListener(type, callback, options),
    dispatchEvent: (obj, event) => obj.dispatchEvent(event)
  },

  webapi_AbortController: {
    new: () => new AbortController(),
    abort: (obj, reason) => obj.abort(reason),
    get_signal: (obj) => obj.signal
  },

  webapi_AbortSignal: {
    abort: (reason) => abort(reason),
    timeout: (milliseconds) => timeout(milliseconds),
    any: (signals) => any(signals),
    throwIfAborted: (obj) => obj.throwIfAborted(),
    get_aborted: (obj) => obj.aborted,
    get_reason: (obj) => obj.reason,
    get_onabort: (obj) => obj.onabort,
    set_onabort: (obj, value) => { obj.onabort = value; }
  },

  webapi_NodeList: {
    item: (obj, index) => obj.item(index),
    get_length: (obj) => obj.length
  },

  webapi_HTMLCollection: {
    item: (obj, index) => obj.item(index),
    namedItem: (obj, name) => obj.namedItem(name),
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
    getRootNode: (obj, options) => obj.getRootNode(options),
    hasChildNodes: (obj) => obj.hasChildNodes(),
    normalize: (obj) => obj.normalize(),
    cloneNode: (obj, subtree) => obj.cloneNode(subtree),
    isEqualNode: (obj, otherNode) => obj.isEqualNode(otherNode),
    isSameNode: (obj, otherNode) => obj.isSameNode(otherNode),
    compareDocumentPosition: (obj, other) => obj.compareDocumentPosition(other),
    contains: (obj, other) => obj.contains(other),
    lookupPrefix: (obj, namespace) => obj.lookupPrefix(namespace),
    lookupNamespaceURI: (obj, prefix) => obj.lookupNamespaceURI(prefix),
    isDefaultNamespace: (obj, namespace) => obj.isDefaultNamespace(namespace),
    insertBefore: (obj, node, child) => obj.insertBefore(node, child),
    appendChild: (obj, node) => obj.appendChild(node),
    replaceChild: (obj, node, child) => obj.replaceChild(node, child),
    removeChild: (obj, child) => obj.removeChild(child),
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
    set_textContent: (obj, value) => { obj.textContent = value; }
  },

  webapi_DocumentType: {
    before: (obj, nodes) => obj.before(nodes),
    after: (obj, nodes) => obj.after(nodes),
    replaceWith: (obj, nodes) => obj.replaceWith(nodes),
    remove: (obj) => obj.remove(),
    get_name: (obj) => obj.name,
    get_publicId: (obj) => obj.publicId,
    get_systemId: (obj) => obj.systemId
  },

  webapi_DocumentFragment: {
    new: () => new DocumentFragment(),
    getElementById: (obj, elementId) => obj.getElementById(elementId),
    prepend: (obj, nodes) => obj.prepend(nodes),
    append: (obj, nodes) => obj.append(nodes),
    replaceChildren: (obj, nodes) => obj.replaceChildren(nodes),
    moveBefore: (obj, node, child) => obj.moveBefore(node, child),
    querySelector: (obj, selectors) => obj.querySelector(selectors),
    querySelectorAll: (obj, selectors) => obj.querySelectorAll(selectors),
    get_children: (obj) => obj.children,
    get_firstElementChild: (obj) => obj.firstElementChild,
    get_lastElementChild: (obj) => obj.lastElementChild,
    get_childElementCount: (obj) => obj.childElementCount
  },

  webapi_ShadowRoot: {
    setHTMLUnsafe: (obj, html) => obj.setHTMLUnsafe(html),
    getHTML: (obj, options) => obj.getHTML(options),
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
    get_styleSheets: (obj) => obj.styleSheets,
    get_adoptedStyleSheets: (obj) => obj.adoptedStyleSheets,
    set_adoptedStyleSheets: (obj, value) => { obj.adoptedStyleSheets = value; },
    get_customElementRegistry: (obj) => obj.customElementRegistry,
    get_activeElement: (obj) => obj.activeElement
  },

  webapi_NamedNodeMap: {
    item: (obj, index) => obj.item(index),
    getNamedItem: (obj, qualifiedName) => obj.getNamedItem(qualifiedName),
    getNamedItemNS: (obj, namespace, localName) => obj.getNamedItemNS(namespace, localName),
    setNamedItem: (obj, attr) => obj.setNamedItem(attr),
    setNamedItemNS: (obj, attr) => obj.setNamedItemNS(attr),
    removeNamedItem: (obj, qualifiedName) => obj.removeNamedItem(qualifiedName),
    removeNamedItemNS: (obj, namespace, localName) => obj.removeNamedItemNS(namespace, localName),
    get_length: (obj) => obj.length
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
    substringData: (obj, offset, count) => obj.substringData(offset, count),
    appendData: (obj, data) => obj.appendData(data),
    insertData: (obj, offset, data) => obj.insertData(offset, data),
    deleteData: (obj, offset, count) => obj.deleteData(offset, count),
    replaceData: (obj, offset, count, data) => obj.replaceData(offset, count, data),
    before: (obj, nodes) => obj.before(nodes),
    after: (obj, nodes) => obj.after(nodes),
    replaceWith: (obj, nodes) => obj.replaceWith(nodes),
    remove: (obj) => obj.remove(),
    get_data: (obj) => obj.data,
    set_data: (obj, value) => { obj.data = value; },
    get_length: (obj) => obj.length,
    get_previousElementSibling: (obj) => obj.previousElementSibling,
    get_nextElementSibling: (obj) => obj.nextElementSibling
  },

  webapi_Text: {
    new: (data) => new Text(data),
    splitText: (obj, offset) => obj.splitText(offset),
    getBoxQuads: (obj, options) => obj.getBoxQuads(options),
    convertQuadFromNode: (obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options),
    convertRectFromNode: (obj, rect, from, options) => obj.convertRectFromNode(rect, from, options),
    convertPointFromNode: (obj, point, from, options) => obj.convertPointFromNode(point, from, options),
    get_wholeText: (obj) => obj.wholeText,
    get_assignedSlot: (obj) => obj.assignedSlot
  },

  webapi_ProcessingInstruction: {
    get_target: (obj) => obj.target,
    get_sheet: (obj) => obj.sheet
  },

  webapi_Comment: {
    new: (data) => new Comment(data)
  },

  webapi_DOMTokenList: {
    item: (obj, index) => obj.item(index),
    contains: (obj, token) => obj.contains(token),
    add: (obj, tokens) => obj.add(tokens),
    remove: (obj, tokens) => obj.remove(tokens),
    toggle: (obj, token, force) => obj.toggle(token, force),
    replace: (obj, token, newToken) => obj.replace(token, newToken),
    supports: (obj, token) => obj.supports(token),
    get_length: (obj) => obj.length,
    get_value: (obj) => obj.value,
    set_value: (obj, value) => { obj.value = value; }
  },

  webapi_DOMPointReadOnly: {
    new: (x, y, z, w) => new DOMPointReadOnly(x, y, z, w),
    fromPoint: (other) => fromPoint(other),
    matrixTransform: (obj, matrix) => obj.matrixTransform(matrix),
    toJSON: (obj) => obj.toJSON(),
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_z: (obj) => obj.z,
    get_w: (obj) => obj.w
  },

  webapi_DOMPoint: {
    new: (x, y, z, w) => new DOMPoint(x, y, z, w),
    fromPoint: (other) => fromPoint(other),
    get_x: (obj) => obj.x,
    set_x: (obj, value) => { obj.x = value; },
    get_y: (obj) => obj.y,
    set_y: (obj, value) => { obj.y = value; },
    get_z: (obj) => obj.z,
    set_z: (obj, value) => { obj.z = value; },
    get_w: (obj) => obj.w,
    set_w: (obj, value) => { obj.w = value; }
  },

  webapi_DOMRectReadOnly: {
    new: (x, y, width, height) => new DOMRectReadOnly(x, y, width, height),
    fromRect: (other) => fromRect(other),
    toJSON: (obj) => obj.toJSON(),
    get_x: (obj) => obj.x,
    get_y: (obj) => obj.y,
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_top: (obj) => obj.top,
    get_right: (obj) => obj.right,
    get_bottom: (obj) => obj.bottom,
    get_left: (obj) => obj.left
  },

  webapi_DOMRect: {
    new: (x, y, width, height) => new DOMRect(x, y, width, height),
    fromRect: (other) => fromRect(other),
    get_x: (obj) => obj.x,
    set_x: (obj, value) => { obj.x = value; },
    get_y: (obj) => obj.y,
    set_y: (obj, value) => { obj.y = value; },
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; }
  },

  webapi_DOMMatrixReadOnly: {
    new: (init) => new DOMMatrixReadOnly(init),
    fromMatrix: (other) => fromMatrix(other),
    fromFloat32Array: (array32) => fromFloat32Array(array32),
    fromFloat64Array: (array64) => fromFloat64Array(array64),
    translate: (obj, tx, ty, tz) => obj.translate(tx, ty, tz),
    scale: (obj, scaleX, scaleY, scaleZ, originX, originY, originZ) => obj.scale(scaleX, scaleY, scaleZ, originX, originY, originZ),
    scaleNonUniform: (obj, scaleX, scaleY) => obj.scaleNonUniform(scaleX, scaleY),
    scale3d: (obj, scale, originX, originY, originZ) => obj.scale3d(scale, originX, originY, originZ),
    rotate: (obj, rotX, rotY, rotZ) => obj.rotate(rotX, rotY, rotZ),
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
    toJSON: (obj) => obj.toJSON(),
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
    get_isIdentity: (obj) => obj.isIdentity
  },

  webapi_DOMMatrix: {
    new: (init) => new DOMMatrix(init),
    fromMatrix: (other) => fromMatrix(other),
    fromFloat32Array: (array32) => fromFloat32Array(array32),
    fromFloat64Array: (array64) => fromFloat64Array(array64),
    multiplySelf: (obj, other) => obj.multiplySelf(other),
    preMultiplySelf: (obj, other) => obj.preMultiplySelf(other),
    translateSelf: (obj, tx, ty, tz) => obj.translateSelf(tx, ty, tz),
    scaleSelf: (obj, scaleX, scaleY, scaleZ, originX, originY, originZ) => obj.scaleSelf(scaleX, scaleY, scaleZ, originX, originY, originZ),
    scale3dSelf: (obj, scale, originX, originY, originZ) => obj.scale3dSelf(scale, originX, originY, originZ),
    rotateSelf: (obj, rotX, rotY, rotZ) => obj.rotateSelf(rotX, rotY, rotZ),
    rotateFromVectorSelf: (obj, x, y) => obj.rotateFromVectorSelf(x, y),
    rotateAxisAngleSelf: (obj, x, y, z, angle) => obj.rotateAxisAngleSelf(x, y, z, angle),
    skewXSelf: (obj, sx) => obj.skewXSelf(sx),
    skewYSelf: (obj, sy) => obj.skewYSelf(sy),
    invertSelf: (obj) => obj.invertSelf(),
    setMatrixValue: (obj, transformList) => obj.setMatrixValue(transformList),
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
    set_m44: (obj, value) => { obj.m44 = value; }
  },

  webapi_HTMLHtmlElement: {
    new: () => new HTMLHtmlElement(),
    get_version: (obj) => obj.version,
    set_version: (obj, value) => { obj.version = value; }
  },

  webapi_HTMLHeadElement: {
    new: () => new HTMLHeadElement()
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

  webapi_HTMLParagraphElement: {
    new: () => new HTMLParagraphElement(),
    get_align: (obj) => obj.align,
    set_align: (obj, value) => { obj.align = value; }
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

  webapi_HTMLSpanElement: {
    new: () => new HTMLSpanElement()
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

  webapi_HTMLFormElement: {
    new: () => new HTMLFormElement(),
    submit: (obj) => obj.submit(),
    requestSubmit: (obj, submitter) => obj.requestSubmit(submitter),
    reset: (obj) => obj.reset(),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
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
    get_length: (obj) => obj.length
  },

  webapi_HTMLInputElement: {
    new: () => new HTMLInputElement(),
    stepUp: (obj, n) => obj.stepUp(n),
    stepDown: (obj, n) => obj.stepDown(n),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error),
    select: (obj) => obj.select(),
    setRangeText: (obj, replacement) => obj.setRangeText(replacement),
    setRangeText: (obj, replacement, start, end, selectionMode) => obj.setRangeText(replacement, start, end, selectionMode),
    setSelectionRange: (obj, start, end, direction) => obj.setSelectionRange(start, end, direction),
    showPicker: (obj) => obj.showPicker(),
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
    set_popoverTargetAction: (obj, value) => { obj.popoverTargetAction = value; }
  },

  webapi_HTMLButtonElement: {
    new: () => new HTMLButtonElement(),
    checkValidity: (obj) => obj.checkValidity(),
    reportValidity: (obj) => obj.reportValidity(),
    setCustomValidity: (obj, error) => obj.setCustomValidity(error),
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
    set_popoverTargetAction: (obj, value) => { obj.popoverTargetAction = value; }
  },

  webapi_HTMLScriptElement: {
    new: () => new HTMLScriptElement(),
    supports: (type) => supports(type),
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
    set_htmlFor: (obj, value) => { obj.htmlFor = value; }
  },

  webapi_HTMLSlotElement: {
    new: () => new HTMLSlotElement(),
    assignedNodes: (obj, options) => obj.assignedNodes(options),
    assignedElements: (obj, options) => obj.assignedElements(options),
    assign: (obj, nodes) => obj.assign(nodes),
    get_name: (obj) => obj.name,
    set_name: (obj, value) => { obj.name = value; }
  },

  webapi_HTMLCanvasElement: {
    new: () => new HTMLCanvasElement(),
    getContext: (obj, contextId, options) => obj.getContext(contextId, options),
    toDataURL: (obj, type, quality) => obj.toDataURL(type, quality),
    toBlob: (obj, callback, type, quality) => obj.toBlob(callback, type, quality),
    transferControlToOffscreen: (obj) => obj.transferControlToOffscreen(),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; }
  },

  webapi_CanvasRenderingContext2D: {
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
    setTransform: (obj, transform) => obj.setTransform(transform),
    resetTransform: (obj) => obj.resetTransform(),
    createLinearGradient: (obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1),
    createRadialGradient: (obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1),
    createConicGradient: (obj, startAngle, x, y) => obj.createConicGradient(startAngle, x, y),
    createPattern: (obj, image, repetition) => obj.createPattern(image, repetition),
    clearRect: (obj, x, y, w, h) => obj.clearRect(x, y, w, h),
    fillRect: (obj, x, y, w, h) => obj.fillRect(x, y, w, h),
    strokeRect: (obj, x, y, w, h) => obj.strokeRect(x, y, w, h),
    beginPath: (obj) => obj.beginPath(),
    fill: (obj, fillRule) => obj.fill(fillRule),
    fill: (obj, path, fillRule) => obj.fill(path, fillRule),
    stroke: (obj) => obj.stroke(),
    stroke: (obj, path) => obj.stroke(path),
    clip: (obj, fillRule) => obj.clip(fillRule),
    clip: (obj, path, fillRule) => obj.clip(path, fillRule),
    isPointInPath: (obj, x, y, fillRule) => obj.isPointInPath(x, y, fillRule),
    isPointInPath: (obj, path, x, y, fillRule) => obj.isPointInPath(path, x, y, fillRule),
    isPointInStroke: (obj, x, y) => obj.isPointInStroke(x, y),
    isPointInStroke: (obj, path, x, y) => obj.isPointInStroke(path, x, y),
    drawFocusIfNeeded: (obj, element) => obj.drawFocusIfNeeded(element),
    drawFocusIfNeeded: (obj, path, element) => obj.drawFocusIfNeeded(path, element),
    fillText: (obj, text, x, y, maxWidth) => obj.fillText(text, x, y, maxWidth),
    strokeText: (obj, text, x, y, maxWidth) => obj.strokeText(text, x, y, maxWidth),
    measureText: (obj, text) => obj.measureText(text),
    drawImage: (obj, image, dx, dy) => obj.drawImage(image, dx, dy),
    drawImage: (obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh),
    drawImage: (obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh),
    createImageData: (obj, sw, sh, settings) => obj.createImageData(sw, sh, settings),
    createImageData: (obj, imageData) => obj.createImageData(imageData),
    getImageData: (obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings),
    putImageData: (obj, imageData, dx, dy) => obj.putImageData(imageData, dx, dy),
    putImageData: (obj, imageData, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight) => obj.putImageData(imageData, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight),
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
    arc: (obj, x, y, radius, startAngle, endAngle, counterclockwise) => obj.arc(x, y, radius, startAngle, endAngle, counterclockwise),
    ellipse: (obj, x, y, radiusX, radiusY, rotation, startAngle, endAngle, counterclockwise) => obj.ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle, counterclockwise),
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
    set_wordSpacing: (obj, value) => { obj.wordSpacing = value; }
  },

  webapi_CanvasGradient: {
    addColorStop: (obj, offset, color) => obj.addColorStop(offset, color)
  },

  webapi_CanvasPattern: {
    setTransform: (obj, transform) => obj.setTransform(transform)
  },

  webapi_ImageBitmapRenderingContext: {
    transferFromImageBitmap: (obj, bitmap) => obj.transferFromImageBitmap(bitmap),
    get_canvas: (obj) => obj.canvas
  },

  webapi_OffscreenCanvas: {
    new: (width, height) => new OffscreenCanvas(width, height),
    getContext: (obj, contextId, options) => obj.getContext(contextId, options),
    transferToImageBitmap: (obj) => obj.transferToImageBitmap(),
    convertToBlob: (obj, options) => obj.convertToBlob(options),
    get_width: (obj) => obj.width,
    set_width: (obj, value) => { obj.width = value; },
    get_height: (obj) => obj.height,
    set_height: (obj, value) => { obj.height = value; },
    get_oncontextlost: (obj) => obj.oncontextlost,
    set_oncontextlost: (obj, value) => { obj.oncontextlost = value; },
    get_oncontextrestored: (obj) => obj.oncontextrestored,
    set_oncontextrestored: (obj, value) => { obj.oncontextrestored = value; }
  },

  webapi_OffscreenCanvasRenderingContext2D: {
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
    setTransform: (obj, transform) => obj.setTransform(transform),
    resetTransform: (obj) => obj.resetTransform(),
    createLinearGradient: (obj, x0, y0, x1, y1) => obj.createLinearGradient(x0, y0, x1, y1),
    createRadialGradient: (obj, x0, y0, r0, x1, y1, r1) => obj.createRadialGradient(x0, y0, r0, x1, y1, r1),
    createConicGradient: (obj, startAngle, x, y) => obj.createConicGradient(startAngle, x, y),
    createPattern: (obj, image, repetition) => obj.createPattern(image, repetition),
    clearRect: (obj, x, y, w, h) => obj.clearRect(x, y, w, h),
    fillRect: (obj, x, y, w, h) => obj.fillRect(x, y, w, h),
    strokeRect: (obj, x, y, w, h) => obj.strokeRect(x, y, w, h),
    beginPath: (obj) => obj.beginPath(),
    fill: (obj, fillRule) => obj.fill(fillRule),
    fill: (obj, path, fillRule) => obj.fill(path, fillRule),
    stroke: (obj) => obj.stroke(),
    stroke: (obj, path) => obj.stroke(path),
    clip: (obj, fillRule) => obj.clip(fillRule),
    clip: (obj, path, fillRule) => obj.clip(path, fillRule),
    isPointInPath: (obj, x, y, fillRule) => obj.isPointInPath(x, y, fillRule),
    isPointInPath: (obj, path, x, y, fillRule) => obj.isPointInPath(path, x, y, fillRule),
    isPointInStroke: (obj, x, y) => obj.isPointInStroke(x, y),
    isPointInStroke: (obj, path, x, y) => obj.isPointInStroke(path, x, y),
    fillText: (obj, text, x, y, maxWidth) => obj.fillText(text, x, y, maxWidth),
    strokeText: (obj, text, x, y, maxWidth) => obj.strokeText(text, x, y, maxWidth),
    measureText: (obj, text) => obj.measureText(text),
    drawImage: (obj, image, dx, dy) => obj.drawImage(image, dx, dy),
    drawImage: (obj, image, dx, dy, dw, dh) => obj.drawImage(image, dx, dy, dw, dh),
    drawImage: (obj, image, sx, sy, sw, sh, dx, dy, dw, dh) => obj.drawImage(image, sx, sy, sw, sh, dx, dy, dw, dh),
    createImageData: (obj, sw, sh, settings) => obj.createImageData(sw, sh, settings),
    createImageData: (obj, imageData) => obj.createImageData(imageData),
    getImageData: (obj, sx, sy, sw, sh, settings) => obj.getImageData(sx, sy, sw, sh, settings),
    putImageData: (obj, imageData, dx, dy) => obj.putImageData(imageData, dx, dy),
    putImageData: (obj, imageData, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight) => obj.putImageData(imageData, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight),
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
    arc: (obj, x, y, radius, startAngle, endAngle, counterclockwise) => obj.arc(x, y, radius, startAngle, endAngle, counterclockwise),
    ellipse: (obj, x, y, radiusX, radiusY, rotation, startAngle, endAngle, counterclockwise) => obj.ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle, counterclockwise),
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
    set_wordSpacing: (obj, value) => { obj.wordSpacing = value; }
  },

  webapi_Navigator: {
    taintEnabled: (obj) => obj.taintEnabled(),
    registerProtocolHandler: (obj, scheme, url) => obj.registerProtocolHandler(scheme, url),
    unregisterProtocolHandler: (obj, scheme, url) => obj.unregisterProtocolHandler(scheme, url),
    javaEnabled: (obj) => obj.javaEnabled(),
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
    get_hardwareConcurrency: (obj) => obj.hardwareConcurrency
  },

  webapi_Location: {
    assign: (obj, url) => obj.assign(url),
    replace: (obj, url) => obj.replace(url),
    reload: (obj) => obj.reload(),
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
    get_ancestorOrigins: (obj) => obj.ancestorOrigins
  },

  webapi_History: {
    go: (obj, delta) => obj.go(delta),
    back: (obj) => obj.back(),
    forward: (obj) => obj.forward(),
    pushState: (obj, data, unused, url) => obj.pushState(data, unused, url),
    replaceState: (obj, data, unused, url) => obj.replaceState(data, unused, url),
    get_length: (obj) => obj.length,
    get_scrollRestoration: (obj) => obj.scrollRestoration,
    set_scrollRestoration: (obj, value) => { obj.scrollRestoration = value; },
    get_state: (obj) => obj.state
  },

  webapi_ImageData: {
    new: (sw, sh, settings) => new ImageData(sw, sh, settings),
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height,
    get_data: (obj) => obj.data,
    get_pixelFormat: (obj) => obj.pixelFormat,
    get_colorSpace: (obj) => obj.colorSpace
  },

  webapi_ImageBitmap: {
    close: (obj) => obj.close(),
    get_width: (obj) => obj.width,
    get_height: (obj) => obj.height
  },

  webapi_Storage: {
    key: (obj, index) => obj.key(index),
    getItem: (obj, key) => obj.getItem(key),
    setItem: (obj, key, value) => obj.setItem(key, value),
    removeItem: (obj, key) => obj.removeItem(key),
    clear: (obj) => obj.clear(),
    get_length: (obj) => obj.length
  },

  webapi_UIEvent: {
    new: (type, eventInitDict) => new UIEvent(type, eventInitDict),
    initUIEvent: (obj, typeArg, bubblesArg, cancelableArg, viewArg, detailArg) => obj.initUIEvent(typeArg, bubblesArg, cancelableArg, viewArg, detailArg),
    get_view: (obj) => obj.view,
    get_detail: (obj) => obj.detail,
    get_which: (obj) => obj.which
  },

  webapi_FocusEvent: {
    new: (type, eventInitDict) => new FocusEvent(type, eventInitDict),
    get_relatedTarget: (obj) => obj.relatedTarget
  },

  webapi_WheelEvent: {
    new: (type, eventInitDict) => new WheelEvent(type, eventInitDict),
    get_deltaX: (obj) => obj.deltaX,
    get_deltaY: (obj) => obj.deltaY,
    get_deltaZ: (obj) => obj.deltaZ,
    get_deltaMode: (obj) => obj.deltaMode
  },

  webapi_InputEvent: {
    new: (type, eventInitDict) => new InputEvent(type, eventInitDict),
    get_data: (obj) => obj.data,
    get_isComposing: (obj) => obj.isComposing,
    get_inputType: (obj) => obj.inputType
  },

  webapi_KeyboardEvent: {
    new: (type, eventInitDict) => new KeyboardEvent(type, eventInitDict),
    getModifierState: (obj, keyArg) => obj.getModifierState(keyArg),
    initKeyboardEvent: (obj, typeArg, bubblesArg, cancelableArg, viewArg, keyArg, locationArg, ctrlKey, altKey, shiftKey, metaKey) => obj.initKeyboardEvent(typeArg, bubblesArg, cancelableArg, viewArg, keyArg, locationArg, ctrlKey, altKey, shiftKey, metaKey),
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
    get_keyCode: (obj) => obj.keyCode
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
    new: (lastModified) => {
      const obj = {};
      if (lastModified !== undefined) obj.lastModified = lastModified;
      return obj;
    }
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

  webapi_ScrollOptions: {
    new: (behavior) => {
      const obj = {};
      if (behavior !== undefined) obj.behavior = behavior;
      return obj;
    }
  },

  webapi_ScrollToOptions: {
    new: (left, top) => {
      const obj = {};
      if (left !== undefined) obj.left = left;
      if (top !== undefined) obj.top = top;
      return obj;
    }
  },

  webapi_MediaQueryListEventInit: {
    new: (media, matches) => {
      const obj = {};
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
    new: (block, inline, container) => {
      const obj = {};
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

  webapi_CSSStyleSheetInit: {
    new: (baseURL, media, disabled) => {
      const obj = {};
      if (baseURL !== undefined) obj.baseURL = baseURL;
      if (media !== undefined) obj.media = media;
      if (disabled !== undefined) obj.disabled = disabled;
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
    new: (detail) => {
      const obj = {};
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
    new: (passive, once, signal) => {
      const obj = {};
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
    new: (m13, m14, m23, m24, m31, m32, m33, m34, m43, m44, is2D) => {
      const obj = {};
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

  webapi_ShowPopoverOptions: {
    new: (source) => {
      const obj = {};
      if (source !== undefined) obj.source = source;
      return obj;
    }
  },

  webapi_TogglePopoverOptions: {
    new: (force) => {
      const obj = {};
      if (force !== undefined) obj.force = force;
      return obj;
    }
  },

  webapi_TrackEventInit: {
    new: (track) => {
      const obj = {};
      if (track !== undefined) obj.track = track;
      return obj;
    }
  },

  webapi_SubmitEventInit: {
    new: (submitter) => {
      const obj = {};
      if (submitter !== undefined) obj.submitter = submitter;
      return obj;
    }
  },

  webapi_FormDataEventInit: {
    new: (formData) => {
      const obj = {};
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
    new: (extends_) => {
      const obj = {};
      if (extends_ !== undefined) obj.extends = extends_;
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
    new: (oldState, newState, source) => {
      const obj = {};
      if (oldState !== undefined) obj.oldState = oldState;
      if (newState !== undefined) obj.newState = newState;
      if (source !== undefined) obj.source = source;
      return obj;
    }
  },

  webapi_CommandEventInit: {
    new: (source, command) => {
      const obj = {};
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
    new: (dataTransfer) => {
      const obj = {};
      if (dataTransfer !== undefined) obj.dataTransfer = dataTransfer;
      return obj;
    }
  },

  webapi_WindowPostMessageOptions: {
    new: (targetOrigin) => {
      const obj = {};
      if (targetOrigin !== undefined) obj.targetOrigin = targetOrigin;
      return obj;
    }
  },

  webapi_PopStateEventInit: {
    new: (state, hasUAVisualTransition) => {
      const obj = {};
      if (state !== undefined) obj.state = state;
      if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
      return obj;
    }
  },

  webapi_HashChangeEventInit: {
    new: (oldURL, newURL) => {
      const obj = {};
      if (oldURL !== undefined) obj.oldURL = oldURL;
      if (newURL !== undefined) obj.newURL = newURL;
      return obj;
    }
  },

  webapi_PageTransitionEventInit: {
    new: (persisted) => {
      const obj = {};
      if (persisted !== undefined) obj.persisted = persisted;
      return obj;
    }
  },

  webapi_ErrorEventInit: {
    new: (message, filename, lineno, colno, error) => {
      const obj = {};
      if (message !== undefined) obj.message = message;
      if (filename !== undefined) obj.filename = filename;
      if (lineno !== undefined) obj.lineno = lineno;
      if (colno !== undefined) obj.colno = colno;
      if (error !== undefined) obj.error = error;
      return obj;
    }
  },

  webapi_PromiseRejectionEventInit: {
    new: (promise, reason) => {
      const obj = {};
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
    new: (data, origin, lastEventId, source, ports) => {
      const obj = {};
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
    new: (key, oldValue, newValue, url, storageArea) => {
      const obj = {};
      if (key !== undefined) obj.key = key;
      if (oldValue !== undefined) obj.oldValue = oldValue;
      if (newValue !== undefined) obj.newValue = newValue;
      if (url !== undefined) obj.url = url;
      if (storageArea !== undefined) obj.storageArea = storageArea;
      return obj;
    }
  },

  webapi_UIEventInit: {
    new: (view, detail, which) => {
      const obj = {};
      if (view !== undefined) obj.view = view;
      if (detail !== undefined) obj.detail = detail;
      if (which !== undefined) obj.which = which;
      return obj;
    }
  },

  webapi_FocusEventInit: {
    new: (relatedTarget) => {
      const obj = {};
      if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
      return obj;
    }
  },

  webapi_MouseEventInit: {
    new: (screenX, screenY, clientX, clientY, button, buttons, relatedTarget) => {
      const obj = {};
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
    new: (ctrlKey, shiftKey, altKey, metaKey, modifierAltGraph, modifierCapsLock, modifierFn, modifierFnLock, modifierHyper, modifierNumLock, modifierScrollLock, modifierSuper, modifierSymbol, modifierSymbolLock) => {
      const obj = {};
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
    new: (deltaX, deltaY, deltaZ, deltaMode) => {
      const obj = {};
      if (deltaX !== undefined) obj.deltaX = deltaX;
      if (deltaY !== undefined) obj.deltaY = deltaY;
      if (deltaZ !== undefined) obj.deltaZ = deltaZ;
      if (deltaMode !== undefined) obj.deltaMode = deltaMode;
      return obj;
    }
  },

  webapi_InputEventInit: {
    new: (data, isComposing, inputType) => {
      const obj = {};
      if (data !== undefined) obj.data = data;
      if (isComposing !== undefined) obj.isComposing = isComposing;
      if (inputType !== undefined) obj.inputType = inputType;
      return obj;
    }
  },

  webapi_KeyboardEventInit: {
    new: (key, code, location, repeat, isComposing, charCode, keyCode) => {
      const obj = {};
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
    new: (data) => {
      const obj = {};
      if (data !== undefined) obj.data = data;
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
  }
};

/**
 * Helper function to instantiate the WebAssembly module with the import object
 */
export async function instantiate(wasmPath) {
  const response = await fetch(wasmPath);
  const { instance } = await WebAssembly.instantiateStreaming(response, wasmImportObject);
  return instance;
}

/**
 * Helper function to instantiate with js-string builtins support
 */
export async function instantiateWithBuiltins(wasmPath) {
  const response = await fetch(wasmPath);
  const { instance } = await WebAssembly.instantiateStreaming(
    response, 
    wasmImportObject,
    {
      builtins: ["js-string"],
      importedStringConstants: "_"
    }
  );
  return instance;
}
