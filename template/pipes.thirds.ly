\version "2.18.2"

\include "config.ily"
\include "notes.pipes.thirds.ily"

\score {
    \new Staff {
		\global
		\pipesthrdglobal
		<<
			\new NullVoice = "format" {
			
			}%Format
			
			\new Voice = "thirds" {
			
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
	}
}
\score {
	\new Staff { \global \pipethrdglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
	}

}
