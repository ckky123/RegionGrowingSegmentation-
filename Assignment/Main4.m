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

Img4=ImgF4(Img);% process 4-connected local mean with function 
Img41=ImgF4(Img1);% process 4-connected local mean with function 
Img42=ImgF4(Img2);% process 4-connected local mean with function 

Img4 = RegGrowSeg(ImgOri, Img4, 4, 0.005);%process region growing segmentation with fucntion
Img41 = RegGrowSeg(ImgOri1, Img41, 4, 0.005);%process region growing segmentation with fucntion
Img42 = RegGrowSeg(ImgOri2, Img42, 4, 0.005);%process region growing segmentation with fucntion

imwrite (Img4, '2.4-Connect local Mean Lenna.png');
imwrite (Img41, '2.4-Connect local Mean Small.png');
imwrite (Img42, '2.4-Connect local Mean Peppers.png');

figure;imshow(Img4);
figure;imshow(Img41);
figure;imshow(Img42);
