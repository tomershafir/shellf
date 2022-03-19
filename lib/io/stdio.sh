#! /bin/bash
#
# Bash library that supplies standard I/O utilities.
#######################################

export readonly BASH_STDIN_FILE_DESCRIPTOR=0
export readonly BASH_STDOUT_FILE_DESCRIPTOR=1
export readonly BASH_STDERR_FILE_DESCRIPTOR=2

readonly ERROR="ERROR:"
readonly INFO="INFO:"
readonly DEBUG="DEBUG::"
readonly WARNING="WARNING:"

#######################################
# The function appends the accepted arguments to stdout.
#
# Globals:
#   BASH_STOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of data elements to write to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::print() {
    for val in "$@"; do
        echo "${val}"
    done
}

#######################################
# The function appends the accepted error input to stdout with an error prefix.
#
# Globals:
#   ERROR
#   BASH_STDOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of error data elements to write to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::printerr() {
    for val in "$@"; do
        echo "${ERROR} ${val}"
    done
}

#######################################
# The function appends the accepted info input to stdout with an info prefix.
#
# Globals:
#   INFO
#   BASH_STDOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of info data elements to write to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::info() {
    for val in "$@"; do
        echo "${INFO} ${val}"
    done
}

#######################################
# The function appends the accepted warning input to stdout with a warning prefix.
#
# Globals:
#   WARNING
#   BASH_STDOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of warning data elements to write to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::warn() {
    for val in "$@"; do
        echo "${WARNING} ${val}"
    done
}

#######################################
# The function appends the accepted debug input to stdout with a debug prefix.
#
# Globals:
#   DEBUG
#   BASH_STDOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of debug data elements to write to stdout
# Outputs:
#   Appends the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::debug() {
    for val in "$@"; do
        echo "${DEBUG} ${val}"
    done
}
