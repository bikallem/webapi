#!/usr/bin/env node
/**
 * Parse WebIDL files to JSON using webidl2
 * 
 * Usage:
 *   node scripts/parse_idl.mjs [input.idl] [--output dir]
 * 
 * If no input file specified, processes all files in webidls/webref/
 */

import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';
import { parse as parseWebIDL } from 'webidl2';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const projectRoot = path.join(__dirname, '..');

/**
 * Parse a single IDL file to JSON
 */
async function parseIdlFile(idlPath, outputDir) {
    console.log(`Parsing: ${idlPath}`);

    try {
        // Read IDL file
        const idlContent = await fs.readFile(idlPath, 'utf-8');

        // Parse with webidl2
        const ast = parseWebIDL(idlContent);

        // Create output filename
        const basename = path.basename(idlPath, '.idl');
        const outputPath = path.join(outputDir, `${basename}.json`);

        // Write JSON
        await fs.mkdir(outputDir, { recursive: true });
        await fs.writeFile(
            outputPath,
            JSON.stringify(ast, null, 2),
            'utf-8'
        );

        console.log(`✓ Written: ${outputPath} (${ast.length} definitions)`);
        return { success: true, file: idlPath, count: ast.length };
    } catch (error) {
        console.error(`✗ Error parsing ${idlPath}:`, error.message);
        return { success: false, file: idlPath, error: error.message };
    }
}

/**
 * Main entry point
 */
async function main() {
    const args = process.argv.slice(2);

    // Parse arguments
    let inputFiles = [];
    let outputDir = path.join(projectRoot, 'idl_json');

    for (let i = 0; i < args.length; i++) {
        const arg = args[i];
        if (arg === '--output' || arg === '-o') {
            outputDir = args[++i];
        } else if (arg === '--help' || arg === '-h') {
            console.log('Parse WebIDL files to JSON using webidl2');
            console.log('');
            console.log('Usage:');
            console.log('  node scripts/parse_idl.mjs [files...] [OPTIONS]');
            console.log('');
            console.log('Options:');
            console.log('  --output, -o DIR   Output directory (default: idl_json/)');
            console.log('  --help, -h         Show this help');
            console.log('');
            console.log('Examples:');
            console.log('  node scripts/parse_idl.mjs');
            console.log('  node scripts/parse_idl.mjs webidls/webref/dom.idl');
            console.log('  node scripts/parse_idl.mjs webidls/webref/*.idl -o output/');
            return;
        } else if (!arg.startsWith('-')) {
            inputFiles.push(arg);
        }
    }

    // If no input files, use default webref files
    if (inputFiles.length === 0) {
        const webrefDir = path.join(projectRoot, 'webidls/webref');
        const files = await fs.readdir(webrefDir);
        inputFiles = files
            .filter(f => f.endsWith('.idl'))
            .map(f => path.join(webrefDir, f));
    }

    console.log(`Parsing ${inputFiles.length} IDL files to JSON...`);
    console.log(`Output directory: ${outputDir}\n`);

    // Parse all files
    const results = await Promise.all(
        inputFiles.map(file => parseIdlFile(file, outputDir))
    );

    // Summary
    const successful = results.filter(r => r.success);
    const failed = results.filter(r => !r.success);

    console.log('\n' + '='.repeat(70));
    console.log(`✓ Successfully parsed: ${successful.length}/${results.length} files`);
    if (failed.length > 0) {
        console.log(`✗ Failed: ${failed.length} files`);
        failed.forEach(f => console.log(`  - ${f.file}: ${f.error}`));
    }

    const totalDefs = successful.reduce((sum, r) => sum + r.count, 0);
    console.log(`Total definitions: ${totalDefs}`);
    console.log('='.repeat(70));
}

main().catch(console.error);
