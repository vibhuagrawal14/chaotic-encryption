A=imread('G:\signature.png');
if size(A,3)==3
    A=rgb2gray(A);
end

xh=0.1;
yh=0.1;
lambda=2;
u=4;
xl=0.1;
k=5;
xc=0.1;
K=10001;
IK=mod(sum(sum(A)),K);
MK=IK/K;
xh1= xh*MK;
yh1= yh*MK;
xl1= xl*MK;
xc1= xc*MK;

for i=1:(max(size(A,1),size(A,2))+IK)
	xh1(i+1)=yh1(i)+1-(1.4*xh1(i)*xh1(i));
	yh1(i+1)=0.3*xh1(i);
end

for i=1:size(A,1)
	xh2(i)= xh1(IK+i-1);
end

 for i=1:size(A,2)
	yh2(i)= yh1(IK+i-1);
end

[temp,index1]=sort(abs(xh2));
[temp,index2]=sort(abs(yh2));

for i=1:size(A,1)
	for j=1:size(A,2)
		A1(i,j)=A(index1(i),index2(j));
	end
end

for i=1:(IK+size(A,1)-1)
	xc1(i+1)=cos(k*acos(xc1(i)));
end

 for i=1:(IK+size(A,2)-1)
	xl1(i+1)=u*xl1(i)*(1-xl1(i));
end

for i=1:size(A,1)
	xc2(i)= xc1(IK+i-1);
end

 for i=1:size(A,2)
	xl2(i)= xl1(IK+i-1);
end

S(:,1)=xc2;
S(1,2:(size(A,2)+1))=xl2;

for j=1:(size(A,1)-1)
	for i=2:(size(A,2)+1)
	     S(j+1,i)= ((1-0.2)*(1-(lambda*S(j,i)*S(j,i))))+ ...
             (0.2*(1-(lambda*S(j,i-1)*S(j,i-1))));
	end
end

S1(:,:)=S(:,2:(size(A,2)+1));
S2=mod(round(S1*(10^14)),256);
A2=double(A1);
A3=bitxor(A2,S2);
subplot(1,2,1), imshow(A, []);
subplot (1,2,2), imshow(A3,[]);




%open your image in matlab and then assign it to A as given at the top. Then just copy the rest of the code and run it in matlab. It will output the encrypted image.