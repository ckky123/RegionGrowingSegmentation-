 
function [ImgSeg] = Color(ImgOri, RegionMap, RegionIntensity, Region)
%mark the pixel which has been include in region with color(intensity)
ImgSeg = zeros(size(ImgOri));
[m,n] = size(ImgOri);
    for I = 1:m;
        for J = 1:n;
            if (RegionMap(I, J) ~= 0)
                ImgSeg(I, J) = RegionMap(I, J)/ Region;
            else
                ImgSeg(I, J) = ImgOri(I, J);
            end
        end
    end
end
