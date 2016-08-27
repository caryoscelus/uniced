extends CenterContainer

signal finished_story

const story = [
	"..as you know, some time ago..",
	"..our great scientists..",
	"..killed gravity on this planet..",
	"....?ow..",
	"..hu?a???.. is ff??..",
	"...",
	"...",
	"As the voice becomes completely unintelligeable, you finally wake up.",
]

var story_pos = -1

onready var label = get_node("label")

func _ready():
	set_process_input(true)
	advance_story()

func _input(event):
	if event.is_pressed():
		advance_story()

func advance_story():
	story_pos += 1
	if story_pos >= story.size():
		emit_signal("finished_story")
		return
	label.set_text(story[story_pos])
