extends DirectionalLight2D

@onready var date_and_time = $"../date_and_time"
@onready var animation_player = $AnimationPlayer


func _process(delta):
	var currentTime = date_and_time.h * 3600 + date_and_time.m * 60 + date_and_time.s
	var seek_value = remap(float(currentTime), 0.00, 86400.00, 0.00, 24.00)
	animation_player.play("sun")
	animation_player.seek(seek_value)
