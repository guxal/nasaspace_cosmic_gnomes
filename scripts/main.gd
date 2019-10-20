extends Spatial

const texture10 = preload("res://random_planets/2k_saturn.jpg")
const texture12 = preload("res://random_planets/geonosis-terrain.jpg")
const texture13 = preload("res://random_planets/hoth-tex.jpg")
const texture14 = preload("res://random_planets/jupiter2_1k.jpg")
const texture15 = preload("res://random_planets/jupitermap.jpg")
const texture16 = preload("res://random_planets/MarsMap_2500x1250.jpg")
const texture17 = preload("res://random_planets/PlutoColor.png")

var texturess = [texture10, texture12, texture13, texture14, texture15, texture16, texture17]
var random_texture1

const Nobel = preload("res://scenes//VisualNobel.tscn")

var Generator_planets = preload("res://RandomPlanets.tscn")

var node_star

var stars = {
	"hipergiants": preload("res://scenes//hipergiants.tscn"),
	"Supergiants": preload("res://scenes//Supergiants.tscn"),
	"giants": preload("res://scenes//giants.tscn"),
	"subgiants": preload("res://scenes//subgiants.tscn"),
	"dwarfs": preload("res://scenes//dwarfs.tscn"),
	"white dwarfs": preload("res://scenes//white dwarfs.tscn"),
	"no name": preload("res://scenes//white dwarfs.tscn")
}

var nobel
var g_planet 
var main = true

func _ready():
	nobel = Nobel.instance()
	$bg_music.play()
	self.add_child(nobel)

func _process(delta):
	var sun = false
	if main and nobel.ready:
		create_star(nobel.star_data)
		nobel.delete()
		main = false
		
	if Input.is_action_just_pressed("ui_accept"):
		
		if (main == false):
			
			self.remove_child(node_star)
			g_planet = Generator_planets.instance()
			self.add_child(g_planet)
			randomize()
			random_texture1 = texturess[randi() % texturess.size()]
			g_planet.get_node("body/cuerpo").material_override = SpatialMaterial.new()
			g_planet.get_node("body/cuerpo").material_override.albedo_texture = random_texture1
			$info2/label.text = "New Planet Generated"
			$PanelContainer.visible = false
			

func create_star(d):
	
	$PanelContainer/VBoxContainer/name.text += d["name"]
	$PanelContainer/VBoxContainer/mass.text += d["mass"] + " Sun masses"
	$PanelContainer/VBoxContainer/temperature.text += d["temperature"] + " Kelvin"
	$PanelContainer/VBoxContainer/luminosity.text += d["luminosity"] + " Lumens"
	$PanelContainer/VBoxContainer/radius.text += d["radius"] + " Sun Radius"
	$PanelContainer/VBoxContainer/type.text += d["type"]
	$info2/label.text = "[Star-Name] has been borned!\nBut, it seems lonely in the massive nothingness...\nLet’s create a planet based on [Star-Name] so it’s lonely\nnever more"
	$info2/label.text = $info2/label.text.replace("[Star-Name]", d["name"])
	var Star = stars[d["type"]]
	node_star = Star.instance()
	self.add_child(node_star)