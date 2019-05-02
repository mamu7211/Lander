extends AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(String) var text = "Label Text" setget set_text, get_text

func set_text(text):
	$"scale-node/label-node".text = text

func get_text():
	return $"scale-node/label-node".text 
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_labelnode_mouse_entered():
	play("hover")


func _on_labelnode_mouse_exited():
	play("normal")
