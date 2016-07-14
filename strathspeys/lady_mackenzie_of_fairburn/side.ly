\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
			 \repeat volta 2 { \line } 
			 \break 
			 \part \line \bar "||" 
			 \break
			 \part \line \bar "|."
			}
			{
			 \snareA s16 
			 \snareBA s16 
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
