extends CPUParticles2D

func _ready():
	Signals.connect("package_matched",emit_particle)

func emit_particle():
	emitting = true
