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
		\bar "|:" \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 A4 c8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 A4 c8 [ e8 ] \grd b4 a4 \bar ":|" \break
 \bar "|." A4 c8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 A4 c8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 A4 c8 [ e8 ] \grd b4 a4 \bar ".|" \break 
 \bar "|." A4 c8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 A4 c8. [ f16 ] \grg e4 c8. [ A16 ] \bar "|"
 e4 c8 [ e8 ] \grd b4 a4 \bar ".|" \break 

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
	arranger = "II. VAR. I"
	}
	
}

