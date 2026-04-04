/**
 * Test fixture
 */

export const wasmImportObject = {
  "moonbit:ffi": {
    make_closure: (funcref, closure) => funcref.bind(null, closure)
  },

  JsValue: {
    undefined: () => undefined,
    null: () => null
  },

  webapi_Dictionary: {
    empty: () => ({})
  },

  webapi_Node: {
    appendChild: (obj, node) => obj.appendChild(node),
    get_textContent: (obj) => obj.textContent
  },

  webapi_Element: {
    setAttribute: (obj, name, value) => obj.setAttribute(name, value),
    getAttribute: (obj, name) => obj.getAttribute(name)
  },

  webapi_EventTarget: {
    addEventListener: (obj, type, listener) => obj.addEventListener(type, listener)
  },

  webapi_Console: {
    log: (data) => console.log(...data)
  }
};
