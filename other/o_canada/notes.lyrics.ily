% 2/4 O Canada
% Lyrics
\version "2.18.2"
composerLyricsEn  = "R.S. Weir"
composerLyricsFr  = "A.B. Routhier"
lyricsglobal = {}
% Music
songA = {
	c4 e8. [ e16 ] |
	a4. b8 |
	c8 [ d8 ] e8 [ f8 ] |
	b4~ b4 |


	c4 d8. [ d16 ] |
	e4. f8 |
	g8 [ g8 ] f8 [ f8 ] |
	e4. b16( [ c16) ] |


	d8. [ c16 ] b8 [ c16( d16) ] |
	e8. [ d16 ] c8 [ d16( e16) ] |
	f8 [ e8 ] d8 [ c8 ] |
	b4. b16( [ c16) ] |


	d8. [ c16 ] b8 [ c16( d16) ] |
	e8. [ d16 ] c8 [ c8 ] |
	b8 [ e8 ] e16( [ d16) c16( d16) ] |
	e4~ e4 |


	c4 e8. [ e16 ] |
	a4~ a4 |
	d4 f8. [ f16 ] |
	b4~ b4 |


	e4 A8. [ A16 ] |
	f8 [ d8 ] c8 [ b8 ] |
	a4 b4 |
	c4~ c4 |


	e4 A8 [ A8 ] |
	f8 [ d8 ] c8 [ b8 ] |
	e4 e4 |
	a2
}


lyricsEnglish = \lyricmode {
	\set stanza = #"En: 1."
	O Ca -- na -- da!
	Our home and na- tive land!
	True pa -- triot love in all of us comm -- and.
	With glow -- ing hearts we __ see thee rise,
	The True North strong and free!
	From far and wide,
	O Ca -- na -- da, we stand on guard for thee.
	God keep our land glo-- rious and free!
	O Ca -- na -- da, we stand on guard for thee.
	O Ca -- na -- da, we stand on guard for thee.
}

lyricsFrench = \lyricmode {
	\set stanza = #"Fr: 1."
	Ô Ca -- na -- da!
	Ter -- re de nos aï -- eux,
	Ton front est ceint de fleur -- ons glo -- ri -- eux!
	Car_ton bras sait por -- ter_l'é -- pé -- e, __ _
	Il sait por -- ter la croix!
	Ton_his -- toire est une épo -- pé -- e __ _
	Des plus bril -- lants ex -- ploits.
	Et ta val -- eur, de foi trem -- pée,
	\repeat unfold 2 {
		Pro -- té -- ge -- ra nos foy -- ers et nos droits.
	}
}
