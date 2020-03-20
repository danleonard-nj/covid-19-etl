import json

def load_configuration():
	with open('config.json', 'r') as config:
		config = json.loads(config.read())

	return config