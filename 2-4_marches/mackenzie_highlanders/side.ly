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
	\new StaffGroup <<
		\new PipeBandDrumStaff {
			\global
			\sideglobal
			<<
			{
				\repeat volta 2 { \part \line } \break
				\part \line \bar "||" \break
				\line \bar "|."
			}
			{
				\snareA s8
				\snareBA s8
				\snareBB s8
			}
			{
				s8 | s2*5 | s4 <<
				  { s4 | s2 | s2 }
				  \new PipeBandDrumStaff = "LD" \with {
					fontSize = #-3
					\override StaffSymbol #'staff-space = #(magstep -3)
					\override StaffSymbol #'thickness = #(magstep -3)
					\remove "Time_signature_engraver"
					alignAboveContext = #"main"
				  } {
					\removeWithTag #'tutti {\snareEndLD } s8
				  }
				>>
			}
			>>
		}
		>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
	\layout {}
}
