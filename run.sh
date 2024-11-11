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
of the gradient."
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

function run_26() {

    DIR=$(pwd)/build-26
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-26/*.{cc,hh}
    clear

    step_26_description="Description: The heat equation, solved on a mesh \
    that is adapted every few time steps. \
    Fractional time stepping."
    step_26_url="https://www.dealii.org/current/doxygen/deal.II/step_26.html"

    echo "Running step 26"
    echo ${step_26_description}
    echo "See more at ${step_26_url}"

    # Also /usr/share/deal-ii/examples/step-26
    cmake -S step-26 \
        -B build-26 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-26 --target run # --parallel $nproc
}

function run_51() {

    DIR=$(pwd)/build-51
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-51/*.{cc,hh}
    clear

    step_51_description="Description: A nonlinear hyperbolic \
conservation law: The Euler equations of compressible gas \
dynamics. Fractional time stepping."
    step_51_url="https://www.dealii.org/current/doxygen/deal.II/step_33.html"

    echo "Running step 51"
    echo ${step_51_description}
    echo "See more at ${step_51_url}"

    # Also /usr/share/deal-ii/examples/step-51
    cmake -S step-51 \
        -B build-51 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-51 --target run # --parallel $nproc
}

function run_52() {

    DIR=$(pwd)/build-52
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-52/*.{cc,hh}
    clear

    step_52_description="Description: Solving the time dependent \
neutron diffusion equation using Runge-Kutta methods. \
Explicit and implicit time stepping."
    step_51_url="https://www.dealii.org/current/doxygen/deal.II/step_52.html"

    echo "Running step 52"
    echo ${step_52_description}
    echo "See more at ${step_52_url}"

    # Also /usr/share/deal-ii/examples/step-52
    cmake -S step-52 \
        -B build-52 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-52 --target run # --parallel $nproc
}

function run_63() {

    DIR=$(pwd)/build-63
    if [ -d "$DIR" ]; then
        printf '%s\n' "Removing Lock ($DIR)"
        rm -rf "$DIR"
    fi

    clang-format --style=file -i step-63/*.{cc,hh}
    clear

    step_63_description="Description: Block smoothers for geometric multigrid. \
A scalar convection diffusion equation is solved with different \
additive or multiplicative multigrid smoothers."
    step_63_url="https://www.dealii.org/current/doxygen/deal.II/step_63.html"

    echo "Running step 63"
    echo ${step_63_description}
    echo "See more at ${step_63_url}"

    # Also /usr/share/deal-ii/examples/step-63
    cmake -S step-63 \
        -B build-63 \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_COMPILER=mpic++ \
        -DCMAKE_CXX_STANDARD=20 \
        -DCMAKE_CXX_STANDARD_REQUIRED=True \
        -DCMAKE_CXX_FLAGS="-Wall -Wextra -pedantic -Werror" \
        -Wno-dev

    cmake --build build-63
    cd build-63
    ./step-63 ../step-63/block_jacobi.prm
    ./step-63 ../step-63/block_sor.prm
    ./step-63 ../step-63/jacobi.prm
    ./step-63 ../step-63/sor.prm
}

# run_9
# run_12
# run_26
# run_51
# run_52
run_63
