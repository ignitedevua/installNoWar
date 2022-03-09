#!/bin/sh
main() {
    threads="${1:-3}"
    echo "Setup, threads: ${threads}" 

    echo "Check python3 ..."
    which python3 || exit 1
    echo "OK"

    echo "Cloning repo ..."
    git clone -b "feaure/min-logs" "https://gitlab.com/a_gonda/nowarddos.git" || exit 1
    echo "OK"

    python -m venv "nowarddos"
    cd "nowarddos"

    echo "Install deps ... "
    pip3 install -r requirements.txt  &> /dev/null
    echo "OK"

    echo "Start script ... "
    python3 "main.py" ${threads}
}

main "${@}"
