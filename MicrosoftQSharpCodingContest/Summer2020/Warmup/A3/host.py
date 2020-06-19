import qsharp

from qsharp import Pauli
from Solution import TestSolve

Z_res = TestSolve.simulate(unitary=0)  # Z
print(f"Z res = {Z_res}")

minusZ_res = TestSolve.simulate(unitary=1)  # -Z
print(f"-Z res = {minusZ_res}")
