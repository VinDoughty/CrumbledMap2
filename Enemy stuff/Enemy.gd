extends CharacterBody2D
class_name Enemy
var health:float = 100
var max_health:float = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$ProgressBar.value =  (health / max_health) * 100




func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"): # Replace with function body.
		print("i see you")
		velocity = position.direction_to(body.position) * -200
	# look_at(target)
		if position.distance_to(body.position) > 10:
			move_and_slide()
 # Replace with function body.
