import qsharp

from qsharp import Result
from Quantum.Bell import TestBellState

initials = (Result.Zero, Result.One)

for initial in initials:
    res = TestBellState.simulate(count=1000, initial=initial)
    (num_zeros, num_ones, agree) = res
    print(f"Init:{initial: <4} 0s={num_zeros: <4} 1s={num_ones: <4} agree={agree: <4}")
