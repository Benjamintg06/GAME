extends CanvasLayer

func _ready():
	pass # Replace with function body.


func _process(delta):
	$ParallaxBackground.scroll_base_offset.y += 1


func _on_Button_pressed():
	get_tree().change_scene("res://wordl/M_D1.tscn")


func _on_Salir_pressed():
	get_tree().change_scene("res://CenterContainer.tscn")
