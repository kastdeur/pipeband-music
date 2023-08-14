\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				{
					\repeat volta 2 { \part \line } \break
					\part \line \break
					\line \bar "|."
				}
				{
				 r8 \snareA s4

				 \snareBA
				 \snareBB
				}
			>>
		}
		%\new PipeBandDrumStaff = "bass" {
		%	\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
		%	\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
        %
		%	\bassA
		%	s16 \bassBA \bassBB
		%}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			r8. \tenorA s4
			r8. \tenorA
			r8. \tenorA
			s4

		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
