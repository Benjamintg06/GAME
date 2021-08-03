extends Node2D

var Globo = preload("res://Globos/Globos.tscn")
var red = true

func _ready():
	Game._update_puntos()
	
	
func _physics_process(delta):
	if Game.puntos >=0  and red:
		_reducir()
	if Game.puntos >= 500:
		get_tree().change_scene("res://Game_Over/Segundo_Nivel.tscn")
	if Game.puntos < 0:
		Game.tiempo = 0
		Game.puntos = 0
		get_tree().change_scene("res://Game_Over/Game_Over.tscn")
		
func _reducir():
	red = false
	yield(get_tree().create_timer(10),"timeout")
	red = true
	Game.puntos -= 5
	Game._update_puntos()

func _timer_MD1():
	$Path2D/PathFollow2D.set_unit_offset(randf()*0.2)
	var globos = Globo.instance()
	globos.position.x = 350
	globos.position.y = 600 #$Path2D/PathFollow2D.global_position
	globos.add_to_group("Globos")
	get_parent().add_child(globos)
	
func _on_Timer_timeout():
	Game.tiempo += 1
	Game.update_time()
		
	


func _on_TextureButton_button_down():
	pass # Replace with function body.
