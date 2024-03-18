extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 



func _process(delta):
	if $HScrollBar.value >= 4:
		
		$"AnimationPlayer LIST".play("5(weapons)")
		
		$FishCooked.visible = false
		$Foodapple.visible = false
		$FruitSmoothie.visible = false
		$FishAndEggs.visible = false
		$GrassbugSteakAndEggs.visible = false
		$Pickaxe.visible = false
		$Torch.visible = false
		$Shovel.visible = false
		$Axe.visible = false
		$Hammer.visible = false
		$BarOfIron.visible = false
		$BarOfGold.visible = false
		$BarOfDiamond.visible = false
		$BarOfGreenDiamond.visible =  false
		$ForestKey.visible = false
		$IceKey.visible = false
		$LavaKey.visible = false
		$DesertKey.visible = false
		$DarkKey.visible = false
		$LightbugKey.visible = false
		$WaterKey.visible = false
		$BossKey.visible = false
		
	elif $HScrollBar.value >= 3:
		
		$FishCooked.visible = false
		$Foodapple.visible = false
		$FruitSmoothie.visible = false
		$FishAndEggs.visible = false
		$GrassbugSteakAndEggs.visible = false
		$Pickaxe.visible = false
		$Torch.visible = false
		$Shovel.visible = false
		$Axe.visible = false
		$Hammer.visible = false
		$BarOfIron.visible = false
		$BarOfGold.visible = false
		$BarOfDiamond.visible = false
		$BarOfGreenDiamond.visible =  false
		$ForestKey.visible = true
		$IceKey.visible = true
		$LavaKey.visible = true
		$DesertKey.visible = true
		$DarkKey.visible = true
		$LightbugKey.visible = true
		$WaterKey.visible = true
		$BossKey.visible = true
		
		$"AnimationPlayer LIST".play("4(keys)")
	elif $HScrollBar.value >= 2:
		
		$"AnimationPlayer LIST".play("3(materials)")
		
		$FishCooked.visible = false
		$Foodapple.visible = false
		$FruitSmoothie.visible = false
		$FishAndEggs.visible = false
		$GrassbugSteakAndEggs.visible = false
		$Pickaxe.visible = false
		$Torch.visible = false
		$Shovel.visible = false
		$Axe.visible = false
		$Hammer.visible = false
		$BarOfIron.visible = true
		$BarOfGold.visible = true
		$BarOfDiamond.visible = true
		$BarOfGreenDiamond.visible =  true
		$ForestKey.visible = false
		$IceKey.visible = false
		$LavaKey.visible = false
		$DesertKey.visible = false
		$DarkKey.visible = false
		$LightbugKey.visible = false
		$WaterKey.visible = false
		$BossKey.visible = false

	elif $HScrollBar.value >= 1:
		
		$"AnimationPlayer LIST".play("2(food)")
		$FishCooked.visible = true
		$Foodapple.visible = true
		$FruitSmoothie.visible = true
		$GrassbugSteakAndEggs.visible = true
		$FishAndEggs.visible = true
		$Pickaxe.visible = false
		$Torch.visible = false
		$Shovel.visible = false
		$Axe.visible = false
		$Hammer.visible = false
		$BarOfIron.visible = false
		$BarOfGold.visible = false
		$BarOfDiamond.visible = false
		$BarOfGreenDiamond.visible =  false
		$ForestKey.visible = false
		$IceKey.visible = false
		$LavaKey.visible = false
		$DesertKey.visible = false
		$DarkKey.visible = false
		$LightbugKey.visible = false
		$WaterKey.visible = false
		$BossKey.visible = false
		
	elif $HScrollBar.value <= 1:
		#food
		$"AnimationPlayer LIST".play("1(tool)")
		#food
		$FishCooked.visible = false
		$Foodapple.visible = false
		$FruitSmoothie.visible = false
		$FishAndEggs.visible = false
		$GrassbugSteakAndEggs.visible = false
		#tools
		$Pickaxe.visible = true
		$Torch.visible = true
		$Shovel.visible = true
		$Axe.visible = true
		$Hammer.visible = true
		#materials
		$BarOfIron.visible = false
		$BarOfGold.visible = false
		$BarOfDiamond.visible = false
		$BarOfGreenDiamond.visible =  false
		#keys
		$ForestKey.visible = false
		$IceKey.visible = false
		$LavaKey.visible = false
		$DesertKey.visible = false
		$DarkKey.visible = false
		$LightbugKey.visible = false
		$WaterKey.visible = false
		$BossKey.visible = false

