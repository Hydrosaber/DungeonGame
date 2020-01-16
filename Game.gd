extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var level = preload("res://Level.tscn")
var character = preload("res://Level.gd")
var main_character = preload("res://Main_Character.tscn")
var camera
var player
var current_level

# Called when the node enters the scene tree for the first time.
func _ready():
	player = main_character.instance()
	add_child(player)
	yield(new_level(), "completed")
	print("hello")
	
func new_level():
	current_level = level.instance()
	add_child(current_level);


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
