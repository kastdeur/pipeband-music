\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 4/4

		\drummode{
			\repeat volta 2 { \partial 8 \peleven	\midone	\ptwelve	\endone }	\break
			\repeat volta 2 { \partial 8 \pthirteen	\midtwo	\pfourteen	\endtwo }	\break
			\repeat volta 2 { \partial 8 \pfifteen	\midthree	\psixteen	\endthree }	\break
			\repeat volta 2 { \partial 8 \pseventeen	\midfour	\peighteen	\endfour }	\break
			\repeat volta 2 { \partial 8 \ptwenty	\midthree	\pnineteen	\removeWithTag #'prefix \endfive }	\break
			%\repeat volta 2 { \partial 8 \pempty	\midempty	\pempty	\endsix }	\break
			%\repeat volta 2 { \partial 8 \pempty	\midempty	\pempty	\endempty }	\break
			%\repeat volta 2 { \partial 8 \pempty	\midempty	\pempty	\endempty }	\break
		}% End of drums %
	}
	\header {
		title = "4/4 Standards (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
