extends Node

var map_data: Dictionary
var data_file_path: String = "res://map_data/map.json"

func _ready() -> void:
	print("loading map data...")
	#map_data = await load_json(data_file_path)
	#get_tree().get_root().get_node("level").get_node("OSMWays").create_map(map_data)


func load_json(file_path: String):
	if FileAccess.file_exists(file_path):
		var file = FileAccess.open(file_path, FileAccess.READ)
		return JSON.parse_string(file.get_as_text())
	else:
		print("could not load map data")
		get_tree().quit()
