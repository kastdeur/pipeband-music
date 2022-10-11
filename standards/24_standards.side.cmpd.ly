
\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 2/4
		\drummode{
        	\repeat volta 2 { \partial 8 \pone   \autoLineBreaksOff \midstd \pone   \autoLineBreaksOn  \endtwo }
			\break
        	\repeat volta 2 { \partial 8 \pthree \autoLineBreaksOff \midstd \pthree \autoLineBreaksOn  \endtwo }
			\break
        	\repeat volta 2 { \partial 8 \pfour  \autoLineBreaksOff \midstd \pfour  \autoLineBreaksOn  \endtwo }
        	\break
      		\repeat volta 2 { \partial 8 \pnine  \autoLineBreaksOff \midstd \pnine  \autoLineBreaksOn  \endtwo }
      		\break
      		\repeat volta 2 { \partial 8 \pten   \autoLineBreaksOff \midstd \pten   \autoLineBreaksOn  \endtwo }
      		\break
      		\repeat volta 2 { \partial 8 \peight \autoLineBreaksOff \midstd \peight \autoLineBreaksOn  \endtwo }

		}% End of drums %

    }

	\header {
		title = "2/4 Standards"
		band = "Canadian Memorial Pipes and Drums"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
