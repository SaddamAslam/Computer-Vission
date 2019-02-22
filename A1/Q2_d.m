t1 = imread('owl','pgm')
t2 = imread ('mecca06', 'pgm')

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j) + 20;
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
        temp2 = t2(i,j)+ 20;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_Intensity20.pgm');
imwrite(m2,'mecca06_Intensity20.pgm');

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j) + 40;
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
        temp2 = t2(i,j)+ 40;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_Intensity40.pgm');
imwrite(m2,'mecca06_Intensity40.pgm');

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j) + 60;
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
        temp2 = t2(i,j)+ 60;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_Intensity60.pgm');
imwrite(m2,'mecca06_Intensity60.pgm');

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j) + 80;
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
        temp2 = t2(i,j)+ 80;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_Intensity80.pgm');
imwrite(m2,'mecca06_Intensity80.pgm');

[r,c] = size (t1);
for i = 1:r
    for j = 1:c
        temp1 = t1(i,j) + 100;
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
        temp2 = t2(i,j)+ 100;
        if (temp2 > 255)
            m2(i,j) = 255;
        else
            m2(i,j) = temp2;
        end
        
    end
end
imwrite(m1,'owl_Intensity100.pgm');
imwrite(m2,'mecca06_Intensity100.pgm');