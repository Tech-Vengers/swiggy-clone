#!/bin/bash
set -e

DC_VERSION=8.4.0
DC_DIR="dependency-check"

# Download only if not present
if [ ! -d "$DC_DIR" ]; then
  curl -L https://github.com/jeremylong/DependencyCheck/releases/download/v${DC_VERSION}/dependency-check-${DC_VERSION}-release.zip -o dc.zip
  unzip dc.zip
fi

# Run scan
./${DC_DIR}/bin/dependency-check.sh \
  --project "swiggy" \
  --scan . \
  --format HTML \
  --out dependency-check-report
