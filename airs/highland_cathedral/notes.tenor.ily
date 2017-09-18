% 4/4 Highland Cathedral
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music
tenorRolls = \drummode {
	d1:16~
	d1:16~
}
tenorAA = \drummode {
		d8 \triplet { g16 d g }
		d8 \triplet { g16 d g }
		d8 \triplet { g16 d g }
		d8 g
		|
}
tenorBA = \drummode {
		\tenorAA
		|
		d8 \triplet { g16 d g }
		d8 \triplet { g16 d g }
		d8 \triplet { g16 d g }
		\triplet { g8  d  g }
		|
}
tenorB = \drummode {
	\repeat percent 3 \tenorBA
	\tenorAA
}
tenorHafabraEnd = \drummode {
	\repeat unfold 4 { d8 \triplet { g16 d g } }
	|
	d8[ g]
	d8[ g]
	d2:16\fermata
}
