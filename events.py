import json

with open('events.json') as json_file:
    data = json.load(json_file)

print(len(data))