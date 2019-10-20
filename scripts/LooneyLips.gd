extends Control

var messages = ["Hello curious one!\nIt seems that is your first time creating a planetary system,\n let me guide you through this adventure...",
"Every planetary system needs a star,\na unique and luminous sphere held by its own gravity.\n\nWhat is the name of your star?",
"Good, that’s a stellar name!\nYour star has mass, it refers to the amount of atoms in it,\n more mass, more atoms, less mass, less atoms.\nWhat is the mass of [Star-Name]?",
"Good, it’s all coming together!\nIs your star a warm or a cold place? Temperature is a\n body's ability to impart energy as heat to another body.\n\nWhat is the temperature of [Star-Name]?",
"Great, what a special climate!\nNow, is your star bright or dark? Luminosity is the\n measure of light of your star.\n\nWhat is the luminosity of [Star-Name]?",
"Amazing, light for the universe!\nFor the finishing touches… is your star small or big?\nRadius is distance from the center to the edge of your star.\n\nWhat is the radius of [Star-Name]?",
"Perfect!\nAll your data has been taken, space monkeys are working!\n\n[Star-Name] is now generating..."]

var DELAY = 1
var READ_TIME = 2
var t = 0
var index = 0
var mode = ""
var data_stars;

onready var VALUE = $slider/value
onready var MIN = $slider/HBoxContainer/min
onready var MAX = $slider/HBoxContainer/max
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
	VALUE.visible = false
	MIN.visible = false
	MAX.visible = false
	input.visible = false
	slider.visible = false
	$slider.visible = false
	enter.visible = false
	$HTTPRequest.request("http://144.202.115.196/nasaspaceapp/data_type_stars.json")
	set_text("none")
	
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
			set_text("none")
			
	if Input.is_action_just_pressed("ui_accept"):
		if index == 1:
			var s = input.text
			if len(s) != 0:
				star_data["name"] = s
				index += 1
				set_text("name")
				mode = "in"
				t = 0
		elif index == 2:
			var val = slider.value
			star_data["mass"] = str(val)
			index += 1
			set_text("mass")
			mode = "in"
			t = 0
		elif index == 3:
			var val = slider.value
			star_data["temperature"] = str(val)
			index += 1
			set_text("temperature")
			t = 0
			mode = "in"
		elif index == 4:
			var val = slider.value
			star_data["luminosity"] = str(val)
			index += 1
			set_text("luminosity")
			mode = "in"
			t = 0
		elif index == 5:
			var val = slider.value
			star_data["radius"] = str(val)
			index += 1
			set_text("radius")
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


func set_text(_index):
	index = clamp(index, 0, len(messages) - 1)
	print(index)
	if index == 0 or index == 1:
		displayText.text = messages[index]
	if index == 1:
		input.visible = true
	if index > 1:
		displayText.text = messages[index].replace("[Star-Name]", star_data[_index])
		input.visible = false
	if index > 0:
		enter.visible = true
	else:
		enter.visible = false
	if index > 1 and index < 6:
		slider.visible = true
		VALUE.visible = true
		MIN.visible = true
		MAX.visible = true
		$slider.visible = true
		$slider/HBoxContainer.visible = true
	else:
		slider.visible = false
	
func set_color(alpha):
	var color = displayText.get_color("font_color")
	alpha = clamp(alpha, 0, 1)
	color.a = alpha
	displayText.add_color_override("font_color", color)

func get_star(value):
	for data in data_stars:
		if(data.masa[0] < value and data.masa[1] > value):
			return data.name
	return "no name"
	
func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	data_stars = json.result
	print(json.result[0])

	slider.min_value = data_stars[len(data_stars)-1].masa[0]
	slider.max_value = data_stars[0].masa[1]
	
	slider.value = slider.max_value / 2

	VALUE.text = String(slider.max_value / 2)
	

func _on_slider_value_changed(value):
	VALUE.text = String(value)
	print(value)
