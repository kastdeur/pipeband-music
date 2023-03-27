% 2/4 Caller Herrin
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.2"
arrangerTenor = ""
tenorglobal = {}
% Music
tenorA = \drummode {
	\tag #'fineRemove {
		\tag #'upbeat { d8 | }
		g4\up	d8 g |
		d8 g	d4 |
		g4\up d8.\up
		g16 |
		d4	g8

		d8 |
	}

	g4\up	d8 g |
	d8 g	d4 |
	g4	\scoop { d8. g16 |
	d4 } r8
}

tenorB = \drummode {
	\tag #'upbeat { g8 | }
	\stf d2 |
	r4. g8
	\stf d2 |
	%d16. g32 d16. d32	g4 |
	r4. g8

	\stf d2 |
	r2 |
	%\flourish { d4 g4 } |


	\flourish { d4 g4 } |
	%d4	d16 g d d  |
	d4	g8 d8 |
	\tag #'fine {
		\removeWithTag #'fineRemove \tenorA
	}
}
