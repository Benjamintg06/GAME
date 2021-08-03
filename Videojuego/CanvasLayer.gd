extends CanvasLayer


func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://wordl/M_D1.tscn")


func _on_Salir_button_up():
	get_tree().quit()
