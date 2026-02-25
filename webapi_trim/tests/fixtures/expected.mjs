/**
 * Test fixture
 */

export const wasmImportObject = {
  JsValue: {
    null: () => null
  },

  webapi_Node: {
    appendChild: (obj, node) => obj.appendChild(node),
    get_textContent: (obj) => obj.textContent
  },
};
