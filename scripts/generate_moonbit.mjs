#!/usr/bin/env node
/**
 * Generate MoonBit bindings from WebIDL JSON
 * 
 * This script reads the JSON output from webidl2 and generates
 * MoonBit FFI bindings following the patterns in codegen_patterns.md
 */

import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const projectRoot = path.join(__dirname, '..');

/**
 * Convert camelCase to snake_case
 */
function toSnakeCase(str) {
    return str
        .replace(/([A-Z])/g, '_$1')
        .toLowerCase()
        .replace(/^_/, '');
}

/**
 * Check if name is a MoonBit keyword and escape if needed
 */
function escapeMoonbitKeyword(name) {
    const keywords = new Set([
        'type', 'match', 'default', 'pub', 'priv', 'fn', 'let', 'mut',
        'struct', 'enum', 'trait', 'impl', 'if', 'else', 'while', 'for',
        'break', 'continue', 'return', 'try', 'catch', 'throw', 'async', 'await'
    ]);

    if (keywords.has(name)) {
        return name + '_';
    }
    return name;
}

/**
 * Get default value for optional parameter
 */
function getDefaultValue(idlType, defaultValue) {
    // If explicit default is provided, use it
    if (defaultValue !== undefined && defaultValue !== null) {
        if (defaultValue.type === 'boolean') return defaultValue.value ? 'true' : 'false';
        if (defaultValue.type === 'number') return String(defaultValue.value);
        if (defaultValue.type === 'string') return `"${defaultValue.value}"`;
        if (defaultValue.type === 'null') return 'None';
    }

    // Otherwise use type-based defaults
    const typeName = Array.isArray(idlType.idlType)
        ? idlType.idlType[0]?.idlType
        : idlType.idlType;

    if (typeName === 'boolean') return 'false';
    if (typeName === 'DOMString' || typeName === 'USVString' || typeName === 'ByteString') return '""';
    if (['long', 'short', 'byte', 'octet', 'unsigned short', 'unsigned long'].includes(typeName)) return '0';
    if (['double', 'float'].includes(typeName)) return '0.0';

    // For complex types, use None or a sensible default
    return 'None';
}


/**
 * Map WebIDL type to MoonBit type
 */
function mapIdlType(idlType) {
    // Handle union types
    if (idlType.union) {
        // Will be handled as traits
        return 'JsValue'; // Placeholder, actual union handling is trait-based
    }

    // Handle nullable
    if (idlType.nullable) {
        const innerType = mapIdlType({ ...idlType, nullable: false });
        return innerType; // Nullable is handled via Option or trait + JsNull
    }

    // Handle generics
    if (idlType.generic === 'sequence') {
        const innerType = Array.isArray(idlType.idlType)
            ? mapIdlType(idlType.idlType[0])
            : 'JsValue';
        return `Array[${innerType}]`;
    }

    if (idlType.generic === 'Promise') {
        // Promises are not supported in sync FFI, return JsValue
        return 'JsValue';
    }

    // Get the base type name
    const typeName = Array.isArray(idlType.idlType)
        ? idlType.idlType[0]?.idlType || 'JsValue'
        : idlType.idlType;

    // Map primitive types
    const typeMap = {
        'DOMString': 'String',
        'USVString': 'String',
        'ByteString': 'String',
        'boolean': 'Bool',
        'undefined': 'Unit',
        'void': 'Unit',
        'byte': 'Int',
        'octet': 'Int',
        'short': 'Int',
        'unsigned short': 'Int',
        'long': 'Int',
        'unsigned long': 'Int',
        'long long': 'Int64',
        'unsigned long long': 'Int64',
        'float': 'Double',
        'double': 'Double',
        'unrestricted float': 'Double',
        'unrestricted double': 'Double',
        'any': 'JsValue',
        'object': 'JsValue',
    };

    return typeMap[typeName] || typeName;
}

/**
 * Map WebIDL type to MoonBit FFI type (simpler, uses JsValue for complex types)
 */
function mapIdlTypeForFFI(idlType) {
    // For FFI, complex types must be JsValue
    if (idlType.union || idlType.generic === 'sequence') {
        return 'JsValue';
    }

    // For FFI, nullable is just the base type (handled at runtime)
    if (idlType.nullable) {
        return mapIdlTypeForFFI({ ...idlType, nullable: false });
    }

    const typeName = Array.isArray(idlType.idlType)
        ? idlType.idlType[0]?.idlType || 'JsValue'
        : idlType.idlType;

    // Primitives and simple types stay the same
    const primitives = {
        'DOMString': 'String',
        'USVString': 'String',
        'ByteString': 'String',
        'boolean': 'Bool',
        'undefined': 'Unit',
        'void': 'Unit',
        'byte': 'Int',
        'octet': 'Int',
        'short': 'Int',
        'unsigned short': 'Int',
        'long': 'Int',
        'unsigned long': 'Int',
        'long long': 'Int64',
        'unsigned long long': 'Int64',
        'float': 'Double',
        'double': 'Double',
        'unrestricted float': 'Double',
        'unrestricted double': 'Double',
        'any': 'JsValue',
        'object': 'JsValue',
    };

    // If it's a primitive, return it; otherwise it's a complex type -> JsValue
    if (primitives[typeName]) {
        return primitives[typeName];
    }

    // Custom types (like Event, EventTarget) can stay as-is in FFI
    // but DOM collections/arrays must be JsValue
    return typeName;
}


/**
 * Merge partial definitions into their base definitions
 */
function mergePartialDefinitions(definitions) {
    // Create a map of base definitions by name
    const baseDefinitions = new Map();
    const partialDefinitions = [];
    const otherDefinitions = [];

    // Separate base, partial, and other definitions
    for (const def of definitions) {
        if (def.type === 'interface' || def.type === 'dictionary' || def.type === 'namespace') {
            if (def.partial) {
                partialDefinitions.push(def);
            } else {
                baseDefinitions.set(def.name, def);
            }
        } else {
            otherDefinitions.push(def);
        }
    }

    // Merge partials into their base definitions
    for (const partial of partialDefinitions) {
        const base = baseDefinitions.get(partial.name);
        if (base) {
            // Merge members
            if (base.members && partial.members) {
                base.members.push(...partial.members);
            }

            // Merge extended attributes
            if (base.extAttrs && partial.extAttrs) {
                base.extAttrs.push(...partial.extAttrs);
            }
        } else {
            console.warn(`Warning: Partial ${partial.type} ${partial.name} has no base definition`);
        }
    }

    // Return merged base definitions plus other definitions
    return [...baseDefinitions.values(), ...otherDefinitions];
}


/**
 * Generate MoonBit code for an interface
 */
function generateInterface(def) {
    const lines = [];
    const interfaceName = def.name;
    const traitName = 'T' + interfaceName;

    lines.push(`///| ${interfaceName} interface`);
    lines.push('');

    // Generate external type first
    lines.push('#external');
    lines.push(`pub type ${interfaceName}`);
    lines.push('');

    // Generate TJsValue impl
    lines.push(`pub impl TJsValue for ${interfaceName} with to_js(self : ${interfaceName}) -> JsValue = "%identity"`);
    lines.push('');

    // Generate trait with abstract method signatures
    lines.push(`pub trait ${traitName}: TJsValue {`);

    // Filter out constructors (they're not trait methods)
    const methods = def.members.filter(m => m.type !== 'constructor');

    for (const member of methods) {
        if (member.type === 'attribute') {
            const attrName = escapeMoonbitKeyword(toSnakeCase(member.name));
            const returnType = member.idlType ? mapIdlType(member.idlType) : 'JsValue';

            // Generate getter (abstract)
            lines.push(`  ${attrName}(self : Self) -> ${returnType} = _`);

            // Generate setter if not readonly (abstract)
            if (!member.readonly) {
                lines.push(`  set_${attrName}(self : Self, value : ${returnType}) -> Unit = _`);
            }
        } else if (member.type === 'operation' && member.name) {
            const methodName = escapeMoonbitKeyword(toSnakeCase(member.name));
            const returnType = member.idlType ? mapIdlType(member.idlType) : 'Unit';

            // Generate parameter list
            const params = ['self : Self'];
            for (const arg of member.arguments || []) {
                const paramName = escapeMoonbitKeyword(toSnakeCase(arg.name));
                const paramType = mapIdlType(arg.idlType);
                const optMarker = arg.optional ? '?' : '';
                params.push(`${paramName}${optMarker} : ${paramType}`);
            }

            // Generate abstract method
            lines.push(`  ${methodName}(${params.join(', ')}) -> ${returnType} = _`);
        } else if (member.type === 'const') {
            // Constants - skip for now
        }
    }

    lines.push('}');
    lines.push('');

    // Generate trait impl declaration
    lines.push(`pub impl ${traitName} for ${interfaceName}`);
    lines.push('');

    // Generate FFI helper functions and trait implementations
    for (const member of methods) {
        if (member.type === 'attribute') {
            const attrName = escapeMoonbitKeyword(toSnakeCase(member.name));
            const returnType = member.idlType ? mapIdlType(member.idlType) : 'JsValue';
            const ffiReturnType = member.idlType ? mapIdlTypeForFFI(member.idlType) : 'JsValue';
            const ffiName = `${attrName}_ffi`;
            const ffiModule = `webapi_${interfaceName}`;

            // Generate FFI helper for getter (bare function taking JsValue)
            lines.push(`fn ${ffiName}(obj : JsValue) -> ${ffiReturnType} = "${ffiModule}" "${member.name}"`);
            lines.push('');

            // Generate trait impl for getter - cast if needed
            lines.push(`impl ${traitName} with ${attrName}(self : Self) -> ${returnType} {`);
            if (ffiReturnType !== returnType) {
                lines.push(`  ${ffiName}(self.to_js()) |> ${returnType}::from_js`);
            } else {
                lines.push(`  ${ffiName}(self.to_js())`);
            }
            lines.push('}');
            lines.push('');

            // Generate setter FFI and impl if not readonly
            if (!member.readonly) {
                const setterFfiName = `set_${attrName}_ffi`;
                const ffiParamType = member.idlType ? mapIdlTypeForFFI(member.idlType) : 'JsValue';
                lines.push(`fn ${setterFfiName}(obj : JsValue, value : ${ffiParamType}) -> Unit = "${ffiModule}" "set_${member.name}"`);
                lines.push('');

                lines.push(`impl ${traitName} with set_${attrName}(self : Self, value : ${returnType}) -> Unit {`);
                if (ffiParamType !== returnType) {
                    lines.push(`  ${setterFfiName}(self.to_js(), value.to_js())`);
                } else {
                    lines.push(`  ${setterFfiName}(self.to_js(), value)`);
                }
                lines.push('}');
                lines.push('');
            }
        } else if (member.type === 'operation' && member.name) {
            const methodName = escapeMoonbitKeyword(toSnakeCase(member.name));
            const returnType = member.idlType ? mapIdlType(member.idlType) : 'Unit';
            const ffiName = `${methodName}_ffi`;
            const ffiModule = `webapi_${interfaceName}`;

            // Generate FFI parameter list - NO optional markers (FFI can't have optional params)
            const ffiParams = ['obj : JsValue'];
            const callArgs = ['self.to_js()'];

            for (const arg of member.arguments || []) {
                const paramName = escapeMoonbitKeyword(toSnakeCase(arg.name));
                const paramType = mapIdlType(arg.idlType);
                // FFI params are always required
                ffiParams.push(`${paramName} : ${paramType}`);

                // When calling FFI, provide default for optional params
                if (arg.optional) {
                    const defaultValue = getDefaultValue(arg.idlType, arg.default);
                    callArgs.push(`${paramName}.or(${defaultValue})`);
                } else {
                    callArgs.push(paramName);
                }
            }

            // Generate FFI helper (bare function with all required params)
            lines.push(`fn ${ffiName}(${ffiParams.join(', ')}) -> ${returnType} = "${ffiModule}" "${member.name}"`);
            lines.push('');

            // Generate trait impl with optional params
            const implParams = ['self : Self'];
            for (const arg of member.arguments || []) {
                const paramName = escapeMoonbitKeyword(toSnakeCase(arg.name));
                const paramType = mapIdlType(arg.idlType);
                const optMarker = arg.optional ? '?' : '';
                implParams.push(`${paramName}${optMarker} : ${paramType}`);
            }

            lines.push(`impl ${traitName} with ${methodName}(${implParams.join(', ')}) -> ${returnType} {`);
            lines.push(`  ${ffiName}(${callArgs.join(', ')})`);
            lines.push('}');
            lines.push('');
        }
    }

    return lines.join('\n');
}

/**
 * Generate MoonBit code for a dictionary
 */
function generateDictionary(def) {
    const lines = [];
    const dictName = def.name;

    lines.push(`///| ${dictName} dictionary`);
    lines.push('');

    // External type
    lines.push('#external');
    lines.push(`pub type ${dictName}`);
    lines.push('');

    // FFI constructor
    const ffiName = toSnakeCase(dictName) + '_ffi';
    const params = [];
    for (const member of def.members) {
        const paramName = escapeMoonbitKeyword(toSnakeCase(member.name));
        const paramType = mapIdlType(member.idlType);
        params.push(`${paramName} : ${paramType}`);
    }

    lines.push(`fn ${ffiName}(${params.join(', ')}) -> ${dictName} = "webapi_${dictName}" "new"`);
    lines.push('');

    // Public constructor with optional parameters
    const pubParams = [];
    for (const member of def.members) {
        const paramName = escapeMoonbitKeyword(toSnakeCase(member.name));
        const paramType = mapIdlType(member.idlType);
        const optMarker = member.required ? '' : '?';
        const defaultVal = member.default ? ` = ${mapDefaultValue(member.default)}` : '';
        pubParams.push(`${paramName}${optMarker} : ${paramType}${defaultVal}`);
    }

    const pubName = toSnakeCase(dictName);
    lines.push(`pub fn ${pubName}(${pubParams.join(', ')}) -> ${dictName} {`);
    lines.push(`  ${ffiName}(${def.members.map(m => escapeMoonbitKeyword(toSnakeCase(m.name))).join(', ')})`);
    lines.push('}');
    lines.push('');

    // Default factory
    lines.push(`pub fn default_${pubName}() -> ${dictName} = "webapi_Dictionary" "empty"`);
    lines.push('');

    return lines.join('\n');
}

/**
 * Map default value to MoonBit
 */
function mapDefaultValue(defaultVal) {
    if (!defaultVal) return 'None';

    switch (defaultVal.type) {
        case 'number':
            return defaultVal.value;
        case 'string':
            return `"${defaultVal.value}"`;
        case 'boolean':
            return defaultVal.value ? 'true' : 'false';
        case 'null':
            return 'None';
        case 'dictionary':
        case 'sequence':
            return 'None';
        default:
            return 'None';
    }
}

/**
 * Generate MoonBit file for a set of definitions
 */
async function generateMoonbitFile(definitions, outputPath) {
    const lines = [];

    lines.push('///| Generated WebIDL bindings');
    lines.push('///| DO NOT EDIT - auto-generated from WebIDL');
    lines.push('');

    // Generate code for each definition
    for (const def of definitions) {
        try {
            if (def.type === 'interface' && !def.partial) {
                lines.push(generateInterface(def));
            } else if (def.type === 'dictionary' && !def.partial) {
                lines.push(generateDictionary(def));
            }
            // Skip other types for now (callback, enum, typedef, includes, namespace)
        } catch (err) {
            console.error(`Error generating ${def.type} ${def.name}:`, err.message);
        }
    }

    await fs.writeFile(outputPath, lines.join('\n'), 'utf-8');
}

/**
 * Main entry point
 */
async function main() {
    const args = process.argv.slice(2);

    if (args.includes('--help') || args.includes('-h')) {
        console.log('Generate MoonBit bindings from WebIDL JSON');
        console.log('');
        console.log('Usage:');
        console.log('  node scripts/generate_moonbit.mjs [input.json] [--output dir]');
        console.log('');
        console.log('Options:');
        console.log('  --output, -o DIR   Output directory (default: generated/)');
        console.log('  --help, -h         Show this help');
        return;
    }

    let inputFile = null;
    let outputDir = path.join(projectRoot, 'generated');

    for (let i = 0; i < args.length; i++) {
        if (args[i] === '--output' || args[i] === '-o') {
            outputDir = args[++i];
        } else if (!args[i].startsWith('-')) {
            inputFile = args[i];
        }
    }

    // Default to dom.json if no input specified
    if (!inputFile) {
        inputFile = path.join(projectRoot, 'idl_json/dom.json');
    }

    console.log(`Reading: ${inputFile}`);
    console.log(`Output: ${outputDir}\n`);

    // Read JSON
    const jsonContent = await fs.readFile(inputFile, 'utf-8');
    const definitions = JSON.parse(jsonContent);

    console.log(`Loaded ${definitions.length} definitions`);

    // Merge partial definitions
    const mergedDefinitions = mergePartialDefinitions(definitions);
    console.log(`Merged into ${mergedDefinitions.length} definitions (${definitions.length - mergedDefinitions.length} partials merged)`);

    // Create output directory
    await fs.mkdir(outputDir, { recursive: true });

    // For now, generate one file with Event and EventTarget
    const eventDefs = mergedDefinitions.filter(d =>
        d.name === 'Event' ||
        d.name === 'EventInit' ||
        d.name === 'EventTarget'
    );

    if (eventDefs.length > 0) {
        const outputFile = path.join(outputDir, 'event.mbt');
        await generateMoonbitFile(eventDefs, outputFile);
        console.log(`✓ Generated: ${outputFile} (${eventDefs.length} definitions)`);
    }

    console.log('\n✓ Code generation complete');
}

main().catch(console.error);
