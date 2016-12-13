\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
		  		\mark \markup { \normalsize {Intro } }
				\line \bar ".|:-|."
				\break
				\mark \markup { \normalsize {Tune } }
				\repeat volta 2 { \line } 
				\break 
				\part \line  \bar "||" 
				\break
				\part \line \bar "|." 
			}
			{
			  \intro 
			  \snareA s8 
			  \snareBA s8 
			  \snareBB 
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
