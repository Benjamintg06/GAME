extends Area2D

var life = 0

func _ready():
	pass # Replace with function body.

func distroys(dmg): 
	if life >=0:
		life -= dmg
	else:	
		queue_free()
	
	
