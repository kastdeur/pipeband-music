% 6/8 Seaforth Sticks
% Tenor
\version "2.18.2"
composerTenor = "L. Visser, 2006"
tenorIntro = \drummode {
	d8\p g d	g4.
	|d8 g d 	g4.
	|d8 \< g d	g8 d g
	|d4.\! \f	r4.
}	
tenorA = \drummode {
	|d8\mf g8 d 	g4.
	d4. r4.
	d8 g d 	g4.
	d4. g4.
		
	|d8\f g d	g4.
	d4. g4.
	d4. g4.
	d4. g4
}
tenorB = \drummode {
	|d8  g d	g d g
	d4. g4.
	r2.
	d8 g d	g4.

	|d8\f g d	g d g
	d4. r4.
	d4. g4.
	d4. g4
}
tenorC = \drummode {
	|d4.\mf r4.
	d4. g4.
	r2.
	d8 g d	g4.

	|d4.\f r4.
	d4. g4.
	d4. g4.
	d4. g4
}
tenorD = \drummode {
	|d4.\mf r4.
	d4. r4.
	d8 g d	g4 g8->
	d8 g d	g4 g8\f

	|d4. r4.
	d4. g4.
	d4. g4.
	d8 g d g4
}
tenorE = \drummode {
	|d8\mf g d g4.->
	r2.^\splitTheFeather
	|d8 g d g4.->
	r2.^\splitTheFeather
	
	|d8 g d g4.->
	r2.^\splitTheFeather
	d8 g d g4.->
	d4. g4
}
tenorF = \drummode {
	|r2.^\splitTheFeather \mf
	d8 g d	g d g
	d8 g d	g d g
	d8 g d	g4.

	|r2.^\splitTheFeather
	d8 g d	g d g
	d8 g d	g d g
	d4. g4
}
tenorG = \drummode {
	|d4.\f r4.
	r2.^\splitTheFeather
	d8\mf g d	g d g
	r4. g4.\f

	|d4. r4.
	r2.^\splitTheFeather
	d8\mf g d	g d g
	d4. g4
}
tenorH = \drummode {
	|r2.^\splitTheFeather
	d8 g d	g d g
	d8 g d	g4.->
	d8 g d	g4.->

	|r2.^\splitTheFeather
	d8 g d	g d g
	d8 g d	g4.->
	d4.\p\<	g4\f\!
}
