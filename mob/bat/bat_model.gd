extends Node3D

@onready var animation_tree = %AnimationTree


func _ready():
	pass


func _process(delta):
	pass


func hurt():
	animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
