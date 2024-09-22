extends AnimatedSprite2D


func _ready() -> void:
	animation = 'idle'


func _unhandled_input(event: InputEvent) -> void:
	if event.is_released():
		pass
	elif event.is_action_pressed('input_up'):
		animation = 'up'
	elif event.is_action_pressed('input_down'):
		animation = 'down'
	elif event.is_action_pressed('input_left'):
		animation = 'left'
	elif event.is_action_pressed('input_right'):
		animation = 'right'
	elif event.is_action_pressed('input_a'):
		animation = 'A'
	elif event.is_action_pressed('input_b'):
		animation = 'B'
	elif event.is_action_pressed('input_start'):
		animation = 'start'
	else:
		animation = 'idle'


func _on_code_input_code_completed(_message: Variant) -> void:
	animation = 'win'
	play()
