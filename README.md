# NCBI-BioProject
At NCBI BioProject is a collection of biological data related to a single initiative, originating from a single organization or from a consortium. A BioProject record provides users a single place to find links to the diverse data types generated for that project.

# JSON FILE
This repository can be used to convert the original  ```bioproject.xml ``` file (2.1 Gb) available here:

https://ftp.ncbi.nlm.nih.gov/bioproject/bioproject.xml 

into a more accessible ans smaller in size ```.json``` file. Python code used for the conversion is available.

# TSV FILE
We parsed in R by ```library(rjson)``` the ```.json``` file and created a tab separated table with some useful fields like ID, Name, Description, Publication.
R code is available.

# Requirements
Before using the repository, you need to install the following dependency:
```
pip install xmltodict
```


