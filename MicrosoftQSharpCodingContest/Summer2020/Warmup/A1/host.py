import qsharp

from qsharp import Pauli
from Solution import TestSolve

I_res = TestSolve.simulate(unitary=Pauli.I)
print(f"I res = {I_res}")

X_res = TestSolve.simulate(unitary=Pauli.X)
print(f"X res = {X_res}")
