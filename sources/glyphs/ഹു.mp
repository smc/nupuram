input glyph;
beginglyph;

paths[0] = pa_mouth;
clearxy;
z0=point infinity of paths[0];
z1=(x0 + 0.75mw, y0);

paths[1] := z0{dir 20}..{dir 20}z1 && ra shifted (xpart(z1) - mw/4, -thick/4);
paths[1] := paths[1] .. {dir 210}(xpart(point 2 of paths[1]), -descent);
pen_stroke(
    nib(thicknib)(0, 2, 4, 5, 6)
    nib(thinnib)(1,3)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thinnib)(2,4,6)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated (terminalangle infinity of paths[1]))(infinity)
)(paths[1])(strokes[1]);
% tail
z12 = (xpart (point 2 of paths[1]), -descent);
z13 = (x12 + 0.6mw, y12);
z14 = (xpart (point 4 of paths[1]) + thick/2, y13);
paths[2] = z12{dir 20}..z13..{dir 20}z14;
pen_stroke(
    nib(thinnib)(1)
    nib(terminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

rbearing:=rbearing - thick;

anchor("vc", point 0.5 of paths[1]);

endglyph;
