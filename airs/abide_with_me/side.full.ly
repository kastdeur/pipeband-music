\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff {
		    \global
		    <<
				\new NullVoice = "format" {
					\repeat volta 2 {\line \break}
						\alternative {
							{ \line \break }
							{ \line \bar "|."}
						}
	
				} % End of Format
				\new DrumVoice = "side" {
					\snareAA
					\snareAA
					\snareAB
				}
			>>
		}
		\new PipeBandDrumStaff {
			\snareRollsAA
			\snareRollsAA
			\snareRollsAB
		}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
