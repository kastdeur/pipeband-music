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
			\repeat volta 2 {\part \line}
			\break
			\repeat volta 2 {\part \halfline}
			\alternative{ {\halfline}{\halfline }}
			\bar "|."
			}%Format
			{ 
			\pipesA s8

			\pipesB s8

			\pipesC s8

			\pipesDA
			\pipesDBA s8
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

		\partial 8
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
