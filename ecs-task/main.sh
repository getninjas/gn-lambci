#!/bin/bash

. $(dirname $0)/common.sh

{ "$SCRIPT_DIR/clone.sh" && echo -e "Variables:\n"; env  && cd "$CLONE_DIR" && $LAMBCI_DOCKER_CMD; } 2>&1 | tee "$LOG_FILE"

cleanup ${PIPESTATUS[0]}
