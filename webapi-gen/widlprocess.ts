/**
 * Web IDL Parser and Merger
 * 
 * Parses Web IDL text using webidl2 and converts to internal representation.
 * Handles merging of partial interfaces and mixins.
 */

import * as webidl2 from "webidl2";
import { write as writeIdl } from "webidl2";
import type {
  ParsedIdl,
  ParsedInterface,
  ParsedDictionary,
  ParsedEnum,
  ParsedCallback,
  ParsedTypedef,
  ParsedMethod,
  ParsedProperty,
  ParsedConstant,
  ParsedConstructor,
  ParsedParam,
  ParsedType,
  ParsedDictionaryMember,
} from "./types.js";

/**
 * Convert a single AST definition back to IDL source text
 */
function getIdlSource(def: webidl2.IDLRootType): string {
  try {
    return writeIdl([def]).trim();
  } catch {
    return "";
  }
}

/**
 * Parse a Web IDL type to our internal representation
 */
function parseIdlType(idlType: webidl2.IDLTypeDescription): ParsedType {
  if (idlType.generic) {
    // Generic types like sequence<T>, Promise<T>, FrozenArray<T>
    const generic = idlType.generic.toLowerCase();
    const innerTypes = idlType.idlType as webidl2.IDLTypeDescription[];

    if (generic === "sequence") {
      return {
        type: "sequence",
        elementType: parseIdlType(innerTypes[0]),
      };
    } else if (generic === "promise") {
      return {
        type: "promise",
        elementType: parseIdlType(innerTypes[0]),
      };
    } else if (generic === "frozenarray") {
      return {
        type: "frozen-array",
        elementType: parseIdlType(innerTypes[0]),
      };
    } else if (generic === "record") {
      return {
        type: "record",
        keyType: parseIdlType(innerTypes[0]),
        valueType: parseIdlType(innerTypes[1]),
      };
    }
  }

  if (idlType.union) {
    // Union types like (DOMString or long)
    const memberTypes = (idlType.idlType as webidl2.IDLTypeDescription[]).map(parseIdlType);
    return {
      type: "union",
      memberTypes,
    };
  }

  if (idlType.nullable) {
    // Nullable types like DOMString?
    // We need to get the non-nullable version by parsing without the nullable flag
    // Since webidl2 uses getters, we can't just spread the object
    const innerTypeName = idlType.idlType as string;

    // Check what the inner type is
    if (typeof innerTypeName === "string") {
      // Simple nullable type like EventListener?
      const primitives = [
        "boolean", "byte", "octet", "short", "unsigned short",
        "long", "unsigned long", "long long", "unsigned long long",
        "float", "unrestricted float", "double", "unrestricted double",
        "DOMString", "USVString", "ByteString", "bigint",
        "undefined", "void", "any", "object"
      ];

      let elementType: ParsedType;
      if (innerTypeName === "any") {
        elementType = { type: "any" };
      } else if (innerTypeName === "undefined" || innerTypeName === "void") {
        elementType = { type: "void" };
      } else if (primitives.includes(innerTypeName)) {
        elementType = { type: "primitive", name: innerTypeName };
      } else {
        elementType = { type: "reference", name: innerTypeName };
      }

      return {
        type: "nullable",
        elementType,
      };
    } else {
      // Complex nullable type - recurse on inner types
      const innerTypes = idlType.idlType as webidl2.IDLTypeDescription[];
      // This shouldn't really happen for nullable, but handle it
      return {
        type: "nullable",
        elementType: parseIdlType(innerTypes[0]),
      };
    }
  }

  // Simple type reference
  const typeName = idlType.idlType as string;

  // Check for primitive types
  const primitives = [
    "boolean", "byte", "octet", "short", "unsigned short",
    "long", "unsigned long", "long long", "unsigned long long",
    "float", "unrestricted float", "double", "unrestricted double",
    "DOMString", "USVString", "ByteString", "bigint",
    "undefined", "void", "any", "object"
  ];

  if (typeName === "any") {
    return { type: "any" };
  }

  if (typeName === "undefined" || typeName === "void") {
    return { type: "void" };
  }

  if (primitives.includes(typeName)) {
    return { type: "primitive", name: typeName };
  }

  // Reference to another type
  return { type: "reference", name: typeName };
}

/**
 * Parse method/function parameters
 */
function parseParams(args: webidl2.Argument[]): ParsedParam[] {
  return args.map((arg) => ({
    name: arg.name,
    type: parseIdlType(arg.idlType),
    optional: arg.optional,
    default: arg.default ? stringifyDefault(arg.default) : undefined,
    variadic: arg.variadic,
  }));
}

/**
 * Convert default value to string representation
 */
function stringifyDefault(defaultValue: webidl2.ValueDescription): string {
  switch (defaultValue.type) {
    case "string":
      return `"${defaultValue.value}"`;
    case "number":
      return String(defaultValue.value);
    case "boolean":
      return defaultValue.value ? "true" : "false";
    case "null":
      return "null";
    case "Infinity":
      return defaultValue.negative ? "-Infinity" : "Infinity";
    case "NaN":
      return "NaN";
    case "sequence":
      return "[]";
    case "dictionary":
      return "{}";
    default:
      return "";
  }
}

/**
 * Parse interface members (methods, properties, constants)
 */
function parseInterfaceMembers(members: webidl2.IDLInterfaceMemberType[]): {
  methods: ParsedMethod[];
  properties: ParsedProperty[];
  constants: ParsedConstant[];
  constructors: ParsedConstructor[];
} {
  const methods: ParsedMethod[] = [];
  const properties: ParsedProperty[] = [];
  const constants: ParsedConstant[] = [];
  const constructors: ParsedConstructor[] = [];

  for (const member of members) {
    switch (member.type) {
      case "operation":
        if (member.name && member.idlType) {
          methods.push({
            name: member.name,
            params: parseParams(member.arguments),
            returnType: parseIdlType(member.idlType),
            static: member.special === "static",
            special: member.special === "getter" || member.special === "setter" ||
              member.special === "deleter" || member.special === "stringifier"
              ? member.special : undefined,
          });
        }
        break;

      case "attribute":
        properties.push({
          name: member.name,
          type: parseIdlType(member.idlType),
          readonly: member.readonly,
          static: member.special === "static",
        });
        break;

      case "const":
        constants.push({
          name: member.name,
          type: parseIdlType(member.idlType),
          value: stringifyDefault(member.value),
        });
        break;

      case "constructor":
        constructors.push({
          params: parseParams(member.arguments),
        });
        break;

      case "iterable":
      case "maplike":
      case "setlike":
        // TODO: Handle iterable/maplike/setlike
        break;
    }
  }

  return { methods, properties, constants, constructors };
}

/**
 * Parse a single interface or mixin definition
 */
function parseInterface(def: webidl2.InterfaceType | webidl2.InterfaceMixinType): ParsedInterface {
  const { methods, properties, constants, constructors } = parseInterfaceMembers(def.members);

  return {
    name: def.name,
    inheritance: def.type === "interface" ? ((def as webidl2.InterfaceType).inheritance ?? undefined) : undefined,
    mixins: [],
    methods,
    properties,
    constants,
    constructors,
    partial: def.partial,
    idlSource: getIdlSource(def),
  };
}

/**
 * Parse dictionary members
 */
function parseDictionaryMembers(members: webidl2.DictionaryMemberType[]): ParsedDictionaryMember[] {
  return members.map((member) => ({
    name: member.name,
    type: parseIdlType(member.idlType),
    required: member.required,
    default: member.default ? stringifyDefault(member.default) : undefined,
  }));
}

/**
 * Parse Web IDL text and return structured representation
 */
export function parseIdl(idlText: string): ParsedIdl {
  const ast = webidl2.parse(idlText);

  const result: ParsedIdl = {
    interfaces: new Map(),
    dictionaries: new Map(),
    enums: new Map(),
    callbacks: new Map(),
    typedefs: new Map(),
    includes: [],
  };

  for (const def of ast) {
    switch (def.type) {
      case "interface":
      case "interface mixin":
        const iface = parseInterface(def);
        if (result.interfaces.has(iface.name)) {
          // Merge partial interface
          mergeInterface(result.interfaces.get(iface.name)!, iface);
        } else {
          result.interfaces.set(iface.name, iface);
        }
        break;

      case "dictionary":
        const dict: ParsedDictionary = {
          name: def.name,
          inheritance: def.inheritance ?? undefined,
          members: parseDictionaryMembers(def.members),
          partial: def.partial,
          idlSource: getIdlSource(def),
        };
        if (result.dictionaries.has(dict.name)) {
          mergeDictionary(result.dictionaries.get(dict.name)!, dict);
        } else {
          result.dictionaries.set(dict.name, dict);
        }
        break;

      case "enum":
        result.enums.set(def.name, {
          name: def.name,
          values: def.values.map((v) => v.value),
        });
        break;

      case "callback":
        result.callbacks.set(def.name, {
          name: def.name,
          params: parseParams(def.arguments),
          returnType: parseIdlType(def.idlType),
          idlSource: getIdlSource(def),
        });
        break;

      case "typedef":
        result.typedefs.set(def.name, {
          name: def.name,
          type: parseIdlType(def.idlType),
          idlSource: getIdlSource(def),
        });
        break;

      case "includes":
        result.includes.push({
          target: def.target,
          mixin: def.includes,
        });
        break;

      case "callback interface":
        // Treat callback interface similar to regular interface but mark it
        const cbIface = parseInterface(def as unknown as webidl2.InterfaceType);
        cbIface.isCallbackInterface = true;
        result.interfaces.set(cbIface.name, cbIface);
        break;

      case "namespace":
        // Treat namespace as static-only interface
        const ns: ParsedInterface = {
          name: def.name,
          mixins: [],
          methods: [],
          properties: [],
          constants: [],
          constructors: [],
          partial: def.partial,
          idlSource: getIdlSource(def),
        };
        for (const member of def.members) {
          if (member.type === "operation" && member.name && member.idlType) {
            ns.methods.push({
              name: member.name,
              params: parseParams(member.arguments),
              returnType: parseIdlType(member.idlType),
              static: true,
            });
          } else if (member.type === "attribute") {
            ns.properties.push({
              name: member.name,
              type: parseIdlType(member.idlType),
              readonly: member.readonly,
              static: true,
            });
          }
        }
        if (result.interfaces.has(ns.name)) {
          mergeInterface(result.interfaces.get(ns.name)!, ns);
        } else {
          result.interfaces.set(ns.name, ns);
        }
        break;
    }
  }

  return result;
}

/**
 * Merge partial interface into base interface
 */
function mergeInterface(base: ParsedInterface, partial: ParsedInterface): void {
  base.methods.push(...partial.methods);
  base.properties.push(...partial.properties);
  base.constants.push(...partial.constants);
  base.constructors.push(...partial.constructors);
  // Combine IDL sources
  if (partial.idlSource) {
    base.idlSource = base.idlSource
      ? `${base.idlSource}\n\n${partial.idlSource}`
      : partial.idlSource;
  }
}

/**
 * Merge partial dictionary into base dictionary
 */
function mergeDictionary(base: ParsedDictionary, partial: ParsedDictionary): void {
  base.members.push(...partial.members);
  // Combine IDL sources
  if (partial.idlSource) {
    base.idlSource = base.idlSource
      ? `${base.idlSource}\n\n${partial.idlSource}`
      : partial.idlSource;
  }
}

/**
 * Merge all parsed IDL results from multiple specs
 */
export function mergeIdl(idls: ParsedIdl[]): ParsedIdl {
  const result: ParsedIdl = {
    interfaces: new Map(),
    dictionaries: new Map(),
    enums: new Map(),
    callbacks: new Map(),
    typedefs: new Map(),
    includes: [],
  };

  for (const idl of idls) {
    // Merge interfaces
    for (const [name, iface] of idl.interfaces) {
      if (result.interfaces.has(name)) {
        mergeInterface(result.interfaces.get(name)!, iface);
      } else {
        result.interfaces.set(name, { ...iface });
      }
    }

    // Merge dictionaries
    for (const [name, dict] of idl.dictionaries) {
      if (result.dictionaries.has(name)) {
        mergeDictionary(result.dictionaries.get(name)!, dict);
      } else {
        result.dictionaries.set(name, { ...dict });
      }
    }

    // Merge enums (last wins)
    for (const [name, enumDef] of idl.enums) {
      result.enums.set(name, enumDef);
    }

    // Merge callbacks (last wins)
    for (const [name, cb] of idl.callbacks) {
      result.callbacks.set(name, cb);
    }

    // Merge typedefs (last wins)
    for (const [name, td] of idl.typedefs) {
      result.typedefs.set(name, td);
    }

    // Collect all includes
    result.includes.push(...idl.includes);
  }

  return result;
}

/**
 * Apply mixin includes - merge mixin members into target interfaces
 */
export function applyMixins(idl: ParsedIdl): void {
  for (const include of idl.includes) {
    const target = idl.interfaces.get(include.target);
    const mixin = idl.interfaces.get(include.mixin);

    if (target && mixin) {
      // Add mixin to target's mixin list for trait inheritance
      if (!target.mixins.includes(include.mixin)) {
        target.mixins.push(include.mixin);
      }
      // Merge mixin members into target
      mergeInterface(target, mixin);
    }
  }
}

/**
 * Build inheritance chain for an interface
 * Returns array of ancestor names from immediate parent to root
 */
export function getInheritanceChain(
  interfaceName: string,
  interfaces: Map<string, ParsedInterface>
): string[] {
  const chain: string[] = [];
  let current = interfaces.get(interfaceName);

  while (current?.inheritance) {
    chain.push(current.inheritance);
    current = interfaces.get(current.inheritance);
  }

  return chain;
}

/**
 * Get all trait ancestors (inheritance + mixins) for an interface
 */
export function getAllTraitAncestors(
  interfaceName: string,
  interfaces: Map<string, ParsedInterface>
): string[] {
  const ancestors = new Set<string>();
  const visited = new Set<string>();

  function visit(name: string) {
    if (visited.has(name)) return;
    visited.add(name);

    const iface = interfaces.get(name);
    if (!iface) return;

    // Add parent
    if (iface.inheritance) {
      ancestors.add(iface.inheritance);
      visit(iface.inheritance);
    }

    // Add mixins
    for (const mixin of iface.mixins) {
      ancestors.add(mixin);
      visit(mixin);
    }
  }

  visit(interfaceName);
  return Array.from(ancestors);
}
