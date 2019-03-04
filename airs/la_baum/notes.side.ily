% 4/4 La Baum
% Side
\version "2.18.2"
composerSide = "Dean Hall"
arrangerSide = ""
sideglobal = {}
% Music
endOne = \drummode {
	\tutti {
		d8:32~\< g:32->~
		d4->\!
		d4:32~\<
		\afterGrace d4:32( {s8)\!}
	}
}
endTwo = \drummode {
	\tutti {
		d4:32\<~
		d4:32~
		d4:32~
		d4:32\!~
	}
}
endThree = \drummode {
	\tutti {
		d8:32~\< g:32->~
		d16. g32 d16. g32
		d16. g32 d16. g32
		d16. g32 d g d g
	}
}

snareA = \drummode {
	\triplet { g16 d g } |
	\tutti {
		\flam d8-> d8:32~
		g8-> 
	} d16 g
	\tutti {
		\flam d16-> g d \flam g-> 
	}
	d16 g d32 g d g
	|
	d8 \tutti {
		d16-> g
		d16 \flam g->
	} d16 g
	\tutti { 
		d32-> \> g d g d16\! g->
		d16 g \flam d \flam g
		|
		\flam d4->
	}
	d4:32~
	d16-> g d g-> 
	d32 g d g d8->
	|
	\tutti {
		d8:32~\p\< g16 d16:32->(
		g16:32 g) d8:~->
		g16 d16:32(-> g:32 g)
		d8:32~-> g16\! d
		|

		\flam d4->
	}
	d32 g d g d16 g
	\flam d8 \tutti {
		d:32(\>
		d4:32
		|
		d8.)\!\pp \flam  g16
		r16 g \flam d8
		\flam g4
		d4:32~\<
		|
		d8->\!
	} d8:32~
	g16-> d g \flam d->
	g16 d g \flam d->
	g16 d \flam d8->
	|
	\endOne
}
