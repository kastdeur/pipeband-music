% 2/2 Piper of Drummond
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0, 2023" % 2023-05-05
arrangerSide = ""
sideglobal = {
	\eighthReelBeaming
}
% Music
snareAA = \drummode {
	\flam d4-> d8. g16
	d4:32( g8.) d16:64(
	|
	\triplet { d8) g d } \flam g8. d16->
}
snareABA = \drummode {
	g8.[ \drag d16 d16\< g d g]
	|
	d8.\!\v g16 d8. \flam g16
	d8. \flam g16 d8. g16
	|
	\flam d8.-> g16 \triplet { d8 d g }
	d8. d16 \triplet { g8 g d }
}

snareABB = \drummode {
	g8. g16 \flam d8.-> g16
	|
	d4:32( d8.) g16
	\flam d8. g16 d4:32(\<
	|
	d8.)->\! g16 d8. \flam g16
	d8. g16 g16 d g g
	|
}

snareBA = \drummode {
	d4:32(-> g8.) g16
	d4:32(\< \triplet { g8)\!\staccato d g }
	|
	d8.-> g16 d8. g16:64(->
	d8.:32 d16) g8. g16
	|
}
snareBBA = \drummode {
	d8. g16 \triplet { d8 g d }
	\flam \triplet { g8 d g } \flam d8. g16
	|
	\flam d8.-> g16 d8. \flam g16
	d4 g16 d g g
	|
}
snareBBB = \drummode {
	\flam d8.-> g16 d8. \flam g16
	d8. g16 \flam d8.\staccato g16
	|
	\flam d8.-> g16 \triplet { d8 d \flam g }
	\triplet { d8 g g } d4\staccato
}

snareA = \drummode {
	\repeat volta 2 {
		\snareAA
		\alternative {
			\snareABA
			\snareABB
		}
	}
}

snareB = \drummode {
	\repeat volta 2 {
		\snareBA
		\alternative {
			\snareBBA
			\snareBBB
		}
	}
}
