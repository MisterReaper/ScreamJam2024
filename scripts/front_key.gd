extends Node2D

@onready var audioPlayer = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func interact():
	queue_free() # function gets still completed don't worry ;D
	var audiostream: AudioStream = preload("res://assets/sounds/key-grab.mp3")
	audioPlayer.set_stream(audiostream)
	audioPlayer.play()
	return ["Must be the front door key."]
	
