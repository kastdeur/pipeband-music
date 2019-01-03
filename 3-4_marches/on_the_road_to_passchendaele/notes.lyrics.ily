% 3/4 On the Road to Passchendaele
% Lyrics
\version "2.18.2"
composerLyrics  = "Gavin Stoddart / Alan Brydon"
arrangerLyrics  = ""
lyricsglobal = {}
% Music
lyricstuneAA = {
	a8. b16	c4~	c8 c8 |
	d8 f8	e4	c4 |
	a8. b16	c4~	c8 e8 |
	f8. c16	b2 |
}
lyricstuneAB = {
	a8. b16	c4~	c8 c8 |
	d8 f8  	e4	c4|
	a8. b16	c4~	c8 e8 |
	d8. b16	a2
}
lyricstuneA = { % Repeat twice for verseA
	\lyricstuneAA
	\lyricstuneAB
}

lyricstuneBA = {
	f8. g16	A4~	A8 g8 |
	f8 A8	e4	c4 |
	a8. b16	c4~ c8 e8 |
	f8 c8	b2 |
}
lyricstuneBBA = {
	f8. g16	A4~	A8 g8 |
	f8 A8		e4	c4 |
	a8. b16	c4~	c8 e8 |
	d8. b16	a2
}
lyricstuneBBB = 	{
	\lyricstuneAB
}
% Split verse because the music is repeated
verseAA = \lyricmode {
	\set stanza = #"1."
	There's a light that shines in Flan -- ders
	As a bea -- con for the brave
	From the dis -- tant past it wan -- ders
	To re -- call the lives they gave
}
verseAB = \lyricmode {
	And it tells each ge -- ne -- ra -- tion
	To be wise and ne -- ver fail
	To re -- mem -- ber those who've fal -- len
	On the road to Pa -- sschen -- daele
}
verseA = \lyricmode{
	\verseAA
	\verseAB
}

verseAblock = \markup { \column {
	\line{ \bold "1."}
	\line{There's a light that shines in Flanders}
	\line{As a beacon for the brave}
	\line{From the distant past it wanders}
	\line{To recall the lives they gave}
	\line{}
	\line{And it tells each generation}
	\line{To be wise and never fail}
	\line{To remember those who've fallen}
	\line{On the road to Passchendaele}
}}

verseChorus = \lyricmode {
	\set stanza = #"Chorus"
	On the road to Pa -- sschen -- daele
	On the road to Pa -- sschen -- daele
	Where the brave will live for -- e -- ver
	On the road to Pa -- sschen -- daele
}
verseChorusblock = \markup { \column {
	\line{ \bold "Chorus:"}
	\line {On the road to Passchendaele}
	\line {On the road to Passchendaele}
	\line {Where the brave will live forever}
	\line {On the road to Passchendaele}
}} 

% Split verse in 4 because the music is repeated with alternatives
verseBAA = \lyricmode { % lyrics on lyricstuneBA
	\set stanza = #"2."
	Come with me and I will show you
	Why all wars should ev -- er cease
}
verseBAB = \lyricmode {% lyrics on lyricstuneBBA
	Take a walk a -- mong the grave -- stones
	And your tears will cry for peace
}
verseBBA = \lyricmode {% lyrics on lyricstuneBA
	For their spi -- rits walk in Flan -- ders
	You can hear the grie -- ving wail
}
verseBBB = \lyricmode {% lyrics on lyricstuneBBB
	For the brave who laid their lives down
	On the road to Pa -- sschen -- daele
}
verseB = \lyricmode {
	\verseBAA
	\verseBAB
	\verseBBA
	\verseBBB
}
verseBblock = \markup { \column {
	\line{ \bold "2."}
	\line{Come with me and I will show you}
	\line{Why all wars should ever cease}
	\line{Take a walk among the gravestones}
	\line{And your tears will cry for peace}
	\line{}
	\line{For their spirits walk in Flanders}
	\line{You can hear the grieving wail}
	\line{For the brave who laid their lives down}
	\line{On the road to Passchendaele}
}}