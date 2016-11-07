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
		\bar "|." a16 \bar "|"
 \grg a8. [ \grip a16 ] d4 \grg d4 e4 \bar "|"
 \grg e4 A4. f8 d8. [ \grg d16 ] \bar "|"
 f8. [ d16 ] b4 g2 \bar "|"
 e8. [ c16 ] d2. \bar "|"
 \thrwd d8. [ e16 ] f4 \grg f4 \grg f4 \bar "|"
 g8. [ f16 ] \grg f4 e2 \bar "|"
 \grg e8. [ f16 ] g4 \grip g4 \grip g4 \bar "|" \break

 \bar "|"
 A8. [ g16 ] f2 A8. [ \grip A16 ] \bar "|"
 \grip A4 f8. [ d16 ] A4 f8. [ d16 ] \bar "|"
 a2 \grg a8. [ \grd a16 ] \gre a8. [ c16 ] \bar "|"
 e2 g4 e8. [ c16 ] \bar "|"
 e4 d4 \grg d2 \bar "|"
 c2 d8. [ c16 ] d4 \bar "|"
 c8. [ d16 ] e2. \bar "|" \break

 \bar "|"
 \grg e8. [ \grg e8 ] f4. \grip f8. \bar "|"
 \grg f8 [ g8 ] A8. [ e16~ ] e2~ \bar "|"
 e8 [ f8. e16 ] d2 f8 \bar "|"
 e8. [ d16 ] \grg d4 c2 \bar "|"
 c8 [ A8 ] \grip A2 \grip A8. [ \grg A16 ] \bar "|"
 f8. [ d16 ] e2. \bar "|"
 \grg e8 [ A8 ] \grip A2 \grip A8. [ \grg A16 ] \bar "|" \break

 f8. [ d16 ] e2. \bar "|"
 a4 d2. \bar "|"
 e4 f2. \bar "|"
 g2 A4 \grip A4 \bar "|"
 e2. A4 \bar "|"
 g2 \gra g8. [ e16 ] f8. [ e16 ] \bar "|"
 d2. \thrwd d8. \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "La Marseillaise (for Massed Pipe Bands)"
	meter = "4/4 March"
	arranger = "Claude Joseph Rouget de L'Isle"
	}
	
}

