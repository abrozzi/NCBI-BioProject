"""This module converts an xml file into a json file,
given the filename as input"""

import json
import sys
import xmltodict


def convert_xml_json(input_file, output_file):
    """This function:
    - as input the name of a xml file (input_file)
    - returns a json file, with name "output_file"
    """

    with open(input_file, encoding="utf-8") as xml_file:
        data_dict = xmltodict.parse(xml_file.read())

    json_data = json.dumps(data_dict)

    with open(output_file, "w", encoding="utf-8") as outfile:
        outfile.write(json_data)


if __name__ == "__main__":
    convert_xml_json(sys.argv[1], sys.argv[2])
