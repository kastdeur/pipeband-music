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
		\bar "|:" \set Score.repeatCommands = #'((volta "1"))  \grd \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 c8. [ \gre a32 ] \grg c8. [ \gre a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg f8. [ \grg a32 ] \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg c8. [ \gre a32 ] \grg c8. [ \gre a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg c8. [ \gre a32 ] \grg b8. [ \gre a32 ] \bar ":|" \break
 \bar "|." \grg f8. [ \grg a32 ] \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg c8. [ \gre a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg f8. [ \grg a32 ] \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg c8. [ \gre a32 ] \grg b8. [ \gre a32 ] \bar ".|" \break 
 \bar "|." \grg f8. [ \grg a32 ] \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 \grg c8. [ \gre a32 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \grg e8. [ \grf a16 ] \bar "|"
 A8. [ a32 ] \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] A8. [ a32 ] \bar "|"
 \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg c8. [ \gre a32 ] \grg b8. [ \gre a32 ] \bar ".|" \break 

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
	arranger = "III. VAR. II"
	}
	
}

