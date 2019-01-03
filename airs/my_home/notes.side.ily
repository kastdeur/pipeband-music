% 6/8 My Home
% Side
\version "2.18.2"
composerSide = "v1.1, 2018"
sideglobal = { \eighthCompoundBeaming }
snareA = \drummode {
	d8:32( |
	g8.) d16 g8		\flamd d8. g16 d8 |
	\flamg g8. d16 g8		d4:32(\< 8:32\> |
	d8.)\! g16 d8		\flamg g4 d16. g32 |
	\flamd d8. g16 d8		d4.:32( |
	d8.) g16 d8		\flamd d4 g8 |
	d8. g16 d8		d4.:32( |
	d8.) g16 d8		\flamg g8. d16 g8 |
	d4.:32(		d4)
}
snareB = \drummode {
	d8 |
	\flamd d8. g16 d8		d4:32(\< 8:32\> |
	d8.)\! g16 d8		d4:32(\< 8:32\> |
	d8.)\! g16 d8		\flamg g4 d16. g32 |
	\flamd d8. g16 d8		d4.:32(\< |
	d8.)\! g16 d8		d4.:32(\> |
	d8.) g16 d8		\flamd d4\! g8 |
	\flamd d8. g16 d8		\flamg g8. d16 g8 |
	d4.:32(		d4)
}
