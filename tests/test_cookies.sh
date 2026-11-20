#!/bin/bash
#
# Without cookies.txt, every journal script stops with a message before it
# creates a folder or downloads anything. Runs offline: wget and curl are
# replaced by stand-ins that record any call.
#
# Run from anywhere: bash tests/test_cookies.sh

repo=$(cd "$(dirname "$0")/.." && pwd) || exit 1
tmp=$(mktemp -d) || exit 1
trap 'rm -rf "$tmp"' EXIT

mkdir "$tmp/bin" "$tmp/work"
for tool in wget curl; do
    printf '#!/bin/sh\necho "%s $*" >> "%s/calls"\n' "$tool" "$tmp" > "$tmp/bin/$tool"
    chmod +x "$tmp/bin/$tool"
done

failures=0
count=0

for script in "$repo"/*.sh; do
    count=$((count + 1))
    name=$(basename "$script")
    output=$(cd "$tmp/work" && PATH="$tmp/bin:$PATH" bash "$script" 2>&1)

    if [[ "$output" != *"Please extract the 'cookies.txt'"* ]]; then
        echo "FAIL: $name did not ask for cookies.txt" >&2
        failures=$((failures + 1))
    elif [ -n "$(ls -A "$tmp/work")" ] || [ -e "$tmp/calls" ]; then
        echo "FAIL: $name created files or downloaded without cookies.txt" >&2
        failures=$((failures + 1))
    fi

    find "$tmp/work" -mindepth 1 -delete
    rm -f "$tmp/calls"
done

if [ "$failures" -gt 0 ]; then
    echo "FAILED: $failures of $count scripts" >&2
    exit 1
fi
echo "PASS: $count scripts"
