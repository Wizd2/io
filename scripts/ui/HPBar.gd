extends Control

@onready var bar: ProgressBar = $ProgressBar
@onready var label: Label = $HpLabel

func _ready():
	update_from_game_manager()

func update_from_game_manager():
	var current_hp = GameManager.player_hp
	var max_hp = GameManager.player_max_hp

	bar.max_value = max_hp
	bar.value = current_hp
	label.text = "HP: %d / %d" % [current_hp, max_hp]
