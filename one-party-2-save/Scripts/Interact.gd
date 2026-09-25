extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.area_entered.connect(_on_area_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if area is CharacterBody3D:
		(area as CharacterBody3D)
