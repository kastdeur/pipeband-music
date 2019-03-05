\version "2.18.2"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 4/4

		\drummode{
			\partial 8
				\pseven
				\bar "||"
				\midtwo
				\bar "||"
				\peight
				\bar "||"
				\endone
				\bar "||"
			\break

			\partial 8
				\pnine
				\bar "||"
				\midthree
				\bar "||"
				\pten
				\bar "||"
				\endthree
				\bar "||"
			\break

			\partial 8
				\peleven
				\bar "||"
				\midfour
				\bar "||"
				\ptwelve
				\bar "||"
				\partial 8 \time 2/4 \endfour
				\bar "||"
			\break

			\partial 8 \time 4/4
				\pthirteen
				\bar "||"
				\midfive
				\bar "||"
				\pfourteen
				\bar "||"
				\endfive


		}% End of drums %
	}
	\header {
		title = "4/4 Standards (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
