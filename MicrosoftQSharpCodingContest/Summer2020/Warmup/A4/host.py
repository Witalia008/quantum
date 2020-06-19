import qsharp

from qsharp import Pauli
from Solution import TestSolve

IxX_res = TestSolve.simulate(unitary=0)  # I (x) X
print(f"IxX res = {IxX_res}")

CNOT_res = TestSolve.simulate(unitary=1)  # CNOT
print(f"CNOT res = {CNOT_res}")
