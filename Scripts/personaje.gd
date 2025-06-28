extends CharacterBody2D
var movimiento = Vector2()
var velocidad = 100

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad
		$AnimationPlayer.play("Derecha")

	if Input.is_action_pressed("ui_left"):
		movimiento.x = -velocidad
		$AnimationPlayer.play("Izquierda")

	if Input.is_action_pressed("ui_up"):
		movimiento.y = -velocidad
		$AnimationPlayer.play("Arriba")

	if Input.is_action_pressed("ui_down"):
		movimiento.y = velocidad
		$AnimationPlayer.play("Abajo")

	if Input.is_action_just_released("Arriba") or Input.is_action_just_released("Abajo") or Input.is_action_just_released("Izquierda") or Input.is_action_just_released("Derecha"):
		movimiento.x = 0
		movimiento.y = 0
		$AnimationPlayer.stop()
	move_and_collide(movimiento)
