extends Node

var population = 1
var pop_rate = 1.0

func _ready():
	population = population * pop_rate
	
