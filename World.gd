extends Node2D
var scene = load("res://HUD.tscn")
func _ready():
	var instance = scene.instance()
	add_child(instance)
