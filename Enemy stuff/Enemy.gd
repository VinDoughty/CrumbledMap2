extends CharacterBody2D
class_name Enemy
var health:float = 100
var max_health:float = 100
var target_position =  null
var speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	if target_position != null:
		velocity = position.direction_to(target_position) * speed
	# look_at(target)
		if position.distance_to(target_position) > 10:
			move_and_slide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ProgressBar.value =  (health / max_health) * 100
func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"): # Replace with function body.
		target_position = body.position
		print(target_position)
		
	# look_at(target)




