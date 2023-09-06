\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

mbreak = {\break}

\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\partial 8 s8
				\repeat segno 2 {
					\repeat volta 2 {
						\quartline
					} \alternative {
						\quartline
						{	\quartline
							\fine
						}
					}

					\volta 1 {
						\allowBreak
						\mbreak
						\partial 8 s8
						\halfline
						\bar "||"
					}
				}
			}%Format
			\new DrumVoice = "side" {
				\sideglobal
				\snareAA
					\snareABA
					\snareABB r8 s8
				\snareBA 
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
