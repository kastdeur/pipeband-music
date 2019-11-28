\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
			\repeat volta 2 { \part \line \break } \break
			\repeat volta 2 { \part \halfline \break }
				\alternative{ {\part \halfline \break}{\part \halfline \break} }
			\bar "|."
		}
		{
			r8 \tenorAA
			\tenorAB s8

			\tenorBA s8
			\tenorBB s8
			r8 \tenorAB s8
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
