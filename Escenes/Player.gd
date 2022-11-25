extends KinematicBody2D

var bullet_node = preload("res://Escenes/Bullet.tscn")

export var speed = 350

func _ready():
	Globals.Player = self
	$PlayerName.text = Globals.player.name

func _process(delta):
	$Gun.look_at(get_global_mouse_position())
	
#	if Input.is_action_pressed("game_left") and Input.is_action_pressed("game_up"):
#		position.y -= sqrt(2)/2 * speed * delta
#		position.x -= sqrt(2)/2 * speed * delta
#		return;
#
#	if Input.is_action_pressed("game_right") and Input.is_action_pressed("game_up"):
#		position.y -= sqrt(2)/2 * speed * delta
#		position.x += sqrt(2)/2 * speed * delta
#		return;
	
	if Input.is_action_pressed("game_right"):
		position.x += speed * delta;
#
	if Input.is_action_pressed("game_left"):
		position.x -= speed * delta;

	if Input.is_action_pressed("game_up"):
		position.y -= speed * delta;

	if Input.is_action_pressed("game_down"):
		position.y += speed * delta;

	if Input.is_action_just_pressed("game_fire"):
		var bullet = bullet_node.instance()
		bullet.position = $Gun/Gun.global_position
		bullet.direction = $Gun.global_rotation
		get_parent().add_child(bullet)



func _on_Area2D_area_entered(area):
	get_parent().get_node("Game Over").visible = true
	get_parent().get_node("Game Over/Timer").start()
	queue_free()
	pass # Replace with function body.
