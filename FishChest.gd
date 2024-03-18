extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func interact(inventory):
	var iSpace = inventory.get_node("inventory space")
	var sprite = iSpace.get_node("Sprite")
	sprite.texture = load("res://FishcookedSpace.png")
	$AnimationPlayer.play("open")
	
