% 6/8 Flower of Scotland
% Lyrics
\version "2.18.2"
composerLyrics  = "Roy M.B. Williamson, the Corries"
lyricsglobal = {
	\bagpipeKey
}
% Music
lyricsA = {
	f8 |
	f8 f8 e8 d4. |
	a4.~ a4 a8 |
	d4 f8 e4.~ |
	e4 d8 d4 e8 | 

	f4.~ f4 f8 |
	g8( [  f8) g8 ] A4. |
	d4 a8 e4 e8 |
	e8( [ d8) e8 ] f4 g8 |
	f4 e8 d4. | 

	a4.~ a4 f8 |
	g8( [ f8) g8 ] A4. |
	d4.~ d4 f8 |
	g8( [ f8) e8 ] f4( e8) | 

	d4.~ d4 d8 |
	c4 e8 d4.~ |
	d4.~ d4 
}

verseA = \lyricmode {
  	\set stanza = #"1."
	O Flow- er of Scot- land,
	When will we see
	Your like a- gain,
	That fought and died for,
	Your wee bit Hill and Glen,
	And stood a- gainst him,
	Proud Ed- ward's Ar- my,
	And sent him home- ward,
	To think a- gain__
}

verseAblock = \markup { \column{
	\line{ \bold "1."}
    \line{O Flower of Scotland,}
    \line{When will we see}
    \line{Your like again,}
    \line{That fought and died for,}
    \line{Your wee bit Hill and Glen,}
    \line{And stood against him,}
    \line{Proud Edward's Army,}
    \line{And sent him homeward,}
    \line{To think again.}
}}

verseBblock = \markup {\column {
	\line{ \bold "2."}
    \line{The Hills are bare now,}
    \line{And Autumn leaves}
    \line{Lie thick and still,}
    \line{O'er land that is lost now,}
    \line{Which those so dearly held,}
    \line{That stood against him,}
    \line{Proud Edward's Army,}
    \line{And sent him homeward,}
    \line{To think again.}
}}

verseCblock = \markup {\column {
	\line{ \bold "3."}
  	\line{Those days are past now,}
  	\line{And in the past}
  	\line{They must remain,}
  	\line{But we can still rise now,}
  	\line{And be the nation again,}
  	\line{That stood against him,}
  	\line{Proud Edward's Army,}
  	\line{And sent him homeward,}
  	\line{To think again.}
}}
