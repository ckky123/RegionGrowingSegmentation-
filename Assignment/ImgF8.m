function [Img8] = ImgF8(Img)

[m, n] = size (Img);
for I = 2:m-1;
    for J = 2:n-1;
        SumNeighbor = Img(I-1, J) + Img(I+1, J) + Img(I, J-1) + Img(I, J+1);
        SumDiagonal = Img(I-1, J-1) + Img(I-1, J+1) + Img(I+1, J-1) + Img(I+1, J+1);
        Img8(I-1, J-1) = abs((SumNeighbor + SumDiagonal)/8 - Img(I, J));
    end
end
   
