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
		\bar "|:" \grg a16. [ b32 ] \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \dble e8 [ \grg b8 ] \grip b8 [ \grg e16 d16 ] \bar "|"
 \grg c32 [ d16. ] \grg b32 [ \grd c16. ] \grg a16. [ b32 \grg c32 \grd a16. ] \bar "|" \break

 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \dble e8 [ \grip e8 ] \grg e16. [ g32 \grA f32 e16. ] \bar "|"
 \thrwd d8 [ \grg f8 ] \thrwd d8 \bar ":|" \break
 e8 \bar "|"
 \grg a16. [ \grd a32 a16 ] \grd b16 ] \thrwd d8 [ \grg d16 e16 ] \bar "|"
 \dblg g8 [ \grA f16 e16 ] \grg f32 [ A16. f16. d32 ] \bar "|"
 \grg a16. [ \grd a32 a16 ] \grd b16 ] \thrwd d8 [ \grg d16 e16 ] \bar "|"
 \dblg g8 [ \grA f16 e16 ] \grg f32 [ A16. f16. d32 ] \bar "|" \break

 A8 [ a16 \dbla a16 ] \grg c8 [ \grd a16 \dbla a16 ] \bar "|"
 \grg d8 [ b16 \dblb b16 ] \grg e8 [ c16 \dblc c16 ] \bar "|"
 \grg d32 [ f16. ] \grg d32 [ f16. ] e16. [ g32 \grA f32 g16. ] \bar "|"
 A8 [ \grip A8 ] \grg A16. [ g32 f16. ] e32 ] \bar ":|:" \break

 \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \dble e8 [ \grg b8 ] \grip b8 [ \grg e16 d16 ] \bar "|"
 \grg c32 [ d16. ] \grg b32 [ \grd c16. ] \grg a16. [ b32 \grg c32 \grd a16. ] \bar "|" \break

 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] \bar "|"
 \dble e8 [ \grip e8 ] \grg e16. [ g32 \grA f32 e16. ] \bar "|"
 \thrwd d8 [ \grg f8 ] \set Score.repeatCommands = #'((volta "1"))  \thrwd d8 \grg a16. [ b32 ] \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \set Score.repeatCommands = #'((volta "2"))  \thrwd d4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "The Black Bear Hornpipe"
	meter = "March"
	arranger = "1936"
	}
	
}

