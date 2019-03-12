require 'json'

json_data = File.read('example_json.json')

parsed_json_data = JSON.parse(json_data)

p parsed_json_data['colors'].first
