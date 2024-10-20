extends Node2D

@onready var darkness = $Darkness
@onready var player = $MainCharacter
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func turn_off_lights():
	darkness.energy = 12
	player.flashlight.energy = 1

func _on_main_character_tony_died() -> void:
	player.overlay.changeObjective("Objective:\nPress R to restart")


func _on_main_character_restart() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
