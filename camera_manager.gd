extends Node3D

@export var cameras : Array[Camera3D]
var cam_id : int = 0

func _ready() -> void:
	for c in cameras:
		c.current = false
	cam_id = 0
	cameras[cam_id].current = true

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("up"):
		cameras[cam_id].current = false
		cam_id += 1
		if cam_id >= cameras.size():
			cam_id = 0
		cameras[cam_id].current = true
