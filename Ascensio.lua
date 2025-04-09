--- STEAMODDED HEADER
--- MOD_NAME: Ascensio
--- MOD_ID: Ascensio
--- MOD_AUTHOR: [MarioFan597]
--- MOD_DESCRIPTION: Exoticfy your Jokers!
--- PREFIX: asc
--- BADGE_COLOUR: 708b91
--- DEPENDENCIES:Cryptid>=0.5.3<=0.5.5
--- VERSION: 0.0.1

----------------------------------------------
------------MOD CODE -------------------------
---
---
---
local Global_Cap = 1000000
----------Defining Atlases------------------
SMODS.Atlas {
	key = "v_atlas_1",
	path = "vanilla_atlas_1.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "c_atlas_1",
	path = "cryptid_atlas_1.png",
	px = 71,
	py = 95
}


SMODS.Atlas {
	key = "ascension",
	path = "ascension.png",
	px = 71,
	py = 95
}

----------Defining Consumables------------------
--Borrowed and modyfied from MoreMarioJoker's powerup card and cryptid's gateway
local ascensionable = {
			j_joker = "j_asc_jimbo",
			j_duo = "j_asc_duo",
			j_trio = "j_asc_trio",
			j_selzer = "j_asc_seltzer",
			j_midas_mask = "j_asc_midas",
			j_cry_oil_lamp = "j_asc_oil_lamp",
			j_cry_highfive = "j_asc_high_five"	
		}

SMODS.Consumable {
	key = "ascension",
	set = "Spectral",
	atlas = 'ascension',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
	cost = 4,
	hidden = true,
	config = {},
	can_use = function(self, card)
		if #G.jokers.highlighted == 1 and ascensionable[G.jokers.highlighted[1].config.center.key] then
				return true
		end
	end,
	use = function(self, card, area, copier)
		local ascendent = G.jokers.highlighted[1]
		if (#SMODS.find_card("j_jen_saint") + #SMODS.find_card("j_jen_saint_attuned")) <= 0 then
			local deletable_jokers = {}
			for k, v in pairs(G.jokers.cards) do
				if not v.ability.eternal then
					deletable_jokers[#deletable_jokers + 1] = v
				end
			end
			local _first_dissolve = nil
			G.E_MANAGER:add_event(Event({
				trigger = "before",
				delay = 0.75,
				func = function()
					for k, v in pairs(deletable_jokers) do
						if v.config.center.rarity == "cry_exotic" then
							check_for_unlock({ type = "what_have_you_done" })
						end
						v:start_dissolve(nil, _first_dissolve)
						_first_dissolve = true
					end
					return true
				end,
			}))
		end
		--SMODS.add_card({key = ascensionable[G.jokers.highlighted[1].config.center.key]})
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.4,
			func = function()
				play_sound("timpani")
				local card = create_card("Joker", G.jokers, nil, "cry_exotic", nil, nil, ascensionable[ascendent.config.center.key], "cry_gateway")
				card:add_to_deck()
				G.jokers:emplace(card)
				card:juice_up(0.3, 0.5)
				return true
			end,
		}))
		delay(0.6)
	end,
	in_pool = function()
		if G and G.jokers and G.jokers.cards then
			for k, v in ipairs(G.jokers.cards) do
				if ascensionable[v.config.center.key] then
					return true 
				end
			end
		end
		return false
	end,
	cry_credits = {
		idea = {
			"MarioFan597",
		},
		art = {
			"cozyori",
			"MarioFan597",
		},
		code = {
			"MarioFan597",
			"MathIsFun",
			"SMG9000"
		},
	},
}


----------Defining Jokers------------------
SMODS.Joker {
	key = 'jimbo',
	config = { extra = {mult = 44444} },
	rarity = "cry_exotic",
	atlas = 'v_atlas_1',
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card and card.ability.extra.mult} }
	end,
	calculate = function(self, card, context)
	if context.joker_main then
			if card.ability.extra.mult > 0 then
				return {
					mult_mod = math.min(card.ability.extra.mult, Global_Cap),
					message = localize { type = 'variable', key = 'a_mult', vars = { math.min(card.ability.extra.mult, Global_Cap) } }
				}
			end
		end
	end,
    cry_credits = {
			idea = {
				"Inspector_B"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

----------Defining Jokers------------------
SMODS.Joker {
	key = 'jimbo',
	config = { extra = {mult = 44444} },
	rarity = "cry_exotic",
	atlas = 'v_atlas_1',
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card and card.ability.extra.mult} }
	end,
	calculate = function(self, card, context)
	if context.joker_main then
			if card.ability.extra.mult > 0 then
				return {
					mult_mod = math.min(card.ability.extra.mult, Global_Cap),
					message = localize { type = 'variable', key = 'a_mult', vars = { math.min(card.ability.extra.mult, Global_Cap) } }
				}
			end
		end
	end,
    cry_credits = {
			idea = {
				"Inspector_B"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = 'duo',
	config = { extra = {power = 2} },
	rarity = "cry_exotic",
	atlas =  'v_atlas_1',
	blueprint_compat = true,
	pos = { x = 9, y = 0 },
	soul_pos = { x = 11, y = 0, extra = { x = 10, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card and card.ability.extra.power} }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if context.poker_hands ~= nil and next(context.poker_hands["Pair"]) then
				return {
					message = localize({ type = "variable", key = "a_powmult", vars = { card.ability.extra.power} }),
					Emult_mod = card.ability.extra.power,
					colour = G.C.DARK_EDITION,
				}
			end
		end
	end,
    cry_credits = {
			idea = {
				"MarioFan597"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = 'trio',
	config = { extra = {power = 3} },
	rarity = "cry_exotic",
	atlas =  'v_atlas_1',
	blueprint_compat = true,
	pos = { x = 0, y = 1 },
	soul_pos = { x = 2, y = 1, extra = { x = 1, y = 1 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card and card.ability.extra.power} }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			if context.poker_hands ~= nil and next(context.poker_hands["Three of a Kind"]) then
				return {
					message = localize({ type = "variable", key = "a_powmult", vars = { card.ability.extra.power} }),
					Emult_mod = card.ability.extra.power,
					colour = G.C.DARK_EDITION,
				}
			end
		end
	end,
    cry_credits = {
			idea = {
				"MarioFan597"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = 'seltzer',
	config = { extra = {retriggers = 1, played_hands = 10, goal_hands = 10}},
	rarity = "cry_exotic",
	atlas =  'v_atlas_1', 
	blueprint_compat = true,
	pos = { x = 3, y = 0 },
	soul_pos = { x = 5, y = 0, extra = { x = 4, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		return { vars = { card and card.ability.extra.retriggers, card and card.ability.extra.played_hands, card and card.ability.extra.goal_hands}}
	end,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			return {
				message = 'Again!',
				repetitions = card.ability.extra.retriggers,
				card = context.other_card
			}
		end
		if context.after then
			card.ability.extra.played_hands = card.ability.extra.played_hands - 1
			if card.ability.extra.played_hands <= 0 then
				card.ability.extra.retriggers = card.ability.extra.retriggers + 1
				card.ability.extra.played_hands = card.ability.extra.goal_hands
			end
		end
	end,
    cry_credits = {
			idea = {
				"MarioFan597"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = 'midas',
	config = { extra = {power = 1.1} },
	rarity = "cry_exotic",
	atlas =  'v_atlas_1',
	blueprint_compat = true,
	pos = { x = 6, y = 0 },
	soul_pos = { x = 8, y = 0, extra = { x = 7, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_gold
		info_queue[#info_queue + 1] = G.P_CENTERS.e_cry_gold
		return { vars = { card and card.ability.extra.power} }
	end,
	calculate = function(self, card, context)
		if
			context.cardarea == G.jokers
			and context.before
			and not context.blueprint_card
			and not context.retrigger_joker
		then
			for i = 1, #context.scoring_hand do	
			converted = true
			local _card = context.scoring_hand[i]
				local enhancement = "m_gold"
				if _card.ability.effect ~= "Gold Card" then
					_card:set_ability(G.P_CENTERS[enhancement], nil, true)
				end
				local enhancement = "cry_golden"
				if _card.ability.effect ~= "Golden" then
					_card:set_edition({cry_gold = true})
				end
				G.E_MANAGER:add_event(Event({
					delay = 0.6,
					func = function()	
						_card:juice_up()
						play_sound("tarot1")
						return true
					end,
				}))
			end
			if converted then
				return {message = 'Gold!', colour = G.C.GOLD,}
			end
		end
		if
			context.individual
			and context.cardarea == G.hand
			and context.other_card.ability.effect == "Gold Card"
			and not context.end_of_round
		then
			if context.other_card.debuff then
				return {
					message = localize("k_debuffed"),
					colour = G.C.RED,
					card = card,
				}
			else
				return {
					e_mult = card.ability.extra.power,
					colour = G.C.DARK_EDITION,
					card = card,
				}
			end
		end
	end,
    cry_credits = {
			idea = {
				"MarioFan597"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = 'high_five',
	config = { extra = {power = 1.1} },
	rarity = "cry_exotic",
	atlas =  'c_atlas_1',
	blueprint_compat = false,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
	cost = 50,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_cry_astral
		return { vars = { card and card.ability.extra.power} }
	end,
	calculate = function(self, card, context)
		if
			context.cardarea == G.jokers
			and context.before
			and not context.blueprint_card
			and not context.retrigger_joker
		then
			local five_count = 0
			for i = 1, #context.scoring_hand do
				local _card = context.scoring_hand[i]
				local rank = _card:get_id()
				if rank == 5 then
						five_count = five_count + 1
				end
			end

			if five_count > 0 then
				for i = 1, #context.scoring_hand do
				local _card = context.scoring_hand[i]
				converted = true
				local _card = context.scoring_hand[i]
					if _card:get_id() ~= 5 and not SMODS.has_no_rank(_card) then
						G.E_MANAGER:add_event(Event({
							func = function()
								assert(SMODS.change_base(_card, _, "5"))
								_card:juice_up()
								return true
							end,
						}))
					end
					local enhancement = "cry_astral"
					if _card.ability.effect ~= "Astral" then
						_card:set_edition({cry_astral = true})
					end
					G.E_MANAGER:add_event(Event({
						delay = 0.6,
						func = function()	
							_card:juice_up()
							play_sound("tarot1")
							return true
						end,
					}))
				end
				if converted then
				return {message = 'I Wish', colour = G.C.PURPLE,}
				end
			end
		end
	end,
    cry_credits = {
			idea = {
				"MarioFan597"
			},
			art = {
				"MarioFan597"
			},
			code = {
				"MarioFan597"
			}
		},
}

SMODS.Joker {
	key = "oil_lamp", --This is mostly just taken straight from oil lamp's code
	pos = { x = 3, y = 0 },
	soul_pos = { x = 5, y = 0, extra = { x = 4, y = 0 } },
	config = { extra = { increase = 1.2 } },
	rarity = "cry_exotic",
	cost = 50,
	atlas = "c_atlas_1",
	loc_vars = function(self, info_queue, card)
		card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ""
		card.ability.blueprint_compat_check = nil
		return {
			vars = { card.ability.extra.increase },
		}
	end,
	calculate = function(self, card, context)
		if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
			local check = false
			for i = 1, #G.jokers.cards do
				if not (G.jokers.cards[i] == card) then
						if not Card.no(G.jokers.cards[i], "immutable", true) then
							check = true
							Cryptid.with_deck_effects(G.jokers.cards[i], function(cards)
								Cryptid.misprintize(
									cards,
									{ min = card.ability.extra.increase, max = card.ability.extra.increase },
									nil,
									true
								)
							end)
					end
				end
			end
			if check then
				card_eval_status_text(
					card,
					"extra",
					nil,
					nil,
					nil,
					{ message = localize("k_upgrade_ex"), colour = G.C.GREEN }
				)
			end
		end
	end,
	cry_credits = {
		idea = {
			"MarioFan597",
		},
		art = {
			"MarioFan597",
		},
		code = {
			"Foegro",
			"MarioFan597",
		},
	},
}


----------------------------------------------
------------MOD CODE END----------------------
