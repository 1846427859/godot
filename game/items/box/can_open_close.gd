extends Area2D

@onready var sprite_2d = $"../Sprite2D"
@onready var item_list = $"../item_list"

var player: Node2D = null

var box_is_open = false

func _input(event):
	if player && event.is_action_pressed("press_space"):
		if box_is_open:
			sprite_2d.frame = 0
			box_is_open = false
		else:
			sprite_2d.frame = 1
			box_is_open = true
		item_list.visible = box_is_open
		print("打开关闭箱子。。。")

func _on_body_entered(body):
	if body.name == "player":
		player = body
		print("玩家进入可打开关闭箱子区域")

func _on_body_exited(body):
	if body.name == "player":
		player = null
		print("玩家离开可打开关闭箱子区域")

