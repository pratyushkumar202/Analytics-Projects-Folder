clear all       
set more off   

* Changing the Directory

cd D:/MBA/Analytics/Stata/

* Importing the Dataset

insheet using hr.csv, clear

* Describing the Dataset

describe

* Summarising teh Dataset

summarize

summarize positionid salary empsatisfaction

* Summarising by Group

bysort empsatisfaction: summarize salary absences

bysort genderid: summarize salary absences

bysort maritalstatusid: summarize salary absences

* Correlation between two variables and drawing graphs

correlate positionid empsatisfaction

correlate salary empsatisfaction

graph twoway (Scatter salary empsatisfaction)

correlate genderid salary

graph twoway (Scatter salary genderid)

correlate salary perfscoreid

graph twoway (Scatter salary perfscoreid)

graph twoway (Scatter salary marriedid)

correlate salary maritalstatusid

graph twoway (Scatter salary maritalstatusid)

* Regression between empsatisfaction and salary 

reg salary empsatisfaction