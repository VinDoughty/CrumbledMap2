extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Fish/Area2D/CollisionShape2D.disabled = false # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	if area.is_in_group("attack"):
		$Fish.visible = false
		print("love at first hit")
		$Fish/Area2D/CollisionShape2D.disabled = true # Replace with function body.
