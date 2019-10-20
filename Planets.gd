extends Spatial

const texture1 = preload("res://textures/GJ 1061 b/Map__16_RGB_Tint.tga")
const texture2 = preload("res://textures/Kepler-186 f/Tatooine.jpg")
const texture3 = preload("res://textures/Tau cet e/AlienPlanet/planet_Bog1200.png")
const texture4 = preload("res://textures/Teegardens star b/nab.jpg")
const texture5 = preload("res://textures/Texturizer/uv_mars.jpg")
const texture6 = preload("res://textures/Trappist-1 e/surface_.jpg")
const texture7 = preload("res://textures/Wolf/Yavin-IV.jpg")
const texture8 = preload("res://textures/proxima Cen b/dagobah-terrain.jpg")
const texture9 = preload("res://textures/21-endor/endor.jpg")


var textures = [texture1, texture2, texture3, texture4, texture5, texture6, texture7, texture8, texture9]
var random_texture

func _ready():
	randomize()
	random_texture = textures[randi() % textures.size()]
	get_node("RigidBody/MeshInstance").material_override = SpatialMaterial.new()
	get_node("RigidBody/MeshInstance").material_override.albedo_texture = random_texture
