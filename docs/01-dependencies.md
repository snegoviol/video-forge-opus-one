<!--    
    ================================================================================================
    
    Copyright (c) 2026 Ilya Snegov (aka Sierra Arn)
    
    Dedicated to the public domain under the Creative Commons
    CC0 1.0 Universal Public Domain Dedication (the "Dedication").
    You may obtain a copy of the Dedication at
    
    https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

    ================================================================================================
    docs/01-dependencies.md
    ================================================================================================
-->

# I. Dependencies Overview

> *This document describes the runtime dependencies required by Video Forge for Opus One — Pixi, build backends, and workspace packages.*

<!--    
    ================================================================================================
-->

## System Dependencies

| Dependency | Repository | What it is | Role in the project |
|---|---|---|---|
| Pixi | [prefix‑dev/pixi](https://github.com/prefix-dev/pixi) | Package and environment manager | 1. Resolves and installs conda dependencies. <br>2. Manages the project's virtual environment and lockfile. <br>3. Acts as the project's task runner. |
| pixi-build-python | [prefix‑dev/pixi](https://github.com/prefix-dev/pixi) | Pixi build backend for Python packages | Builds the `scripts` conda package from `pyproject.toml`. |

<!--    
    ================================================================================================
-->

## Pixi Dependencies

| Dependency | Source | What it is | Role in the project | Upstream / runtime repositories |
|---|---|---|---|---|
| `scripts` | [recipes/scripts/<br>pixi.toml](../recipes/scripts/pixi.toml) | Python video pipeline CLIs | Fetches release FLACs, compiles Typst covers, encodes still-image MP4s, and writes MP4 release metadata. | - [python/cpython](https://github.com/python/cpython)<br>- [pypa/hatch](https://github.com/pypa/hatch)<br>- [FFmpeg/FFmpeg](https://github.com/FFmpeg/FFmpeg)<br>- [quodlibet/mutagen](https://github.com/quodlibet/mutagen)<br>- [typst/typst](https://github.com/typst/typst) |

<!--    
    ================================================================================================
-->
