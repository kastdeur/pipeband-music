\version "2.18.2"

\include "./standards.bass.ily"

\header {
		title = "Standards"
		instrument = "Bass"
	}

\score {
	\new PipeBandDrumStaff {
		\time 2/4
		\drummode {
			\repeat volta 2 {
				\bassTwofoursOne
			}
		}
	}
	\header {
		title = "2/4 Standard"
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 3/4

		\drummode {
			\repeat volta 3 {
				\bassThreefoursOne
			}
		}
	}
	\header {
		title = "3/4 Standard"
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 4/4

		\drummode {
			\repeat volta 2 {
				\bassFourfoursOne
			}
		}
	}
	\header {
		title = "4/4 Standard"
	}
}

\score {
	\new PipeBandDrumStaff {
		\time 6/8

		\drummode {
			\repeat volta 2 {
				\bassSixeightsOne
			}
		}
	}
	\header {
		title = "6/8 Standard"
	}
}
