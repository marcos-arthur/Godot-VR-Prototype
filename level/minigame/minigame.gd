extends Node3D

@export var panel_mesh: MeshInstance3D

const ORANGE_MATERIAL = preload("res://assets/orange.tres")
const GREEN_MATERIAL = preload("res://assets/green.tres")
const GRAY_MATERIAL = preload("res://assets/gray.tres")

func _ready() -> void:
	panel_mesh.set_surface_override_material(0, GRAY_MATERIAL)

func check_type(body: Recyclabe, expected_type: String) -> void:
	if(body.type && body.type == expected_type):
		print("CORRECT")
		panel_mesh.set_surface_override_material(0, GREEN_MATERIAL)
	else:
		print("INCORRECT")
		panel_mesh.set_surface_override_material(0, ORANGE_MATERIAL)
	await get_tree().create_timer(3).timeout
	panel_mesh.set_surface_override_material(0, GRAY_MATERIAL)

func _on_paper_area_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		check_type(body, "paper")

func _on_plastic_area_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		check_type(body, "plastic")

func _on_metal_area_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		check_type(body, "metal")
