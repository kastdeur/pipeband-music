\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "../../standards/standards.tenor.ily"
\include "./notes.side.ily"
\include "../../standards/24_44_standards.side.ily"


\layout {
	indent = 5.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup{ \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\global
			\sideglobal
			<<
				%\new NullVoice = "format" {
				%  \repeat unfold 4 {
				%	\repeat unfold 2 {
				%	  \part s1*2
				%	} \alternative {
				%	  { s1*2 }
				%	  { s1*2 }
				%	}
				% }
				%}%Format
				
				\new DrumVoice = "side" {
					\partial 8 \simpleSnarepone \midone \simpleSnarepone \simpleSnareEndingI r8
					\tutti { \simpleSnarepone \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
					\bar "||"
					\break

					\partial 8 \simpleSnareptwo \midone \simpleSnareptwo \simpleSnareEndingI r8
					\tutti { \simpleSnareptwo \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
					\bar "||"
					\break

					\partial 8 \simpleSnarepthree \midone \simpleSnarepthree \simpleSnareEndingI r8
					\tutti { \simpleSnarepthree \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
					\bar "||"
					\break

					\partial 8 \simpleSnarepfour \midone \simpleSnarepfour \simpleSnareEndingI r8
					\tutti { \simpleSnarepfour \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
					\bar "|."
				}
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB

				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB

				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB

				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB

		}
%{
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
			\bassglobal

		}
%}
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
