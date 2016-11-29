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
			\repeat volta 2 {\part \line}
			\break

			\part \line
			\break
			\part \line
			\break
			\repeat volta 2 {\part \line}
			\break
			\part \line
			\break
			\part \line
			\bar "|."
			}%Format
			{ 
			\pipesA s8

			\pipesBA
			\pipesBBA s8
			\pipesBA
			\pipesBBB s8

			\pipesC s8

			\pipesDA
			\pipesDBA s8
			\pipesDA
			\pipesBBB s8
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
		\pipesBBA
		\pipesBA
		\pipesBBB
		
		\pipesC
		\pipesC

		\pipesDA
		\pipesDBA
		\pipesDA
		\pipesBBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
