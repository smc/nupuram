input glyph;
beginglyph;
z0=(x1+mw/3, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/3, y1 +  0.4m);
z3=(x2 + mw/3, m/3);
z4=(x3, y3 - m/4); % bottom of piller

paths[0] = z0..z1.. z2..z3---z4 ;
pen_stroke(
    nib(thicknib)(0, 2)
    nib(thinnib)(1, 3)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0=point 3 of paths[0];
z1=(x0 + mw/2, m); % Top of second arch
z2=(x1 + mw/3, y1 - m/2);
z3= (x2 - mw/3, y2 - m/2);
z4= (x3 - mw/4, y3 + m/3);
z5= (x4 + mw/2, y4 +  m/3);
z6= (x5 + mw/3, y5 - m/3);
z7= (x6 - 0.7mw, -descent);
paths[1] = z0{up}..z1..z2..z3..z4..z5..z6..{dir 150}z7;
paths[1]:= paths[1] slanted tand(8) shifted (-tand(8)*ypart(z0), 0);

pen_stroke(
    nib(thicknib)(1, 3, 5, 7)
    nib(thinnib)(0, 2, 4, 6)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;
