import os
import json
import time
import sys

source_directory = sys.argv[1] 
output_name = sys.argv[2]

ls = os.listdir(source_directory)

json_array = [{"name": file,
               "size": os.stat(os.path.join(source_directory, file)).st_size,
               "last modified": time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(os.stat(os.path.join(source_directory, file)).st_mtime))}
              for file in ls]

with open(output_name, 'w') as outfile:
    json.dump(json_array, outfile, indent=2)