"""This script can be used to verify if the repository is properly working"""

import os
from converter import convert_xml_json


def test_conversion():
    """This function:
    - converts the test xml file into a json file
    - it checks if the json file has been created
    - it removes the json file
    """

    convert_xml_json("test/demo.xml", "test/demo.json")

    assert os.path.exists(
        "test/demo.json"
    ), "The file has not been created. Please check the input file"

    os.remove("test/demo.json")


if __name__ == "__main__":
    test_conversion()
