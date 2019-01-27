\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.hmpd.ily"
\include "./notes.tenor.hmpd.ily"
\include "./notes.side.hmpd.ily"

#(set-global-staff-size 14)
date = \markup { 16-02-2016 }
title = \markup { \title \normalsize "(HMPD)" }

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup{\instrumentSide}
			shortInstrumentName = \markup{\shortInstrumentSide}
		  } {

			\global
			<<
				{
					\repeat unfold 4 {
						\repeat volta 2 { \halfline \halfline } \break
					}
				}%End of Format
				{
					\snareA
					\snareB
					\snareC
					\snareD
				}
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\tenorA
			\tenorB
			\tenorA
			\tenorB
		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {

			\bassglobal

			\bassA
			\bassA
			\bassA
			\bassA
		}

	>>
	\header {
		date = \date
		title = \markup \column { \title \smaller "Holland Massed P&D" }
		meter = \meter
		composer = \markup \tiny { \composerSide ":" "Drums"
		}
	}
}
