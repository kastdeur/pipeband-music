\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.shoc.ily"



\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
        <<
			{
				\repeat volta 2 { \part \line \markTextEol "Fine" } \break
				\part \line \markTextEol "D.C. al Fine" \bar "||"
			}
			{
			 \snareA s8

			 \snareBA s8
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
