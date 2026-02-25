/**
 * Test fixture
 */

export const wasmImportObject = {
  JsValue: {
    undefined: () => undefined,
    null: () => null
  },

  webapi_Node: {
    appendChild: (obj, node) => obj.appendChild(node),
    get_textContent: (obj) => obj.textContent
  },
};
