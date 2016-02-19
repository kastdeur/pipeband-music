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
		\bar "|:" \grg c8. [ d16 ] \grg e8 [ c8 ] \grg f8 [ A8 ] \bar "|"
 \grf g8 [ f8 ] \grg f8 [ c8 ] \grg f4 \bar "|"
 \grg d8 [ c8 ] \thrwd d8. [ c16 ] \grg b8 [ c8 ] \bar "|"
 \thrwd d8 [ f8 ] \grg e16. [ d32 ] d32 ] \grg e4 \bar "|" \break

 \grg c8. [ d16 ] \grg e8 [ c8 ] \grg f8 [ A8 ] \bar "|"
 \grf g8 [ f8 ] \grg f8 [ c8 ] \grg f4 \bar "|"
 \grg d8 [ c8 ] \thrwd d8. [ c16 ] \grg b8 [ f8 ] \bar "|"
 \grg e16 [ f16 g8 ] \dblA A4 A4 \bar ":|:" \break

 A2. \bar "|"
 \dblf f8 [ d8 ] \dblg g8 [ A8 ] \grf g8 [ A8 ] \bar "|"
 e4 \thrwd d4 \grg d8 [ c8 ] \bar "|"
 \grg b8 [ f8 ] \grg e16. [ d32 ] d32 ] \grg e4 \bar "|" \break

 A2. \bar "|"
 \dblf f8 [ d8 ] \dblg g8 [ A8 ] \grf g8 [ A8 ] \bar "|"
 e4 \thrwd d4 \grg d8 [ f8 ] \bar "|"
 \grg e16 [ f16 g8 ] \dblA A4 A4 \bar ":|" \break

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

