﻿namespace Solution {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;

    operation Solve (qs : Qubit[], parity : Int) : Unit {
        // Create parity superposition of 2 qbits.
        H(qs[0]);
        if (parity == 1)
        {
            X(qs[1]);
        }
        CNOT(qs[0], qs[1]);

        // Prepare the rest of qbits, keeping the parity.
        let N = Length(qs);
        for (i in 2..N-1)
        {
            H(qs[i]);
            Controlled X(qs[i..i], qs[i - 1]);
        }
    }

    @EntryPoint()
    operation HelloQ() : Unit
    {
        for (nqubits in 2..4)
        {
            using (qs = Qubit[nqubits])
            {
                Message(IntAsString(nqubits) + " qbits, parity = 0:");
                Solve(qs, 0);
                DumpMachine();
                ResetAll(qs);
                Message(IntAsString(nqubits) + " qbits, parity = 1:");
                Solve(qs, 1);
                DumpMachine();
                ResetAll(qs);
            }
        }
    }
}
