extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	

func _process(delta):
	Conductor.time += delta
		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and not event.is_echo():
		SceneManager.switch_scene("res://game/menus/main_menu.tscn")
		


func _on_check_box_toggled(toggled_on: bool) -> void:
	Game.shaders = toggled_on
	pass # Replace with function body.
