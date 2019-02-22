img1 = imread('owl','ppm')
img2 = imread ('mecca06', 'ppm')

mR1 = img1(:,:,1);
mG1 = img1(:,:,2);
mB1 = img1(:,:,3);

mG1 = 0;

mR2 = img2(:,:,1);
mG2 = img2(:,:,2);
mB2 = img2(:,:,3);

mG2 = 0;


ImgR1(:,:,1) = mR1;
ImgR1(:,:,2) = mG1;
ImgR1(:,:,3) = mB1;


ImgR2(:,:,1) = mR2;
ImgR2(:,:,2) = mG2;
ImgR2(:,:,3) = mB2;


figure
    imshow(ImgR1);
figure
    imshow(ImgR2);
    
    
imwrite(ImgR1,'owl_RedBlue_Out.ppm');
imwrite(ImgR2,'mecca06_RedBlue_Out.ppm');