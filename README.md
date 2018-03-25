# QSDPNAL
A MATLAB software for convex quadratic semidefinite programming  with inequality, equality and bound constraints

This project is the implementation of the algorithms introduced in the paper QSDPNAL: A two-phase augmented Lagrangian method for convex quadratic semidefinite programming by Xudong Li, Defeng Sun and Kim-Chuan Toh.
This paper has been accepted by Mathematical Programming Computation. 

Welcome to QSDPNAL! 

## Install QSDPNAL
The software requires a few Mex files for execution. 
You can install QSDPNAL as follows:
Firstly, unpack the software.
Run Matlab in the directory QSDPNAL.
In the Matlab command window, try
```Matlab
>> startup 
>> qsdpdemo
```
In the above, startup.m sets up the paths for QSDPNAL in MATLAB and qsdpdemo is a demo file illustrating how to solve a QSDP problem using Qsdpnal. By now, QSDPNAL is ready for you to use.

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

## Detailed outputs

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

2.86e-01 : penalty parameter <img src="http://chart.googleapis.com/chart?cht=tx&chl=\sigma" style="border:none;">
