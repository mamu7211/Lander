tool
extends Node2D

export(String) var text = "Label" setget set_text, get_text

func set_text(text: String):
	$sizer/label.text = text
	
func get_text():
	return $sizer/label.text

func _ready():
	pass


func _on_label_mouse_entered():
	$player.play("activate")


func _on_label_mouse_exited():
	$player.play("deactivate")
