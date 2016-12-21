\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "tenor" {
			\global
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
			<<
				{
					\repeat volta 2 { \partial 16 s16 \halfline \break \halfline } \break
					\repeat volta 2 { \part \halfline \break }
						\alternative{ {\part \halfline \break}{\part \halfline \break} }
					\bar "|."
				}%Format
				{ 
					s16 \tenorAA r8
					\tenorAB s8

					\tenorBA s8
					\tenorBB s8
					r8 \tenorAB s8
				}%Music
			>>
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			s16 \bassAA \bassAB 
			s8 \bassBA 
			s8 \bassBB 
			s8 \bassAB 
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
