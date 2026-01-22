extends Node

var player_max_hp := 100
var player_hp := 100

func reset_battle():
	player_hp = player_max_hp

func damage_player(amount: int):
	player_hp = clamp(player_hp - amount, 0, player_max_hp)
