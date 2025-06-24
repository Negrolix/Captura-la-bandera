extends Node2D

@onready var Fondo_victoria = $Menu/Victoria
@onready var Fondo_menu = $Menu/Menu
@onready var Fondo_derrota = $Menu/Derrota
@onready var Audio_menu = $"The-return-of-the-8-bit-era-301292"
@onready var Audio_mordida = $"Eat-323883"
@onready var Audio_ambiente = $Ambiente
@onready var Audio_llorando = $"CryingManSoundEffectFunnySoundEffectCopyrightFreeSoundEffects-yt_savetube_me"

func _ready():
	if Global.rejugar:
		_on_menu_jugar()
	else:
		get_tree().paused = true
	Repoducir_musica_menu()
	pass

func Repoducir_musica_menu():
	Audio_menu.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	Audio_menu.play()
	pass

func _on_bandera_gana() -> void:
	$Enemigo.queue_free()
	$Bandera.queue_free()
	get_tree().paused = true
	$Menu.visible = true
	Fondo_victoria.visible = true
	Fondo_menu.visible = false
	Audio_mordida.play()
	pass

func _on_bandera_pierde() -> void:
	$Personaje.queue_free()
	$Menu.visible = true
	Fondo_derrota.visible = true
	Fondo_menu.visible = false
	get_tree().paused = true
	Audio_llorando.play()
	pass

func _on_menu_jugar() -> void:
	$Menu.visible = false
	$BackGround.visible = true
	get_tree().paused = false
	Audio_ambiente.play()
	Audio_menu.stop()
	pass

func _on_menu_salir() -> void:
	get_tree().quit()
	pass

func _on_menu_rejugar() -> void:
	get_tree().reload_current_scene()
	pass
