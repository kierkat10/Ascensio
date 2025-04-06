return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
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
		    j_asc_seltzer = {
            name = 'Bulla Aquae',
		    text = {
                "Retriggers all cards played {C:attention}#1#{} time(s).", 
                "Increase number of retriggers",
                "after {C:attention}#3#{} hands.",
                "{C:inactive} (Hands until upgrade: {C:attention}#2#{C:inactive})"
		    	}
		    },
		    j_asc_midas = {
            name = 'Rex Midas',
		    text = {
                "All played cards become", 
                "{C:attention}Gold{} and {C:attention}Golden{} when scored.",
                "{C:attention}Gold{} cards held in hand",
                "give {X:dark_edition,C:white}^#1#{} Mult"
		    	}
		    },
        },
        Other={},
        Planet={},
        Spectral={},
		Code={},
        Stake={},
        Tag={},
        Tarot={},
        Voucher={},
    	misc = {},
	}
}