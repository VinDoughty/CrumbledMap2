extends CharacterBody2D

@export var MAX_SPEED = 30
@export var axis = Vector2.ZERO
@export var FRICTION = 1200
@export var ACCELERATION = 500
@export var HUNGER = 100
@export var MAX_HUNGER = 100
var List_interact = []

func _physics_process(delta):
	move_and_slide()
		
func _process(delta):
	if HUNGER > MAX_HUNGER:
		HUNGER = 100
	$Camera2D/HungerBar.value = HUNGER * 100 / MAX_HUNGER
	if $Camera2D/HungerBar.value == 0:
		get_tree().reload_current_scene()
		queue_free()
		
	if Input.is_action_just_pressed("attack"):
		$AnimationAttackPlayer.play("hit")
		print("h")
	if Input.is_action_just_pressed("inventory"):
		$Camera2D/Inventory.visible = !$Camera2D/Inventory.visible
	if Input.is_action_just_pressed("exit inventory"):
		$Camera2D/Inventory.visible = false
	
	move(delta)	
	
	
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
func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
	else:
		velocity = Vector2.ZERO
		
		
func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(MAX_SPEED)
	
	if Input.is_action_pressed("ui_right"):
		if $YinouSheet.flip_h == true:
			$YinouSheet.flip_h = false
			$Area2D/AttackCollider/Attack.flip_h = false
			$Area2D/AttackCollider.position.x *= -1
			$Area2D/AttackCollider/Attack.position.x *= -1
		
	if Input.is_action_pressed("ui_left"):
		if $YinouSheet.flip_h == false:
			$YinouSheet.flip_h = true
			$Area2D/AttackCollider/Attack.flip_h = true
			$Area2D/AttackCollider.position.x *= -1
			$Area2D/AttackCollider/Attack.position.x *= -1




func _on_area_2d_body_entered(body):
	if body.is_in_group("enemy"):
		body.health -= 20
		if body.health <= 0:
			body.queue_free()


func _on_timer_timeout():
	HUNGER -= 3
	print(HUNGER)
	 # Replace with function body.


func _on_interact_area_2d_area_entered(area):
		if area.get_parent().has_method("interact"):
			List_interact.append(area.get_parent())
			for n in List_interact:
				n.interact($Camera2D/Inventory)


func _on_interact_area_2d_area_exited(area):
	if area.is_in_group("chest"):
		List_interact.remove_at(List_interact.find(area))
		

