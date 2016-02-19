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
		\bar "|:" \grg a8. [ b16 ] \grip c4 \grg e4 \bar "|"
 \grg a8. [ b16 ] \grip c2 \bar "|"
 \dblb b8 [ \gre a8 ] \grg b2 \bar "|"
 \grg c16. [ b32 \grg a16. b32 ] \grip c2 \bar "|" \break

 \grg a8. [ b16 ] \grip c4 \grg e4 \bar "|"
 \grg a8. [ b16 ] \grip c2 \bar "|"
 \dblb b8 [ \gre a8 ] \grg b4 \thrwd d4 \bar "|"
 \dblc c8. [ b16 ] \grg a2 \bar ":|:" \break

 \thrwd d8 [ e8 ] \grg f4 \dblA A4 \bar "|"
 \grf g8 [ f8 ] \grg e2 \bar "|"
 \dbld d8 [ c8 ] \grg b2 \bar "|"
 \grg c16. [ b32 \grg a16. b32 ] \grip c2 \bar "|" \break

 \thrwd d8 [ e8 ] \grg f4 \dblA A4 \bar "|"
 \grf g8 [ f8 ] \grg e2 \bar "|"
 \dbld d8 [ c8 ] \grg b4 \thrwd d4 \bar "|"
 \dblc c8. [ b16 ] \grg a2 \bar ":|" \break

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

