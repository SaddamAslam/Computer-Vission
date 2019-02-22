img1 = imread('owl','ppm')
img2 = imread ('mecca06', 'ppm')

mR1 = img1(:,:,1);
mG1 = img1(:,:,2);
mB1 = img1(:,:,3);



mR2 = img2(:,:,1);
mG2 = img2(:,:,2);
mB2 = img2(:,:,3);

Gs1 = (mR1 + mG1 + mB1)/3;

Gs2 = (mR2 + mG2 + mB2)/3;


figure
    imshow(Gs1);
figure
    imshow(Gs2);
    
    
imwrite(Gs1,'owl_Gray.ppm');
imwrite(Gs2,'mecca06_Gray.ppm');