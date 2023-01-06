#!/bin/bash

set -eux

if [[ "$PROJECT_TYPE" == "production" ]] && [[ "$CURRENT_PROJECT" == "production" ]] && [[ "$VERCEL_GIT_COMMIT_REF" == "production" ]] ; then
  echo "✅ - PRODUCTION Build can proceed"
  exit 1;
fi

if [[ "$PROJECT_TYPE" == "staging" ]] && [[ "$URRENT_PROJECT" == "staging" ]] && [[ "$VERCEL_GIT_COMMIT_REF" == "staging" ]] ; then
  echo "✅ - STAGING BUILD can proceed"
  exit 1;
fi
