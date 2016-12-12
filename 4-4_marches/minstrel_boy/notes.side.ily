% 4/4 Minstrel Boy
% Snare
\version "2.18.2"
composerSide = ""
sideglobal = { \eighthBeaming }
%%music

snareEnds = \drummode {
	d8:32(] |
	g16.) d32-> g16. g32	\flam d8 \flam g8		d4:32(->\<	d4:32)(-> |

	d8:32)(-> g8) \!		r8 d8:32(		g8[) \dragd d16. d32]->		g16. g32 \flam d8 |
	\flam g4		d4:32(		d4)

	}
snareAA = \drummode {
	d16. g32 |
	d4:32(		d8.) g16	\flam d8 [ d8:32(]		g8[) 
	\snareEnds
	}
snareAB = \drummode {
	\dragd d16. d32-> g16. g32 |
	d4:32(		d8.) g16	\flam d8[ d8:32(]		g8[) 
	\snareEnds
}
% Part 2
snareBA = \drummode {
	\flam d8. d16:64( |
	d16) g16 d8:32(		g16) g16 d8:32(		g8:32)( d8)		r8 
	\snareEnds
}
