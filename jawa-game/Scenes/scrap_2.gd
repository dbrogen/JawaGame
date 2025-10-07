extends Area2D
@onready var scrapCollected:int
var player_in_area

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_in_area=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_area:
		Global.scrapCollected+=1
		queue_free()
		print(Global.scrapCollected)


func _on_area_entered(area: Area2D):
	player_in_area=true

func _on_area_exited(area: Area2D):
	player_in_area=false
