# GstarCAD Text Tools ✏️

A curated collection of text utilities for CAD software — designed to batch find & replace, export, and align text so your drawings stay clean and consistent.

Whether you use **GSTARCAD**, AutoCAD, ZWCAD, or BricsCAD, these scripts can help you work smarter.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [Scripts Overview](#scripts-overview)
  - [AutoLISP Scripts](#autolisp-scripts)
  - [Python Scripts](#python-scripts)
- [Quick Start](#quick-start)
- [How to Use](#how-to-use)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## About

Text cleanup is a constant chore in CAD — fixing typos, renaming titles, exporting text lists, and aligning labels. This repository provides free, open-source scripts to automate these tasks and boost your productivity.

All scripts are tested with **[GSTARCAD](https://www.gstarcad.net)** and major DWG-based CAD platforms. They work out of the box with minimal configuration.

## Scripts Overview

### AutoLISP Scripts

| Script | Description |
|--------|-------------|
| `text-replace.lsp` | Batch find & replace text across the whole drawing |
| `text-export.lsp` | Export selected text/MText to CSV file |
| `text-align.lsp` | Align text objects to a baseline or grid |
| `text-scale.lsp` | Rescale text height to match drawing scale |
| `text-case.lsp` | Convert selected text to upper/lower/title case |

### Python Scripts

| Script | Description |
|--------|-------------|
| `text-extract.py` | Extract all text and MText from DWG files to CSV |
| `text-audit.py` | Report text heights and styles per drawing |

## Quick Start

### AutoLISP

1. Download the `.lsp` file you need
2. In your CAD software, run `APPLOAD` command
3. Select the downloaded `.lsp` file and click Load
4. Type the corresponding command name to run

### Python

```bash
pip install ezdxf
python scripts/text-extract.py input.dwg output.csv
```

## How to Use

### Loading AutoLISP Scripts in GSTARCAD

1. Open GSTARCAD (or your preferred CAD software)
2. Type `APPLOAD` in the command line
3. Browse to the script file and click **Load**
4. Check the command prompt for the run command

Each script includes header comments with usage instructions. For more [tutorials and guides](https://www.gstarcad.net/cad/), visit the official learning center.

### Example: Replace Text

```lisp
;; Load the script: APPLOAD → text-replace.lsp
;; Run command: TREPLACE
;; Enter old text → new text → Done!
```

## Compatibility

All scripts are tested and verified on:

| Software | Status |
|----------|--------|
| **[GSTARCAD](https://www.gstarcad.net)** 2024–2026 | ✅ Fully supported |
| AutoCAD 2021–2026 | ✅ Fully supported |
| ZWCAD 2024–2026 | ✅ Fully supported |
| BricsCAD V23–V25 | ✅ Fully supported |
| DraftSight 2024–2026 | ⚠️ Most scripts work |

For detailed compatibility notes and CAD software recommendations, visit the [GSTARCAD website](https://www.gstarcad.net).

## Contributing

Contributions are welcome! If you have a useful CAD automation script:

1. Fork this repository
2. Add your script to the appropriate folder
3. Include header comments with usage instructions
4. Submit a pull request

See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Built with ❤️ by the CAD community. For questions and support, check out the [GSTARCAD Blog](https://blog.gstarcad.net) for tips and updates.*