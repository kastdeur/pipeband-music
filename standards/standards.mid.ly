\version "2.19.0"

\include "lilydrum.ly"

\include "./standards.bass.ily"
\include "./standards.tenor.ily"

\header {
  title = \markup \center-column { "Standards" \smaller "Bass & Tenor"}
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
				\tenorTwofoursOneA
				\tenorTwofoursOneB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassTwofoursOne
			\bassTwofoursOne
		}
	>>
	\header {
		title = "2/4 Standard"
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
	}
}

% ----------------------
% Standard 4/4
% ----------------------
\score {
	\new StaffGroup <<
		\time 4/4
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat volta 2 {
				\tenorFourfoursOneA
				\tenorFourfoursOneB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassFourfoursOne
			\bassFourfoursOne
		}
	>>
	\header {
		title = "4/4 Standard"
	}
}

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
	}
}
