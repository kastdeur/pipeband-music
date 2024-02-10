\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal

		\repeat volta 2 { \pipessecndA } \break
		\repeat volta 2 { \pipessecndB } \break
		\repeat volta 2 { \pipessecndC } \break
		\repeat volta 2 { \pipessecndD } \break
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
			\unfoldRepeats{
		\repeat volta 2 { \pipessecndA } \break
		\repeat volta 2 { \pipessecndB } \break
		\repeat volta 2 { \pipessecndC } \break
		\repeat volta 2 { \pipessecndD } \break
			}
	}
	\midi { \confTempo }
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}

}
