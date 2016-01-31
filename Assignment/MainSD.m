% Initial image
ImgOri = imread ('Lenna.png');
ImgOri1 = imread ('small.jpg');
ImgOri2 = imread ('peppers.png');
ImgOri = double(ImgOri) / 255;
ImgOri1 = double(ImgOri1) / 255;
ImgOri2 = double(ImgOri2) / 255;
ImgOri = rgb2gray (ImgOri); %process to gray image
ImgOri1 = rgb2gray (ImgOri1); %process to gray image
ImgOri2 = rgb2gray (ImgOri2); %process to gray image

Img  = ImgPA(ImgOri); 
Img1 = ImgPA(ImgOri1);
Img2 = ImgPA(ImgOri2);

ImgSD = ImgSDF(Img);
ImgSD1 = ImgSDF(Img1);
ImgSD2 = ImgSDF(Img2);

ImgSD = RegGrowSeg(ImgOri, ImgSD, 8, 0.02); %process region growing segmentation with fucntion
ImgSD1 = RegGrowSeg(ImgOri1, ImgSD1, 8, 0.02);%process region growing segmentation with fucntion
ImgSD2 = RegGrowSeg(ImgOri2, ImgSD2, 8, 0.02);%process region growing segmentation with fucntion

imwrite (ImgSD, '2.8-Connect Standard deviation Lenna.png');
imwrite (ImgSD1, '2.8-Connect Standard deviation small.png');
imwrite (ImgSD2, '2.8-8-Connect Standard deviation Peppers.png');

figure;imshow(ImgSD);
figure;imshow(ImgSD1);
figure;imshow(ImgSD2);
