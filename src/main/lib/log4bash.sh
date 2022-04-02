#! /bin/bash
#
# Logging utilities for Bash.
#######################################

# file descriptor of stdin
export readonly BASH_STDIN_FILE_HANDLE=0

# file descriptor of stdout
export readonly BASH_STDOUT_FILE_HANDLE=1

# file descriptor of stderr
export readonly BASH_STDERR_FILE_HANDLE=2

RED_FG="$(tput setaf 1)"
readonly RED_FG
GREEN_FG="$(tput setaf 2)"
readonly GREEN_FG
YELLOW_FG="$(tput setaf 3)"
readonly YELLOW_FG
BLUE_FG="$(tput setaf 4)"
readonly BLUE_FG
WHITE_FG="$(tput setaf 7)"
readonly WHITE_FG

readonly ERROR="[ERROR]:"
readonly INFO="[INFO]:"
readonly DEBUG="[DEBUG]:"
readonly WARNING="[WARNING]:"

#######################################
# The function appends the accepted arguments to stdout.
#
# Globals:
#   None
# Arguments:
#   A list of data elements to log to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
log4bash::log() {
    for val in "$@"; do
        printf "%s\n" "${val}"
    done
}

#######################################
# The function appends the accepted error input to stdout with an error prefix.
#
# Globals:
#   ERROR
# Arguments:
#   A list of error data elements to log to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
log4bash::err() {
    for val in "$@"; do
        printf "%s\n" "${RED_FG}${ERROR} ${val}${WHITE_FG}"
    done
}

#######################################
# The function appends the accepted info input to stdout with an info prefix.
#
# Globals:
#   INFO
# Arguments:
#   A list of info data elements to log to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
log4bash::info() {
    for val in "$@"; do
        printf "%s\n" "${GREEN_FG}${INFO} ${val}${WHITE_FG}"
    done
}

#######################################
# The function appends the accepted warning input to stdout with a warning prefix.
#
# Globals:
#   WARNING
# Arguments:
#   A list of warning data elements to log to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
log4bash::warn() {
    for val in "$@"; do
        printf "%s\n" "${YELLOW_FG}${WARNING} ${val}${WHITE_FG}"
    done
}

#######################################
# The function appends the accepted debug input to stdout with a debug prefix.
#
# Globals:
#   DEBUG
# Arguments:
#   A list of debug data elements to log to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
log4bash::debug() {
    for val in "$@"; do
        printf "%s\n" "${BLUE_FG}${DEBUG} ${val}${WHITE_FG}"
    done
}
