extends Node

# Signals for accessibility changes
signal high_contrast_toggled(enabled: bool)
signal declutter_toggled(enabled: bool)
signal game_speed_changed(speed: float)
signal one_button_mode_toggled(enabled: bool)

# Settings variables 
var high_contrast: bool = false:
	set(value):
		high_contrast = value
		high_contrast_toggled.emit(high_contrast)
		
var declutter_mode : bool = false:
	set(value):
		declutter_mode = value
		declutter_toggled.emit(declutter_mode)
		
var game_speed: float = 1.0:
	set(value):
		game_speed = value
		Engine.time_scale = game_speed
		game_speed_changed.emit(game_speed)
var one_button_mode: bool = false:
	set(value):
		one_button_mode = value
		one_button_mode_toggled.emit(one_button_mode)
				
		
		
					
		
