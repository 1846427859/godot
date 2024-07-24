extends Area2D

var player: Node2D = null
@onready var no_chat = $"../no_chat"
@onready var chatting = $"../chatting"
@onready var label = $"../chatting/Label"

var chat_content = [
	"你好，游戏玩家，我是你的新手指导员。",
	"你能帮我到左手边的森林里面帮我弄点史莱姆的粘液回来吗？",
	"我旁边的箱子里面有武器和药品，你可以拿去使用。",
	"如果你帮我带回史莱姆的粘液的话，箱子里的武器和药水就送你了。",
	"end",
]
var chat_index = 0

func _input(event):
	if player && event.is_action_pressed("press_space"):
		no_chat.visible = false
		chatting.visible = true
		label.text = chat_content[chat_index]
		chat_index += 1
		if chat_index >= chat_content.size():
			chat_index = 0
			no_chat.visible = true
			chatting.visible = false
		print("和npc聊天。。。")

func _on_body_entered(body):
	if body.name == "player":
		player = body
		print("玩家进入聊天区域")


func _on_body_exited(body):
	if body.name == "player":
		player = null
		no_chat.visible = true
		chatting.visible = false
		chat_index = 0
		print("玩家退出聊天区域")
