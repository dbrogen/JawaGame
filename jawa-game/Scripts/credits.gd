extends Control

@onready var startingY: float = $Names.position.y;
@export var moveSpeed: float = 40;

func _physics_process(delta: float) -> void:
	if($Names.position.y < -$Names.size.y):
		$Names.position.y = startingY;
	else:
		$Names.position.y -= moveSpeed * delta;

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/start_screen.tscn");
