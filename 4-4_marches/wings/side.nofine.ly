\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			\new NullVoice = "format" {
				\partial 8 s8 \line \bar "||"
				\break
				\partial 8 s8 \halfline \bar "||"
				\halfline \bar "|."
			}%Format

			\new DrumVoice = "side" {
				\snareAA	\snareABA
				<>\dr
					\removeWithTag #'tutti { \snareAAI \snareABB r8 s8 } \fr
				\snareBA
				<>\dr \mf
					\removeWithTag #'tutti { \snareAAI \snareABB r8 s8 } \fr
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
