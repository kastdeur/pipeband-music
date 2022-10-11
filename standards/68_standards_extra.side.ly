\version "2.18.2"

\include "./68_standards.side.ily"

% Score
\score {
	\new PipeBandDrumStaff {
		\time 6/8

		\drummode {
			\repeat volta 2 { \partial 8 \pseven \midone \peight \endone}	\break
			\repeat volta 2 { \partial 8 \pnine \midtwo \pten \endtwo}	\break
			\repeat volta 2 { \partial 8 \peleven \midtwo \ptwelve \endthree}	\break
			\repeat volta 2 { \partial 8 \pthirteen \midthree \pfourteen \endfour}	\break
			\repeat volta 2 { \partial 8 \pfifteen \midone \psixteen \endfive}	\break
			\repeat volta 2 { \partial 8 \pseventeen \removeWithTag #'endroll \midfour \peighteen \endsix}	\break
		}% End of drums %
	}
	\header{
		title = "6/8 Marches (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
