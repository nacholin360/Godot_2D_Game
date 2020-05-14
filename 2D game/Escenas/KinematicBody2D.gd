extends KinematicBody2D
#comentario fede
var SPEED  = 3000
var Velocity = Vector2()
var gravity = 9.8

	
	

func _physics_process(delta):
	var dir = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		dir.x += 1
	if Input.is_action_pressed("ui_left"):
		dir.x -= 1
		

		
	dir = dir.normalized()
	dir = dir * SPEED * delta
	
	Velocity.y += delta * gravity * 3
	Velocity.x = dir.x
	
	if Input.is_action_just_pressed("ui_up") and position.y >= 600:
		Velocity.y = -50
	
	Velocity = move_and_slide(Velocity, Vector2(0, 1))
	
	position.y = clamp(position.y, 0, 600)


	
	
