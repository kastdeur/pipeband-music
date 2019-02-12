\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
        	\time 2/4
		\eighthBeaming
		\drummode { \repeat volta 2 { \partial 8 \pempty \midstd \pempty \endtwo } }% End of drums %
	}
	\header {
		title = "2/4 Standards"
		band = "Canadian Memorial Pipes and Drums"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 4/4
		\drummode{
        	\repeat volta 2 { \partial 8 \pone \midstd \pone \endone }
		\break
        	\repeat volta 2 { \partial 8 \pthree \midstd \pthree \endone }
		\break
        	\repeat volta 2 { \partial 8 \pfour \midstd \pfour \endone }
        	\break
      	\repeat volta 2 { \partial 8 \pnine \midstd \pnine \endone }
      	\break
      	\repeat volta 2 { \partial 8 \pten \midstd \pten \endone }
      	\break
      	\repeat volta 2 { \partial 8 \peight \midstd \peight \endone }

		}% End of drums %

    }

	\header {
		title = "4/4 Standards"
		band = "Canadian Memorial Pipes and Drums"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
