extends KinematicBody2D

var direction: float;
export var speed = 400;

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var velocity = Vector2(speed, 0).rotated(direction)
	move_and_slide(velocity)
	pass
