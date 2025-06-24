extends Node2D

@onready var Boton_rejugar = $VBoxContainer/Rejugar
@onready var Boton_jugar = $VBoxContainer/Jugar

signal jugar
signal salir
signal rejugar

func _on_jugar_pressed() :
	emit_signal("jugar")
	pass

func _on_salir_pressed() -> void:
	emit_signal("salir")
	pass

func _on_rejugar_pressed() -> void:
	emit_signal("rejugar")
	pass

func _on_bandera_gana() -> void:
	Boton_rejugar.visible = true
	Boton_jugar.visible = false
	pass

func _on_bandera_pierde() -> void:
	Boton_rejugar.visible = true
	Boton_jugar.visible = false
	pass
