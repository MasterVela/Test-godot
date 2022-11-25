extends KinematicBody2D

export var speed = 20
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	if get_parent().get_parent().get_node("Player") == null:
		return
	
	var p_pos = get_parent().get_parent().get_node("Player").position
	
	var dir = (p_pos - position)
	var velocity = dir.normalized() * speed
	
	move_and_slide(velocity)

func _on_Area2D_body_entered(body):
	body.queue_free()
	queue_free()
	print("pium");



