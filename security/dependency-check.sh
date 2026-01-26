#!/bin/bash
set -e

DC_VERSION=8.4.0
DC_DIR="dependency-check"

if [ ! -d "$DC_DIR" ]; then
  curl -L https://github.com/jeremylong/DependencyCheck/releases/download/v${DC_VERSION}/dependency-check-${DC_VERSION}-release.zip -o dc.zip
  unzip dc.zip
fi

./${DC_DIR}/bin/dependency-check.sh \
  --project "swiggy" \
  --scan . \
  --format HTML \
  --out dependency-check-report \
  --nvdApiKey "$NVD_API_KEY"
