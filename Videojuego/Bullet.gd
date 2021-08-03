extends Area2D

var atak = 1
var speed = 750
var sound = load("res://Musica/laserr.ogg")
func _process(delta):
	position -= Vector2(speed*delta, 0)

func _life_time():
	queue_free()


func _area_entered(area):
	if area.is_in_group("Globos"):
		area.distroy(atak)
		add_to_group("Bullet")
		var sonido = AudioStreamPlayer2D.new()
		sonido.stream = sound
		sonido.global_position = global_position
		sonido.play()
		get_parent().add_child(sonido)
		
		if area.indice == 4:
			Game.puntos += 30
		if area.indice == 5:
			Game.puntos += 30
		else:
			Game.puntos += 1
			Game._update_puntos()
		queue_free()
