#!/usr/bin/env node

/**
 * Copies WebIDL definition files from @webref/idl package to webidls/ directory
 * 
 * Usage:
 *   npm run fetch-webref                    # Copy subset (Event-related specs)
 *   npm run fetch-webref -- --all           # Copy all specs
 *   npm run fetch-webref -- --spec dom      # Copy specific spec
 */

import { promises as fs } from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// Initial subset of specs to start with (DOM, Events, HTML basics)
const INITIAL_SUBSET = [
    'dom',           // Event, EventTarget, EventListener, Document, Element, Node
    'uievents',      // UI Events (MouseEvent, KeyboardEvent, etc.)
    'html',          // HTMLElement and related interfaces
];

async function main() {
    const args = process.argv.slice(2);
    const fetchAll = args.includes('--all');
    const specIndex = args.indexOf('--spec');
    const specificSpec = specIndex !== -1 ? args[specIndex + 1] : null;

    const sourceDir = path.join(__dirname, '../node_modules/@webref/idl');
    const outputDir = path.join(__dirname, '../webidls/webref');

    // Create output directory
    await fs.mkdir(outputDir, { recursive: true });

    console.log('🔍 Copying WebIDL files from @webref/idl...\n');

    // List all .idl files in source directory
    const allFiles = await fs.readdir(sourceDir);
    const idlFiles = allFiles.filter(f => f.endsWith('.idl'));

    // Determine which files to copy
    let filesToCopy;
    if (specificSpec) {
        const specFile = `${specificSpec}.idl`;
        if (!idlFiles.includes(specFile)) {
            console.error(`❌ Spec file "${specFile}" not found`);
            console.log(`\nAvailable specs: ${idlFiles.slice(0, 10).join(', ')}${idlFiles.length > 10 ? ', ...' : ''}`);
            process.exit(1);
        }
        filesToCopy = [specFile];
    } else if (fetchAll) {
        filesToCopy = idlFiles;
    } else {
        filesToCopy = idlFiles.filter(f => {
            const shortname = f.replace('.idl', '');
            return INITIAL_SUBSET.includes(shortname);
        });
    }

    console.log(`📦 Processing ${filesToCopy.length} file(s):\n`);

    const summary = {
        total: filesToCopy.length,
        success: 0,
        failed: 0,
        files: []
    };

    for (const filename of filesToCopy) {
        try {
            const sourcePath = path.join(sourceDir, filename);
            const destPath = path.join(outputDir, filename);

            // Read source file
            const content = await fs.readFile(sourcePath, 'utf-8');

            if (!content || content.trim().length === 0) {
                console.log(`⚠️  ${filename.padEnd(35)} → Empty file (skipped)`);
                summary.files.push({ filename, status: 'skipped', reason: 'empty' });
                continue;
            }

            // Write to destination
            await fs.copyFile(sourcePath, destPath);

            const lines = content.split('\n').length;
            const size = (content.length / 1024).toFixed(1);

            console.log(`✅ ${filename.padEnd(35)} → ${lines.toString().padStart(5)} lines, ${size.padStart(6)} KB`);

            summary.success++;
            summary.files.push({ filename, lines, size: parseFloat(size), status: 'success' });

        } catch (err) {
            console.error(`❌ ${filename}: ${err.message}`);
            summary.failed++;
            summary.files.push({ filename, status: 'failed', error: err.message });
        }
    }

    // Write summary JSON
    const summaryPath = path.join(outputDir, '_fetch_summary.json');
    await fs.writeFile(summaryPath, JSON.stringify(summary, null, 2), 'utf-8');

    console.log(`\n${'═'.repeat(80)}`);
    console.log(`📊 Summary:`);
    console.log(`   Total files:    ${summary.total}`);
    console.log(`   ✅ Success:     ${summary.success}`);
    console.log(`   ❌ Failed:      ${summary.failed}`);
    console.log(`   📁 Output dir:  ${outputDir}/`);
    console.log(`   📄 Summary:     ${summaryPath}`);
    console.log(`${'═'.repeat(80)}\n`);
}

main().catch(err => {
    console.error('Fatal error:', err);
    process.exit(1);
});
