#!/usr/bin/env bash
set -euo pipefail
TAG="v2025-11-04"
git add .github/workflows || true
git commit -m "add autodeploy workflows" || true
git push origin main || true
git tag -a "$TAG" -m "Public release $TAG" || true
git push origin "$TAG"
echo "Tag $TAG pushed. Check Actions → 'Publish Release (attach public zip)'."
