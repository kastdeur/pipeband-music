% 4/4 Bells of Dunblane
% Side
\version "2.18.2"
composerSide = "v2.0@01-04-10"
arrangerSide = ""
sideglobal = {}
% Music
snareA = \drummode {
  \compressMMRests{
	 \override MultiMeasureRest.expand-limit = #2
		r4 |
		R1*3 |
		r4 r4 r4 d4:32(
		|
	}
	\repeat unfold 2 {
		d8.) g16->
		r16 g8-> g16
		d8-> d32 g d g
		d16-> g d d
		|
		g8-> g16 d->
		r16 g8-> g16
		\flam d4
		d4:32(
		|
	}
	d4) r4 r4 r4 |
	r4 r4 r4 \flamg \triplet { g8 \flam d \flam g }
	|
	d1:32(->\<
	|
	d1:32)(\!\>
	|
	\repeat unfold 3 {
		d8.)\! g16->
		r16 g8-> g16
		d8-> d32 g d g
		d16-> g d d
		|
		g8-> g16 d->
		r16 g8-> g16
		\flam d4
		d4:32(
		|
	}
	d8.) g16->
	r16 g8-> g16
	d8-> d32 g d g
	d16-> g d d
	|
	g8-> g16 d->
	r16 g8-> g16
	\flam d4

}
