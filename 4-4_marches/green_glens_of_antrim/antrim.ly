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
		%{&D",(F,R,0,0,Times%} %{New%} %{Roman,10,400,0,0,18,0,0,0)%} %{"",(F,C,0,0,Times%} %{New%} %{Roman,10,400,0,0,18,0,0,0)%} %{"januari%} %{2019",(F,L,0,0,Times%} %{New%} \bar ":|:" \break

 a8. [ d16 ] \bar "|"
 \grg f4 \dblf f8 [ e8 ] \thrwd d4 \dbld d8 [ c8 ] \bar "|"
 \grg b4 \thrwd d8 [ b8 ] \grG a4 \grg f8. [ g16 ] \bar "|"
 A4 \grg A8. [ g16 ] \hdblf f4 \dble e8 [ d8 ] \bar "|"
 \dbld d4 \grg c8. [ d16 ] \dble e4 \grg a8. [ d16 ] \bar "|" \break

 \grg f4 \dblf f8 [ e8 ] \thrwd d4 \dbld d8 [ c8 ] \bar "|"
 \grg b4 \thrwd d8 [ b8 ] \grG a4 \grg f8. [ g16 ] \bar "|"
 A4 \grg A8. [ g16 ] \hdblf f8 [ a8~ ] a8 [ d8 ] \bar "|"
 \dblc c4 \grg d8 [ e8 ] \thrwd d4 \bar "|" \break

 A4 \grg A8. [ g16 ] \hdblf f4 g8 [ A8 ] \bar "|"
 \grf g4 \thrwd d8. [ e16 ] \dblf f4 \grg f8. [ g16 ] \bar "|"
 A4 \hdblf f8 [ e8 ] \thrwd d4 \grg c8 [ d8 ] \bar "|"
 \dblf f4 \dble e8. [ d16 ] \dble e4 \grg a8. [ d16 ] \bar "|" \break

 \grg f4 \dblf f8 [ e8 ] \thrwd d4 \dbld d8 [ c8 ] \bar "|"
 \grg b4 \thrwd d8 [ b8 ] \grG a4 \grg f8. [ g16 ] \bar "|"
 A4 \grg A8. [ g16 ] \hdblf f8 [ a8~ ] a8 [ d8 ] \bar "|"
 \dblc c4 \grg d8 [ e8 ] \thrwd d4 \bar ":|" \break

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "Green Glens of Antrim"
	meter = "March"
	arranger = "Traditional"
	}
	
}

