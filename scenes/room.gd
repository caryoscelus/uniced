extends TextureFrame

onready var ask = get_node("ask")
onready var blood = get_node("blood")

var action

func _on_infusion_pressed():
	pass # replace with function body


func _on_door_pressed():
	pass # replace with function body


func _on_feet_pressed():
	action = "feet"
	ask.set_text("Do you want to get up?")
	ask.popup()


func _on_rail_pressed():
	pass # replace with function body


func _on_confirmed():
	if action == "feet":
		blood.set_hidden(false)
