extends Sprite2D

signal gana
signal pierde

func _on_area_2d_body_entered(body):
	if body.name == "Personaje":
		emit_signal("gana")
	else:
		emit_signal("pierde")
