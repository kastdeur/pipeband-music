% 2/4 Rakes of Mallow
% Side
\version "2.18.2"
composerSide = "Ahoy 2017"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	\repeat unfold 2 {
		d16 g |
		\flamdr d8. g16	\flam d8 \flam g |
		\flam d16 \fr g d g	\flam d8 d16 g |
		\flamdr d8 \flam g	\flam d16 g d g |
		\flam d8 d8:32(	g8) \fr
	}
}

snareB = \drummode {
	\repeat unfold 2 {
		d16 g |
		\flamdr d8. g16	d8:32(-> g:32)(-> |
		d16)->\fr g d g	\flam d8 d16 g |
		\flamdr d8 \flam g8	\flam d16 g d g |
		\flam d8 d8:32(	g8) \fr
	}
}
