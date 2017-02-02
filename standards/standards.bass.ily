\version "2.18.2"

\include "lilydrum.ly"

bassTwofoursOne = \drummode {
	\repeat unfold 8 { d4-> g4 }
}

bassThreefoursOne = \drummode {
	\repeat unfold 4 { d4-> g4 g4 }
}

bassFourfoursOne = \drummode {
	\repeat unfold 4 { d4\v g4 d4-> g4}
}

bassSixeightsOne = \drummode {
	\repeat unfold 8 { d4. g4. }
}

bassNineeightsOne = \drummode {
	bd4.-> 4. 4.
	|
	4-> 8	4.->	4.
	|
	4.->	4.	r4 bd8
	|
	bd8-> \parenthesize 8 8	4.->	r4

	bd8 |
	4.-> 4. 4.
	|
	4-> 8	4.->	4.
	|
	4-> 8	4.	4.
	|
	4-> 8 4. r4.
}
