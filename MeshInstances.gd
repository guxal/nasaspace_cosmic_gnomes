extends MeshInstance
var _scale = Vector3(self.scale.x, self.scale.y, self.scale.z)
var _metallic = 0.1
var f
var metalAmount

func _process(delta):
    global_rotate(Vector3(0,1,0), 0.01)


func _on_Radius_value_changed(value):
	f = value / 3
	_scale = Vector3(1 * f, 1 * f, 1 * f)
	set_scale(_scale)
