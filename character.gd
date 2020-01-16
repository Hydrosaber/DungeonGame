extends Node2D

class_name character

onready var Map = $TileMap
onready var GameMaster = get_owner()
onready var health_bar = $HealthBar

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


func update_visuals(actor, cell_start, cell_target):
	Map.set_cell(cell_target, actor.type)
	Map.set_cell(cell_start, EMPTY)
	#return back to the map idk

func attack(position, damage):
	match position:
		EMPTY:
			pass
		OBJECT:
			pass
		ACTOR:
			Map.get_cell_pawn(position).hurt(damage);

func kill():
	return 0;

func hurt(var amount):
	set_hp(total_health - amount);
