extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 



func _process(delta):
	if $HScrollBar.value >= 4:
		$"AnimationPlayer LIST".play("5(weapons)")
		$"food capsule".visible = false
		$"tool capsule".visible = false
		$"material capsule".visible = false
		$"key capsule".visible = false
		$"Weapon capsule".visible = true
	elif $HScrollBar.value >= 3:
		$"AnimationPlayer LIST".play("4(keys)")
		$"food capsule".visible = false
		$"tool capsule".visible = false
		$"material capsule".visible = false
		$"key capsule".visible = true
		$"Weapon capsule".visible = false
	elif $HScrollBar.value >= 2:
		$"AnimationPlayer LIST".play("3(materials)")
		$"food capsule".visible = false
		$"tool capsule".visible = false
		$"material capsule".visible = true
		$"key capsule".visible = false
		$"Weapon capsule".visible = false
	elif $HScrollBar.value >= 1:
		$"AnimationPlayer LIST".play("2(food)")
		$"food capsule".visible = true
		$"tool capsule".visible = false
		$"material capsule".visible = false
		$"key capsule".visible = false
		$"Weapon capsule".visible = false
	elif $HScrollBar.value <= 1:
		#food
		$"AnimationPlayer LIST".play("1(tool)")
		$"food capsule".visible = false
		$"tool capsule".visible = true
		$"material capsule".visible = false
		$"key capsule".visible = false
		$"Weapon capsule".visible = false 

