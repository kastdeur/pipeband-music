\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{

				\part \line \break
				\line \bar "|." \break

				\part \line \break
				\line \bar "|."
			}%Format
			{
				\pipesAA
				\pipesAB s8

				\pipesBA
				\pipesBB
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
		\pipesAA
		\pipesAB

		\pipesBA
		\pipesBB
	}
	\midi { \confTempo }
}
