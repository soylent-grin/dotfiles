#!/bin/bash

echo "hello $(whoami); let's begin.."

SCRIPTS=(
    ./install.sh
    ./copy.sh
)

pushd ./scripts
    for script in "${SCRIPTS[@]}"
    do
        bash ${script}
    done
popd

echo "done; bye!"
