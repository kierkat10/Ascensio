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
                "{C:inactive} (Hands until upgrade: {C:attention}#2#{C:inactive})"
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