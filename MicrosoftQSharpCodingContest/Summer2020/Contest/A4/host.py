import qsharp

from qsharp import Pauli
from Solution import TestSolve

Rz_res = TestSolve.simulate(unitary=0)
print(f"Rz = {Rz_res}")

R1_res = TestSolve.simulate(unitary=1)
print(f"R1 = {R1_res}")
