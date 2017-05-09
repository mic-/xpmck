-- Konami VRC6 (NES)

include specs.e

global constant specs_vrc6 = {
	{ 8,   8,  64},	-- Supports @
	{ 1,   1,   0},	-- Supports volume change
	{ 0,   0,   0},	-- Supports FM
	{ 0,   0,   0},	-- Supports ADSR
	{ 0,   0,   0},	-- Supports filter
	{ 0,   0,   0},	-- Supports ring modulation
	{ 0,   0,   1},	-- Supports WT
	{ 0,   0,   0},	-- Supports XPCM
	{ 0,   0,   0},	-- Supports @te
	{ 0,   0,   0},	-- Supports @ve
	{ 1,   1,   1},	
	{ 0,   0,   0},	-- Min octave
	{ 9,   9,   9},	-- Max octave
	{15,  15,   0},	-- Max volume
	{10,  10,  10},
	TYPE_VRC6
}