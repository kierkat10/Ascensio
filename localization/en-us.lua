return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
             ----Vanilla------
            j_asc_jimbo = {
            name = 'Balatro',
		    text = {
                --"{X:dark_edition,C:white}^#1#{} Mult"
                "{C:mult}+#1#{} Mult"
		    	}
		    },
		    j_asc_duo = {
            name = 'Sum Duo',
		    text = {
                "{X:dark_edition,C:white}^#1#{} Mult if played", 
                "hand contains",
                "a {C:attention}Pair{}"
		    	}
		    },
            j_asc_trio = {
            name = 'Sum Trio',
            text = {
                "{X:dark_edition,C:white}^#1#{} Mult if played", 
                "hand contains",
                "a {C:attention}Three of a Kind{}"
                }
            },
            j_asc_family = {
            name = 'Sum Quattuor',
            text = {
                "{X:dark_edition,C:white}^#1#{} Mult if played", 
                "hand contains",
                "a {C:attention}Four of a Kind{}"
                }
            },
		    j_asc_seltzer = {
            name = 'Bulla Aquae',
		    text = {
                "Retriggers all cards played {C:attention}#1#{} time(s)", 
                "Increase number of retriggers",
                "after {C:attention}#3#{} hands",
                "{C:inactive}(Hands until upgrade: {C:attention}#2#{C:inactive})"
		    	}
		    },
		    j_asc_midas = {
            name = 'Rex Midas',
		    text = {
                "All played cards become", 
                "{C:attention}Gold{} and {C:attention}Golden{} when scored,",
                "{C:attention}Gold{} cards held in hand",
                "give {X:dark_edition,C:white}^#1#{} Mult"
		    	}
		    },

            j_asc_scary = {
            name = 'Immanis Facies',
            text = {
                "Played face cards", 
                "give {X:dark_edition,C:white}^#1#{} Chips",
                "when scored"
                }
            },

            j_asc_abstract = {
            name = 'Aenigmatum',
            text = {
                "This Joker gains {X:dark_edition,C:white}^#2#{} Mult", 
                "for each {C:attention}Joker{} card",
                "{C:inactive}(Currently {X:dark_edition,C:white}^#1#{} {C:inactive}Mult)"
                }
            },

            ----Cryptid------
            j_asc_high_five = {
            name = 'Superioris Manus',
            text = {
                "Before scoring, if played hand", 
                "contains a scoring {C:attention}5{},",
                "convert {C:attention}all{} scored cards to {C:attention}5{}s",
                "They also become {C:dark_edition}Astral"
                }
            },
            j_asc_oil_lamp = {
            name = 'Lucerna',
            text = {
                "Increase values of all {C:attention}Jokers", 
                "by {C:attention}X#1#{} at the end of round.",
                "{C:inactive}(If possible, Lucerna excluded)"
                }
            },
		j_asc_canvas = {
		name = 'Pigmentum',
		text = {
			"When {C:attention}Blind{} selected, destroy Joker to the",
			"right and add its {C:attention}rarity value{} to {C:attention}n{}",
			"Retrigger all Jokers {C:attention}n{} additional times",
			"{C:inactive,s:0.8}(Common/Uncommon = 0, Rare = 1, Epic = 2, etc){}",
			"{C:inactive}(Currently {C:attention}#1#{} {C:inactive}retriggers)",
			}
		},
		j_asc_drivers_license = {
		name = 'Identitatis Discrimine',
		text = {
			"{X:mult,C:white}X#1#{} Mult",
			"{C:attention}Doubles{} for each",
			"total {C:attention}modification{} in",
			"remaining deck",
			}
		},
		j_asc_order = {
		name = 'Sum Constituto',
		text = {
			"{X:dark_edition,C:white}^#1#{} Mult if played",
			"hand contains",
			"a {C:attention}Straight",
			}
		},
		j_asc_tribe = {
		name = 'Sum Carnes Unius',
		text = {
			"{X:dark_edition,C:white}^#1#{} Mult if played",
			"hand contains",
			"a {C:attention}Flush",
			}
		},

            ----Cryptid Mortals------
            j_asc_b_cake = {
            name = 'Birthday Cake',
            text = {
                "{C:chips}+#1#{} Chips", 
                "{C:chips}-#2#{} Chips per reroll,",
                "rerolls are free"
                }
            },
        },
        Other={},
        Planet={},
        Spectral={
            c_asc_ascension = {
                name = "Ascension",
                text = {
                    "Transforms viable {C:attention}Jokers{} to",
                    "their{C:cry_exotic,E:1} Exotic{} counterpart,",
                    "destroy all other {C:attention}Jokers{}",
                },
            },
        },
		Code={},
        Stake={},
        Tag={},
        Tarot={},
        Voucher={},
    	misc = {},
	}
}
