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
	key = "balatro",
	path = "balatro.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "duo",
	path = "duo.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "seltzer",
	path = "seltzer.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "midas",
	path = "midas.png",
	px = 71,
	py = 95
}

----------Defining Jokers------------------
SMODS.Joker {
	key = 'jimbo',
	config = { extra = {mult = 44444} },
	rarity = "cry_exotic",
	atlas = 'balatro',
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
	atlas = 'balatro',
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
	atlas =  'duo',
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
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
	key = 'seltzer',
	config = { extra = {retriggers = 1, played_hands = 10, goal_hands = 10}},
	rarity = "cry_exotic",
	atlas =  'seltzer', 
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
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
	config = { extra = {power = 1.05} },
	rarity = "cry_exotic",
	atlas =  'midas',
	blueprint_compat = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 } },
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
				if _card.ability.effect ~= "Golden Card" then
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

----------------------------------------------
------------MOD CODE END----------------------
