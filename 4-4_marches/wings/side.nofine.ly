\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
        <<
			\new NullVoice = "format" {
				\partial 8 s8 \line \bar "||"
				\line \bar "||"
				\break
				\partial 8 s8 \line \bar "||"
				\line \bar "|."
			}%Format

			\new DrumVoice = "side" {
				\snareAA	\snareABA
					\removeWithTag #'tutti { \snareAAI \snareABB r8 s8 }
				\snareBA 
					\removeWithTag #'tutti { \snareAAI \snareABB r8 s8 }
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
