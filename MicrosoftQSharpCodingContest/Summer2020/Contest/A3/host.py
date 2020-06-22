import qsharp

from qsharp import Pauli
from Solution import TestSolve

H_res = TestSolve.simulate(unitary=0)
print(f"H = {H_res}")

X_res = TestSolve.simulate(unitary=1)
print(f"X = {X_res}")
