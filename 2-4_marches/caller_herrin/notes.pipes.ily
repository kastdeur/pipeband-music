% 2/4 Caller Herrini
% Pipes
\version "2.18.2"
composerPipes = "Trad."
arrangerPipesvI = "A.M. Cairns"
arrangerPipesvII = "M. Bain" % PM Mike Bain, SHoC
pipeglobal = {
	\key d \major
}
pipesAvI = {
	\tag #'fineRemove {
		\tag #'upbeat {\grg a8 |}
		\grg d4 \grg d8 [ \grG e8 ] |
		\dblc c4 \thrwd d8. [ e16 ] |
	}
	\dblf f8 [ b8 ] \dble e8. [ d16 ] |
	\dblc c8 [ \gre a8 ] \dblb b8 [ c8 ] |

	\grg d4 \grg d8 [ \grG e8 ] |
	\dblc c4 \thrwd d8. [ e16 ] |
	\dblf f8 [ g8 ] \grA e8. [ f16 ] |
	\thrwd d4 \slurd d8
}
pipesAvII = {
	\tag #'fineRemove {
		\tag #'upbeat {\grg a16. b32 |}
		\thrwd d4 \slurd d8 [ \grg e16. d32 ] |
		\dblc c4 \thrwd d8. [ e16 ] |
	}
	\grg f8 [ \hdblb b8 ] \dble e8. [ d16 ] |
	\dblc c8 [ \gre a8 ] \grg b8 [ c8 ] |

	\thrwd d4 \slurd d8 [ \grg e16. d32 ] |
	\dblc c4 \thrwd d8. [ e16 ] |
	\grg f8 [ g8 ] \grA e8. f16 |
	\thrwd d4 \slurd d8
}

pipesBvI = {
	A8 |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |
	\dblc c8 [ b8 ] \grG a8 [ A8 ] |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |
	\dblc c8 [ b8 ] \grG a8 [

	A8 ] |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |
	\dbld d8 [ c8 ] \grg d8. [ e16 ] |
	\tag #'fine {
	  \removeWithTag #'fineRemove \pipesAvII
	}
}
pipesBvII = {
	A8 |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |
	\dblc c8 [ b ] \grG a8 [ A8 ] |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |

	\tag #'simpleRemove { \dblc c16. [ d32 b16. d32 ]  a8 [ }
	\tag #'simpleKeep { \dblc c8 [ b8 ] \grG a8 [ }

	A8 ] |
	\grf g8 [ f8 ] \dble e8 [ d8 ] |
	\grg c4 \thrwd d8. [ e16 ] |
	\tag #'fine {
		\removeWithTag #'fineRemove \pipesAvII
	}
}


arrangerPipes = \arrangerPipesvII
pipesA = { \pipesAvII }
pipesB = { \removeWithTag #'simpleRemove \pipesBvII }
