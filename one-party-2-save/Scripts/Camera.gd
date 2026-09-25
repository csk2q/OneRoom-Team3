extends Camera3D

@export var player: Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.look_at(player.global_position)
	var offset = 1.5
	if abs(position.x - player.global_position.x) >= offset:
		position.x = clamp(position.x, player.global_position.x - offset, player.global_position.x + offset)
	fov = lerpf(75, 50, clamp(clamp(-player.global_position.z, 0, 5) / 5, 0, 1))
