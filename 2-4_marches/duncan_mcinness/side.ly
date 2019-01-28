\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\layout {
  \context {
	\Score
	\consists "Span_bar_engraver"
  }
}

\score {
	\new PipeBandDrumStaff {
		\global
		<<
			{
				\repeat volta 2 { \part \line } \break
				\repeat volta 2 { \part \line } \break
				\repeat volta 2 { \part \line } \break
				\part \halfline \halfline \bar "||" \break
				\part \halfline \measure s4.
						<< 
						  { s8 | \quarterline \bar "|." }
						  \context PipeBandDrumStaff = "LD" \with {
							\omit TimeSignature
							\eighthBeaming
							instrumentName = "LD"
						  } {
							\once \override TextScript.extra-offset = #'(-13 . -3.5)
							<>^\markup{"LD only"}
							\snareFinalEndingLD
						  }
						>>
			}
			{
			 \snareA s8
			 \snareB s8
			 \snareC s8
			 \snareDA \snareDAB s8
			 \tutti { \removeWithTag #'tutti { \snareDA } \snareDAC s8 }
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
