% 5/4 Cullen Bay
% Side
\version "2.18.2"
composerSide  = ""
sideglobal = {
	\eighthBeaming
}

% Music
snareA = \drummode {
	\flam d8 d8:32~
	g8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~\< 
	d4:32~
	|
	d8->\! d32 g d g
	d8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~
	d4:32~
	|
	d8 d32 g d g
	d8 \flam d8
	d32 g d g d8
	d4:32~\<
	d4:32~
	|
	d8->\! d32 g d g
	d8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~\<
	d4\!
}

snareB = \drummode {
	\flam d8 d32 g d g
	d8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~\< 
	d4\!
	|
	\flam d8 d32 g d g
	d8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~\<
	d4:32~
	|
	d8\! d8:32~
	g8 \flam d8
	d32 g d g d8
	d4:32~
	d4
	|
	\flam d8 d32 g d g
	d8 \flam d8
	\flam g16. d32 g16. g32
	d4:32~\<
	d4\!
}
