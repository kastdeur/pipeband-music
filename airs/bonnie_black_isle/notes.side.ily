% 12/8 Bonnie Black Isle
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2019"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareAA = \drummode {
	\flam d8 d8:32( g) |

	\repeat unfold 2 {
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8 \flam d8 \flam g8
	}
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8 d8 g8
	|
		d4.:32~\<
		d4.:32~\>
		d4.\!
}
snareAB = \drummode {
	\flam d8 d8:32( g)
	|
	\repeat unfold 2 {
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8 \flam d8 \flam g8
	}
	|
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam g8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d4.
		d8:32( g8) \flam d8
	|
	d4.:32~
	d4.:32~
	d4.
}

snareBA = \drummode {
	\repeat unfold 2 {
		d4:32( g8)
		|
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d8[ \flam g8 \flam d8]
		\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
		\flam d8 \flam g8 \flam d8
		|
	} \alternative {
		{
			\flam d8[ \tuplet 3/2 { d16 g d } \flam g8]
			\flam g8[ \tuplet 3/2 { d16 g d } \flam g8]
			\flam d4.
		}
		{
			d4.:32(
			d8:32)([->\> g:32)(-> d:32)(]->
			g4.)\!
		}
	}
}

