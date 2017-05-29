\version "2.18.2"

\include "./34_standards.side.ily"

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pseven | \midone | \pseven | \endone } \break
			\repeat volta 2 { \peight | \midone | \peight | \endone } \break
			\repeat volta 2 { \pnine | \midone | \pnine | \endone } \break
			\repeat volta 2 { \pten | \midone | \pten | \endone } \break
			\repeat volta 2 { \peleven | \midone | \peleven | \endone } \break
			\repeat volta 2 { \ptwelve | \midone | \ptwelve | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 2"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
