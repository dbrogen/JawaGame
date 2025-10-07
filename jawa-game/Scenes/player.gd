extends CharacterBody2D

var speed=400

var player

func _physics_process(delta):
	var direction = Input.get_vector("left","right","up","down")
	
	velocity=direction*speed
	move_and_slide()
	$AnimatedSprite2D.play()
	
	
