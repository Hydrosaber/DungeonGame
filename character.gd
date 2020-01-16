extends Node2D

var total_health = 0;
var attack_val;
var nickname = "";
var coordinates;
var moves = [];
var level = 1;
var Room = preload("res://Room.tscn");

func gen_HP():
	return 0;
	
func get_location():
	return coordinates;
	
func set_location():
	var x = Room.find_start_room().position.x + 1 + randi() % int(Room.find_start_room().size.x - 2);
	var y = Room.find_start_room().position.y + 1 + randi() % int(Room.find_start_room().size.y - 2);
	coordinates = Vector2(x, y);
	
func move(position):
	return 0;
	
func update_visuals():
	return 0;
	
func attack(position):
	return 0;
	
func hurt(var amount):
	return 0;





