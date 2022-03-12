#! /bin/bash
#
# Bash library that supplies standard I/O utilities.

export readonly BASH_STDIN_FILE_DESCRIPTOR=0
export readonly BASH_STOUT_FILE_DESCRIPTOR=1
export readonly BASH_STDERR_FILE_DESCRIPTOR=2

#######################################
# The function outputs the accepted arguments to stdout while overriding existing stdout data.
#
# Globals:
#   BASH_STOUT_FILE_DESCRIPTOR
# Arguments:
#   A list of data elements to write to stdout
# Outputs:
#   Writes the accepted arguments to stdout
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::stdout() {
    if ! echo "$@" > "${BASH_STOUT_FILE_DESCRIPTOR}"; then 
        append_to_stderr "(error): Failed to write to stdout."
        return 1
    fi
    return 0
}

#######################################
# The function outputs the accepted arguments to stderr while overriding existing stderr data.
#
# Globals:
#   BASH_STERR_FILE_DESCRIPTOR
# Arguments:
#   A list of data elements to write to stderr
# Outputs:
#   Writes the accepted arguments to stderr
# Returns:
#   0 if operation succeeded, non-zero otherwise
#######################################
stdio::stderr() {
    if ! echo "$@" > "${BASH_STDERR_FILE_DESCRIPTOR}"; then 
        append_to_stderr "(error): Failed to write to stderr."
        return 1
    fi
    return 0
}

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
stdio::append_to_stdout() {
    if ! echo "$@" &> "${BASH_STOUT_FILE_DESCRIPTOR}"; then 
        append_to_stderr "(error): Failed to append to stdout."
        return 1
    fi
    return 0
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
stdio::append_to_stderr() {
    if ! echo "$@" &> "${BASH_STDERR_FILE_DESCRIPTOR}"; then 
        append_to_stderr "(error): Failed to write to stderr."
        return 1
    fi
    return 0
}
