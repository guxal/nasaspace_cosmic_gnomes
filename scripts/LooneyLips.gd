extends Control

var messages = ["Hello curious one!\nIt seems that is your first time creating a planetary system,\n let me guide you through this adventure...",
"Every planetary system needs a star,\na unique and luminous sphere held by its own gravity.\n\nWhat is the name of your star?",
"Good, that’s a stellar name!\nYour star has mass, it refers to the amount of atoms in it,\n more mass, more atoms, less mass, less atoms.\n\nWhat is the mass of [Star-Name]?",
"Good, it’s all coming together!\nIs your star a warm or a cold place? Temperature is a\n body's ability to impart energy as heat to another body.\n\nWhat is the temperature of [Star-Name]?",
"Great, what a special climate!\nNow, is your star bright or dark? Luminosity is the\n measure of light of your star.\n\nWhat is the luminosity of [Star-Name]?",
"Amazing, light for the universe!\nFor the finishing touches… is your star small or big?\nRadius is distance from the center to the edge of your star.\n\nWhat is the radius of [Star-Name]?",
"Perfect!\nAll your data has been taken, space monkeys are working!\n\n[Star-Name] is now generating..."]
var DELAY = 2
var READ_TIME = 6
var t = 0
var index = 0
var mode = ""

onready var displayText = $text/DisplayText
onready var input = $text_input/input
onready var slider = $slider/slider
onready var enter = $enter

var star_data = {
	"name": "Alpha Centauri",
	"mass": "2400 Sun masses",
	"temperature": "1200 degrees",
	"luminosity": "3..",
	"radius": "120000"
} 

func _ready():
	mode = "in"
	input.visible = false
	slider.visible = false
	enter.visible = false
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
			
	if Input.is_action_just_pressed("ui_accept"):
		if index == 1:
			var s = input.text
			if len(s) != 0:
				star_data["name"] = s
				index += 1
				set_text()
				mode = "in"
				t = 0
		elif index == 2:
			var val = slider.value
			star_data["mass"] = str(val)
			index += 1
			set_text()
			mode = "in"
			t = 0
		elif index == 3:
			var val = slider.value
			star_data["temperature"] = str(val)
			index += 1
			set_text()
			t = 0
			mode = "in"
		elif index == 4:
			var val = slider.value
			star_data["luminosity"] = str(val)
			index += 1
			set_text()
			mode = "in"
			t = 0
		elif index == 5:
			var val = slider.value
			star_data["radius"] = str(val)
			index += 1
			set_text()
			mode = "in"
			t = 0
	
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
	if index == 1:
		input.visible = true
	else:
		input.visible = false
	if index > 0:
		enter.visible = true
	else:
		enter.visible = false
	if index > 1 and index < 6:
		slider.visible = true
	else:
		slider.visible = false
	
func set_color(alpha):
	var color = displayText.get_color("font_color")
	alpha = clamp(alpha, 0, 1)
	color.a = alpha
	displayText.add_color_override("font_color", color)
