extends Camera2D

@export var lerpSpeed:float = 0.4
@export var followNode:Node2D

func _ready():
	pass

func _physics_process(delta):
	self.position = lerp(self.position, followNode.position, lerpSpeed*delta)
