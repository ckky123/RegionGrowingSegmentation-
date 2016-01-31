function [Img4] = ImgF4(Img)

[m, n] = size (Img);
for I = 2:m-1;
    for J = 2:n-1;
        SumNeighbor = Img(I-1, J) + Img(I+1, J) + Img(I, J-1) + Img(I, J+1);
        Img4(I-1, J-1) = abs(SumNeighbor/4 - Img(I, J));
      
    end
end
 


