extends Area2D
var velocidad = 300
var life = 0
var colorActual = Color(1,1,1,1)
var indice


func _ready():
	colorAleatorio()


func colorAleatorio():
	randomize()
	indice = randi() % 6
	
	if indice == 0:
		colorActual = Color("#5aff06")
		$globo_globo1.set_modulate("#5aff06")
		$globo_globo2.set_modulate("#00eb2f")
		$globo_globo3.set_modulate("#e60514")
		velocidad = 360
		life = 1
	if indice == 1:
		colorActual = Color("#00eb2f")
		$globo_globo1.set_modulate("#00eb2f")
		$globo_globo2.set_modulate("#fffb03")
		$globo_globo3.set_modulate("#ff6f06")
		velocidad = 350
		life = 1
	if indice == 2:
		colorActual = Color("#e60514")
		$globo_globo1.set_modulate("#e60514")
		$globo_globo2.set_modulate("#5ff3bc")
		$globo_globo3.set_modulate("#eb00cb")
		velocidad = 355
		life = 1
	if indice == 3:
		colorActual = Color("#fffb03")
		$globo_globo1.set_modulate("#fffb03")
		$globo_globo2.set_modulate("#ce19d4")
		$globo_globo3.set_modulate("#eb00cb")
		velocidad = 370
		life = 1
	if indice == 4:
		colorActual = Color("#0020c2")
		$globo_globo1.set_modulate("#0020c2")
		$globo_globo2.set_modulate("#0020c2")
		$globo_globo3.set_modulate("#0020c2")
		velocidad = 600
		life = 1
	if indice == 5:
		colorActual = Color("#0020c2")
		$globo_globo1.set_modulate("#0020c2")
		$globo_globo2.set_modulate("#0020c2")
		$globo_globo3.set_modulate("#0020c2")
		velocidad = 600
		life = 1		
	
func distroy(dmg): 
	if life >=0:
		life -= dmg
		$globo_globo1.frame = 4
		$globo_globo2.frame = 4
		$globo_globo3.frame = 4

	else:
				
		queue_free()

func _process(delta):
	position -= Vector2(0,velocidad*delta)
	
func _life_time_globos():
	queue_free()
