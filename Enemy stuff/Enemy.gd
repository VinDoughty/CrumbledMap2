extends Node2D
class_name Enemy
var health:float = 100
var max_health:float = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$ProgressBar.value =  (health / max_health) * 100


