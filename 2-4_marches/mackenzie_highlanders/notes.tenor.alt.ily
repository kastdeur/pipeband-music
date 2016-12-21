% 2/4 MacKenzie Highlanders
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.0.1, 2016"
tenorglobal = {
	\eighthBeaming
}
% Music

tenorAold = \drummode {
	g8 |
	d4 d8 g |
	d8 \< g8 d4 \! |
	d8-> g d g |
	d4 g4 |

	d4 d8 g |
	d8 \< g d4 \! |
	d16-> g16 r8	g16-> g8 g16 |
	d4 g4 |
}
tenorAvold = \drummode {
	s8 |
	d4 g4 |
	d4 d8 g |
	d8. g16 d8. g16-> |
	r8. g16 d4 |

	d4 g4 |
	d8 g d4 |
	d16-> g16 r8	g16-> d8 g16 |
	d4 g4 |
}
tenorA = \drummode {
	s8 |
	d8 g d g |
	d8-> g16\< g	r16 d16\< g8 |
	d4 g4 |
	d4 r4 |

	d8 g d g |
	d4 g4 |
	d8. g16 r8 d8 |
	g8 d d4 |
}
tenorB = \drummode {
	d4 g4 |
	d8. g16 r8 d8 |
	d8 g d4 |
	d4 g4 |

	d8 g d4 |
	d8. g16 r8 d8 |
	d4 g4 |
	d8 g d4
}
%tenorBB = \drummode {
%s2*4 |
%s2*4 |
%}

