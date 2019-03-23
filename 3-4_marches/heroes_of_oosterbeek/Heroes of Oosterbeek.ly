\include "bagpipe.ly"
melody = {
		\set Staff.midiInstrument = #"bagpipe"
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
		\bar "|:" \grg a8. [ b16 ] \thrwd d4 \dbld d8. [ f16 ] \bar "|"
 \grg e8. [ f16 ] \thrwd d4~ d4 \bar "|"
 \grg d8. [ f16 ] \dblg g4 \hdblf f8. [ e16 ] \bar "|"
 \grg d8 [ e8 ] \gra e2 \bar "|" \break

 \grg f8. [ g16 ] \dblA A4 \hdblf f8. [ e16 ] \bar "|"
 \thrwd d8 [ \gre b8 ] \grG a4 \wbirl a4 \bar "|"
 \thrwd d8. [ e16 ] \grg f4~ f8 [ g8 ] \bar "|"
 \grA e8. [ f16 ] \thrwd d2 \bar ":|:" \break

 \grg f8. [ g16 ] \dblA A4 \hdblf f8. [ e16 ] \bar "|"
 \thrwd d8 [ e8 ] \gra e4 %{^te%} e4 \bar "|"
 \grg e8. [ f16 ] \dblg g4 \grf g8. [ e16 ] \bar "|"
 A8. [ g16 ] \grA f2 \bar "|" \break

 \set Score.repeatCommands = #'((volta "1"))  \grg f8. [ g16 ] \dblA A4 \hdblf f8. [ e16 ] \bar "|"
 \grg d8 [ \gre b8 ] \grG a4 \wbirl a4 \bar "|"
 \thrwd d8. [ e16 ] \grg f4~ f8 [ g8 ] \bar "|"
 \grA e8. [ f16 ] \thrwd d2 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break
 \set Score.repeatCommands = #'((volta "2"))  \grg f8. [ g16 ] \hdblf f4 \grg f8. [ e16 ] \bar "|"
 \grg d8 [ \gre b8 ] \grG a4 \wbirl a4 \bar "|"
 \thrwd d8. [ e16 ] \grg f4~ f8 [ g8 ] \bar "|"
 \grA e8. [ f16 ] \thrwd d2 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Heroes of Oosterbeek"
	meter = "Retreat "
	arranger = "Angus Lawrie, arr. PM F.J. de Boone"
	}
	
}

