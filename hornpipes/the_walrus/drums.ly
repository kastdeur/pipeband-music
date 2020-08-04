\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				{ 
					\repeat volta 2 { \part \line }
				\break
					\repeat volta 2 { \part \halfline}
					\alternative{ {\halfline} {\halfline}}
				\bar "||"
				\break
					\repeat volta 2 { \part \halfline}
					\alternative{ {\halfline} {\halfline}}
				\bar "||"
				\break
					\repeat volta 2 { \part \halfline}
					\alternative{ {\halfline} {\halfline}}
				\bar "|."
}%Format
				{
					\snareAA
					\snareAB s8

					\snareBA
					\snareBBA s8
					\snareBBB s8

					\snareCA
					\snareCBA s8
					\snareCBB s8

					\snareDA
					\snareDBA s8
					\snareDBB s8
				
				}%Music
			>>
		}
%{		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

		} %}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal

			\bassAA
			\bassAB s8

			\bassBA
			\bassBBA s8
			\bassAB s8
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
