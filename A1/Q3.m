t1 = imread('owl','ppm')
t2 = imread ('mecca06', 'ppm')

[row,col,a] = size (t1);
for i = 1:row
    for j = 1:col
        r = t1(i,j,1);
        g = t1(i,j,2);
        b = t1(i,j,3);
        if (r > 255)
            i1(i,j,1) = 255;
        else
            i1(i,j,1) = r;
        end
        %
        if (g > 255)
            i1(i,j,2) = 255;
        else
            i1(i,j,2) = g;
        end 
        %
                
        if (b > 255)
            i1(i,j,3) = 255;
        else
            i1(i,j,3) = b;
        end 
        
        %
    end
end

[row,col,a] = size (t2);
for i = 1:row
    for j = 1:col
        r = t2(i,j,1);
        g = t2(i,j,2);
        b = t2(i,j,3);
        if (r > 255)
            i2(i,j,1) = 255;
        else
            i2(i,j,1) = r;
        end
        %
        if (g > 255)
            i2(i,j,2) = 255;
        else
            i2(i,j,2) = g;
        end 
        %
                
        if (b > 255)
            i2(i,j,3) = 255;
        else
            i2(i,j,3) = b;
        end 
        
        %
    end
end

figure
    imshow(i1)
figure
    imshow(i2)
    
imwrite(i1,'owl_Out.ppm');
imwrite(i2,'mecca06_Out.ppm');