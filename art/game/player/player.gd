extends CharacterBody2D

@export var speed = 100
var player_info = preload("res://game/player/player_info.tres")

func _ready():
	position = player_info.position

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = speed * direction
	move_and_slide()

