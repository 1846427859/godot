extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_gui_input(event):
	if event is InputEventMouseButton && event.button_index == 1 && event.pressed:
		print("鼠标左键单击")
	if event is InputEventMouseButton && event.button_index == 2 && event.pressed:
		print("鼠标右键单击")
	if event is InputEventMouseButton && event.button_index == 1 && event.double_click:
		print("鼠标左键双击")
	if event is InputEventMouseButton && event.button_index == 2 && event.double_click:
		print("鼠标右键双击")
	pass # Replace with function body.
