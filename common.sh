#!/bin/bash
set -e

# Run a command and echo it first
run() {
  echo "+ $*"
  "$@"
}

