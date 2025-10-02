class_name Personaje
extends CharacterBody2D
@export var gravity = 100
@export var jump_speed = 100
@export var speed = 100
@onready var personaje: Sprite2D = $Personaje

func _physics_process(delta):
	#horizontal
	var direction = Input.get_axis("izquierda", "derecha")
	velocity.x = speed * direction
	if direction != 0:
		Sprite2D.scale.x = direction
	#gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
	#saltar
	var jump_pressed = Input.is_action_just_pressed("saltar")
	if jump_pressed:
		velocity.y = velocity.y - jump_speed
	move_and_slide()
	
