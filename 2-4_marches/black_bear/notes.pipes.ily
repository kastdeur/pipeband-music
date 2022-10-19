% 2/4 Black Bear
% Pipes
\version "2.18.2"
composerFacsimilePipes = "1936"
composerPipes = ""
arrangerPipes = "M. Bain" % PM Mike Bain, SHoC
pipeglobal = {
  \bagpipeKey
}
pipesSourceA = {
	\tag #'upbeat { \grg a16. [ b32 ] | }
	\repeat unfold 2 {
		\thrwd d8 [ \tag #'facsimile {\dbld} \tag #'current {\slurd} d8 ] \grg f16.[  d32  A16.  f32  ]|
		\thrwd d8 [ \tag #'facsimile {\dbld} \tag #'current {\slurd} d8 ] \grg f16.[  d32  A16.  f32  ]|
	} \alternative {
		{
			\dble e8 [ \grg b8 ] \grip b8 [ \tag #'facsimile {\grg e16 d16 ]} \tag #'current {\grg e16. d32]} |
			\grg c32 [ d16. \tag #'facsimile {\grg b32 \grd c16. ]} \tag #'current {\grg b16. \grd c32 ]} \grg a16. [ b32 \grg c32 \grd a16. ]
		}
		{
			\dble e8 [ \grip e8 ] \grg e16. [ g32 \tag #'facsimile {\grA f32 e16. ]} \tag #'current {f16. e32 ]} |
			\thrwd d8 [ \grg f8 ] \thrwd d8
		}
	}
}
pipesSourceB = {
	e8 |
	\repeat unfold 2 {
		\grg a16. [ \grd a32 \tag #'facsimile {a16  \grd b16 ]} \tag #'current {\gre a16. b32 ]} \thrwd d8 [ \tag #'facsimile {\grg d16 e16 ]} \tag #'current {\slurd d16. e32 ]} |
		\dblg g8 [ \tag #'facsimile {\grA f16 e16 ]} \tag #'current {f16. e32 ]} \grg f32 [ A16. \tag #'facsimile {f16. d32 ]} \tag #'current {f32 d16. ]} |
	}

	\tag #'facsimile {
		A8 [ a16 \dbla a16 ] \grg c8 [ \grd a16 \dbla a16 ] |
		\grg d8 [ b16 \dblb b16 ] \grg e8 [ c16 \dblc c16 ] |
		\grg d32 [ f16.  \grg d32  f16. ] e16. [ g32 \grA f32 g16. ] |
	}
	\tag #'current {
		A32 [ a16. \grg a32 \grd a16. ]	\grg c32 [ a16. \grg a32 \grd a16. ] |
		\grg d32 [ b16. \grg b32 \grd b16. ]	\grg e32 [ c16. \grg c32 \grd c16. ] |
		\grg d16. [ f32 \grg d16. f32 ]	\grg e16. [ g32 \grA f16. g32 ] |
	}
	A8 [ \grip A8 ] \grg A16. [ g32 f16.  e32 ]
}


pipesFacsimileA = { \removeWithTag #'current \pipesSourceA }
pipesFacsimileB = { \removeWithTag #'current \pipesSourceB }

pipesA = { \removeWithTag #'facsimile \pipesSourceA }
pipesB = { \removeWithTag #'facsimile \pipesSourceB }

