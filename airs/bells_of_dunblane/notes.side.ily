% 4/4 Bells of Dunblane
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = "E.T. de Boone, 2019"
sideglobal = {}
% Music
snarePI = \drummode {
		\flam g8\! \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \backstick d
		|
}
snarePII = \drummode {
		\backstick g8\! \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam \triplet { g16\< d g } 	\flam \triplet { d16 g d \! }
		|
}
snarePIII = \drummode {
		\flam d8\! \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \triplet { d16 g d }
		\flam g8 \backstick d
		|
}
snarePIV = \drummode {
				\backstick g8\! \triplet { d16 g d }
				\flam g8 \triplet { d16 g d }
				\flam g8 \triplet { d16 g d }
				\flam g8 \backstick d
				|
}
snarePV = \drummode {
				\backstick g1
}

snareA = \drummode {
	\snarePIII \snarePII
	\snarePI \snarePII
}
snareB = \drummode {
	\snarePI \snarePII
}
snareC = \drummode {
	% concat with snarePV for ending
	\snarePI 
	\snarePII
	\snarePI 
	\snarePIV
}
