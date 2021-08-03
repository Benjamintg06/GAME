extends CanvasLayer

var music_on = true

func _ready():
	pass # 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_pausa_pressed():
		if get_tree().paused == false:
			get_tree().paused = true
		else:
			get_tree().paused = false


func _on_TextureButton_button_down():
	music_on = !music_on
	
	if(music_on):
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -80


func _on_TextureButton2_button_down():
	music_on = music_on
	
	if(music_on):
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -7
