\version "2.19.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
			  \part \halfline
			  \halfline
			  \bar "||"
			  \break
			  
			  \time 9/8 s2. s4. 
			  \time 6/8 \measure \measure \measure
			  
			  \halfline
			  \bar "|."
			}%Format
			
			\new Voice = "pipes" {
			  \pipesA
			  \pipesB
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
		\partial 8 \pipesA
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
