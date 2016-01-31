
A=imread('Lenna.png');
A = double(A) / 255;
A = rgb2gray(A); 
A = padarray(A,[1 1] ,'symmetric' , 'both') %padding the boundary outside of the image
[m,n] = size(A)
%h = [0 0.25 0;0.25 -1 0.25;0 0.25 0 ]; %create 3*3 Laplacian matrix by using 4 connected neighborhood
l= [0.125 0.125 0.125 ;0.125 -1 0.125;0.125 0.125 0.125]; %create 3*3 Laplacian matrix by using 8 connected neighborhood
A=ImgF4(A); %filter with 3*3 4 connected neighborhood Laplacian matrix 
A1= ImgF8(A);
%for I = 1:m-2;
 %   for J = 1:n-2;
imwrite(A , 'new_Lenna.png');
imwrite(A1 , 'new_Lenna1.png');
figure;imshow(A)
figure;imshow(A1)



