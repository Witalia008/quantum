import qsharp

from qsharp import Pauli
from Solution import TestSolve

I_res = TestSolve.simulate(unitary=Pauli.I)
print(f"I res = {I_res}")

Z_res = TestSolve.simulate(unitary=Pauli.Z)
print(f"Z res = {Z_res}")
