% 2/4 Highland Laddie
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	\repeat unfold 2 {
		d8:32( |
		g8) \flam d8	\flam g8 d8:32( |
		g16.) d32-> g16. g32	\flam d8
			
		d8:32( |
		g8) \flam d16. g32	 d16. \flam g32 d16. g32 |
		\flam d8 d8:32(	g8)
	}
}

snareB = \drummode {
	\repeat unfold 2 {
		g8 |
		d8:32( g) d8:32( g)
		d16.) g32-> d16. d32	\flam g8
			
		d8:32( |
		g8) \flam d16. g32	 d16. \flam g32 d16. g32 |
		\flam d8 d8:32(	g8)
	}
}
