extends MeshInstance3D
export say_str

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func say():
	print("TV: Spooky TV Guy")

func setColor(color: Color):
	var mat: StandardMaterial3D = get_surface_override_material(0)
	mat.albedo_color = color


func set_outline(on: bool):
	var mat: StandardMaterial3D = get_surface_override_material(0)
	if on:
		#mat.stencil_mode = BaseMaterial3D.STENCIL_MODE_OUTLINE
		mat.stencil_outline_thickness = 0.03
		pass
	else:
		#mat.stencil_mode = BaseMaterial3D.STENCIL_MODE_DISABLED
		mat.stencil_outline_thickness = 0
		pass
