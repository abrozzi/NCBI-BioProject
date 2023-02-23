# NCBI-BioProject
At NCBI BioProject is a collection of biological data related to a single initiative, originating from a single organization or from a consortium. A BioProject record provides users a single place to find links to the diverse data types generated for that project.

# JSON FILE
This repository can be used to convert the original  ```bioproject.xml ``` file (2.1 Gb) available here:

https://ftp.ncbi.nlm.nih.gov/bioproject/bioproject.xml 

into a more accessible ans smaller in size ```.json``` file. Python code used for the conversion is available.

# TSV FILE
We parsed in R by ```library(rjson)``` the ```.json``` file and created a tab separated table with some useful fields like ID, Name, Description.

R code to output a tab separated table from json input is available in ```R/main.R```.

Output table is ```test/demo.tsv```

# How to use the converter
Before using the repository, you need to install the following dependency:
```
pip install xmltodict
pip install pytest
```

Then you can check that the repository is correctly installed, by running:
```
pytest unit_test.py
```

If everything works properly, you can convert an xml file into a json file, by giving the input filename and the output filename.
You can try it with the demo file that we have provided in the folder test, as follows:
```
python converter.py test/demo.xml test/demo.json
```

Check the "test" folder; a .json file should be there.
