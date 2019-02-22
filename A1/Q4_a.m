img1 = imread('owl','ppm')
img2 = imread ('mecca06', 'ppm')

mR1 = img1(:,:,1);
mG1 = img1(:,:,2);
mB1 = img1(:,:,3);

mR2 = img2(:,:,1);
mG2 = img2(:,:,2);
mB2 = img2(:,:,3);

figure
    imshow(mR1);
figure
    imshow(mG1);
figure
    imshow(mB1);

figure
    imshow(mR2);
figure
    imshow(mG2);
figure
    imshow(mB2);
