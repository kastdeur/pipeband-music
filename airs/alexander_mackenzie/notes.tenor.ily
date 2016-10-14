% 6/8 Alexander MacKenzie
% Tenor
\version "2.18.2"
composerTenor = "v0.9, E.T. de Boone, 2016"
tenorglobal = {}
% Music
tenorAA = \drummode {
  s8 |
  d8 g4 	d4. |
  d8 g16 d g8	d4 d16 \< g16 |
  d4.-> \!	d8 g d |
  g8 d16\< g d g	d4\!
}
tenorAB = \drummode {
  s8 |
  d8 g4		d4. |
  d8 g16 d g8	d4. |
  d8 d8.-> g16	d8 d8.-> g16 |
  d4 g8	d4
}

tenorBA = \drummode {
  d8 |
  g4-> d16 g	d8 g d |
  d16-> g d g d-> g		d4 d8 |
  g4-> d8	g8 d4 |

  g8 d4		d4
}
tenorBB = \drummode {
  d8 |
  g4-> d16 g	d8 g d |
  d16-> g d g d-> g		d4 d8 |
  d8 d8.-> g16	d8 d8.-> g16 |
  d4 g8	d4
}
