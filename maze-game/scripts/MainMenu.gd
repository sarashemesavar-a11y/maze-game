extends Control

@onready var high_contrast_check: CheckButton = $VBoxContainer/HighContrastCheck
@onready var declutter_check: CheckButton = $VBoxContainer/DeclutterCheck
@onready var one_button_check: CheckButton = $VBoxContainer/OneButtonCheck
@onready var speed_slider: HSlider = $VBoxContainer/SpeedSlider

func _ready() -> void:
	# Initialize UI toggles with current settings 
	high_contrast_check.button_pressed = AccessibilitySettings.high_contrast
	declutter_check.button_pressed = AccessibilitySettings.declutter_mode
	one_button_check.button_pressed = AccessibilitySettings.one_button_mode
	speed_slider.value = AccessibilitySettings.game_speed
	
func _on_high_contrast_check_toggled(toggled_on : bool) -> void:
	AccessibilitySettings.high_contrast = toggled_on
	
func _on_declutter_check_toggled(toggled_on: bool) -> void:
	AccessibilitySettings.declutter_mode = toggled_on

func _on_speed_slider_value_changed(value: float) -> void:
	AccessibilitySettings.game_speed = value			


func _on_one_button_check_toggled(toggled_on: bool) -> void:
	pass # Replace with function body.

func _on_start_button_pressed() -> void: 
	get_tree().change_scene_to_file("res://scenes/Level.tscn")
