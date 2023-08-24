% 2/2 Jock Wilson's Ball
% Tenor
\version "2.18.2"
composerTenor = "v0.1"
arrangerTenor = ""
tenorglobal = {}
% Music
tenorAA = \drummode {
	d4 g	d g |
	d8. g16 \parenthesize d4	d2 |
	d4 \triplet{ g8 d g }	d2 |
	d8. g16 d8. g16	d8. d16 g8. g16 |
}
tenorAB = \drummode {
	d4 g	d g |
	d8. g16 \parenthesize d4	d2 |
	d8. g16	d4	\triplet{ g8 d g } d4 |
	d8 g d4	d2 |
}
tenorA = \drummode{ \tenorAA \tenorAB }

tenorBA = \drummode {
	d4 g	d2 |
	d4 g8. g16	d2 |
	d4\< g	d2\! |
	d8 g d4	d2 |
}
tenorBB = \drummode {
	d4 g	d2 |
	d4 g8. g16	d2 |
	d4 d8. d16	g4 g4 |
	d8. g16 d8.	d16 g4 d4 |
}
tenorB = \drummode{ \tenorBA \tenorBB }
