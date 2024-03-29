% 2/2 Jock Wilson's Ball
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2016"
sideglobal = {
	\eighthReelBeaming
}
% Music
sideAAmain = \drummode {
		d8. g16
	d8.:32(  d16)->	g8. g16 
	|
	%\flamdr d8.\fr [ g16	d8. \flam g16 ]
	\flamdr d8.\fr [ \drag g16	\triplet { d16 g d g d8] }
	g8. [ \dragdr d16		d8. g16 ] 
	|
}
sideAAA = \drummode {
	\flam d4 \sideAAmain
}
sideABA = \drummode {
	d4) \sideAAmain
}
sideAAB = \drummode {
	\flam d8. \fr [ \drag g16	\triplet { d16 g d g d8] }
	g8.:32->([  d16)	g8. g16 ]
	|
	\triplet {d8 [  d g } \triplet { d8 g16 g d8 ] }
	d16 [ g d g d8. d16:64( ]
	|
}

sideABB = \drummode {
	\flam d32[  d g8.		d16 g8. ]
	d4:32(	 d8.) g16
	|
	\triplet {d8[  g d }	\flam g8. \drag g16 ]
	\triplet { d16 g d g d8] } g4
}
sideA = \drummode {
	\sideAAA
	\sideAAB
	\removeWithTag #'tutti \sideABA
	\sideABB
}




sideBA = \drummode {
	\flam d4  g4:32(
	d8.:32)(-> g16) \flam d8. g16  
	|
	\flamd \triplet { d8[ g \flam d } \flam g8 \triplet { d16 g d ]} 
	g8.[  \drag d16		d8. g16 ]
	|
	\flam d4  g4:32(	
	d8.:32)(-> g16) \flam d8. g16  
	|
	\triplet {d8 [  d g } \triplet { d8 g16 g d8 ] }
	d16 [ g d g d8. d16:64( ]
	|
}
sideBB = \drummode {
	d4)  g4:32(
	d8.:32()-> g16) \flam d8. g16  
	|
	\flam d8.[  \drag g16	d32 g d g d8 ]
	g8.[  \drag d16		d8. g16 ]
	|
	\flam d16[ g8.	d8. g16  ]
	d4:32(	d8.) g16
	|
	d8.:32( g16) \triplet { d8 g d8 }
	g16 d8.:32(->	g4)
}

sideB = \drummode {
	\sideBA
	\sideBB
}
