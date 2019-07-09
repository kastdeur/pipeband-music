\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 4/4

		\drummode{


			\partial 8
				\peleven
				\bar "||"
				\midfour
				\bar "||"
				\ptwelve


		}% End of drums %
	}
	\header {
		title = "4/4 Standards (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
