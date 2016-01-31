function [Imgp] = ImgPA(ImgOri)

Img=ImgOri;
for I = 0:1;
    [m, n] = size (Img);
    Left = Img(1:m, 1);
    Right = Img(1:m, n);
    Img = [Left Img Right];
    Img = Img';
end
 Imgp = Img;
end