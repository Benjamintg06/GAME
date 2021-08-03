extends CanvasLayer

var sonido = load("res://Musica/ganar.ogg")

func _ready():
	pass # Replace with function body.

func _process(delta):
	$ParallaxBackground.scroll_base_offset.y += 1



func _on_Volver_pressed():
	Game.puntos = 0
	Game.tiempo = 0
	get_tree().change_scene("res://wordl/M_D1.tscn")
