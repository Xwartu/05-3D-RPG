extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Label.text = "You Won!" + "\nYour score was: " + str(Global.score)


func _on_Button_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.reset() 


func _on_Button2_pressed():
	get_tree().quit()
