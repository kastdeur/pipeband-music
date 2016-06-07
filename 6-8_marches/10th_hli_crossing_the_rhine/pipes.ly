\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ 
			\repeat volta 2 { 
				\part \halfline 
				\set Score.repeatCommands = #'((volta "2 of 2"))
				\halfline
				\set Score.repeatCommands = #'((volta #f)) \bar "|"
			}
			\break
			\repeat volta 2 { 
				\part \halfline
				\set Score.repeatCommands = #'((volta "1 of 2"))
				\halfline
				\set Score.repeatCommands = #'((volta #f)) \bar "|"
			}
			\break
			\repeat volta 2 { 
				\part \halfline 
				\set Score.repeatCommands = #'((volta "2 of 4"))
				\halfline
				\set Score.repeatCommands = #'((volta #f)) \bar "|"
			}
			\break
			\repeat volta 2 { 
				\part \halfline
				\set Score.repeatCommands = #'((volta "1 of 4"))
				\halfline
				\set Score.repeatCommands = #'((volta #f)) \bar "|"
			}
			}%Format
			{ 
				\pipesAA
				\pipesAB s8 

				\pipesBA
				\pipesBB s8

				\pipesCA
				\pipesCB s8

				\pipesDA
				\pipesDB s8
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
    \new Staff {
		\global
		\pipeglobal
		<<
			{ 
			\repeat volta 2 { \part \line }
			\break
			\repeat volta 2 { \part \halfline}
			\alternative{ {\halfline} {\halfline} }

			\break
			\repeat volta 2 { \part \line }
			\break
			\repeat volta 2 { \part \halfline }
			\alternative{ {\halfline} {\halfline} }
			}%Format
			{ 
				\pipesAA
				\pipesAB s8 

				\pipesBA
				\pipesBB s8
				\pipesAB s8

				\pipesCA
				\pipesCB s8

				\pipesDA
				\pipesDB s8
				\pipesCB s8
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
		\pipesAA
		\pipesAB

		\pipesBA
		\pipesBB
		\pipesBA
		\pipesAB

		\pipesCA
		\pipesCB
		\pipesCA
		\pipesCB

		\pipesDA
		\pipesDB
		\pipesDA
		\pipesCB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
