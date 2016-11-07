% 3/4 God Save the Queen
% Lyrics (From Wikipedia)
\version "2.18.2"
composerLyrics  = ""
lyricsglobal = {}
% Music
songA = {
	 d4  d4  e4 |
	 c4. d8  e4 |
	 f4  f4  g4 |
	 f4. e8  d4 |
	 e4  d4 c4 |
	 d2. | 
	
	 A4  A4  A4 |
	 A4. g8  f4 |
	 g4  g4  g4 |
	 g4. f8  e4 | 
	
	 f4  g8([ f8)]  e8([ d8)] |
	 f4. g8  A4 |
	 A8(  g8)   f4  e4 |
	 d2.
}
lyricsA = \lyricmode {
	\set stanza = #"1."
	God save our grac- ious Queen,
	Long live our no- ble Queen,
	God save the Queen:
	Send her vic- tor- i- ous,
	Hap- py and glor- i- ous,
	Long to reign  ov- er us:
	God save the Queen.
}
verseA = \markup \column {
  \line \bold {1.}
  \line { God save our gracious Queen,}
  \line { Long live our noble Queen,}
  \line { God save the Queen:}
  \line { Send her victorious,}
  \line { Happy and glorious,}
  \line { Long to reign over us:}
  \line { God save the Queen.}
}
verseB = \markup \column {
  \line \bold {2.}
  \line { O Lord, our God, arise,}
  \line { Scatter her enemies,}
  \line { And make them fall:}
  \line { Confound their politics,}
  \line { Frustrate their knavish tricks,}
  \line { On thee our hopes we fix:}
  \line { God save us all.}
}
verseC = \markup \column {
  \line \bold {3.}
  \line { Thy choicest gifts in store,}
  \line { On her be pleased to pour;}
  \line { Long may she reign:}
  \line { May she defend our laws,}
  \line { And ever give us cause}
  \line { To sing with heart and voice}
  \line { God save the Queen.}
}
verseD = \markup \column {
  \line \bold {4.}
  \line { Not in this land alone,}
  \line { But be God's mercies known,}
  \line { From shore to shore!}
  \line { Lord make the nations see,}
  \line { That men should brothers be,}
  \line { And form one family,}
  \line { The wide world over.}
}
verseE = \markup \column {
  \line \bold {5.}
  \line { From every latent foe,}
  \line { From the assassins blow,}
  \line { God save the Queen!}
  \line { O'er her thine arm extend,}
  \line { For Britain's sake defend,}
  \line { Our mother, prince, and friend,}
  \line { God save the Queen!}
}
verseF = \markup \column {
  \line \bold {During the Jacobite Risings}
  \line { Lord grant that Marshall Wade}
  \line { May by thy mighty aid}
  \line { Victory bring.}
  \line { May he sedition hush,}
  \line { And like a torrent rush,}
  \line { Rebellious Scots to crush.}
  \line { God save the Queen!}
}
