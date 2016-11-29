\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			\repeat volta 2 {\line}
			\break
			\repeat volta 2 {\line}
			\break
			\repeat volta 2 {\line}
			\break
			\repeat volta 2 {\halfline}
			\alternative{ {\halfline}{\halfline}}
			}%Format
			{ 
			\pipesA

			\pipesB

			\pipesC

			\pipesDA
			\pipesDBA
			\pipesDBB
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

		\pipesA
		\pipesA

		\pipesB
		\pipesB
		
		\pipesC
		\pipesC

		\pipesDA
		\pipesDBA
		\pipesDA
		\pipesDBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
