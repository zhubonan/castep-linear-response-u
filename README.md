# Computing ab inito U value using the linear response method with CASTEP

## How to run

1. Have CASTEP compiled and `castep.mpi` in the `$PATH`
2. `base script.sh`
3. Run this notebook or `python post-process.py`

![Results for the toy system](https://raw.githubusercontent.com/zhubonan/castep-linear-response-u/master/response.png)

## How it works

Adjust the `HUBBARD_ALPHA` value and record the initial and final occupations of the Mn d levels when continuing from the unperturbed run (`base_calc`).
The value of U is extracted using the gradient of the two response curves.

The example in  http://hjkgrp.mit.edu/content/calculating-hubbard-u is reused here and the same methodology is followed.  
The more `self-consistent` U can be computed by repeating the procedure with different input value for the U.


Reference: 
>  Cococcioni, M.; de Gironcoli, S. Linear Response Approach to the Calculation of the Effective Interaction Parameters in the LDA+U Method. Phys. Rev. B 2005, 71 (3), 035105. https://doi.org/10.1103/PhysRevB.71.035105.

DISCLAIMER: Use at your own risk. Please raise an issue if you think the method here is not correct due to implementation details.