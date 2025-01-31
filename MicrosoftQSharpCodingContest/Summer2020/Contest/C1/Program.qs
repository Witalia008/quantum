﻿namespace Solution {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Unit
    {
        using (acilla = Qubit())
        {
            repeat
            {
                ApplyToEach(H, qs);
                Controlled X(qs, acilla);
                let res = MResetZ(acilla);
            }
            until (res == Zero)
            fixup {
                ResetAll(qs);
            }
        }
    }

    @EntryPoint()
    operation HelloQ() : Unit
    {
        using (qs = Qubit[2])
        {
            Solve(qs);
            DumpMachine();
            ResetAll(qs);
        }
    }
}
