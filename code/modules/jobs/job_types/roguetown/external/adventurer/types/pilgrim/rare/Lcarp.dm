//human master carpenter

/datum/advclass/mastercarpenter
	name = "Master Carpenter"
	tutorial = "You've mastered carpentry, the art of woodcutting and creation, on some form or another."
	
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/mastercarpenter
	category_tags = list(CTAG_TOWNER)
	maximum_possible_slots = 1
	pickprob = 5
	
/datum/outfit/job/roguetown/adventurer/mastercarpenter/pre_equip(mob/living/carbon/human/H)
	..()
	
	H.mind.adjust_skillrank(/datum/skill/combat/axes, 4, TRUE) // They use hammers, sawes and axes all day.
	H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE) // They work at great heights.
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 6, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/engineering, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/labor/lumberjacking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE) 
	H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
	
	head = /obj/item/clothing/head/roguetown/hatblu
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/tamari 
	pants = /obj/item/clothing/under/roguetown/trou
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/rogueweapon/hammer/claw
	backl = /obj/item/storage/backpack/rogue/backpack
	backpack_contents = list(
						/obj/item/flint = 1,
						/obj/item/rogueweapon/huntingknife = 1,
						/obj/item/flashlight/flare/torch = 1,
						)
	H.change_stat("strength", 2)
	H.change_stat("endurance", 3)
	H.change_stat("constitution", 1)
	H.change_stat("intelligence", 2)
	H.change_stat("speed", 1)
