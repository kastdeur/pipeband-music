\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.hmpd.ily"

title = \markup { \title \normalsize "(HMPD)" }

\score {
    \new PipeBandDrumStaff {
		\global
       		\tenorglobal
		<<
			{ \repeat unfold 4 { \repeat volta 2 { \line }  \break} }
			{ \tenorA \tenorB \tenorA \tenorB }
		>>
	}
	\header {
		title = \markup \column { \title \smaller "Holland Massed P&D" }
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
