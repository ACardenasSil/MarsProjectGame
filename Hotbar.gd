extends Node2D

const SlotClass = preload("res://Slots.gd")
onready var hotbar_slots = $HotbarSlots
onready var slots = hotbar_slots.get_children()

#func _ready():
#	for i in range(slots.size()):
#		slots[i].connect("gui_input", self, "slot_gui_input", [slots[i]])
#		slots[i].slot_index = i
#	for i in range(slots.size()):

#		slots[i].slotType = SlotClass.SlotType.HOTBAR
#		slots[i].slot_index = i
	#initialize_hotbar()

#func initialize_hotbar():
	#for i in range(slots.size()):
