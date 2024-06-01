extends Node

var max_enemies : int
var wave : int
var lives : int

func _ready():
	wave = 1
	lives = 3
	max_enemies = 5
	
	
	
func _process(delta):
	$Hud/livesLabel.text = "X " + str(lives)
	$Hud/waveLabel.text = "WAVE: " + str(wave)
	$Hud/enemiesLabel.text = "X " + str(max_enemies)

func _on_enemy_spawner_hit_p():
	print("hit player")
	lives -= 1
