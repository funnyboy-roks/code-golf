#! /bin/sh
#
# Usage: ./js.sh <file> [...args]

FILE="$1"

if [ ! -f $1 ]; then
    echo "$1: No such file" >&2
    exit 1
fi

CONTENT="
const process = require('process');
print=console.log;
let arguments = process.argv.slice(2);
$(cat $FILE)
"

echo $CONTENT | node - ${@:2}

