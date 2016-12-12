\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				\new NullVoice = "format" {
					\part
					\line
					\bar "|."
				}%End of Format
				\new DrumVoice = "side" {
					\snareA s4
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "trom" {
			\global
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup{Trom}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{T.}

			\new DrumVoice = "trom" {
				\snareOrigA s4
			}%End of side
		}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
