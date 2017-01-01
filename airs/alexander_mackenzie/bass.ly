\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\bassglobal
	<<
		{
			\repeat volta 2 { \line \break } \break
			\repeat volta 2 { \halfline \break }
				\alternative{ {\halfline \break}{\halfline \break} }
			\bar "|."
		}
		{
			\bassAA 
			\bassAB 

			\bassBA 
			\bassBB  
			\bassAB 
		}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
