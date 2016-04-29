% 2/2 Jock Wilson's Ball
% Tenor
\version "2.18.2"
composerTenor = ""
tenorglobal = {}
% Music
tenorA = \drummode {
	d4 g8. g16
	d4 g4
	|
	d4 g16 g8 d16
	r8. d16 g4
	|
	d4 g8. g16
	d2
	|
	d2
	d8. g16 d4

	|
	d4 g8. g16
	d2
	|
	d4 g16 g8 d16
	r8. d16 g4
	|
	d8. g16 d g8.
	d8. g16 d4
	|
	d8. g16 d4
	g2 
	|
}
tenorB = \drummode {
	\flourish g4 \flourish g4
	\flourish d4 \flourish d4
	|
	d4 d8. g16
	d8. g16 d4
	|
	\flourish g4 \flourish g4
	\flourish d4 \flourish d4
	|
	d4 g4
	d8. g16 d4

	|
	\flourish g4 \flourish g4
	\flourish d4 \flourish d4
	|
	d4 d8. g16
	d8. g16 d4
	|
	d8. g16 d8. g16
	
	d4^\up g4^\up
	|
	
	d4 \triplet {g8 d g}
	d2^\splitTheFeather
}
