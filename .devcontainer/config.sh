# Pre-exec notebooks to improve first-use start time
cd /workspaces/quantum/QuantumKatas && \
    ./scripts/prebuild-kata.sh BasicGates && \
    ./scripts/prebuild-kata.sh CHSHGame && \
    ./scripts/prebuild-kata.sh DeutschJozsaAlgorithm && \
    ./scripts/prebuild-kata.sh GHZGame && \
    ./scripts/prebuild-kata.sh GraphColoring && \
    ./scripts/prebuild-kata.sh GroversAlgorithm && \
    ./scripts/prebuild-kata.sh JointMeasurements && \
    ./scripts/prebuild-kata.sh KeyDistribution_BB84 && \
    ./scripts/prebuild-kata.sh MagicSquareGame && \
    ./scripts/prebuild-kata.sh Measurements && \
    ./scripts/prebuild-kata.sh PhaseEstimation && \
    ./scripts/prebuild-kata.sh QEC_BitFlipCode && \
    ./scripts/prebuild-kata.sh QFT && \
    ./scripts/prebuild-kata.sh RippleCarryAdder && \
    ./scripts/prebuild-kata.sh SolveSATWithGrover && \
    ./scripts/prebuild-kata.sh SuperdenseCoding && \
    ./scripts/prebuild-kata.sh Superposition && \
    ./scripts/prebuild-kata.sh Teleportation && \
    ./scripts/prebuild-kata.sh TruthTables && \
    # Exclude Unitary patterns, since it times out in Binder prebuild
    #./scripts/prebuild-kata.sh UnitaryPatterns && \
    ./scripts/prebuild-kata.sh tutorials/ComplexArithmetic ComplexArithmetic.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/ExploringDeutschJozsaAlgorithm DeutschJozsaAlgorithmTutorial.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/ExploringGroversAlgorithm ExploringGroversAlgorithmTutorial.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/LinearAlgebra LinearAlgebra.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/MultiQubitGates MultiQubitGates.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/MultiQubitSystems MultiQubitSystems.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/Qubit Qubit.ipynb && \
    ./scripts/prebuild-kata.sh tutorials/SingleQubitGates SingleQubitGates.ipynb && \
    # To improve performance when running the %package commands (usually Katas' first cell)
    # we remove all online sources for NuGet such that IQ# Package Loading and NuGet dependency
    # resolution won't attempt to resolve packages dependencies again (as it was already done
    # during the prebuild steps above).
    # The downside is that online packages that were already downloaded to .nuget/packages folder
    # will be available to get loaded.
    # Users that require loading additional packages should use the iqsharp-base image instead.
    rm ${HOME}/NuGet.config && \
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\
            <configuration>\
                <packageSources>\
                    <clear />\
                </packageSources>\
            </configuration>\
          " > ${HOME}/.nuget/NuGet/NuGet.Config
