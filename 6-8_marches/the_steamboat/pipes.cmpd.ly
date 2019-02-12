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
			\repeat volta 2 {\part \line}
			\break
			\repeat volta 2 {\part \line}
			\break
			\bar "|."
			}%Format
			{ 
			\pipesA s8

			\pipesB s8

			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune

		\partial 8
		\pipesA
		\pipesA

		\pipesB
		\pipesB
		
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
