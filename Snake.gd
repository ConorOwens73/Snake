extends Node2D

var direction = Vector2(5,0)

func _ready():
	pass

func _process(delta):
	if(Input.is_action_just_pressed("ui_up")):
		direction = Vector2(0,-5)
	elif(Input.is_action_just_pressed("ui_down")):
		direction = Vector2(0,5)
	elif(Input.is_action_just_pressed("ui_left")):
		direction = Vector2(-5,0)
	elif(Input.is_action_just_pressed("ui_right")):
		direction = Vector2(5,0)

	move_snake()

func move_snake():
	var head_position = get_node("Head").position
	get_node("Head").position +=direction/2
