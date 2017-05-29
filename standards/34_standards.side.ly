\version "2.18.2"

\include "./34_standards.side.ily"

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pone | \midone | \pone | \endone } \break
			\repeat volta 2 { \ptwo | \midone | \ptwo | \endone } \break
			\repeat volta 2 { \pthree | \midone | \pthree | \endone } \break
			\repeat volta 2 { \pfour | \midone | \pfour| \endone } \break
			\repeat volta 2 { \pfive | \midone | \pfive | \endone } \break
			\repeat volta 2 { \psix | \midone | \psix | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 1"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}

