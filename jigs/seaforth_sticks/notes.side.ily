% 6/8 Seaforth Sticks
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""

Y = #(define-music-function (parser location note) (ly:music?)
	#{
		<>^"Y" $note
	#}
   )
snareA = \drummode {
	\flamd d8 g8 d8		\flamg g4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\flamg g4 g8 |
	d4.:32(->		d8) g8 g8 |

	\flamd d8 g8 d8		\flamg g4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%B
snareB = \drummode {
	g8 |
	d4.:32(->		d4.:32)(-> |
	d16) g d g d8->		g8 d8 g8 |

	\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
	d8 g8 \flamg d8		\flamg g4-^ g8 |

	d4.:32(->		d4.:32)(-> |
	d16) g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%C
snareC = \drummode {
	d8:32(\< |
	d4)\! \flamd d8		g8 d8 g8-^|
	d16 g d g d8		g8 d8 g8 |

	\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
	d8 g8 \flamg d8		\flamg g4-^ d8:32(\< |

	d4)\! \flamd d8		g8 d8 g8-^|
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%D
snareD = \drummode {
	g8 |
	d4.:32(->		d8) g8 g8 |
	d4.:32(->		d8) g8 g8 |

	\flamd d8\> g8 d8		\flamg g4\! g8-\v |
	d8\< g8 \flamg d8		\flamg g4\! g8 |

	d4.:32(->		d8) g8 g8|
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%E
snareE = \drummode {
	r8 |
	\flamd d8 g8 d8		\backstick d4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d4.:32(->		d8) g8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d4.:32(		d4.)
}
%F
snareF = \drummode {
	g8 |
	d4.:32(->		d4.:32)(-> |
	d8) g d		\Y g8 d g |

	\flam d8 g d		g8^"Y" d g |
	\flam d8 g d		\backstick d4 g8 |

	d4.:32(->		d4.:32)(-> |
	d8) g d		\Y g8 d g |

	\flam d8 g d		\Y g8 d g |
	d4.:32(		d4.)
}
%G
snareG = \drummode {
	d8:32( |
	d4)-^  \backstick d8		g8 d g|
	d16 g d g d8-^		g8 d8 g8 |

	\flamd d8 g8 d8		\Y d8 g d  |
	\flamd d8 g8 d8		\backstick d4 d8:32( |

	d4)-> \backstick d8		g8 d8 g8|
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g d		\Y d8 g d |
	d4.:32(		d4.)
}
%H
snareH = \drummode {
	g8 |
	\flamd d8 d16 g16 d8		\crossstick { d8 d d }|
	\flamd d8 g8 d8		\Y g8 d8 g8|

	\flamd d8 g8 d8		\backstick d4 g8 |
	\flamd d8 g8 d8		\backstick d4 g8 |

	\flamd d8 d16 g16 d8		\crossstick { d8 d d }|
	\flamd d8 g8 d8		\Y g8 d8 g8|

	\flam d8 g8 d8		\backstick d4 g8 |
	d4.:32(		d4.)
}
