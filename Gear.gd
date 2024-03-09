extends Area2D

signal Gear_used

func _ready():
	pass 


func _on_Gear_area_entered(area):
	if(area.name == "head"):
		queue_free()
		emit_signal("Gear_used")
		
