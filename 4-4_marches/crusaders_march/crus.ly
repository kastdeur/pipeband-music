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
 \grg c4 \grip c4 \dblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \dble e4 \grip e8. [ f16 ] \dble e4 \grg f8. [ g16 ] \bar "|"
 \dblA A8. [ g16 ] \hdblf f8 [ e8 ] \dblc c8 [ e8 ] \grg a8. [ \grd c16 ] \bar "|"
 \dblc c8 [ \grg b8 ] \grip b8. [ c16 ] \dblb b4 \gre a8. [ b16 ] \bar "|" \break

 \grg c4 \grip c4 \dblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \dble e4 \grip e8. [ f16 ] \dble e4 \thrwd d8 [ f8 ] \bar "|"
 \dble e8 [ c8 ] \dbld d8 [ b8 ] \dblc c8 [ e8 ] \thrwd d8 [ b8 ] \bar "|"
 \dblb b8 [ \gre a8 ] \wbirl a8. [ b16 ] \grG a4 \grg a16 [ b16 \grip c16 d16 ] \bar ".|" \break 
 \dble e4 \gra e8. [ f16 ] \dble e8 [ d8 ] \dblc c8 [ \gre b8 ] \bar "|"
 \dblb b8 [ \gre a8 ] \wbirl a8. [ b16 ] \grG a4 \grg f8. [ g16 ] \bar "|"
 \dblA A8. [ g16 ] \hdblf f8 [ e8 ] \dblc c8 [ e8 ] \grg a8. [ \grd c16 ] \bar "|"
 \dblc c8 [ \grg b8 ] \grip b8. [ c16 ] \dblb b4 \gre a8. [ b16 ] \bar "|" \break

 \grg c4 \grip c4 \dblc c4 \gre a8. [ \grd c16 ] \bar "|"
 \dble e4 \grip e8. [ f16 ] \dble e4 \thrwd d8 [ f8 ] \bar "|"
 \dble e8 [ c8 ] \dbld d8 [ b8 ] \dblc c8 [ e8 ] \thrwd d8 [ b8 ] \bar "|"
 \dblb b8 [ \gre a8 ] \wbirl a8. [ b16 ] \grG a2 \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "March"
	meter = "The Crusaders March"
	arranger = "part 2"
	}
	
}

