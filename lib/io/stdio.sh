#! /bin/bash
#
# Bash library that supplies standard I/O utilities.

export readonly BASH_STDIN_FILE_DESCRIPTOR=0
export readonly BASH_STOUT_FILE_DESCRIPTOR=1
export readonly BASH_STDERR_FILE_DESCRIPTOR=2

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
    echo "$@" &> "${BASH_STOUT_FILE_DESCRIPTOR}"
}

#######################################
# The function appends the accepted arguments to stderr.
#
# Globals:
#   BASH_STERR_FILE_DESCRIPTOR
# Arguments:
#   A list of data elements to write to stderr
# Outputs:
#   Appends the accepted arguments to stderr
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::printerr() {
    echo "$@" &> "${BASH_STDERR_FILE_DESCRIPTOR}"
}
