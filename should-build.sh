#!/bin/bash

set -eux

if [[ "$PROJECT_TYPE" == "production" ]] && [[ "$CURRENT_PROJECT" == "production" ]] ; then
  echo "✅ - PRODUCTION Build can proceed"
  exit 1;
fi

if [[ "$PROJECT_TYPE" == "staging" ]] && [[ "$URRENT_PROJECT" == "staging" ]] ; then
  echo "✅ - STAGING BUILD can proceed"
  exit 1;
fi
