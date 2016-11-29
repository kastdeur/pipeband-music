\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.alt.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\repeat volta 2 {
					\part \line
				}
				\break

				\part \line \bar "||" \break
				\line \bar "|."
			}%Format
			{
				\tenorA s8

				\tenorBA
				\tenorBB s8
			}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
