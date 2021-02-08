#! /bin/bash
set -e

echo $CIRCLE_TAG

if [[ $CIRCLE_TAG == *"next"* ]]; then
  echo "pre release - releasing to dist tag next"
  yarn deploy --dist-tag next
else
  echo "normal release - releasing to dist tag latest"
  yarn deploy
fi
