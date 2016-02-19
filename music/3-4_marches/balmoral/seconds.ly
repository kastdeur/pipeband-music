\include "bagpipe.ly"
melody = {
		\set Staff.midiInstrument = #"bagpipe"
		\hideKeySignature
		\cadenzaOn
		\once \override Score.BreakAlignment #'break-align-orders =
			#(make-vector 3 '(instrument-name
									left-edge
									ambitus
									span-bar
									breathing-sign
									clef
									key-signature
									time-signature
									staff-bar
									custos
									span-bar))
		\time 3/4
		\bar "|:" \grg c8. [ d16 ] \dble e4 \grg A4 \bar "|"
 c8. [ d16 ] \dble e2 \bar "|"
 \dbld d8 [ c8 ] \grg d2 \bar "|"
 \grg e16. [ d32 \grg c16. d32 ] \dble e2 \bar "|" \break

 \grg c8. [ d16 ] \dble e4 \grg A4 \bar "|"
 c8. [ d16 ] \dble e2 \bar "|"
 \dbld d8 [ c8 ] \grg d4 \dblf f4 \bar "|"
 \grg e8. [ d16 ] \grg c2 \bar ":|:" \break

 b8. [ c16 ] \grg d4 \dblf f4 \bar "|"
 \grg e8 [ d8 ] \grg c2 \bar "|"
 \dblf f8 [ e8 ] \grg d2 \bar "|"
 \grg e16. [ d32 \grg c16. d32 ] \dble e2 \bar "|" \break

 b8. [ c16 ] \grg d4 \dblf f4 \bar "|"
 \grg e8 [ d8 ] \grg c2 \bar "|"
 \dblf f8 [ e8 ] \grg d4 \dblf f4 \bar "|"
 \grg e8. [ d16 ] \grg c2 \bar ":|" \break

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Balmoral"
	meter = "Retreat"
	arranger = "Arr. G. Rooney/The Seaforth Highlanders of Holland"
	}
	
}

