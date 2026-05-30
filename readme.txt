# nvim settings and info

## mapping

	| cmd \ mode  | n | i | c | v | s | o | t | l |
	+-------------+---+---+---+---+---+---+---+---+
	|  [nore]map  | o |   |   | o | o | o |   |   |
	| n[nore]map  | o |   |   |   |   |   |   |   |
	|  [nore]map! |   | o | o |   |   |   |   |   |
	| i[nore]map  |   | o |   |   |   |   |   |   |
	| c[nore]map  |   |   | o |   |   |   |   |   |
	| v[nore]map  |   |   |   | o | o |   |   |   |
	| x[nore]map  |   |   |   | o |   |   |   |   |
	| s[nore]map  |   |   |   |   | o |   |   |   |
	| o[nore]map  |   |   |   |   |   | o |   |   |
	| t[nore]map  |   |   |   |   |   |   | o |   |
	| l[nore]map  |   | o | o |   |   |   |   | o |

	no nn vn xn snor ono no ino ln cno tno

## completion

	^p from prev
	^n from next
	^x^l line
	^x^f file name
	^x^o omni

## g (omit cghijklruv)

	a~align
	t tab
	y~yazi

## leader (omit hjkl0-9)

	a hop
	b
	c hop
	d delete
	e hop
	f telescope
	g git
	i
	m
	n
	o oil
	p~paste
	q
	r resize mode
	s hop
	t tree
	u
	v ^v
	w~hop
	x
	y~yank
	z lazy
	; hop
	<>tab

## lazy

	- priority
		- 50: default
		- 100
			- lualine
			- nvim tree
		- 200
			- lspconfig

## google-10k-words

	https://github.com/first20hours/google-10000-english
	removed 1~3 chars words

## ascii

	\|0123456789abcdef
	-+----------------
	2| !"#$%&'()*+,-./
	3|0123456789:;<=>?
	4|@ABCDEFGHIJKLMNO
	5|PQRSTUVWXYZ[\]^_
	6|`abcdefghijklmno
	7|pqrstuvwxyz{|}~
	-+----------------

