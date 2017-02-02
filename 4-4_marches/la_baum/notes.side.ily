% 4/4 La Baum
% Side
\version "2.18.2"
composerSide = "Dean Hall"
arrangerSide = ""
sideglobal = {}
% Music
endOne = \drummode {
  d8:32~\<\dr g:32->~
  d4->\!
  d4:32~\<
  d4:32~\!\fr
}
endTwo = \drummode {
  d4:32\<~
  d4:32~
  d4:32~
  d4:32\!~
}
endThree = \drummode {
  d8:32~\<\dr g:32->~
  d16. g32 d16. g32
  d16. g32 d16. g32
  d16. g32 d g d g
}

snareA = \drummode {
	\triplet { g16 d g } |
	\flamdr d8-> d8:32~
	g8->\fr d16 g
	\flamdr d16-> g d \flam g-> \fr
	d16 g d32 g d g
	|
	d8 \flamdr d16-> g
	d16 \flam g-> \fr d g
	d32-> \dr \> g d g d16\! g->
	d16 g \flam d \flam g
	|
	\flam d4-> \fr
	d4:32~
	d16-> g d g-> 
	d32 g d g d8->
	|
	d8:32~\p\<\dr g16 d16:32->(
	g16:32 g) d8:~->
	g16 d16:32(-> g:32 g)
	d8:32~-> g16\! d
	|

	\flam d4-> \fr
	d32 g d g d16 g
	\flam d8 d:32(\dr\>
	d4:32
	|
	d8.)\!\pp \flam  g16
	r16 g \flam d8
	\flam g4
	d4:32~\<
	|
	d8->\!\fr d8:32~
	g16-> d g \flam d->
	g16 d g \flam d->
	g16 d \flam d8->
	|
	\endOne
}
