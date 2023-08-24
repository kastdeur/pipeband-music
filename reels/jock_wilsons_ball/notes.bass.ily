% 2/2 Jock Wilson's Ball
% Bass
\version "2.18.2"
composerBass  = "v0.1"
arrangerBass  = ""
bassglobal = {}
% Music
bassAA = \drummode {
	bd2	\triplet{ 8 8 8 } 4 |
	2	2 |
	2	\triplet{ 8 8 8 } \parenthesize 4 |
	2	2 |
}
bassAB = \drummode {
	bd2	\triplet{ 8 8 8 } 4 |
	2	2 |
	2	2 |
	2	2 |
}
bassA = \drummode{ \bassAA \bassAB }

bassBA = \drummode {
	bd2 2 |
	2	2 |
	2	2 |
	2	2 |
}
bassBB = \drummode {
	\bassBA
}
bassB = \drummode{ \bassBA \bassBB }
