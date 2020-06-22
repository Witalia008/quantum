import qsharp

from qsharp import Pauli
from Solution import TestSolve

CNOT_12_res = TestSolve.simulate(unitary=0)
print(f"CNOT_12 = {CNOT_12_res}")

CNOT_21_res = TestSolve.simulate(unitary=1)
print(f"CNOT_21 = {CNOT_21_res}")
