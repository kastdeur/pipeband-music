% 6/8 De Herdertjes lagen bij Nachte
% Lyrics
\version "2.19.2"
composerLyrics  = ""
arrangerLyrics  = ""
lyricsglobal = {}
% Music
lyricspacing = {
	g8 | 
	g8 g g g8 g g |
	g8( g g ) g4 g8 | 
	g8 g g 
	g8 g g |
	g4.~ g4

	g8 | 
	g8 g g g8 g g |
	g8( g g ) g4 g8 | 
	g8 g g 
	g8 g g |
	g4.~ g4 s8 |

	g4. g8 g g g8 g g 
	g4. g4
	g8 |
	g8 g g g8 g g |
	g4.~ g4
	g8 |
	g8 g g g g g |
	g4( g8) g4
	g8 |
	g8 g g g4 g8 |
	g4.~ g4


}
lyricsA = \lyricmode {
	\set stanza = #"1."
	De her -- der -- tjes la -- gen bij na -- chte
	Zij lag -- en bij nacht in het veld

	Zij hie -- lden zo trou -- we de wa -- chte
	Zij ha -- dden hun schaap -- jes ge -- teld


	Daar hoor -- den zij d'eng -- el -- en zi -- ngen
	Hun lie -- de -- ren vloe -- iend en klaar

	Toen d'her -- ders naar Beth -- le -- hem ging -- en,
	'tliep teg -- en het nieu -- we jaar
}
verseA = \markup \column {
	\line \bold \bold { 1. }
	\line \bold { De herdertjes lagen bij nachte }
	\line \bold { Zij lagen bij nacht in het veld }
	\line \bold { Zij hielden vol trouwe de wachte }
	\line \bold { Zij hadden hun schaapjes geteld }
	\line \bold { }
	\line \bold { Daar hoorden zij d'engelen zingen }
	\line \bold { Hun liederen vloeiend en klaar }
	\line \bold { Toen d'herders naar Bethlehem gingen }
	\line \bold { 't liep tegen het nieuwe jaar  }
}

verseB = \markup \column {
	\line \bold \bold { 2. }
	\line \bold { Maria die bloosde van weelde }
	\line \bold { Van ootmoed en lieflijke vreugd }
	\line \bold { De goede Sint Jozef hij streelde }
	\line \bold { Het Kindje der mensen geneugt }
	\line \bold { }
	\line \bold { De herders bevalen te weiden }
	\line \bold { Hun schaapkens aan d'engelenschaar }
	\line \bold { Wij kunnen van 't kribje niet scheiden }
	\line \bold { Wij wachten het nieuwe jaar }
}
