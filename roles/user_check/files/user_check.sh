#!/bin/bash

if id "ansible" >/dev/null 2>&1; then
  echo "User 'ansible' exists."
else
  echo "ERROR: User 'ansible' does not exist."
  exit 1
fi

