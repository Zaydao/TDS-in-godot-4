extends Area2D

var speed : int = 400
var direction : Vector2


func _process(delta):
	position += speed * direction * delta


func _on_timer_timeout():
	queue_free()

func _on_body_entered(body):
	print(body.name)
	if body.is_in_group("enemies"):
		if body.alive :
			body.die()
			queue_free()
	else:
		queue_free()
	

