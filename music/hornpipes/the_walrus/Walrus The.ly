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
		\bar "|:" \grg b16 [ d16 ] \bar "|"
 \grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ d16 \grg d16 \slurc d16 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] \bar "|" \break

 \grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a8 \bar ":|:" \break

 \grg b16 [ d16 ] \bar "|"
 \grg e8 [ A8 ] e8 [ \grg d16 b16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ d16 \grg d16 \slurc d16 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] \bar "|" \break

 \set Score.repeatCommands = #'((volta "1"))  \grg e8 [ A8 ] e8 [ \grg d16 b16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ a16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a8 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break
 \set Score.repeatCommands = #'((volta "2"))  \grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|:" \break

 \grg e16 [ a16 \grg a16 \grd a16 ] \grg b16 [ a16 \grg b16 d16 ] \bar "|"
 \grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ \grd G16 \grg b16 d16 ] \bar "|"
 \dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] \bar "|" \break

 \set Score.repeatCommands = #'((volta "1"))  \grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ] \bar "|"
 g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break
 \set Score.repeatCommands = #'((volta "2"))  \grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ] \bar "|"
 g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg d16 [ \slurc d16 \grg e16 f16 ] \grA g16 [ f16 \grg e16 d16 ] \bar "|"
 \grg e8 [ \gra e8 ] \dble e8 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|:" \break

 \grg e16 [ g16 ] \bar "|"
 \dblA A8 [ e16 g16 ] A16 [ g16 \grA e16 d16 ] \bar "|"
 \grg e16 [ g16 \grA d16 e16 ] \dblA A8 [ g16 e16 ] \bar "|"
 \thrwd d8 [ \grg e16 f16 ] \grg d16 [ b16 \grg b16 \grG b16 ] \bar "|"
 \dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] \bar "|" \break

 \set Score.repeatCommands = #'((volta "1"))  e16 [ A16 \grg A16 g16 ] \grA e16 [ d16 \grg e16 g16 ] \bar "|"
 A16 [ g16 \grA e16 d16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ a16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a8 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ":|" \break
 \set Score.repeatCommands = #'((volta "2"))  \grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ] \bar "|"
 g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] \bar "|"
 \grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] \bar "|"
 \grg a8 [ \wbirl a8 ] \grg a4 \set Score.repeatCommands = #'((volta #f)) \bar "|"
 \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Converted from  BMW Dos file format to Bagpipe Reader 1.0 format using BMWFC32."
	meter = "The Walrus"
	arranger = "Hornpipe"
	}
	
}

