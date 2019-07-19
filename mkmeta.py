"""mkmeta

Given a file name of the format: YYYY-MM-DD.rst, cretes a YAML file YYYY-MM-DD.yaml that contains Beamer metadata,
including date derived from the input file name.

Usage: mkmeta 2019-01-10.rst
"""

import argparse
import os

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('filename', metavar='FN', help='Input file name')
    args = parser.parse_args()
    filename = args.filename
    basename = os.path.splitext(filename)[0]
    metadata_file_name = basename + '.yaml'
    with open(metadata_file_name, 'w') as f:
        f.write('---\ntitle:    C++ Club')
        f.write('\nauthor:   Gleb Dolgich')
        f.write('\ndate:     ' + basename)
        f.write('\n---\n')
