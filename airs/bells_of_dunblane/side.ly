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
			  \line 
			 % \bar "||"
			  \break
			  \repeat volta 2 {
				\line
			  }
			  %\bar "||"
			  \break
			  \line
			  \bar "|."
			  \measure
			  \bar "|."
			  
			}%Format
			
			\new DrumVoice = "side" {
				\snareA
				\repeat percent 2 {
					\snareB
				}
				\snareC \snarePV
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
