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

func _ready():
	print("hola")
	randomize()
	random_texture1 = texturess[randi() % texturess.size()]
	get_node("body/cuerpo").material_override = SpatialMaterial.new()
	get_node("body/cuerpo").material_override.albedo_texture = random_texture1
	