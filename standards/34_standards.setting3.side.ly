\version "2.18.2"

\include "./34_standards.side.ily"

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pthirteen | \midtwo | \pthirteen | \endtwo } \break
			\repeat volta 2 { \pfourteen | \midone | \pfourteen | \endone } \break
			\repeat volta 2 { \pfifteen | \midone | \pfifteen | \endone } \break
			\repeat volta 2 { \psixteen | \midone | \psixteen | \endone } \break
			\repeat volta 2 { \pseventeen | \midone | \pseventeen | \endone } \break
			\repeat volta 2 { \peighteen | \midone | \peighteen | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 3"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}

