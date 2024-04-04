extends Node2D

@onready var audio = $AudioStreamPlayer2D

var audio_files = {
	"add_point_sound": preload("res://Audio/add_point_sound.wav"),
	"pick_up_sound": preload("res://Audio/pick_up_sound.wav"),
	# Add more audio files here as needed
}

func _ready():
	Signals.connect("play_pickup_sound",play_sound)
	Signals.connect("play_add_score_sound",play_sound)

func play_sound(sound_name):
	print("Playing: ",sound_name)
	if audio_files.has(sound_name):
		audio.stream = audio_files[sound_name]
		audio.stop() # Stop any currently playing audio
		audio.play()
	else:
		print("Sound not found:", sound_name)
