% 4/4 Cabar Feidh
% Side
\version "2.18.2"
composerSide = "Seaforth Highlanders of Canada"
arrangerSide = ""
arrangerSideSimple = "E.T. de Boone, 2018"
sideglobal = {
	\eighthBeaming
}

%% Optional Flams in Ending
optflamd = \drummode { \drumgrace { \parenthesize g8 } }
optflamg = \drummode { \drumgrace { \parenthesize d8 } }
optflam = #(autohandFunc optflamg optflamd)

% Music
simpleSnarepone = \drummode {
	g8 |
	\flam d16. g32 \triplet { d16 g d }
	\flam g8 g
	d4:32~
	d8
}
simpleSnareptwo = \drummode {
	g8 |
	d8:32( \triplet { g16) d g }
	d8-> d8:32(
	\triplet { g16) d g } d16. d32
	\flam g8
}
simpleSnarepthree = \drummode {
	g8 |
	\flam d8 g16. d32->
	\triplet { g16 d g } \flam d16. g32
	d16. d32-> \triplet { g16 d g }
	d8->
}
simpleSnarepfour = \drummode {
	d8:32( |
	g16.) g32-> \triplet { d16 g d }
	\flam g16. d32-> g16. g32
	\flam d16. g32-> \triplet { d16 g d }
	g8
}

simpleSnareEndingI = \drummode { \tutti {
	g8 |
	\flam d4 d4:32~ d4
}}
simpleSnareEndingII = \drummode {
  g8 |
  \flam d16 g \optflam d \flam g
  d16 \optflam g \flam d g
  \optflam d16 \flam g d \optflam g
  d4:32(
  |
  d8) \flam g8
  d32 g d g d16.-> g32
  d8[ d8]:32(
  g8)
}

snareEndingI = \drummode { \tutti {
    r16. d32:64( d16.) g32\v	d32 g d g d16.\v d32:64(	d16.) g32 d32\v g d g	d8\v
  }}

snareEndingII = \drummode { \tutti {
	g8 |
	\flam d16 g \flam d \flam g
	d16 \flam g \flam d g
	\flam d16 \flam g d \flam g
	\flam d4:32(
	|
	d8) \flam g	d32
	g32 d g d16.\v g32
	d16. \flam g32 d32 g d g
	d8
	}
}


snareA = \drummode {
  g8 |
  \flam d16. g32 \triplet { d16 g d }	\flam g8 g	d4:32( d4) |
  \tutti { r8 \triplet { g16 d g }	\flam d16. d32 \flam g16. g32	d16.[ \drag d32 d32 g d g]	d8\v }
  g8 |
  \flam d16. g32 \triplet { d16 g d }	\flam g8 g	d4:32( d4) |
  \snareEndingI

  \tutti {
    g8 |
    \flam d16. g32 \triplet { d16 g d }	\flam g8 g	d4:32( d4) |
    r8 \triplet { g16 d g }	\flam d16. d32 \flam g16. g32	d16.[ \drag d32 d32 g d g]	d8\v

	\snareEndingII
  }
}

snareB = \drummode {
  g8 |
  \flam d8:32( \triplet { g16) d g\v }	d16.\v g32 d8:32(	\triplet { g16) d g\v } d16.\v d32	\flam g4 |
  \tutti {
    r16. g32 d16. g32	d32 g d g d16.\v g32 \drag d16[ \drag d16 d32 g d g]	d8\v
  }
  g8 |
  \flam d8:32( \triplet { g16) d g\v }	d16.\v g32 d8:32(	\triplet { g16) d g\v } d16.\v d32	\flam g4 |
  \snareEndingI

  \tutti {
    g8 |
    \flam d8:32( \triplet { g16) d g\v }	d16.\v g32 d8:32(	\triplet { g16) d g\v } d16.\v d32	\flam g4 |
    r16. g32 d16. g32	d32 g d g d16.\v g32 \drag d16[ \drag d16 d32 g d g]	d8\v
	\snareEndingII
  }
}

snareC = \drummode {
  g8 |
  \flam d8 g16. d32:64(	\triplet { d16) g d } \flam g16. g32	d16.[ \drag d32 d32 g d g] d4\v |
  \tutti {
    r16 d8:32(-> g16)\v	d8:32(-> g)\v	d16[ \drag d16 d32 g d g]	d8\v
  }
  g8 |
  \flam d8 g16. d32:64(	\triplet { d16) g d } \flam g16. g32	d16.[ \drag d32 d32 g d g] d4\v |
  \snareEndingI

  \tutti {
    g8 |
    \flam d8 g16. d32:64(	\triplet { d16) g d } \flam g16. g32	d16.[ \drag d32 d32 g d g] d4\v |
    r16 d8:32(-> g16)\v	d8:32(-> g)\v	d16[ \drag d16 d32 g d g]	d8\v
	\snareEndingII
  }
}

snareD = \drummode {
	d8:32( |
	g16.) g32 d32 g d g	d16. g32 d16. d32	\flam g16. g32 d32 g d g	d16. g32 d16. d32 |
	\flam g8. d16\p\<	d16 d d d	d16-\v\! \flam g d16-\v d16-\v \flam g8
	d8:32( |
	g16.) g32 d32 g d g	d16. g32 d16. d32	\flam g16. g32 d32 g d g	d16. g32 d16. d32 |
	\snareEndingI

	\tutti {
		d8:32( |
		g16.) g32 d32 g d g	d16. g32 d16. d32	\flam g16. g32 d32 g d g	d16. g32 d16. d32 |
		\flam g8. d16\p\<	d16 d d d	d16-\v\! \flam g d16-\v d16-\v \flam g8
		\snareEndingII
	}
}

snareDOrig = \drummode {
	d8:32( |
	g16.) g32 \triplet { d32 d g g d16 } g16. d32 g16. g32	\flam g16. g32 \triplet { d32 d g g d16 } g16.\v d32\v g16. g32 |
	\flamdr g8. d16\p\<	d16 d d d	d16-\v\! \flam g d16-\v d16-\v \flam g8 \fr
	d8:32( |
	g16.) g32 d32 g d g	d16. g32 d16. d32	\flam g16. g32 d32 g d g	d16. g32 d16. d32 |
	\snareEndingI

	\tutti {
		d8:32( |
		g16.) g32 \triplet { d32 d g g d16 } g16. d32 g16. g32	\flam g16. g32 \triplet { d32 d g g d16 } g16.\v d32\v g16. g32 |
		\flam g8. d16\p\<	d16 d d d	d16-\v\! \flam g d16-\v d16-\v \flam g8
		\snareEndingII
	}
}
