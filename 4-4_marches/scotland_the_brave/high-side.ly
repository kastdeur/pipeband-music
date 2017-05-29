\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
        <<
			{
				\repeat volta 2 {\part \line \break }
				\part \line \bar "||"
			}
			{
			 \snareA s8

			 \snareBAhigh
			}
		>>
	}
	\header {
		title = #(string-append title " (high)" )
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
