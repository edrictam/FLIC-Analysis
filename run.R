# run.R
# Author: Edric Tam 2016/12/18 edric.tam@yale.edu
# Carlson Lab, Department of Molecular, Cellular, and Developmental Biology, Yale University
#
# It takes around 1-2 minutes for code to analyze a 3 hour dataset, 
# takes around 30 seconds for code to analyze 1 hour dataset.
#
# Several things worth noting:
# 
# 0. Our peak detection code uses the findpeaks function in the R package pracma, so you 
# should install the package "pracma" before running the code. You can install pracma by 
# running the following line of R code: 
#
# install.packages('pracma', repos='http://cran.us.r-project.org')
#
# 1. remember to set the R project directory to the directory where these R code files are stored.
# Also remember to put the DFM csv file in the same directory as the code files
#
# 2. There are sometimes NA values in the output (for example, if there is only 1 peak, then the 
# time between peaks variable would be NA)
# 
# 3. Sometimes, there are ties in the data and the nonparametric wilcoxon test 
# will still run but the p values calculated might not be exact.  
#
# The statistical tests here are mainly for the users' benefit to quickly get a rough
# idea of the statistical significance. For publication/other purposes, we suggest running your own 
# tailored statistical tests suitable for your experiments and data. 
#
# 4. Last but not least, all parameters are tunable!
# You can go to makePlotsAndTables.R to tune the parameters of the analysis so that they are in line with your 
# experiments and data. 

rm(list=ls())

DFMNAME = 'DFM_Example.csv'  # put your DFM CSV file name here!

source('runFlicAnalysis.R')
source('helper.R')
source('makePlotsAndTables.R')
runFlicAnalysis(DFMNAME) 
