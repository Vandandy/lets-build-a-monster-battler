class_name DoDamage extends Targeted_Effect

@export var base_damage: int

func _do(doer: Monster, source: Move, game_state: GameState):
	var target = doer if target_self else MonsterController.get_monster_opponent(doer)
	
	var type_advantage_coefficient = Monster_Type.get_type_advantage_coefficient(source.type, target.type)
	
	var effectiveness = Monster_Type.get_type_effectiveness(source.type, target.type)
	if effectiveness == Monster_Type.Effectiveness.STRONG:
		Events.request_log.emit("Its extra effective")
	elif effectiveness == Monster_Type.Effectiveness.WEAK:
		Events.request_log.emit("Its really not very effective")
	
	var amt = base_damage * type_advantage_coefficient
	MonsterController.adjust_monster_hitpoints(target, -amt)
	Events.request_log.emit("{doer_name} hits {target_name} for {amt} damage".format({"doer_name": doer.name, "target_name": target.name, "amt": amt}))


	
