extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Idle")
	
	var length = $AnimationPlayer.current_animation_length
	
	var time = rand_range(0, length)
	
	$AnimationPlayer.seek(time, true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
