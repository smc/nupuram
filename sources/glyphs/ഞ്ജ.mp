input glyph;
beginglyph;
paths[0] :=left_arch_with_eye;
pen_stroke(
    nib(thicknib)(0, 2, 4, 6)
    nib(thinnib)(1,3, 5)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0 = point 5 of paths[0];
z1 = (x0 + m/2, y0 + m/2); % top

paths[1] = z0{up} ..z1{right} ;
pen_stroke(
    nib(thicknib)(1, 3, 5, 7,)
    nib(thinnib)(0, 2, 4,6)
    nib(thinterminalnib rotated  terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);

clearxy;
z0 = point infinity of paths[1];
z1 = (x0 + mw/5, y0 - m/4);
z2 = (x1 - mw/5, y1 - m/3);
z3 = (x2 - mw/5, y2 + m/4);
z4 = (x3 + mw/4, m);
z5 = (x4 + mw/2.4, y4 - m/3);
z6 = (x5, y5 - m/5);
paths[2] = z0  ..z1 ..   z2 .. z3   .. z4  .. z5---z6 ;

pen_stroke(
    nib(thicknib)(0,   3)
    nib(thinnib)(1,3,5)
    nib(thinterminalnib rotated  terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

clearxy;
z0 =  point 5 of paths[2]; % Second arch
z1 = (x0+ mw/3, y0 + m/3 + m/12);
z2 = (x1 + mw/3, y1 - m/3);
z3 = (x2 - mw/2, y2 - m/3);
z4 = (x3 - mw/2, y3 - m/12);
z5 = (x4 - mw/3, 0);

paths[3] = z0{dir 85}..z1 ..z2..z3..z5 ;

pen_stroke(
    nib(thicknib)(1, 4)
    nib(thinnib)(2,3,4,5,7,9,11)
    nib(thinterminalnib rotated  terminalangle 0 of paths[3])(0)
    nib(terminalnib rotated terminalangle infinity of paths[3])(infinity)
)(paths[3])(strokes[3]);

clearxy;
z0 = (xpart(point infinity of paths[3]) + mw, ypart(point infinity of paths[3]) + m/3);
z1 = (x0 + mw/3, y0 - m/4);
z2 = (x1 - mw/4, y1 - m/4);
z3 = (x2 - mw/4, y2 + m/3+ m/6 - thick*0.12);
paths[4] = point infinity of paths[3]..tension 1.5..z0..z1..z2..z3;

pen_stroke(
    nib(thicknib)(1, 4)
    nib(thinnib)(1, 2)
    nib(terminalnib rotated terminalangle 0 of paths[4])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[4])(infinity)
)(paths[4])(strokes[4]);

endglyph;
