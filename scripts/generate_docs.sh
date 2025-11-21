#!/bin/bash
# Generate documentation from proto files
# Uses protoc-gen-doc (Go-based) or buf (modern alternative)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROTOS_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DOCS_DIR="$PROTOS_DIR/docs"
OUTPUT_FORMAT="${1:-html}"  # html, markdown, or json

echo "Generating proto documentation..."
echo "Output format: $OUTPUT_FORMAT"
echo "Output directory: $DOCS_DIR"

# Get Go bin directory and add to PATH
GO_BIN=$(go env GOPATH)/bin
export PATH="$GO_BIN:$PATH"

# Check if protoc-gen-doc is installed
if command -v protoc-gen-doc &> /dev/null; then
    echo "Found: protoc-gen-doc"
    USE_PROTOC_GEN_DOC=true
elif command -v buf &> /dev/null; then
    echo "Found: buf"
    USE_BUF=true
else
    echo "ERROR: Neither protoc-gen-doc nor buf found"
    echo ""
    echo "Installing protoc-gen-doc..."
    go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest
    export PATH="$GO_BIN:$PATH"
    
    # Verify installation
    if command -v protoc-gen-doc &> /dev/null; then
        echo "âœ“ protoc-gen-doc installed successfully"
        USE_PROTOC_GEN_DOC=true
    else
        echo "ERROR: Failed to install protoc-gen-doc"
        echo "Make sure Go is installed and GOPATH/bin is in your PATH"
        echo "  export PATH=\"\$(go env GOPATH)/bin:\$PATH\""
        exit 1
    fi
fi

# Create output directory
mkdir -p "$DOCS_DIR"

cd "$PROTOS_DIR"

if [ "$USE_PROTOC_GEN_DOC" = true ]; then
    # Using protoc-gen-doc
    case $OUTPUT_FORMAT in
        html)
            OUTPUT_FILE="$DOCS_DIR/index.html"
            OPT="html,index.html"
            ;;
        markdown)
            OUTPUT_FILE="$DOCS_DIR/api.md"
            OPT="markdown,api.md"
            ;;
        json)
            OUTPUT_FILE="$DOCS_DIR/api.json"
            OPT="json,api.json"
            ;;
        *)
            echo "ERROR: Unknown format: $OUTPUT_FORMAT"
            echo "Supported formats: html, markdown, json"
            exit 1
            ;;
    esac

    echo ""
    echo "Generating $OUTPUT_FORMAT documentation..."
    echo "Using glob patterns to automatically include all proto files..."
    
    # Use glob patterns to automatically include all proto files
    # This ensures new files are automatically included without updating the script
    protoc \
        --doc_out="$DOCS_DIR" \
        --doc_opt="$OPT" \
        common/*.proto \
        article/*.proto \
        contact/*.proto \
        ticket/*.proto \
        *.proto

    if [ $? -eq 0 ]; then
        echo ""
        echo "âœ“ Documentation generated: $OUTPUT_FILE"
    else
        echo "ERROR: Failed to generate documentation"
        exit 1
    fi

elif [ "$USE_BUF" = true ]; then
    # Using buf (if buf.gen.doc.yaml is configured)
    echo ""
    echo "Generating documentation with buf..."
    if [ -f "buf.gen.doc.yaml" ]; then
        buf generate --template buf.gen.doc.yaml
    else
        echo "ERROR: buf.gen.doc.yaml not found"
        echo "Please create buf configuration file or use protoc-gen-doc"
        exit 1
    fi
fi

echo ""
echo "Done! Documentation available in $DOCS_DIR"

