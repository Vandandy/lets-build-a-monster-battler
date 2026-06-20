class_name DoHeal extends Targeted_Effect

@export var base_heal: int

func _do(doer: Monster, source: Move, game_state: GameState):
	var target = doer if target_self else MonsterController.get_monster_opponent(doer)
	
	var amt = base_heal
	MonsterController.adjust_monster_hitpoints(target, amt)
	
	
	
	Events.request_log.emit("{doer_name} heals itself for {amt} hp".format({"doer_name": doer.name, "amt": amt}))
