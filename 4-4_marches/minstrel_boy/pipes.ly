\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

part = { \grace{s1} \partial 8 s8 }

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			\repeat volta 2 {
				\part \line
			}
			\break
			\part \line \break
			\line \bar "|."
			}%Format
			{ 
				\pipesA s8

				\pipesBA
				\pipesBB s8
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
		\pipesBA
		\pipesBB
	}
	\midi { \confTempo }
}
