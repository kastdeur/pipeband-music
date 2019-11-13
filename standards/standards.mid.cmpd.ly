\version "2.19.0"

\include "lilydrum.ly"

\include "./standards.bass.ily"
\include "./standards.tenor.ily"

\header {
	title = "Standards Tenor & Bass"
	band = "Canadian Memorial Pipes and Drums"
}

\layout {
	indent = 5.0
	short-indent = 2.0
}

% ----------------------
% Standard 2/4
% ----------------------
\score {
	\new StaffGroup <<
		\time 2/4
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat volta 2 {
				\tenorTwoFoursFII
			}
			\break
			\repeat volta 2 {
				\tenorTwoFoursFIII
			}
			\break
			\repeat volta 2 {
				\tenorTwoFoursFIV
			}
			\break
			\repeat volta 2 {
				\tenorTwoFoursFV
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassTwofoursOne
		}
	>>
	\header {
		title = "2/4 & 4/4 Standard"
		band = "" % Make Sure the band is not displayed
	}
}

% ----------------------
% Standard 3/4
% ----------------------
\score {
	\new StaffGroup <<
		\time 3/4
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat volta 2 {
				\tenorThreefoursOneA
				\bar "||"
				\break
				\tenorThreefoursOneB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassThreefoursOne
			\bassThreefoursOne
		}
	>>
	\header {
		title = "3/4 Standard"
		band = "" % Make Sure the band is not displayed
	}
}

\pageBreak
% ----------------------
% Standard 6/8
% ----------------------
\score {
	\new StaffGroup <<
		\time 6/8
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat volta 2 {
				\tenorSixeightsOneA
				\bar "||"
				\break
				\tenorSixeightsOneB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassSixeightsOne
			\bassSixeightsOne
		}
	>>
	\header {
		title = "6/8 Standard"
		band = "" % Make Sure the band is not displayed
	}
}

% ----------------------
% Standard 9/8
% ----------------------
\score {
	\new StaffGroup <<
		\time 9/8
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat volta 2 {
				\tenorNineeightsOneA
				\bar "||"
				\break
				\tenorNineeightsOneB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassNineeightsOne
			\bassNineeightsOne
		}
	>>
	\header {
		title = "9/8 Standard"
		band = "" % Make Sure the band is not displayed
	}
}
