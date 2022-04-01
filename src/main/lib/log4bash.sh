#! /bin/bash
#
# Logging utilities for Bash.
#######################################

# shellcheck source=/Users/tomersha/Desktop/Tomer/cs/projects/shellf/src/main/lib/colors.sh
source /Users/tomersha/Desktop/Tomer/cs/projects/shellf/src/main/lib/colors.sh

# readonly BASH_STDIN_FILE_HANDLE=0
# readonly BASH_STDOUT_FILE_HANDLE=1
# readonly BASH_STDERR_FILE_HANDLE=2

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
blog::log() {
    for val in "$@"; do
        echo "${val}"
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
blog::err() {
    for val in "$@"; do
        echo "${RED_FG}${ERROR} ${val}${WHITE_FG}"
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
blog::info() {
    for val in "$@"; do
        echo "${GREEN_FG}${INFO} ${val}${WHITE_FG}"
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
blog::warn() {
    for val in "$@"; do
        echo "${YELLOW_FG}${WARNING} ${val}${WHITE_FG}"
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
blog::debug() {
    for val in "$@"; do
        echo "${BLUE_FG}${DEBUG} ${val}${WHITE_FG}"
    done
}
