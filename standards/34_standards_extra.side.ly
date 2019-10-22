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
			\repeat volta 2 { \pseven | \midone | \pseven | \endone } \break
			\repeat volta 2 { \peight | \midone | \peight | \endone } \break
			\repeat volta 2 { \pnine | \midone | \pnine | \endone } \break
			\repeat volta 2 { \pten | \midone | \pten | \endone } \break

			\repeat volta 2 { \peleven | \midone | \peleven | \endone } \break
			\repeat volta 2 { \ptwelve | \midone | \ptwelve | \endone } \break
			\repeat volta 2 { \pthirteen | \midtwo | \pthirteen | \endtwo } \break
			\repeat volta 2 { \pfourteen | \midone | \pfourteen | \endone } \break
			\repeat volta 2 { \pfifteen | \midone | \pfifteen | \endone } \break
			\repeat volta 2 { \psixteen | \midone | \psixteen | \endone } \break
			\repeat volta 2 { \pseventeen | \midone | \pseventeen | \endone } \break
			\repeat volta 2 { \peighteen | \midone | \peighteen | \endone } \break
			\repeat volta 2 { \pnineteen | \midone | \pnineteen | \endone } \break
			\repeat volta 2 { \ptwenty | \midone | \ptwenty | \endone } \break

			\repeat volta 2 { \ptwentyone | \midone | \ptwentyone | \endone } \break
			\repeat volta 2 { \ptwentytwo | \midone | \ptwentytwo | \endone } \break
			\repeat volta 2 { \ptwentythree | \midone | \ptwentythree | \endone } \break
			\repeat volta 2 { \ptwentyfour | \midone | \ptwentyfour | \endone } \break
			\repeat volta 2 { \ptwentyfive | \midone | \ptwentyfive | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards (Extra)"
		meter = "Quick March / Retreat"
		composer = ""
		instrument = "Side"
	}
}

