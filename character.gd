extends Node2D

class_name character

var total_health = 0;
var attack_val;
var nickname = "";
var coordinates;
var moves = [];
var level = 1;

func gen_HP():
	return 0;

func get_location():
	return 0;

#precondition needs to be Vector2
func set_location(var loc):
        coordinates = loc;
        position = coordinates * 32;

func move(position):
	return true;

func update_visuals():
	return 0;

func attack(position):
	return 0;

func hurt(var amount):
	return 0;
