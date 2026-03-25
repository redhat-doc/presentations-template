# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

LaTeX Beamer presentation template with Red Hat branding. Each presentation lives in its own subdirectory with its own Makefile. The root Makefile iterates over subdirectories listed in `SUBDIRS`.

## Build Commands

```bash
make          # Build all presentations (iterates SUBDIRS)
make clean    # Clean build artifacts
make clobber  # Deep clean
make test     # Run tests across all SUBDIRS
```

To build a single presentation, run `make` inside its subdirectory.

## Architecture

- **`beamerthemeRedHat.sty`** — Beamer theme file providing Red Hat-branded slides. Requires XeLaTeX or LuaLaTeX (uses `fontspec` for Red Hat Display fonts from a `fonts/` directory). Supports `dark` and `light` theme options.
- **`redhat-logo.png`** — Logo used by the theme via `\redhatlogo{redhat-logo.png}`.
- **`Makefile`** — Root Makefile that delegates to subdirectory Makefiles via `SUBDIRS`. Add new presentations by appending to `SUBDIRS`.

## Theme Key Commands

| Command | Purpose |
|---|---|
| `\slidedescription{text}` | Top-left marker text on content slides |
| `\redhatlogo{path}` | Set the logo file |
| `\secondauthor`, `\thirdauthor`, `\fourthauthor` | Additional authors (up to 4) |
| `\confidentialassociates`, `\confidentialnda`, `\confidentialnodist` | Confidentiality levels |
| `\finalframe[text]` | "Thank You" final slide |
| `\finalframeimage[text]{image}` | Final slide with left-side image |
| `\finalframeimageone`, `\finalframeimagetwo`, `\finalframeimagethree` | Pre-defined image final slides |
| `\finaltext{text}` | Extra text on the final slide |

Frame options: `hidepagenumber`, `hidelogo` (per-frame via `\begin{frame}[hidepagenumber]`).
