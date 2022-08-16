\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

fine = {\mark \markup "Fine" }

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\part
				\repeat volta 2 {
				  \halfline \measure << s2. { s2 \fine } >>
				} \alternative {
				  { s4 | }
				  {
				  }
				}
				%\bar "||"
				\break

				\part \line
				\dcalfine
				\bar "||"
			}%Format
			\new DrumVoice = "side" {
				\snareAupbeatA
				\snareA
				r8 \snareAupbeatB

				r8 \snareBA
			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
