% Initial image
ImgOri = imread ('Lenna.png');
ImgOri1 = imread ('small.jpg');
ImgOri2 = imread ('peppers.png');

ImgOri = double(ImgOri) / 255;
ImgOri1 = double(ImgOri1) / 255;
ImgOri2 = double(ImgOri2) / 255;

ImgOriR= ImgOri(:,:,1);
ImgOriG= ImgOri(:,:,2);
ImgOriB= ImgOri(:,:,3);

ImgOri1R= ImgOri1(:,:,1);
ImgOri1G= ImgOri1(:,:,2);
ImgOri1B= ImgOri1(:,:,3);

ImgOri2R= ImgOri2(:,:,1);
ImgOri2G= ImgOri2(:,:,2);
ImgOri2B= ImgOri2(:,:,3);

ImgR  = ImgPA(ImgOriR);
ImgG  = ImgPA(ImgOriG);
ImgB  = ImgPA(ImgOriB);

Img1R = ImgPA(ImgOri1R);
Img1G = ImgPA(ImgOri1G);
Img1B = ImgPA(ImgOri1B);

Img2R = ImgPA(ImgOri2R);
Img2G = ImgPA(ImgOri2G);
Img2B = ImgPA(ImgOri2B);

Img8R=ImgF8(ImgR);
Img8G=ImgF8(ImgG);
Img8B=ImgF8(ImgB);

Img81R=ImgF8(Img1R);
Img81G=ImgF8(Img1G);
Img81B=ImgF8(Img1B);

Img82R=ImgF8(Img2R);
Img82G=ImgF8(Img2G);
Img82B=ImgF8(Img2B);

Img8R = RegGrowSeg(ImgOriR, Img8R, 8, 0.005);
Img8G = RegGrowSeg(ImgOriG, Img8G, 8, 0.005);
Img8B = RegGrowSeg(ImgOriB, Img8B, 8, 0.005);

Img81R = RegGrowSeg(ImgOri1R, Img81R, 8, 0.005);
Img81G = RegGrowSeg(ImgOri1G, Img81G, 8, 0.005);
Img81B = RegGrowSeg(ImgOri1B, Img81B, 8, 0.005);

Img82R = RegGrowSeg(ImgOri2R, Img82R, 8, 0.005);
Img82G = RegGrowSeg(ImgOri2G, Img82G, 8, 0.005);
Img82B = RegGrowSeg(ImgOri2B, Img82B, 8, 0.005);


ImgRGB = zeros(size(ImgOri), 'double');
ImgRGB(:,:,1) = Img8R;
ImgRGB(:,:,2) = Img8G;
ImgRGB(:,:,3) = Img8B;

ImgRGB1 = zeros(size(ImgOri1), 'double');
ImgRGB1(:,:,1) = Img81R;
ImgRGB1(:,:,2) = Img81G;
ImgRGB1(:,:,3) = Img81B;

ImgRGB2 = zeros(size(ImgOri2), 'double');
ImgRGB2(:,:,1) = Img82R;
ImgRGB2(:,:,2) = Img82G;
ImgRGB2(:,:,3) = Img82B;

imwrite (ImgRGB, '2.8-Connect local Mean Lenna.png');
imwrite (ImgRGB1, '2.8-Connect local Mean Small.png');
imwrite (ImgRGB2, '2.8-Connect local Mean Peppers.png');

figure;imshow(ImgRGB);
figure;imshow(ImgRGB1);
figure;imshow(ImgRGB2);



