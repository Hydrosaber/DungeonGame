extends Node2D
enum { EMPTY = -1, ACTOR, OBSTACLE, OBJECT}

class_name character

onready var Map = $TileMap

var total_health = 0;
var attack_val;
var nickname = "";
var location;
var moves = [];
var level = 1;

func gen_HP():
	return 0;

func get_posiiton():
	return position;

#precondition needs to be Vector2
func set_location(var loc):
	location = loc;
	position = location * 32;

func set_hp(value):
	total_health = value;
	if total_health == 0:
		kill();

func move(actor, direction):
	var cell_start = actor.get_position
	var cell_target = cell_start + direction
	var cell_target_type = Map.get_cell(cell_target)
	match cell_target_type:
		EMPTY:
			return update_visuals(actor, cell_start, cell_target)
		OBJECT:
			var object_pawn = Map.get_cell_pawn(cell_target)
			#Have character add to its list of items
			return Map.update_pawn_position(actor, cell_start, cell_target)

func update_visuals(actor, cell_start, cell_target):
	Map.set_cell(cell_target, actor.type)
	Map.set_cell(cell_start, EMPTY)
	#return back to the map idk

func attack(position, damage):
	match position:
		ACTOR:
			Map.get_cell_pawn(position).hurt(damage);

func kill():
	return 0;

func hurt(var amount):
	set_hp(total_health - amount);
