\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

halfbreak = \break
\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
			  \part \halfline \halfbreak \halfline \bar "|."
			  \break
			  \part \halfline \halfbreak \halfline \bar "|."
			  \break
			  \part \halfline \halfbreak \halfline \bar "|."
			  \break
			  \part \halfline \halfbreak \halfline \bar "|."
			  \break

			}%Format

			\new DrumVoice = "side" {
			  \snareA s8

			  \snareB s8

			  \snareC s8

			  \snareD s8

			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
