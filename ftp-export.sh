#!/usr/bin/env bash

WORKING_DIR="$(pwd)"

output() {
  local MESSAGE="${1}"
  local COLOR="${2}"

  if [ -z "${COLOR}" ]; then
    COLOR=2
  fi

  echo -e "$(tput setaf ${COLOR})${MESSAGE}$(tput sgr 0)"
}

output_warning() {
  local MESSAGE="${1}"
  local COLOR=3

  output "${MESSAGE}" "${COLOR}"
}

output_error() {
  local MESSAGE="${1}"
  local COLOR=1

  >&2 output "${MESSAGE}" "${COLOR}"
}

help() {
  cat << EOF
ftp-export: Usage: ftp-export <EXPORTED_FILES> <HOSTNAME> <USERNAME> <PASSWORD> <BACKUP_PATH> [REMOTE_DIRECTORY]
EOF

  exit 1
}

if [ "${1}" == "-h" ] || [ "${1}" == "--help" ]; then
  help
fi

unknown_command() {
  output_error "ftp-export: Unknown command. See 'ftp-export --help'"

  exit 1
}

if [ "${#}" -lt 2 ] || [ "${#}" -gt 3 ]; then
  unknown_command
fi

cd "${WORKING_DIR}"
