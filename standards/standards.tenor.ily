\version "2.18.2"

\include "lilydrum.ly"

% --------------------------
% 2/4s
% --------------------------
tenorTwofoursOneA = \drummode {
	d8-> g  d g |
	d8-> g  d g |
	d8-> g  d g |
	d8-> g  d g |
	d8-> g  d g |
	d8-> g  d g |
	d8-> g  d g |
	d4-> r  |
}
tenorTwofoursOneB = \drummode {
	\flourish {
		d4 d |
		g4 g |
		d4 d |
		g4 g |
		d4 d |
		g4 g |
		d4 g |
	}
	d4\splitTheFeather r |

}


% --------------------------
% 3/4s
% --------------------------
tenorThreefoursOneA = \drummode {
	\repeat unfold 2 {
		d8.-> g16 d8 g r g |
		d4-> \scoop { d8 g d4 } |
	}
}

tenorThreefoursOneB = \drummode {
				\flourish{
					d4-> d d |
					g4-> g g |
					d4-> d g |
					g4-> d g |
				}
}


% --------------------------
% 4/4s
% --------------------------
tenorFourfoursOneA = \drummode {
				d8-> g	d g	 d-- g	d g |
				d8-> g	d g	 d-- g	d g |
				d8-> g	d g	 d-- g	d g |
				d4-> \scoop { d8 g d4 } r |
}

tenorFourfoursOneB = \drummode {
				\flourish {
					d4 d g g |
					d4 d g g |
					d4 d g g |
				}
				\flourish d4 \flourish g d^\splitTheFeather r |
}

% --------------------------
% 6/8s
% --------------------------
tenorSixeightsOneA = \drummode {
				d4.\up g\up |
				d^\splitTheFeather r |
				d g |
				\scoop { d8 r8 g8 d4. } |
				\flourish d4. \flourish g |
				d^\splitTheFeather r |
				d g |
				\scoop { d8r8 g8 d4. } |
}

tenorSixeightsOneB = \drummode {
				\flourish {
					d4. d |
					g g |
					d d |
					g g |
					d d |
					g g |
					d g |
				}
				d^\splitTheFeather r |
}

% -------------------------
% 9/8s
% -------------------------
tenorNineeightsOneA = \drummode {
	d4 g8	d4 d8	g4.
	|
	\flourish d4.	\flourish g4.	<d g>4.
	|
	d4 g8	d4 d8	g4.
	|
	d4.	<d g>2.^\bfly
	|

	d4 g8	d4 d8	g4.
	|
	\flourish d4.	\flourish g4.	 <d g>4.
	|
	d4 g8	d4.	\flourish g4.
	|
	\flourish d4.	<d g>2.^\splitTheFeather
}

tenorNineeightsOneB = \drummode {
  \tenorNineeightsOneA
}
