#!/usr/bin/env bash

function run_9() {
    DIR=$(pwd)/build-9
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-9/*.{cc,hh}
    clear

    step_9_description="Description: Linear advection equation, \
assembling the system of equations in parallel \
using multi-threading, implementing a refinement \
criterion based on a finite difference approximation \
of the gradient"
    step_9_url="https://www.dealii.org/current/doxygen/deal.II/step_9.html"

    echo "Running step 9"
    echo ${step_9_description}
    echo "See more at ${step_9_url}"

    # Also /usr/share/deal-ii/examples/step-9
    cmake -S step-9 \
        -B build-9 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-9 --target run # --parallel $nproc
}

function run_12() {

    DIR=$(pwd)/build-12
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-12/*.{cc,hh}
    clear

    step_12_description="Description: Discontinuous Galerkin methods \
for linear advection problems."
    step_12_url="https://www.dealii.org/current/doxygen/deal.II/step_12.html"

    echo "Running step 12"
    echo ${step_12_description}
    echo "See more at ${step_9_url}"

    # Also /usr/share/deal-ii/examples/step-12
    cmake -S step-12 \
        -B build-12 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-12 --target run # --parallel $nproc
}

# run_9
run_12
