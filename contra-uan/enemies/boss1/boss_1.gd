class_name Boss
extends CharacterBody2D

var numero

@onready var animation_player = $AnimationPlayer
const ESCENA_BARRIL = preload("res://projectiles/projectile1/projectile1.tscn") 

func _ready():
	animation_player.play("barriles")

func launch_barrel():
	numero = randi_range(1, 2)
	if numero == 1:
		var instancia_barril = ESCENA_BARRIL.instantiate()
		instancia_barril.position = Vector2(0, 73)
		add_child(instancia_barril)
 
