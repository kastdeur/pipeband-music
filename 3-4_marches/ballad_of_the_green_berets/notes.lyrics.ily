% 3/4 The Ballad of the Green Berets
% Lyrics
\version "2.18.2"
composerLyrics  = ""
lyricsglobal = {}
% Music
lyricsAA = {
	c8 [ c8 ] c4. a8 |
	b8 [ b8 ] a2 |
	e8 [ e8 ] e4.  e8 |
	f8 e8 e2 |

	A8 [ A8 ] A4. f8 |
	d8 [ f8 ] e2 |
	c8 [ c8 ] b4. c16 [ c16 ] |
	b8. a16 a2 |
}
lyricsAB = {
	c8 [ c8 ] c4. a8 |
	b8 [ b8 ] a2 |
	e8 [ e8 ] e4. e8 |
	\tuplet 3/2 { f8 f8 e8 } e4. e8 |

	A8 [ A8 ] A4. f8 |
	d8 [ f8 ] e4. e8 |
	c8 [ c8 ] b4. c16 [ c16 ] |
	b8. a16 a2 |
}

verseA = \lyricmode {
	\set stanza = #"1."
	Fight -- ing sol -- diers from the sky
	Fear -- less men who jump and die
	Men who mean just what they say
	The brave men of the Green Ber -- et

	Sil -- ver wings  u -- pon their chest
	These are men, the Neth -- er -- lands' best
	One hun -- dred men will test to -- day
	But on -- ly three win the Green Ber- et
}
verseAblock = \markup \column {
  	\line{ \bold "1." }
	\line{Fighting soldiers from the sky}
	\line{Fearless men who jump and die}
	\line{Men who mean just what they say}
	\line{The brave men of the Green Beret}

	\line{Silver wings upon their chest}
	\line{These are men, the Netherlands' best}
	\line{One hundred men will test today}
	\line{But only three win the Green Beret}
}
verseBblock = \markup \column {
  	\line{ \bold "2." }
	\line{Trained to live off nature's land}
	\line{Trained in combat, hand-to-hand}
	\line{Men who fight by night and day}
	\line{Courage peak from the Green Berets}

	\line{Silver wings upon their chest}
	\line{These are men, the Netherlands' best}
	\line{One hundred men will test today}
	\line{But only three win the Green Beret}
}
verseCblock = \markup \column {
  	\line{ \bold "3." }
	\line{Back at home a young wife waits}
	\line{Her Green Beret has met his fate}
	\line{He has died for those oppressed}
	\line{Leaving her his last request}

	\line{Put silver wings on my son's chest}
	\line{Make him one of the Netherlands' best}
	\line{He'll be a man they'll test one day}
	\line{Have him win the Green Beret.}
}
