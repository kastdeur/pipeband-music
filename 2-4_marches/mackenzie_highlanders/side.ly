\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

% we need a partial without \grace{} here, otherwise
% the LD part gets a new line after the \break
part = { \partial 8 s8 }

\layout {
  \context {
	\Score
	\consists "Span_bar_engraver"
  }
}

\score {
	\new PipeBandDrumStaff = "side" \with {
		\remove "System_start_delimiter_engraver"
	} {
		\global
		\sideglobal
		<<
		{
			\repeat volta 2 { \part \line } \break
			\part \line \break
			\line \bar "|."
		}
		{
			s8 | s2*5 | s4
			<<
				{ s4 | s2 | s2 }
				\context PipeBandDrumStaff = "LD" \with {
					fontSize = #-3
					\override StaffSymbol #'staff-space = #(magstep -3)
					\override StaffSymbol #'thickness = #(magstep -3)
					\omit TimeSignature

					alignAboveContext = "side"
				} {
					\startStaff
					\removeWithTag #'tutti { \snareEndLD } s8
					\stopStaff
				}
			>>
		}
		{
			\snareA s8
			\snareBA
			\snareBB s8
		}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
	\layout {}
}
