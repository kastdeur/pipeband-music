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
		\time 4/4
		\grg a8. [ b16 ] \bar "|"
 \grip c4 \dblc c8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8 [ a8 ] \bar "|"
 A4 \grg A8. [ f16 ] \grg e4 \grg a8. [ b16 ] \bar "|"
 \grip c8 [ e8 ] \dble e8 [ c8 ] \grg f8. [ e16 ] \thrwd d8 [ c8 ] \bar "|"
 \dblb b2 \grip b4 \grg a8. [ b16 ] \bar "|" \break

 \grip c4 \dblc c8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8 [ a8 ] \bar "|"
 A4 \grg A8. [ f16 ] \grg e4 \grg a8. [ b16 ] \bar "|"
 \grip c8 [ e8 ] \dble e8 [ c8 ] \dblb b4~ \grG a8 \bar "|"
 \grg a2 \wbirl a4 \bar ".|" \break 
 \grg f8. [ g16 ] \bar "|"
 \dblA A4 A8. [ f16 ] \grg e4. \gra e8 \bar "|"
 \grg f8 [ d8 ] A8. [ f16 ] \grg e4 \grg a8. [ b16 ] \bar "|"
 \grip c8 [ e8 ] \dble e8 [ c8 ] \grg f8. [ e16 ] \thrwd d8 [ c8 ] \bar "|"
 \dblb b2 \grip b4 \grg f8. [ g16 ] \bar "|" \break

 \dblA A4 A8. [ f16 ] \grg e4. \gra e8 \bar "|"
 \grg f8 [ d8 ] A8. [ f16 ] \grg e4 \grg a8. [ b16 ] \bar "|"
 \grip c8 [ e8 ] \dble e8 [ c8 ] \dblb b4. \grG a8 \bar "|"
 \grg a2 \wbirl a4 \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "  set 12"
	meter = "March"
	arranger = ""
	}
	
}

