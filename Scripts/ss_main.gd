extends Node2D

func _ready():
	$AnimationPlayer.play("Splash_screen")
	pass

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Escenas/main.tscn")
	pass
