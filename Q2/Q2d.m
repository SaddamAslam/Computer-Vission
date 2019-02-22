clear;
clc;
file = importdata('Q2d.txt');
dat = file.data;
m = imread('mecca06.pgm');
[row,col] = size(m);
Scaling = zeros(3,3);
Scaling(1,1) = dat(2,1);
Scaling(1,2) = dat(3,1);
Scaling(1,3) = dat(4,1);
Scaling(2,1) = dat(5,1);
Scaling(2,2) = dat(6,1);
Scaling(2,3) = dat(7,1);
Scaling(3,1) = dat(8,1);
Scaling(3,2) = dat(9,1);
Scaling(3,3) = dat(10,1);
Trans=Scaling;

co = zeros(3,1);
 
m1=[1; 1; 1]; 
 
m2=Trans*m1;
 
xmax=m2(1,1);
xmin=m2(1,1);
 
ymax=m2(2,1);
ymin=m2(2,1);
 
m1=[row; 1; 1];
 
m2=Trans*m1;
 
if(xmax < m2(1,1))
    xmax=m2(1,1);
end
if(xmin > m2(1,1))
    xmin=m2(1,1);
end
 
 
if(ymax < m2(2,1))
    ymax=m2(2,1);
end
if(ymin > m2(2,1))
    ymin=m2(2,1);
end
 
 
 
m1=[1; col; 1];
m2=Trans*m1;
if(xmax < m2(1,1))
    xmax=m2(1,1);
end
if(xmin > m2(1,1))
    xmin=m2(1,1);
end
 
 
if(ymax < m2(2,1))
    ymax=m2(2,1);
end
if(ymin > m2(2,1))
    ymin=m2(2,1);
end
 
 
 
m1=[row; col; 1;];
m2=Trans*m1;
 
if(xmax < m2(1,1))
    xmax=m2(1,1);
end
if(xmin > m2(1,1))
    xmin=m2(1,1);
end
 
if(ymax < m2(2,1))
    ymax=m2(2,1);
end
if(ymin > m2(2,1))
    ymin=m2(2,1);
end
 

 dx=0;
dy=0;
 
if(xmin<dx)
    dx=(xmin*-1);
end
 
if(ymin<dy)
    dy=(ymin*-1);
end
 
trans = [    1 0 dx
             0 1 dy
             0 0 1
            ];
     
Trans = trans*Trans;
iTrans =inv(Trans);
r=xmax+abs(xmin);
c=ymax+abs(ymin);
 
 
 for i=1: r
     for j=1: c
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
          imOut(i,j) = (exub*eyub*m(xlb,ylb))+(exlb*eyub*m(xub,ylb))+(exub*eylb*m(xlb,yub))+(exlb*eylb*m(xub,yub));
      end
 end
 
figure ,imshow(imOut);
imwrite(imOut,'2mecca06_d.pgm');
