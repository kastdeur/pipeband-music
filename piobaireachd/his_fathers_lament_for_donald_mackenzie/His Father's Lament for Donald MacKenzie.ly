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
 \grg f8. [ e16 ] \grg c8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg f8. [ e16 ] \grg c8 [ e8 ] \grd b4 a4 \bar ":|" \break
 \bar "|." \grg f8. [ e16 ] \grg c8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg f8. [ e16 ] \grg c8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg f8. [ e16 ] \grg c8 [ e8 ] \grd b4 a4 \bar ".|" \break 
 \bar "|." \grg f8. [ e16 ] \grg c8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg f8. [ e16 ] \grg c8. [ f16 ] \grg e8. [ c16 ] \grg b8 [ e8 ] \bar "|"
 \grg f8. [ e16 ] \grg c8 [ e8 ] \grd b4 a4 \bar ":|:" \break

 \grd c8. [ b16 ] \grg a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
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
 e4 c8 [ e8 ] \grd b4 a4 \bar ":|:" \break

 \set Score.repeatCommands = #'((volta "1"))  \grd \set Score.repeatCommands = #'((volta #f)) \bar "|"
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
 \grg f8. [ \grg a32 ] \grg e8. [ \grf a16 ] \grg c8. [ \gre a32 ] \grg b8. [ \gre a32 ] \bar ":|:" \break

 \grg c8. [ \gre c32 ] \grg c8. [ \gre c32 ] \grg e8. [ \grf e16 ] \grg e8. [ \grf e16 ] \bar "|"
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
 f8. [ \grg f32 ] \grg e8. [ \grf e16 ] \grg c8. [ \gre c32 ] \grg b8. [ \gre b32 ] \bar ":|:" \break

 \grg a8. [ \grd c16 ] \grg a16 [ \grd c8. ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg a8. [ f16 ] \grg a16 [ f8. ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg a8. [ \grd c16 ] \grg a16 [ \grd c8. ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg a8. [ f16 ] \grg a16 [ e8. ] \grd b4 a4 \bar ":|:" \break

 \grg a8. [ f16 ] \grg a16 [ f8. ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grg a8. [ \grd c16 ] \grg a16 [ \grd c8. ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg a8. [ f16 ] \grg a16 [ f8. ] \grg e32 [ \gra e8. ] \echoa e4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  \grg a8. [ A16 ] a16 [ f8. ] \grg a8. [ e16 ] \grg a16 [ A8. ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 a8. [ f16 ] \grg a16 [ e8. ] \grd b4 a4 \bar ":|:" \break

 \grg a32 [ \grd c8. ] \grg a32 [ \grd c8. ] \grg a32 [ e8. ] \grg a32 [ e8. ] \bar "|"
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
 a32 [ f8. ] \grg a32 [ e8. ] \grg a32 [ \grd c8. ] \grg a32 [ \grd b8. ] \bar ":|:" \break

 \grd c4 \taor a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 f4 a8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c4 \taor a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 f4 a16 [ e8. ] \grd b4 a4 \bar ":|:" \break

 f4 a8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \grd c4 \taor a8. [ \grd c16 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  f4 a8. [ f16 ] \grg e32 [ \gra e8. ] \echoa e4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  A4 a8. [ f16 ] e4 a8. [ A16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 f4 \taor a16 [ e8. ] \grd b4 a4 \bar ":|:" \break

 c4 a8. [ \grd c16 ] e4 a8. [ e16 ] \bar "|"
 f4 a8. [ f16 ] e4 a8. [ e16 ] \bar "|"
 c4 a8. [ \grd c16 ] e4 a8. [ e16 ] \bar "|"
 f4 a8. [ e16 ] c4 a8. [ \grd b16 ] \bar ":|:" \break

 f4 a8. [ f16 ] e4 a8. [ e16 ] \bar "|"
 c4 a8. [ \grd c16 ] e4 a8. [ e16 ] \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  f4 a8. [ f16 ] e4 a8. [ e16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  A4 a8. [ f16 ] e4 a8. [ A16 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 f4 \taor a8. [ e16 ] c4 a8. [ \grd b16 ] \bar ":|:" \break

 ( \grd c4 ) e8 [ a8 ( \grd c8 ] ) \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 f4 a8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 ( \grd c4 ) e8 [ a8 ( \grd c8 ] ) \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 f4 a8 [ e8 ] \grd b4 a4 \bar ":|:" \break

 f4 a8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 ( \grd c4 ) e8 [ a8 ( \grd c8 ] ) \grg e32 [ \gra e8. ] \echoa e4 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  f4 a8 [ f8 ] \grg e32 [ \gra e8. ] \echoa e4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  A4 a8 [ f8 ] e4 a8 [ A8 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \set Score.repeatCommands = #'((volta "1"))  \grg \set Score.repeatCommands = #'((volta #f)) \bar "|"
 f4 e8 [ a8 e8 ] \grd b4 a4 \bar ":|:" \break

 c4 a8 [ \grd c16 ] e4 a8 [ e16 ] \bar "|"
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
	arranger = "I. GROUND"
	}
	
}

