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
		\bar "|:" \dblA A8 \bar "|"
 \dblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32 ] \grg c16. [ d32 ] \bar "|"
 \dble e8 [ \grg a8 ] \wbirl a8 [ \dblA A8 ] \bar "|"
 \hdblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32 ] \grg c16. [ d32 ] \bar "|"
 \dble e4 \grip e8 [ \dblA A8 ] \bar "|" \break

 \hdblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32 ] \grg c16. [ d32 ] \bar "|"
 \dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] \bar "|"
 \hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ \grA b32 \grd G16. ] \bar "|"
 d4 \dbld d8 \bar ":|:" \break

 \dblg g8 \bar "|"
 \dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] \bar "|"
 \dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] \bar "|"
 \dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] \bar "|"
 \dble e4 \gra e8 [ \dblg g8 ] \bar "|" \break

 \set Score.repeatCommands = #'((volta "1"))  \dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] \bar "|"
 \dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] \bar "|"
 \hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ \grA b32 \grd G16. ] \bar "|"
 d4 \dbld d8 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break
 \set Score.repeatCommands = #'((volta "2"))  \dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ] \bar "|"
 \dblf f8 [ e32 d16. ] \dble e8 [ f32 g16. ] \grg e16. [ f32 g16. ] d32 ] \bar "|"
 \hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ b32 \grd G16. ] \bar "|"
 d4 \dbld d8 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ".|" \break 
 \gra \bar "|." \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar "|"
 \grg f16 [ A8. f8 ] \thrwd d4. \dbld d8. [ c16 d8 ] \bar "|"
 \grg e8. [ d16 \gre G8 ] \dblb b4. \grG a4. \bar "|"
 \grg b16 [ \grd G8. \grd b8 ] \grG a4. \grip f4. \bar "|"
 \grg e8. [ f16 \grg e8 ] \thrwd d4. \dbld d4. \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Mackenzie Highlanders"
	meter = "March on the Colours / Fall In"
	arranger = ""
	}
	
}

