extends Node2D

enum PlayerState{
	Airborne,
	Grounded,
	Sliding,
	Defeated
}

var currentState
var movementDirection

export(int) var MaxSpeed
var currentSpeed

# Called when the node enters the scene tree for the first time.
func _ready():
	currentState = PlayerState.Grounded
	
func _physics_process(delta):
	pass
	
func move(direction):
	pass
	
func check_input():
	pass
	
func jump():
	pass
	
func shoot():
	pass
	
func slide():
	pass
