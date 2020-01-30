\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\paper {
  system-system-spacing.padding = #2.3
}

halfbreak = {  \break }

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new DrumVoice = "format" {
					\voiceOne
				\repeat unfold 4 {
					s8
					\halfline
					\halfbreak
					\halfline
					\bar "||"
					\break
				}
				\bar "|."
			}
			\new DrumVoice = "side" {
				\partial 8 \snareAA r8
				\snareAB s8

				\partial 8 \snareBA r8
				\snareBB s8

				\partial 8 \snareCA r8
				\snareCB s8

				\partial 8 \snareDA r8
				\snareDB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
		info = \info
	}
}
