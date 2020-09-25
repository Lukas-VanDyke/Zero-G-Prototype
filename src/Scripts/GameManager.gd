extends Node2D

onready var MainMenuScene = load("res://Scenes/MainMenu.tscn")
onready var CombatScene = load("res://Scenes/CombatManager.tscn")

var CurrentScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func transition_to_combat():
	clear_scenes()
	CurrentScene = CombatScene.instance()
	add_child(CurrentScene)
	
func transition_to_main_menu():
	clear_scenes()
	CurrentScene = MainMenuScene.instance()
	add_child(CurrentScene)
	
#Clear the current scene
func clear_scenes():
	if CurrentScene:
		CurrentScene.queue_free()
		remove_child(CurrentScene)
		CurrentScene = null
