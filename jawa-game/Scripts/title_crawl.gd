extends Control

@export var moveSpeed: float = 40;

func _physics_process(delta: float) -> void:
	if($Label.position.y > 648 + $Label.size.y):
		get_tree().change_scene_to_file("res://Scenes/Exploration/desert_dunes.tscn")
	else:
		$Label.position.y += moveSpeed * delta;
