% 2/4 Caller Herrin
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.3"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
sideA = \drummode {
	\tag #'fineRemove {
		\tutti {
			\tag #'upbeat { d8:32( | }
			d4)
		} d4(:32 |
		d8) \flam d8	\flam g8
		\tutti { d8:32( |
			g16.) d32:64~ d16. g32	\flam d16. g32 \triplet { d16 g d } |
			g8->
		} d8:32(	g8)

		d8:32( \dr
	}

	d4)\!\fr d4:32( |
	d8) \flam d8	\flam g8 d8:32( |
	\triplet { g16) d g } \flam d16.
	\tutti {
		g32	d16.:64~-. d32-. \triplet { g16 d g } |
		\flam d8 d8:32(	g8)
	}
}

sideB = \drummode {
	\tag #'upbeat { d32-> g d g | <>\v}
	d4	r8 d8:32( |
	g16.) d32 g16. g32	d8:32(

	\tutti {
		d8:32)(\< |
		d4)\!->	r8 d8:32( |
		g16.) d32 g16. g32	d8:32(

		d32)->
	} g32 d g |
	d4\v	r4 |
	r2|<> \p

	%\tutti {
		<> \dr
		d2:32~ -. |
		d4:32~\<-.	d8:32(-> g8:32)(-> <>\!)

		\tag #'fine {
			\removeWithTag #'fineRemove \removeWithTag #'tutti \sideA
		}
		\fr
	% }
}
