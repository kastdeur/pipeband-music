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
		\time 3/4
		\thrwd d4 \slurd d4 \dble e4 \bar "|"
 \dblc c4. d8 \dble e4 \bar "|"
 \grg f4 \gre f4 \dblg g4 \bar "|"
 \hdblf f4. e8 \thrwd d4 \bar "|"
 \grg e4 \thrwd d4 c4 \bar "|"
 \thrwd d2. \bar "|" \break

 \dblA A4 \grip A4 \grg A4 \bar "|"
 \dblA A4. g8 \hdblf f4 \bar "|"
 \dblg g4 \grA g4 \grf g4 \bar "|"
 \grA g4. f8 \dble e4 \bar "|" \break

 \grg f4 \dblg g8 [ f8 ] \grg e8 [ d8 ] \bar "|"
 \dblf f4. g8 \dblA A4 \bar "|"
 \grip A8 [ g8 ] \hdblf f4 \dble e4 \bar "|"
 \thrwd d2. \bar ".|" \break 

			}

\score {
	\melody
	\layout {
	indent = 0.0\cm
	\context { \Score \remove "Bar_number_engraver" }
	}
	\header {
	title = "God Save The Queen"
	meter = "Air"
	arranger = "Traditional"
	}
	
}

