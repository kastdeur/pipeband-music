% 4/4 When the Pipers Play
% Side
\version "2.18.2"
composerSide = "T. Hachmang"
arrangerSide = "E.T. de Boone, 2019"
sideglobal = {
}
% Music
snareAAupbeat = \drummode {
	d8 g |
}
snareAA = \drummode {
	\tag #'upbeat \snareAAupbeat
	|
	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	\flam d16. g32 d16. g32
	|
	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	d4:32(
	|

	d16.) g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	\flam d16. g32 d16. g32
	|

	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d8
	d2:32(

	%%
	d16.) g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	\flam d16. g32 d16. g32
	|

	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	d4:32(
	|


	d16.) g32 d16. \flam g32
	d16. g32 \flam d16. g32
	d16. \flam g32 d16. g32
	\flam d16. g32 d16. g32
	|
}
snareAEndingI = \drummode {
	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d8
	d2:32\laissezVibrer
}
snareAEndingII = \drummode {
	\flam d16. g32 d16. \flam g32
	d16. g32 \flam d8
	\flam g8
}
