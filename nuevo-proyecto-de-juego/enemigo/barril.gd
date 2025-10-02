class_name Barril
extends RigidBody2D

@export var demasiado_abajo = 1000

func _process(delta):
	if position.y > demasiado_abajo:
		queue_free() 
		
