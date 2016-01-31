function [ImgSD] = ImgSDF(Img)%find 8-connected neighborhood and local standard deviation

[m, n] = size (Img);
for I = 1:m-2;
    for J = 1:n-2;
        % Calculate average value
        Avg = 0;
        Sum = 0;
        for K = 0:2
            for L = 0:2
                Sum = Sum + Img(I+K, J+L);
            end
        end
        
        % Calculate Standard deviation
        Avg = Sum / 9;
        Sum = 0;
        for K = 0:2
            for L = 0:2
                Sum = Sum + (Img(I+K, J+L) - Avg)^2;
            end
        end
        ImgSD(I, J) = sqrt(Sum/8);
    end
end

end
