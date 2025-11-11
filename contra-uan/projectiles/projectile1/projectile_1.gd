class_name Barril
extends RigidBody2D

@export var too_down = 1000
var damage_done = false

@export var tiempo_para_desaparecer: float = 1.0
@export var tolerancia_velocidad: float = 3.5
var tiempo_quieto: float = 0.0

func _process(delta):
	if position.y > too_down:
		queue_free() 
	if linear_velocity.length() < tolerancia_velocidad and abs(angular_velocity) < 0.1:
		tiempo_quieto += delta
		if tiempo_quieto >= tiempo_para_desaparecer:
			queue_free() 
	else:
		tiempo_quieto = 0.0

func _on_body_entered(body):
	if body is Personaje:
		if not damage_done:
			print("Jugador erido") 
			damage_done = true
			queue_free() 
			if body.has_method("damage_received"):
				body.damage_received()
