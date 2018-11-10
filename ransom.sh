#! /bin/sh
# This is a shell archive, meaning:
# 1. Remove everything above the #! /bin/sh line.
# 2. Save the resulting text in a file.
# 3. Execute the file with /bin/sh (not csh) to create the files:
#	ransom.ps
# This archive created: Wed Apr 29 16:26:39 1992
export PATH; PATH=/bin:$PATH
echo shar: extracting "'ransom.ps'" '(2867 characters)'
if test -f 'ransom.ps'
then
	echo shar: will not over-write existing file "'ransom.ps'"
else
sed 's/^X//' << \SHAR_EOF > 'ransom.ps'
X%!PS-Adobe
X%
X% Ransom note writer.  Version 1.00
X%
X% (C) Copyright 1992 Diomidis Spinellis.  All rights reserved.
X% You can use and copy this program as long as the notice above
X% remains intact.  Modified copies must be clearly marked as such.
X% Send comments, threats, corrections etc. to dds@doc.ic.ac.uk
X%
X
X% Put here the ransom note you want
X% Use the | symbol to generate new lines.
X/note (Addressed mail only
X) def
X
X% Left margin position
X/left 30 def
X% Right margin position
X/right 510 def
X% Line advance
X/lineskip -40 def
X
X% Print the string
X% string ransom -
X/ransom {
X	{chr ransomchar}
X	forall
X} def
X
X% Convert a character code to a string
X% int chr string
X/chr {
X	( ) dup 0 3 index put exch pop
X} def
X
X% Draw a black filled box for the bounding box of the character
X% char box -
X/box {
X	gsave
X		gsave
X			true charpath pathbbox
X		grestore
X		1 add /ury exch def
X		1 add /urx exch def
X		1 sub /lly exch def
X		1 sub /llx exch def
X		newpath
X		llx lly moveto
X		urx lly lineto
X		urx ury lineto
X		llx ury lineto
X		closepath
X		0 setgray
X		fill
X	grestore
X} def
X
X% Display a single ransom character
X% character ransomchar -
X/ransomchar {
X	dup (|) eq {
X		pop
X		crlf
X	} {
X		randfont 20 random 30 add scalefont setfont
X		dup
X		gsave
X			5 random rotate
X			3 random 1 sub 3 random 1 sub rmoveto
X			dup ( ) eq {
X				[ {show} ]
X			} {
X			[
X				{ show }
X				{ show }
X				{ true charpath stroke }
X				{ true charpath 10 random 20 div setgray fill }
X				{ dup box 1 setgray show }
X			]
X			} ifelse
X			randarray exec
X		grestore
X		stringwidth
X		pop 0 rmoveto
X		format
X	} ifelse
X} def
X
X% Return a random value 0 <= r < int
X% int random int
X/random {
X	rand
X	exch
X	mod
X} def
X
X% Return a random element from the array
X% array randarray any
X/randarray {
X	dup
X	length
X	random
X	get
X} def
X
X% Return a random font
X% - randfont font
X/randfont {
X	[
X		/Times-Roman
X		/Times-Bold
X		/Times-Italic
X		/Times-BoldItalic
X		/Helvetica
X		/Helvetica-Bold
X		/Helevetica-Oblique
X		/Helevetica-BoldOblique
X		/Times-Roman
X		/Times-Bold
X		/Times-Italic
X		/Times-BoldItalic
X		/Helvetica
X		/Helvetica-Bold
X		/Helevetica-Oblique
X		/Helevetica-BoldOblique
X		/Courier
X		/Courier-Bold
X		/Courier-Oblique
X		/Courier-BoldOblique
X	]
X	randarray
X	findfont
X} def
X
X% Do a carriage return / line feed
X% - crlf -
X/crlf {
X	currentpoint exch pop
X	left exch moveto 0 lineskip rmoveto
X} def
X
X% Move to a new line if we are at the end of it
X% - format -
X/format {
X	currentpoint
X	pop
X	right gt
X	{crlf}
X	if
X} def
X
Xclear
Xerasepage
Xinitmatrix
Xleft 700 moveto
X.5 setlinewidth
Xnote ransom showpage
SHAR_EOF
fi # end of overwriting check
#	End of shell archive
exit 0
