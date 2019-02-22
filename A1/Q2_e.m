m1 = imread('owl','pgm')
m2 = imread ('mecca06', 'pgm')


m1 = m1 + 50;
m2 = m2 + 50;

figure
    imshow(m1)
figure
    imshow(m2)
    
    
imwrite(m1,'owl_IntensityInc50.pgm');
imwrite(m2,'mecca06_IntensityInc50.pgm');


m1 = imread('owl','pgm')
m2 = imread ('mecca06', 'pgm')

m1 =  log(10) * m1;
m2 = log(10) *  m2;

figure
    imshow(m1)
figure
    imshow(m2)
imwrite(m1,'owl_Log.pgm');
imwrite(m2,'mecca06_Log.pgm');
