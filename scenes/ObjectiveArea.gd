extends Area2D

#var level1 = preload("res://scenes/levels/Level1.tscn").instantiate()

func _ready() -> void:
	print("Objective Area initialized")

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		print("Loading next level")
		TransitionScene.transition()
		await TransitionScene.on_transition_finished
		get_tree().change_scene_to_file("res://scenes/levels/Level1.tscn")
		
func _on_body_entered(body: Node2D) -> void:
	if (body.name == "RedShip"):
		print("Reaced Objective!")
