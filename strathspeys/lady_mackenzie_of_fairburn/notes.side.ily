% 4/4 Lady MacKenzie of Fairburn
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.9, 2016"
snareA = \drummode {
	\flam d8. g16
	d8.:32( g16)
	\tutti {
		\flamd \triplet { d8 \< g16 g d8 }
		\flam g8.-> \!
	} \parenthesize g16
	|
	\triplet { d16 g d g d8 }
	\triplet { g8-> d g-> }
	\tutti {
		d8.:32(-> g16:64)(->
		d4)
		|
		\dragd \triplet { d8 d g }
		\flam d8. 
	} g16 ->
	\triplet { d16\< g d g d8 }
	g16\! d8.
	|
	\tutti {
		d8.[:32(\< g16]:32)(-> \>
		d8.[:32)( g16]:32)(-> \<
		d8.[:32)( g16]:32)->
		d8. \!
	}
}
snareBA = \drummode{
	g16 |
	\triplet {d8 g \flam d }
	\triplet {g d \flam g }
	\triplet {d8 g \flam d }
	\tutti {
		\flam g8. g16
		|
		\flam d16. d32 \flam g8
	}
	d8.:32( g16:32)(->
	d16.) g32 d8
	\flam d8. \tutti { g16
		|
		\flam d8.
	} g16
	d4:32(
	\triplet { d16) g d g d8}
	g8. g16
	|
	\tutti {
		d8.[:32(\< g16]:32)(-> \>
		d8.[:32)( g16]:32)(-> \<
		d8.[:32)( g16]:32)(->
		d8.) \!
	}
}
snareBB = \drummode{
	\tutti {
		g16 |
		\triplet {d8 g \flam d}
		\triplet {g d \flam g}
		\triplet {d8 g \flam d}
		\flam g8. g16
		|
		\flam d16. d32 \flam g8
		d8.:32( g16:32)(->
		d16.) g32 d8
		\flam d8. g16
		|
		\drag d16 d8 g16
		d8.:32( g16)
		\flamd \triplet { d8 \< g16 g d8 }
		\flam g4-> \!
		|
		d8.[:32( g16]:32)(->
		d8.:32)( g16]:32)(->
		d8.[:32)( g16]:32)(->
		d8.)
	}
}
