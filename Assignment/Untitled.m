ImgOri = imread ('Lenna.png');
ImgOri = double(ImgOri) / 255;
ImgOriR = ImgOri(:,:,1);
ImgOriG = ImgOri(:,:,2);
ImgOriB = ImgOri(:,:,3);

ImgRGB = zeros(size(ImgOri), 'double');
ImgRGB(:,:,1) = ImgOriR;
ImgRGB(:,:,2) = ImgOriG;
ImgRGB(:,:,3) = ImgOriB;
imwrite (ImgRGB, 'Lena2.png');
imshow(ImgRGB);