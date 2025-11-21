# Protos

Protocol Buffer definitions for Weebi gRPC services

## Overview

This repository contains all `.proto` files used across Weebi services, including:
- Common types and utilities
- Service definitions (Fence, Article, Contact, Ticket, WeebiApp)
- Domain models (User, Firm, Boutique, Device, etc.)

## Documentation

### Using protoc-gen-doc (Recommended)

`protoc-gen-doc` is a Go-based tool that generates HTML, Markdown, or JSON documentation from `.proto` files.

**Installation:**
```bash
go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest
```

**Generate HTML documentation:**
```bash
protoc --doc_out=docs --doc_opt=html,index.html \
  common/*.proto \
  article/*.proto \
  contact/*.proto \
  ticket/*.proto \
  *.proto
```

Open `docs/index.html` in a web browser to view the generated HTML documentation.

**Quick start:**
```bash
# Generate HTML documentation
bash scripts/generate_docs.sh html

# Or using PowerShell
.\scripts\generate_docs.ps1 html
.\scripts\generate_docs.ps1 markdown
.\scripts\generate_docs.ps1 json
```

View the generated documentation at `docs/index.html`.

## Versioning

This repository uses semantic versioning. Check `.protos-version` files in dependent projects to see which version they use.

Current version: See `VERSION` file

## Usage

### Go Projects

```go
import "github.com/weebi-com/protos/fence/service"
```

### Dart Projects

```dart
import 'package:protos_weebi/protos_weebi.dart';
```

## Generating Code

### Go

See `weebi_express/scripts/generate_protos.ps1` or `generate_protos.sh`


## Contributing

When adding or modifying proto files:
1. Update the version in `VERSION`
2. Tag the release: `git tag v1.0.0 && git push origin v1.0.0`
3. Update dependent projects' `.protos-version` files
4. Regenerate documentation: `bash scripts/generate_docs.sh` (done by the CI)

## Roadmap
- Pre-commit hooks to verify proto syntax
- CI checks that both projects use the same proto version