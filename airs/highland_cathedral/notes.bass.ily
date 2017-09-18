% 4/4 Highland Cathedral
% Bass
\version "2.18.2"
composerBass  = ""
arrangerBass  = ""
bassglobal = {}
% Music
bassAA = \drummode {
  d4 g d g |
}
bassRolls = \drummode {\repeat unfold 2 \bassAA}

bassBA = \drummode { \repeat unfold 2 \bassAA }
bassHafabraEnd = \drummode { \bassAA | d4 g d2:32\fermata }
