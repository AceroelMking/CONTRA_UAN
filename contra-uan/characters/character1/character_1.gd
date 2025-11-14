class_name Personaje
extends CharacterBody2D
signal player_hit()
signal player_fall()

@export var too_down : float

@export var move_speed: float
@export var jump_speed: float
@onready var animated_sprite = $AnimatedSprite2D
var is_facing_right = true

var double_jump_counter: int

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

const bala = preload("res://projectiles/projectile2/projectile2.tscn")

func _physics_process(delta):
	jump(delta)
	move_x()
	flip()
	update_animations()
	move_and_slide()
	shooot()  
	damage_fall() 

func update_animations():
	if not is_on_floor():
		if velocity.y < 0:
			if Input.is_action_pressed("aim_up"):
				animated_sprite.play("shoot_up_jumping")
			else:
				animated_sprite.play("jump")
		else:
			if Input.is_action_pressed("aim_up"):
				animated_sprite.play("shoot_up_falling")
			else:
				animated_sprite.play("fall")
		return
	if velocity.x:
		if Input.is_action_pressed("aim_up"):
			animated_sprite.play("shoot_up_walking")
		else:
			animated_sprite.play("run")
	else:
		if Input.is_action_pressed("aim_up"):
			animated_sprite.play("shoot_up")
		else:
			animated_sprite.play("idle")

func jump(delta):
	if  Input.is_action_just_pressed("jump") and double_jump_counter < 1:
		velocity.y = -jump_speed
		double_jump_counter += 1
	if is_on_floor():
		double_jump_counter = 0
	if not is_on_floor():
		velocity.y += gravity * delta

func flip():
	#si el jugador mira a la derecha y se oprime hacia la izquierda
	#si el jugador mira a la izquierda y se oprime hacia la derecha
	if (is_facing_right and velocity.x < 0) or (not is_facing_right and velocity.x > 0):
		scale.x *= -1
		is_facing_right = not is_facing_right

func move_x():
	var inpit_axis = Input.get_axis("move_left","move_right")
	velocity.x = inpit_axis * move_speed
	
func shooot():
	var shoot = bala.instantiate()      
	if Input.is_action_just_pressed("shoot"):
		get_parent().add_child(shoot) 
		if Input.is_action_pressed("aim_up"):
			shoot.up = true
			shoot.position = $Marker2D2.global_position
		else:
			if not is_facing_right:
				shoot.scale.x *= -1
				shoot.velocidad_bala *= -1
			shoot.position =  $Marker2D.global_position

func _on_area_2d_body_entered(body):    
	print("Un cuerpo ha entado en el area: ", body.name)
	
func damage_received():
	print("Daño resibido")
	player_hit.emit()
	
func damage_fall():
	if position.y > too_down:
		damage_received()
		player_fall.emit()
