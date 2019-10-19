extends Control

var messages = ["Hello curious one!\nIt seems that is your first time creating a planetary system,\n let me guide you through this adventure...",
"Every planetary system needs a star,\na unique and luminous sphere held by its own gravity.\n\nWhat is the name of [Star-Name]?",
"Good, that’s a stellar name!\nYour star has mass, it refers to the amount of atoms in it,\n more mass, more atoms, less mass, less atoms.\n\nWhat is the mass of [Star-Name]?",
"Good, it’s all coming together!\nIs your star a warm or a cold place? Temperature is a\n body's ability to impart energy as heat to another body.\n\nWhat is the temperature of [Star-Name]?"]
var DELAY = 2
var READ_TIME = 6
var t = 0
var index = 0
var mode = ""


onready var displayText = $text/DisplayText

func _ready():
	mode = "in"
	set_text()
	
func _process(delta):
	
	if mode == "in":
		set_color(t / DELAY)
		t += delta
		if t > DELAY:
			t = 0
			mode = "read"
	if mode == "out":
		set_color(1 - (t / DELAY))
		t += delta
		if t > DELAY:
			t = 0
			mode = "in"
			set_text()
			
	if mode == "read":
		if index != 0:
			return
		t += delta
		if t > READ_TIME:
			t = 0
			mode = "out"
			index += 1
			set_color(1)
	
func set_text():
	index = clamp(index, 0, len(messages) - 1)
	displayText.text = messages[index]
	
func set_color(alpha):
	var color = displayText.get_color("font_color")
	alpha = clamp(alpha, 0, 1)
	color.a = alpha
	displayText.add_color_override("font_color", color)
	
	
	