extends Area2D
export(int) var Velocidad = 400
var Movimiento = Vector2()
var limite
var pre_bullet = preload("res://Bullet.tscn")
var can_shoop = true
var cd = 0.2
var atak = 1
func _ready():
	pass

func _get_input():
	Movimiento = Vector2()
	if Input.is_action_pressed("ui_up"): #Arriba
		Movimiento.y -= Velocidad
	if Input.is_action_pressed("ui_down"):
		Movimiento.y += Velocidad
		
	if Movimiento.length() > 0: #Verificar si se esta moviendo
		Movimiento = Movimiento.normalized() * Velocidad # Normalizar la velocidad 
	
	#position += Movimiento * delta # actualizar las posiciones de x & y
	#position.y = clamp(position.y, 130, limite.y)

func shoop():
	if Input.is_action_pressed("Disparo") and can_shoop:
		var bala = pre_bullet.instance()
		bala.position = $position_laser.global_position
		get_parent().add_child(bala)
		can_shoop = false
		$Bala_cd.start(cd)

func _physics_process(delta):
	_get_input()
	shoop()
	position += Movimiento * delta # actualizar las posiciones de x & y
	

func _on_Bala_cd_timeout():
	can_shoop = true


func _on_Player_area_entered(area):
	if area.is_in_group("barreras"):
		area.distroys(atak)
		$AnimatedSprite.frame = 1
	yield(get_tree().create_timer(0.1),"timeout")
	queue_free()
	Game.tiempo = 0
	Game.puntos = 0
	
	get_tree().change_scene("res://Game_Over/Game_Over.tscn")
