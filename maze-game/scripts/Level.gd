extends Node2D

@onready var decorations_node: Node2D = $Decorations
@onready var tileMapLayer = $TileMapLayer

const ROWS = 25
const COLS = 25



func _ready() -> void:
	# Connect signal from autoload 
	AccessibilitySettings.declutter_toggled.connect(_on_declutter_toggled)
	
	# Apply initial setting 
	_on_declutter_toggled(AccessibilitySettings.declutter_mode)
	
func _on_declutter_toggled(enabled: bool) -> void:
	if decorations_node:
		decorations_node.visible = !enabled	
	
