class_name Bala
extends Area2D
@export var velocidad_bala : float
var up = false

@export var tiempo_para_desaparecer: float = 1.0
var tiempo: float = 0.0

func _process(delta: float) -> void:
	if up:
		position.y -= velocidad_bala * delta
	else:
		position.x += velocidad_bala * delta
	tiempo += delta
	if tiempo >= tiempo_para_desaparecer:
			queue_free() 
	
func _on_body_entered(body):
	if body is Barril:
			queue_free() 
			if body.has_method("damage_received"):
				body.damage_received()
