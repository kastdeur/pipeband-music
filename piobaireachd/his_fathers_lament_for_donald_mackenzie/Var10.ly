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
		\bar "|:" c4 a8 [ \grd c16 ] e4 a8 [ e16 ] \bar "|"
 f4 a8 [ f16 ] e4 a8 [ e16 ] \bar "|"
 c4 a8 [ \grd c16 ] e4 a8 [ e16 ] \bar "|"
 f4 a8 [ e16 ] c4 a8 [ \grd b16 ] \bar ":|:" \break

 f4 a8 [ f16 ] e4 a8 [ e16 ] \bar "|"
 c4 a8 [ \grd c16 ] e4 a8 [ e16 ] \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  f4 a8 [ f16 ] e4 a8 [ e16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  A4 a8 [ f16 ] e4 a8 [ A16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 f4 e8 [ a8 e16 ] c4 a8 [ \grd b16 ] \bar ":|" \break

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
	arranger = "X. CRUNLUATH DOUBLING"
	}
	
}

