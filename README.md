# QSDPNAL
A MATLAB software for convex quadratic semidefinite programming  with inequality, equality and bound constraints

Welcome to QSDPNAL! 

## Compile Mex files
The software requires a few Mex files for execution. 
You can generate (only need to be done once) these Mex files as follows:
Firstly, unpack the software.
Run Matlab in the directory QSDPNAL
In the Matlab command window, type: 
```Matlab
>> Installmex
```
or
```Matlab
>> Installmex(1) (to recompile all Mex files) 
```
This step only needs to be done once.
Note: the package provided some
precompiled mexfiles using recent versions of MATLAB.
If your version is old, you would need to recompile the 
mexfiles.
After that type: 
```Matlab
>> startup 
```
By now, QSDPNAL is ready for you to use.

## Structures

Codes in the folder QSDPNAL_main\NAL are for Algorithm QSDPNAL (QSDPNAL-Phase II with QSDPNAL-Phase I to generate initial point)

Codes in the folder QSDPNAL_main\SCB are for Algorithm QSDPNAL-Phase I (SCB_ADMM: an SCB based inexact semi-proximal ADMM)

Codes in the folder QSDPNAL_main\submain\SNCG are used for solving subproblems (i.e., Algorithms SSNCG and ABCD)

## Run files

runNCM: for the NCM problem 

runNCM_P: for the NCM problem

runBIQ: for the QSDP-BIQ problem 

runQAP: for the QSDP-QAP problem 

runSNL: for the sensor network localization problem 

runSNLI: for the sensor network localization problem with inequality constraints 

## Detailed output

In our codes, we will print some information of the algorithm, for example, the iteration number, 
the primal and dual infeasibility (corresponding to only equality constraints), the relative duality gap,
the primal and dual objective function values, running time, penalty parameter $\sigma$, and some components of the KKT residual, etc.

In particular, when the restarting strategy is used in QSDPNAL-Phase II for problems involving inequality or/and polyhedral constraints 
(described on page 19 in the paper), the symbol '*' is printed after the iteration number to indicate this restarting.

Let us take one line of the output as an example. In the following line

```Matlab
2*| 1.24e-05 3.49e-06 -1.46e-05| -5.3375e+03 -5.3373e+03|  52.3| 2.86e-01|,
```
2 : outer iteration number

\* : the restarting strategy is executed

1.24-05 and 3.49e-06 : the primal and dual infeasibility (corresponding to only equality constraints)

-1.46e-05 : relative duality gap

-5.3375e+03 and -5.3373e+03: the primal and dual objective function values

52.3 : running time

2.86e-01 : penalty parameter $\sigma$
