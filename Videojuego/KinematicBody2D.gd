extends KinematicBody2D

var atak_range = 2
var atak
var speed = 750

func _process(delta):
	position += Vector2(speed*delta, 0)#(0, speed * delta)

func _life_time():
	queue_free()
