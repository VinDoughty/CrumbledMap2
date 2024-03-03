extends Node2D
var health = 100
var max_health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
func _on_area_2d_body_entered(body):
	if body.find_child("Attack") :
		health -= 10
		$ProgressBar.value = 100 * health / max_health
  # Replace with function body.
