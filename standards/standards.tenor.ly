\version "2.18.2"

\include "./standards.tenor.ily"

\header {
	instrument = "Tenor"
	title = "Standards"
}

\score {
	\new PipeBandDrumStaff {
		\time 2/4

		\drummode {
			\repeat volta 2 {
				\tenorTwofoursOneA
				\bar "||"
				\break
				\tenorTwofoursOneB
			}
		}
	}

	\header {
		title = "2/4 Standards"
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
		title = "3/4 Standards"
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 4/4

		\drummode {
			\repeat volta 2 {
				\tenorFourfoursOneA
				\bar "||"
				\break
				\tenorFourfoursOneB
			}
		}
	}

	\header {
		title = "4/4 Standards"
	}
}

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
		title = "6/8 Standards"
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 9/8

		\drummode {
			\repeat volta 2 {
			  \repeat volta 2 {
				\tenorNineeightsOneA
			  }
			}
		}
	}

	\header {
		title = "9/8 Standards"
	}
}
