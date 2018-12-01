Overview of the this package
--------------------------------
Technology used : python 3.6
install modules numpy, scipy, pillow 

This is a package that quantifies bias in rankings produced by a
score-based ranker, and mitigates that bias using an optimization
procedure.

FairRank includes python scipts to:

(1) generate synthetic rankings while controlling the degree of bias;
(2) compute bias in a ranking according to different fairness
measures;
(3) generate a new ranking that is as close as possible to the
original ranking, yet has lower bias.

Core code modules
-----------------
- dataGenerator.py contains the core code of the ranking generation
algorithm
- measures.py contains the fairness and accuracy measures
- optimization.py implements the optimization process which uses scipy optimize module
- utility.py includes data transformation and ranking score generator
code

Usage of the core code modules
------------------------------
python runSyntheticExp.py
python runRealDataExp.py
python runOptimization.py

run these scripts on the command line like above
This scipts internally uses optimization.py,utility.py,measures.py,datagenerator.py


Matlab code is also present in this package, which took the results obtained from python runSyntheticExp.py and python runOptimization.py and plotted results shown in report.

Individually every file has its own demo file to tell about the arguments passed in main function.

External file
-------------
normalizer.txt stores the maximum of input population that has already computed previously. This file will be accessed 
during computation of normalizer of fairness measure i.e. bias in order to save time when compute the same
input population multiple times. After get a normalizer of some input population, can manually add a new line into this file to save computation of normalizer during next experiment of this input population. New line should follow the below format exactly.

Format of normalizer: 
total user number,size of protected group,fairness measure:value of normalizer. 

Example of lines are:

1000,548,rKL:100.0

1000,548,rND:100.0

1000,548,rRD:100.0


Datasets
--------
Some of real data sets we used are includes inside folder datasets.
