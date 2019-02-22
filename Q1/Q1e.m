file = importdata('Q1e.txt');
dat = file.data;
im = imread('mecca06.pgm');
[row,col] = size(im);
Shear = zeros(3,3);
Shear(1,1) = dat(2,1);
Shear(1,2) = dat(3,1);
Shear(1,3) = dat(4,1);
Shear(2,1) = dat(5,1);
Shear(2,2) = dat(6,1);
Shear(2,3) = dat(7,1);
Shear(3,1) = dat(8,1);
Shear(3,2) = dat(9,1);
Shear(3,3) = dat(10,1);
Trans=Shear;
iTrans= inv(Trans);
co = zeros(3,1);
 for i=1: row
     for j=1: col
           co(1,1) = i;
           co(2,1) = j;
           co(3,1) = 1;
           newco = iTrans*co;
           x = newco(1,1);
           y = newco(2,1);
           xlb = floor(x);
           ylb = floor(y);
           if(xlb <= 0)
             xlb = 1;
           end
           if(xlb > row)
             xlb = row;
           end
           if(ylb <= 0)
             ylb = 1;
           end
           if(ylb > col)
             ylb = col;
           end
           xub = xlb+1;
           yub = ylb+1;
           if(xub <= 0)
              xub = 1;
           end
          if(xub > row)
             xub = row;
          end
          if(yub <= 0)
             yub = 1;
          end
          if(yub > col)
             yub = col;
          end
          exub = xub-x;
          eyub = yub-y;
          exlb = x-xlb;
          eylb = y-ylb;
          imOut(i,j) = (exub*eyub*im(xlb,ylb))+(exlb*eyub*im(xub,ylb))+(exub*eylb*im(xlb,yub))+(exlb*eylb*im(xub,yub));
      end
 end
 
figure ,imshow(imOut),title('Shear of 0.5 in x-direction');
imwrite(imOut,'mecca06_e.pgm');