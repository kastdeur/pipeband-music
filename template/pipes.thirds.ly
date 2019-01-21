\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.thirds.ily"

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
		arranger = \arrangerPipesthrd
	}
}
\score {
	\new Staff { \global \pipesthrdglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
		arranger = \arrangerPipesthrd
	}

}
