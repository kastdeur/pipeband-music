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
		\bar "|:" \grg c8. [ \gre c32 ] \grg c8. [ \gre c32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg f8. [ \grg f32 ] \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg c8. [ \gre c32 ] \grg c8. [ \gre c32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg c8. [ \gre c32 ] \grg b8. [ \gre b32 ] \bar ":|" \break
 \bar "|." \grg f8. [ \grg f32 ] \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg c8. [ \gre c32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg f8. [ \grg f32 ] \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg c8. [ \gre c32 ] \grg b8. [ \gre b32 ] \bar ".|" \break 
 \bar "|." \grg f8. [ \grg f32 ] \grg f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 \grg c8. [ \gre c32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
 A8. [ \grg A32 ] f8. [ \grg f32 ] \grg e8. [ \grf e16 ] A8. [ \grg A32 ] \bar "|"
 f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg c8. [ \gre c32 ] \grg b8. [ \gre b32 ] \bar ".|" \break 

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
	arranger = "IV. VAR. II DOUBLING"
	}
	
}

