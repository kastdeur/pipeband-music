\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 4/4
	
		\drummode{
		\repeat volta 2 { \partial 8 \pseven \midtwo \peight \endone }
		\break
		\repeat volta 2 { \partial 8 \peight \midthree \pnine \endthree }
		\break
		\repeat volta 2 { \partial 8 \pempty \midfour \pempty \time 2/4 \endfour }
		}% End of drums %
	}
	\header {
		title = "4/4 Standards (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
