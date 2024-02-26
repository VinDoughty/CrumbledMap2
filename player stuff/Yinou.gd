extends CharacterBody2D

@export var MAX_SPEED =30
@export var axis = Vector2.ZERO
@export var FRICTION = 1200
@export var ACCELERATION = 1500
@export var HUNGER = 100
@export var MAX_HUNGER = 100
func _physics_process(delta):
	move(delta)
		
func _process(delta):
	if HUNGER > 100:
		HUNGER==100
	if Input.is_action_just_pressed("ui_accept"):
		print("oww your hitting me")
func get_input_axis():
	axis.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	return axis.normalized()
func move(delta):
	get_input_axis()
		
	if axis==Vector2.ZERO:
		apply_friction(FRICTION * delta)
		
	else:
		apply_movement(axis * ACCELERATION)
	move_and_slide()
	
func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
	else:
		velocity = Vector2.ZERO
		
		
func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(MAX_SPEED)
	
	if Input.is_action_pressed("ui_right"):
		$YinouSheet.flip_h = false
		
	if Input.is_action_pressed("ui_left"):
		$YinouSheet.flip_h = true
		
func _on_area_2d_area_entered(area):
	print("hit")
		


func _on_sushi_area_entered(player):
	print("hit") # Replace with function body.


func _on_chest_area_2d_area_entered(area):
	if is_in_group("Player"): # Replace with function body.
		print("giv me sumthin")
		

