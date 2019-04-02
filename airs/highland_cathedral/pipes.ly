\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 {
				  	\mark \markup \small "A"
					\line
					\bar "||"
					\break
					\mark \markup \small "B"
					\line 
					\once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
					\mark \markup { \small "D.C. al fine" }
					\measure
					\break
				}
				\mark \markup \small "HaFaBra"
				\measure
				\measure
				\bar "|."

			}%Format
			{ 
				\pipesA
				\pipesB

				\pipesHafabraEnd
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\pipesA
		\pipesB
		\pipesA
		\pipesB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
