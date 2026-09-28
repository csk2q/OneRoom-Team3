extends Area3D

var activeInteract: Interact = null

# Called when the node enters the scene tree for the first time.
func _ready():
	self.area_entered.connect(on_area_entered)
	self.area_exited.connect(on_area_exited)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if activeInteract != null:
		if Input.is_action_just_pressed("interact"):
			activeInteract.player_click.emit()
			activeInteract.player_click_press.emit()
		if Input.is_action_just_released("interact"):
			activeInteract.player_click_release.emit()

func on_area_entered(area: Interact):
	area.player_entered.emit()
	activeInteract = area

func on_area_exited(area: Interact):
	area.player_left.emit()
	area.player_click_release.emit()
	if area == activeInteract:
		activeInteract = null
