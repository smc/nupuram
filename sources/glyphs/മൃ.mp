input glyph;
beginglyph;

clearxy;
z0=(0, 0);
z1=(mw - thick/2, 0);
z2= (x1, y1 + m/3);
z3= (x2, y2 + m/2);

paths[1] = z0{dir 20}..{dir 20}z1{dir 20}.. z2.. z3;

clearxy;
z0 = (mw/4, m/4);
z1 = (0, 2/3m);
z2 = (mw/2, m);
z3 = (x2 + mw/3, y1);
z4=  point 0.2 of paths[1];
paths[0] = z0..z1..z2..z3{dir -100}..{dir 200}z4;

pen_stroke(
    nib(thicknib)(0, 2)
    nib(thinnib)(1, 3)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thicknib)(0, 4)
    nib(thinnib)(2)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);

clearxy;
% ഋ sign
z0 = point 1.5 of paths[1];
z1 = (x0 - mw/2, -descent - thick);
z2 = (x1 - mw/3, -descent * .8);
z3 = (x0 - mw/4, -descent);
paths[2] = z0{dir -80}..z1..z2{dir 75}..{dir -45}z3;
pen_stroke(
    nib(thinnib)(2, 4)
    nib(thinterminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

anchor("vc", (xpart(point 2 of paths[0]),0));
anchor("bottom", point 1 of paths[1]);
anchor("right",  point 1 of paths[1]);

endglyph;
