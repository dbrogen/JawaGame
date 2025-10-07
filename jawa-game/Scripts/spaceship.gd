class_name Spaceship
extends Node2D


func _process(delta: float) -> void:
	$Label.text = (str(Global.scrapCollected) + " / 20" )
	if(Global.scrapCollected >= 20):
		$Label.add_theme_color_override("font_color", Color.DARK_GREEN)


func _on_hitbox_body_entered(body: Node2D) -> void:
	if(body.is_in_group("Player") and Global.scrapCollected >= 20):
		get_tree().change_scene_to_file("res://Scenes/Collection/starship.tscn");
