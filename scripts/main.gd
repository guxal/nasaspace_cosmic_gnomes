extends Spatial

const Nobel = preload("res://scenes//VisualNobel.tscn")

var stars = {
	"hipergiants": preload("res://scenes//hipergiants.tscn"),
	"Supergiants": preload("res://scenes//Supergiants.tscn"),
	"giants": preload("res://scenes//giants.tscn"),
	"subgiants": preload("res://scenes//subgiants.tscn"),
	"dwarfs": preload("res://scenes//dwarfs.tscn"),
	"white dwarfs": preload("res://scenes//white dwarfs.tscn")
}

var nobel 
var main = true

func _ready():
	nobel = Nobel.instance()
	$bg_music.play()
	self.add_child(nobel)

func _process(delta):
	if main and nobel.ready:
		create_star(nobel.star_data)
		nobel.delete()
		main = false
		
func create_star(d):
	
	$PanelContainer/VBoxContainer/name.text += d["name"]
	$PanelContainer/VBoxContainer/mass.text += d["mass"] + " Sun masses"
	$PanelContainer/VBoxContainer/temperature.text += d["temperature"] + " Kelvin"
	$PanelContainer/VBoxContainer/luminosity.text += d["luminosity"] + " Lumens"
	$PanelContainer/VBoxContainer/radius.text += d["radius"] + " Sun Radius"
	$PanelContainer/VBoxContainer/type.text += d["type"]
	
	var Star = stars[d["type"]]
	self.add_child(Star.instance())
	
	