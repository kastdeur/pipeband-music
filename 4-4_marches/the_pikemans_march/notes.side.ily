% 4/4 The Pikeman's March
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v2.0, 2016"
sideglobal = {
	\eighthBeaming
}

lddr = #(define-event-function (parser location) () #{
	-\tweak HorizontalBracket.bracket-flare #'(0.5, 0.5)
	-\tweak HorizontalBracketText.text "LD"
	-\tweak HorizontalBracketText.parent-alignment-X -1
	-\tweak HorizontalBracketText.self-alignment-X -1
	\dr
#})

%%music
snareAA = \drummode {
	\tutti {
		g16. g32
		|
		\flam d4\v 
	}
	d32\< g d g d8->\!
	\tutti {
		\flam d8\> \flam g8\!
		r8 d8:32(
		|
		g16.) d32-> g16. g32
		d16. g32-> d16. d32
		\flam g8 d8:32(
		g8..) 
	} g32
	|
	\flam d4
	\flam d16 g-> d d
	\flam g16 d-> g g
	\flam d16 g-> d d
	|
	\tutti {
		\flam d4
		d8:32( g8:32)(->
		d4)
	}
	r8	
	
}

snareAB = \drummode {
	\tutti {
		\tuplet 3/2 { g16\< d g\! } |
		\flam d4\v 
	}
	d32\< g d g d8->\!
	\tutti {
		\flam d8\> \flam g8\!
		r8 d8:32(
		|
		\tuplet 3/2 { g16) d g } \flam d16. g32
		\tuplet 3/2 { d16 g d } \flam g16.
	}  g32
	\flam d16. g32 d32 g d g
	d8-> \tutti {
		g16. g32
		|
		d8:32(\staccato g8:32)(->
		d8:32)( g8:32)(->
		d8)->
	} \tuplet 3/2 { g16 d g}
	\flam d8 \tutti { g32 d d g
		|
		\flam d8. g16
		d8:32(-> g8:32)(->
		d8.)->
	}

	  d16:64( \lddr
		d8)\fr
}
snareBA = \drummode {
	d16. g32
	|
	\flam d8 d16. g32
	\flam d16. d32:128( d16.) g32->
	r16. \flam d32 g16. g32
	\flam d8 \tutti {
		d8:32(
		|
		g16.) d32-> g16. g32
		d16. g32-> d16. d32
		\flam g8
	} d8:32(
	g8) g8
	|
	\tutti {
		d8:32(\staccato g8:32)(->
		d8:32)( g8:32)(->
		d8)->
	} d32 g d g
	d8-> \tutti {
		d16. g32
		|
		\flam d4
		d8:32( g8:32)(->
		d4)	
	}
	\tuplet 6/4 {d16 \< g d g16 d g\! }
	|
}
snareBB = \drummode {
	\tutti { \flam d8-> \flam g8-> }
	r8 d8:32(
	g16.) d32-> g16. g32
	\flam d8 \tutti {
		d8:32(
		|
		g16.) d32-> g16. g32
		d16. g32-> d16. d32
		\flam g8 d8:32(
		g8)
	} d16. g32
	|
	\tutti {
		d8.:32(-> g16:64)(->
		d8:32)(-> g8)->
	}
	\flam d16.\> g32-> d16. d32\!
	\flam g16.\> d32-> g16. g32\!
	|
	\tutti {
		\flam d4
		d4:32(
		d8) 
	}	\flam g8
	r8
}

snareBC = \drummode {
	d16. g32 |
	\tutti {
		\flam d8-> \flam g8->
		r8 d8:32(
		g16.) d32-> g16. g32
		\flam d8 d8:32(
		|
		g16.) d32-> g16. g32
		d16. g32-> d16. d32
		\flam g8 d8:32(
		g8) d16. g32
		|
		d8.:32(-> g16:64)(->
		d8:32)(-> g16.)-> g32->
		d32 g d g d16.-> g32->
		d32 g d g d8->
		|
		\flam d4
		d8:32( g8:32)(->
		d4)
	}
	r8 
}
