extends Node

var max_enemies : int
var wave : int
var lives : int

func _ready():
	wave = 10
	lives = 30
	max_enemies = 50
	
	
	
func _process(delta):
	$Hud/livesLabel.text = "X " + str(lives)
	$Hud/waveLabel.text = "WAVE: " + str(wave)
	$Hud/enemiesLabel.text = "X " + str(max_enemies)

func _on_enemy_spawner_hit_p():
	print("hit player")
	lives -= 1
