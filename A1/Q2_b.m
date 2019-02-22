t1 = imread('owl','pgm')
t2 = imread ('mecca06', 'pgm')

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j)+50;
        if (temp1 > 255)
            m1(i,j) = 255;
        else
            m1(i,j) = temp1;
        end        
    end
end
[r,c] = size (t2);
for i = 1:r
    for j = 1:c
        temp2 = t2(i,j)+50;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_IntensityInc50.pgm');
imwrite(m2,'mecca06_IntensityInc50.pgm');

