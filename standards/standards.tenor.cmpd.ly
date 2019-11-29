\version "2.18.2"

\include "./standards.tenor.ily"

\header {
 	title = "Standards Tenor"
	band = "Canadian Memorial Pipes and Drums"
}

\score {
	\new PipeBandDrumStaff {
		\time 2/4

		\drummode {
			\tenorTwoFoursPI
			\bar "||"
			\break
			\tenorTwoFoursFII
			\bar "||"
			\break
			\tenorTwoFoursFIII
			\bar "||"
			\break
			\tenorTwoFoursFIV
			\bar "||"
			\break
			\tenorTwoFoursFV
			\bar "||"
		}
	}

	\header {
		title = "2/4 & 4/4 Standard"
		instrument = "Tenor"
		band = "" % Make Sure the band is not displayed
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 3/4

		\drummode {
			\repeat volta 2 {
				\tenorThreefoursOneA
				\bar "||"
				\break
				\tenorThreefoursOneB
			}
		}
	}

	\header {
		title = "3/4 Standard"
		instrument = "Tenor"
		band = "" % Make Sure the band is not displayed
	}
}

\pageBreak

\score {
	\new PipeBandDrumStaff {
		\time 6/8

		\drummode {
			\repeat volta 2 {
				\tenorSixeightsOneA
				\bar "||"
				\break
				\tenorSixeightsOneB
			}
		}
	}

	\header {
		title = "6/8 Standard"
		instrument = "Tenor"
		band = "" % Make Sure the band is not displayed
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 9/8

		\drummode {
			\repeat volta 2 {
				\tenorNineeightsOneA
				\bar "||"
				\tenorNineeightsOneA
			}
		}
	}

	\header {
		title = "9/8 Standard"
		instrument = "Tenor"
		band = "" % Make Sure the band is not displayed
	}
}
