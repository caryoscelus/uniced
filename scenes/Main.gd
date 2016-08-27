extends TextureFrame

onready var room = get_node("room")

func _on_finished_story():
	room.set_hidden(false)
