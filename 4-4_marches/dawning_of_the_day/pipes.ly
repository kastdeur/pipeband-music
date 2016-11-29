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
				\part \halfline \halfline \bar "|." \break

				\part \halfline \halfline \bar "|."
			}%Format
			{
				\pipesA
				\pipesB s4

				\pipesB
				\pipesBB s4
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

		\partial 4
		\pipesA
		\pipesB
		
		\pipesB
		\pipesBB
	}
	\midi { \confTempo }
}
