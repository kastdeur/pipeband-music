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
		\time 2/4
		\bar "|:" \grg a8 \bar "|"
 \grg d4 \grg d8 [ \grG e8 ] \bar "|"
 \dblc c4 \thrwd d8. [ e16 ] \bar "|"
 \dblf f8 [ b8 ] \dble e8. [ d16 ] \bar "|"
 \dblc c8 [ \gre a8 ] \dblb b8 [ c8 ] \bar "|" \break

 \grg d4 \grg d8 [ \grG e8 ] \bar "|"
 \dblc c4 \thrwd d8. [ e16 ] \bar "|"
 \dblf f8 [ g8 ] \grA e8. [ f16 ] \bar "|"
 \thrwd d4 \slurd d8 \bar ":|" \break
 A8 \bar "|"
 \grf g8 [ f8 ] \dble e8 [ d8 ] \bar "|"
 \dblc c8 [ b8 ] \grG a8 [ A8 ] \bar "|"
 \grf g8 [ f8 ] \dble e8 [ d8 ] \bar "|"
 \dblc c8 [ b8 ] \grG a8 [ A8 ] \bar "|" \break

 \grf g8 [ f8 ] \dble e8 [ d8 ] \bar "|"
 \dbld d8 [ c8 ] \grg d8. [ e16 ] \bar "|"
 \dblf f8 [ b8 ] \dble e8. [ d16 ] \bar "|"
 \dblc c8 [ \gre a8 ] \dblb b8 [ c8 ] \bar "|" \break

 \grg d4 \grg d8 [ \grG e8 ] \bar "|"
 \dblc c4 \thrwd d8. [ e16 ] \bar "|"
 \dblf f8 [ g8 ] \grA e8. [ f16 ] \bar "|"
 \thrwd d4 \slurd d8 A8 \bar ".|" \break 
 g16 [ f16 ] \grg e16 [ d16 ] \grg c16 [ b16 ] \grG a16 [ A16 ] \bar "|"
 g16 [ f16 ] \grg e16 [ d16 ] \grg c16 [ b16 ] \grG a16 [ A16 ] \bar "|"
 g16 [ f16 ] \grg e16 [ d16 ] \grg d16 [ c16 ] \grg e16. [ f32 ] \bar "|"
 \grg f16 [ b16 ] \grg e16. [ d32 ] \dblc c16 [ a16 ] \grg b16 [ c16 ] \bar "|" \break

 \thrwd d8 [ \grg d16 \grG d16 ] \dblc c8 [ \grg d16. e32 ] \bar "|"
 \grg f16 [ g16 ] \grA e16. [ f32 ] \set Score.repeatCommands = #'((volta "1"))  \thrwd d8 [ \slurd d16 A16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  \thrwd d8 [ \slurd d8 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Caller Herrin' "
	meter = "March"
	arranger = "Trad., arr. A.M. Cairns"
	}
	
}

