input glyph;
beginglyph;

z0= (thick/2, X);
z1=(x0, y0 - X/2);
z2=(x1, 0);
z3 = (x0, y0 - thick/2);
z4 = (x3 + Xw/1.6, y3);
z5 = (x0, y1);
z6 = (x5 + x4*0.75, y5);

paths[0] = z0{dir -90}..z1..{dir -90}z2 ;
paths[1] = z3{dir 10}..{dir 10}z4;
paths[2] = z5{dir 10}..{dir 10}z6;
pen_stroke(
    nib(thinnib)(1, 2)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thinnib)(2)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0,3)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thinnib)(2)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0,3)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[2])(strokes[2]);

endglyph;
