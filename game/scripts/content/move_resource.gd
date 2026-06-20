class_name MoveResource extends Resource


@export var name: String
@export var usage_max: int
@export var use_effects: Array[Targeted_Effect]
@export var type: Monster_Type.Type
@export var use_message: String = "{user_name} uses {move_name}"
@export var base_accuracy: float = 0.9 #default 90% accuracy
