class_name Move

@export var resource: MoveResource
var usages: int

var type: Monster_Type.Type:
	get: return resource.type


var use_message: String:
	get: return resource.use_message
	
var name: String:
	get: return resource.name
	
var base_accuracy: float:
	get: return resource.base_accuracy
