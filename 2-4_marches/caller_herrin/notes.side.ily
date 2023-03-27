% 2/4 Caller Herrin
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.4"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
sideAA = \drummode {
	\tutti {
			\tag #'upbeat { d8:32( | }
			d4)
		} d4(:32 |
	d8) \flam g8	\flam \triplet { d16 d g } d8\v
	\flamdr d8 g8:32(->	d8:32)(-> \triplet { g16) d g } |
	d16. g32-> d16.:64( d32)	g8-> d8:32(
}

sideAB = \drummode {
	d4)\!\fr d4:32( |
	d8) \flam g8	\flam d8

	g8\dr |
	\flam d16.\fr g32 d16. \flamdr g32\fr
		d16. \tutti { g32-> \triplet { d16 g d } |
		\flam g8 d8:32(g8)
	}
}
sideA = \drummode {
	\tag #'fineRemove {
		\sideAA
	}

	\sideAB
}

sideB = \drummode {
	\tag #'upbeat { d32-> g d g | <>\v}
	d4	r8 d8:32( |
	g16.) d32 g16. g32

	\tutti {
		d8:32(\<	d8:32)( |
		d4)\!->	r8 d8:32( |
		g16.) d32 g16. g32	d8:32(

		g16.)(:32->
	} g32) |
	d4\v	r4 |
	d8:32(\> g8)\p	\optflam d8. g16 |

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
