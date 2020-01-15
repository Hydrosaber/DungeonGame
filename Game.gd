extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var level = preload("res://Level.tscn")
var main_character = preload("res://Main_Character.tscn")
var camera
var player
var current_level

# Called when the node enters the scene tree for the first time.
func _ready():
	get_child(0).get_child(0).get_child(0).play("Idle")
	#new_level()
	print("hello")
	
func new_level():
	current_level = level.instance()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
