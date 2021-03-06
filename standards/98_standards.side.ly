\version "2.18.2"

\include "./98_standards.side.ily"

#(set-global-staff-size 18)
\score {
	\new PipeBandDrumStaff {
		\time 9/8
		\drummode {
			\repeat volta 2 { \partial 8 \pone \midone \pone \endone } \break
			\repeat volta 2 { \partial 8 \ptwo \midone \ptwo \endone } \break
			\repeat volta 2 { \partial 8 \pfour \midone \pfour \endone } \break
			\repeat volta 2 { \partial 8 \peight \midone \peight \endone } \break
			\repeat volta 2 { \partial 8 \pthree \midone \pthree \endone } \break
			\repeat volta 2 { \partial 8 \pfive \midone \pfive \endone } \break
			\repeat volta 2 { \partial 8 \psix \midone \psix \endone } \break
			\repeat volta 2 { \partial 8 \pnine \midone \pnine \endone } \break
		}% End of drums %
	}
	\header {
		title = "9/8 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
