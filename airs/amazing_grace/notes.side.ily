% 3/4 Amazing Grace
% Side
\version "2.18.2"
composerSide = "v1.0"
arrangerSide = ""
sideglobal = {}

optdragd = \drummode { \drumgrace { \startParenthesis g16[ \endParenthesis g] } } 
optdragg = \drummode { \drumgrace { \startParenthesis d16[ \endParenthesis d] } } 
optdrag = #(autohandFunc optdragg optdragd)

snarePart = \drummode {
			\optflam d8. g16 |
}
snareAAraw = \drummode {
	\tag #'repeating { d2->)\! }
	\tag #'not-repeating {\flam d2 }
		\flam d8 g32 d16. |
	\flam g2 \flam d8. g16 |
	d2:32( d4:32)(\> |
	d2)\! \flam d8. g16 |
}


snareAA = \drummode {
	\keepWithTag #'not-repeating \snareAAraw
}
snareAB = \drummode {
	\flam d2 \flam d8 g32 d16. |
	\flam g2 \flam d8. g16 |
	d2.:32(\<  |
	d4:32)(\> d4:32)(\! d4:32)(\< |
}
snareAC = \drummode {
	\keepWithTag #'repeating \snareAAraw
}

snareADA = \drummode {
	\flam d2 \flam d8 g32 d16. |
	\flam g2 \optdrag g4 |
}
snareADendA = \drummode {
	d4:32(\> d4:32)( d4:32)(\! |
	d4:32)( d4:32)(\<
		\tag #'with-volta {d4:32) \! \laissezVibrer}
		\tag #'no-volta { d4:32)( }
}
snareADendB = \drummode {
	d2.:32( \f \>  |
	d2:32)\p
}
snareAD = \drummode {
	\snareADA
	\snareADendA
}

