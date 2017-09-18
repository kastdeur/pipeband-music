% 4/4 Highland Cathedral
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {}
% Music
snareRolls = \drummode {
	d1:32~
	|
	d2:32~ \<
	d4.:32~\!\>
	g8:32~\<
	|
}
snareAA = \drummode {
				\flam d8\! \triplet { d16 g d }
				\flam g8 \triplet { d16 g d }
				\flam g8 \triplet { d16 g d }
				\flamg \triplet { g16 d g } 	\flamd \triplet { d16 g d }
				|
}
snareBA = \drummode {
		\snareAA
		|
		\flam d8 \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flamg \triplet { g8 \flam d \flam g }
		|
}
snareB = \drummode {
	\repeat percent 7 \snareBA
	\snareAA

}

snareHafabraEnd = \drummode {
	\repeat unfold 4 { \flam g8 \triplet { d16 g d } }
	|
	\flam d8 \flam g
	\flam d8 \flam g
	d2:32\fermata
}
