% 2/4 Caller Herrin
% Bass
\version "2.18.2"
composerBass  = "E.T de Boone, v0.2" %2022-11-07
arrangerBass  = ""
bassglobal = {}
% Music
bassA = \drummode {
	\tag #'fineRemove {
		d4 g4 |
		d4 g4 |
		d8 g d4 |
		d4 d4 |
	}

	d4 g4 |
	d4 g4 |
	d8 g d4 |
	d4 d4
}

bassB = \drummode {
	d4\v g4 |
	d8 g d4 |
	d4\v g4 |
	d8 g8	r8 g8 |
	d4\v g4 |
	\triplet { d8 g d } g4 |
	d8 g8 d4 |
	d8\< g8 d8 g8 <>\! |
	\tag #'fine {
		\removeWithTag #'fineRemove \bassA
	}
}
