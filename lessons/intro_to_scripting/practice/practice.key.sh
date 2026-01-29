#!/bin/bash

echo "Hello"

# -----------------------------
# Positional parameters
# -----------------------------
n_iter="${1:-}"

if [[ -z "$n_iter" ]]; then
    echo "Error: number of iterations is required as first argument"
    echo "Usage: $0 N_ITER [--file_path PATH]"
    exit 1
fi

# Validate that n_iter is a positive integer
if ! [[ "$n_iter" =~ ^[0-9]+$ ]]; then
    echo "Error: N_ITER must be a positive integer"
    exit 1
fi

echo "Number of iterations: $n_iter"

# For loop (no external seq needed)
for ((i=1; i<=n_iter; i++)); do
    echo "Iteration $i"
done
echo "Done!"

# -----------------------------
# Named parameters
# -----------------------------
shift
FILE_PATH="/tmp/default.txt"

usage() {
    echo "Usage: $0 N_ITER [--file_path FILE_PATH]"
    echo
    echo "Arguments:"
    echo "  N_ITER             Number of iterations"
    echo "  --file_path PATH   Path to the file (default: /tmp/default.txt)"
    echo
    echo "Options:"
    echo "  --usage            Display this usage message"
}

# Handle long options
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --usage)
            usage
            exit 0
            ;;
        --file_path)
            if [[ -z "${2:-}" ]]; then
                echo "Error: --file_path requires an argument"
                exit 1
            fi
            FILE_PATH="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            usage
            exit 1
            ;;
    esac
done

# Ensure file exists (or create it)
if [[ ! -e "$FILE_PATH" ]]; then
    echo "File does not exist, creating: $FILE_PATH"
    touch "$FILE_PATH"
fi

echo "File path: $FILE_PATH"

# -----------------------------
# Write iterations to file
# -----------------------------
for ((i=1; i<=n_iter; i++)); do
    echo "Writing iteration $i to $FILE_PATH"
    echo "Iteration $i" >> "$FILE_PATH"
done
echo "Done writing to $FILE_PATH!"

# -----------------------------
# Read user-provided file
# -----------------------------
read -rp "Enter a file path to read: " READ_FILE

if [[ ! -e "$READ_FILE" ]]; then
    echo "Error: file path '$READ_FILE' does not exist."
    exit 1
fi

echo "Contents of $READ_FILE:"
cat "$READ_FILE"
