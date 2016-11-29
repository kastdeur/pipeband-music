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
		\bar "|:" \grg a32 [ \grd c8. ] \grg a32 [ \grd c8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
 \grg a32 [ f8. ] \grg a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
 \grg a32 [ \grd c8. ] \grg a32 [ \grd c8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
 \grg a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ \grd c8. ] \grg a32 [ \grd b8. ] \bar ":|:" \break

 \grg a32 [ f8. ] \grg a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
 \grg a32 [ \grd c8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg a32 [ f8. ] \grg a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  \grg a32 [ A8. ] a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ A8. ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ \grd c8. ] \grg a32 [ \grd b8. ] \bar ":|" \break

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "His Father's Lament for Donald MacKenzie"
	meter = "John Ban MacKenzie, 1863"
	arranger = "VI. VAR. III. DOUBLING"
	}
	
}

