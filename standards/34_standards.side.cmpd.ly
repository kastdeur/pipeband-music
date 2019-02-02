\version "2.18.2"

\include "./34_standards.side.ily"

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pone | \midone | \pone | \endone } \break
			\repeat volta 2 { \pthree | \midone | \pthree | \endone } \break
			\repeat volta 2 { \pfive | \midone | \pfive | \endone } \break
			\repeat volta 2 { \psixteen | \midone | \psixteen | \endone } \break
			\repeat volta 2 { \pnineteen | \midone | \pnineteen | \endone } \break
			\repeat volta 2 { \ptwenty | \midone | \ptwenty | \endone } \break
			\repeat volta 2 { \ptwentyone | \midone | \ptwentyone | \endone } \break

		}% End of drums %
	}
	\header {
		title = "3/4 Standards (Canadian Memorial Pipes & Drums)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}

