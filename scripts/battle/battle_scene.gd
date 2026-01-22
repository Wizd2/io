extends Node2D

@onready var player_hp_bar = $CanvasLayer/UI/PlayerHpBar
@onready var answer_button = $CanvasLayer/UI/AnswerButton

func _ready():
	answer_button.pressed.connect(_on_answer_pressed)

func _on_answer_pressed():
	GameManager.damage_player(10)
	player_hp_bar.update_from_game_manager()
