extends CanvasLayer

var batteryPower: float;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	Global.batteryPower -= 1 * delta;
	
	batteryPower = Global.batteryPower;
	
	if(batteryPower >= 90):
		$Panel/AnimatedSprite2D.play("Full");
	elif(batteryPower >= 70):
		$Panel/AnimatedSprite2D.play("80%");
	elif(batteryPower >= 50):
		$Panel/AnimatedSprite2D.play("60%");
	elif(batteryPower >= 30):
		$Panel/AnimatedSprite2D.play("40%");
	elif (batteryPower >= 10):
		$Panel/AnimatedSprite2D.play("20%");
	else:
		$Panel/AnimatedSprite2D.play("Empty");
