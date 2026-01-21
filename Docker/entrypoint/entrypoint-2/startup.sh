#! /bin/bash
echo "Startup script is running..."
# This tells the shell running the script to replace
# its own process with whatever command after the script name
# in the Dockerfile or command line.
exec "$@"