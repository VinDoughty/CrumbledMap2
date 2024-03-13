extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 



func _process(delta):
	if $HScrollBar.value >= 4:
		
		$"AnimationPlayer LIST".play("5(weapons)")
	elif $HScrollBar.value >= 3:
		
		$"AnimationPlayer LIST".play("4(keys)")
	elif $HScrollBar.value >= 2:
		
		$"AnimationPlayer LIST".play("3(materials)")

	elif $HScrollBar.value >= 1:
		
		$"AnimationPlayer LIST".play("2(food)")
		
	elif $HScrollBar.value <= 1:
		
		$"AnimationPlayer LIST".play("1(tool)")
		

		
	
		

