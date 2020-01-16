extends Node2D

enum { EMPTY = -1, ACTOR, OBSTACLE, OBJECT}

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

func move(actor, direction):
	var cell_start = actor.get_position
	var cell_target = cell_start + direction
	var cell_target_type = current_level.get_tile(cell_target)
	match cell_target_type:
		EMPTY:
			actor.set_location(cell_target)
		OBJECT:
			var object_pawn = level.get_cell_pawn(cell_target)
			#Have character add to its list of items
			return level.update_pawn_position(actor, cell_start, cell_target)
		ACTOR:
			pass;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
