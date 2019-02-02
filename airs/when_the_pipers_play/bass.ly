\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\layout {
	indent = 6.0
	short-indent = 6.0
}
\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
        		\global
			\bassglobal
			<<
				\new NullVoice = "format"
				{
					\repeat volta 2 {
						\line
					}

				}%Format
				\new DrumVoice {
					\bassA
				}
			>>
		}
		\new PipeBandDrumStaff = "center" \with {
			instrumentName = \markup \right-column { "Center" \instrumentBass }
			shortInstrumentName = \markup { "C.B.D." }
		}{
			\centerbassA
		}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
		arranger = \arrangerBass
	}
}
