% 4/4 The Crusaders March
% Side
\version "2.18.2"
\include "../../standards/24_44_standards.side.ily"
composerSide = "E.T. de Boone, 2016"
sideglobal = {
	\eighthBeaming
}
% Music

pcrusadersI = \drummode {
	\tag #'upbeat { d16. g32 } |
	d8:32(-> \triplet { g16) d g }
	d8:32(-> g8:32)(->
	\triplet { d16) g d-> } g16. g32
	d8:32(-> \triplet { g16) d g } |
}

pcrusadersII = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d4
	\flam g8. g16
	d8:32([ g8)]
	\flam d8
}

snareAA = \drummode {
	\peight
	\midone
	\pthree
	\endone
}
snareAB = \drummode {
	\tutti {
		\peight
		\removeWithTag #'tutti \midone
		\pcrusadersI
		\removeWithTag #'upbeat \removeWithTag #'endrest \endone
	}
	\flam d16 d \flam g g
}

snareBA = \drummode {
	\removeWithTag #'upbeat \pcrusadersII
	\midone
	\pthree
	\endone
}
snareBB = \drummode {
	\tutti {
		\pcrusadersII
		\removeWithTag #'tutti \midone
		\pcrusadersI
		\removeWithTag #'upbeat \endone
	}
}
