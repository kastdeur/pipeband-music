% 4/4 Cabar Feidh
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.1, 2020" % 2020-09-23
arrangerTenor = ""
tenorglobal = {
	\set Timing.beamExceptions = #'()
	\set baseMoment = #(ly:make-moment 1 8)
	\set beatStructure = #'(2 2 2 2 2)
}


% Music
tenorEndA = \drummode {
	d4	g4	d4	r8
}
tenorEndB = \drummode {
	d8. g16	d8 g	d8\< g	d8 g8 |
	d4->\!	g4	d4	r8
}

% Music Pieces
tenorA = \drummode {
	g8 |
	d8. g16	d8 g	d4	g4 |
	d8-> g	r8 d	r8 g	d8 g |
	d8. g16	d8 g	d4	g4 |
	\tenorEndA

	g8 |
	d8. g16	d8 g	d4	g4 |
	d8-> g	r8 d	r8 g	d8 g |
	\tenorEndB
}

tenorB = \drummode {
	g8 |
	d8 g8	d8. g16	d8 g8	d4 |
	d8-> g	r8 d	r8 g	d8 g |
	d8 g8	d8. g16	d8 g8	d4 |
	\tenorEndA

	g8 |
	d8 g8	d8. g16	d8 g8	d4 |
	d8-> g	r8 d	r8 g	d8 g |
	\tenorEndB
}

tenorC = \drummode {
	g8 |
	d8 g16 d	g8 g8	d16 g d8	d4 |
	d8. g16	d8 g	d8. g16	d8 g |
	d8 g16 d	g8 g8	d16 g d8	d4 |
	\tenorEndA

	g8 |
	d8 g16 d	g8 g8	d16 g d8	d4 |
	d8. g16	d8 g	d8. g16	d8 g |
	\tenorEndB
}

tenorD = \drummode {
	g8 |
	d4	g4	d16 g8 g16	d8 g |
	d2->		d8. g16	d8 g |
	d4	g4	d16 g8 g16	d8 g |
	\tenorEndA

	g8 |
	d4	g4	d16 g8 g16	d8 g |
	d2->		d8. g16	d8 g |
	\tenorEndB
}
