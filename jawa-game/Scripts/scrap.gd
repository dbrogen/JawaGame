class_name Scrap
extends Node2D

@export var points: int = 1;

var player_in_area;

func _ready() -> void:
	player_in_area = false;

func _process(delta: float) -> void:
	if(player_in_area):
		Global.scrapCollected += points;
		queue_free();
		print(Global.scrapCollected);


func _on_hitbox_area_entered(area: Area2D) -> void:
	player_in_area = true;


func _on_hitbox_area_exited(area: Area2D) -> void:
	player_in_area = false;
