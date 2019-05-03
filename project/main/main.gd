extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	var parallax_offset = get_local_mouse_position()
	$background.set_parallax_offset(parallax_offset)
	

func _on_Button_pressed():
	get_tree().quit()


func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/flight.tscn")
