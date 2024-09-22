extends Label


func _ready() -> void:
	text = 'ENTER THE CODE'



func _on_code_input_code_advanced(message: Variant) -> void:
	text = message


func _on_code_input_code_failed(message: Variant) -> void:
	text = message


func _on_code_input_code_completed(message: Variant) -> void:
	text = message
