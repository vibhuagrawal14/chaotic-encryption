cd ('F:\Fuzzy\standard_test_images');
A=imread('encrypt1.tiff');
K=10001;
lambda=2;
% IK=2815;
MK=IK/K;
% su=[47244551,25965682];

for k=1:2
        n=mod(su(k),6)+1;
        switch n
            case 1
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(1,i)= xl(IK+i-1);
                end
            case 2
                xc=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xc(i+1)=cos(5*acos(xc(i)));
                end
                for i=1:size(A,k)
                    x(2,i)= xc(IK+i-1);
                end
            case 3
                xg=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xg(i+1)=exp(-4.9*xg(i)*xg(i))+(-0.58);
                end
                for i=1:size(A,k)
                    x(3,i)= xg(IK+i-1);
                end
            case 4
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(4,i)= xl(IK+i-1);
                end
            case 5
                xb=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xb(i+1)=mod(2*xb(i),1);
                    if xb(i+1)==0
                        xb(i+1)=0.1*MK;
                    end
                end
                for i=1:size(A,k)
                    x(5,i)= xb(IK+i-1);
                end
            case 6
                xs=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xs(i+1)=0.9*sin(pi*xs(i));
                end
                for i=1:size(A,k)
                    x(6,i)= xs(IK+i-1);
                end
        end
                switch k
                    case 1
                        for i=1:size(A,1)
                            S(i,1,1)=x(n,i);
                        end
                    case 2
                        for i=1:size(A,1)
                            S(1,i+1,1)=x(n,i).';
                        end
                end
 end
 
 for k=1:2
        n=mod(sum(str2num(num2str(su(k)).')),6)+1;
        switch n
            case 1
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(1,i)= xl(IK+i-1);
                end
            case 2
                xc=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xc(i+1)=cos(5*acos(xc(i)));
                end
                for i=1:size(A,k)
                    x(2,i)= xc(IK+i-1);
                end
            case 3
                xg=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xg(i+1)=exp(-4.9*xg(i)*xg(i))+(-0.58);
                end
                for i=1:size(A,k)
                    x(3,i)= xg(IK+i-1);
                end
            case 4
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(4,i)= xl(IK+i-1);
                end
            case 5
                xb=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xb(i+1)=mod(2*xb(i),1);
                    if xb(i+1)==0
                        xb(i+1)=0.1*MK;
                    end
                end
                for i=1:size(A,k)
                    x(5,i)= xb(IK+i-1);
                end
            case 6
                xs=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xs(i+1)=0.9*sin(pi*xs(i));
                end
                for i=1:size(A,k)
                    x(6,i)= xs(IK+i-1);
                end
        end 
                switch k
                    case 1
                        for i=1:size(A,1)
                            S(i,1,2)=x(n,i);
                        end
                    case 2
                        for i=1:size(A,2)
                            S(1,i+1,2)=x(n,i).';
                        end
                end
 end
 
 for k=1:2
        n=mod(sum(de2bi(su(k))),6)+1;
        switch n
            case 1
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(1,i)= xl(IK+i-1);
                end
            case 2
                xc=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xc(i+1)=cos(5*acos(xc(i)));
                end
                for i=1:size(A,k)
                    x(2,i)= xc(IK+i-1);
                end
            case 3
                xg=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xg(i+1)=exp(-4.9*xg(i)*xg(i))+(-0.58);
                end
                for i=1:size(A,k)
                    x(3,i)= xg(IK+i-1);
                end
            case 4
                xl=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xl(i+1)=4*xl(i)*(1-xl(i));
                end
                for i=1:size(A,k)
                    x(4,i)= xl(IK+i-1);
                end
            case 5
                xb=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xb(i+1)=mod(2*xb(i),1);
                    if xb(i+1)==0
                        xb(i+1)=0.1*MK;
                    end
                end
                for i=1:size(A,k)
                    x(5,i)= xb(IK+i-1);
                end
            case 6
                xs=0.1*MK;
                for i=1:(IK+size(A,k)-1)
                    xs(i+1)=0.9*sin(pi*xs(i));
                end
                for i=1:size(A,k)
                    x(6,i)= xs(IK+i-1);
                end
        end
                switch k
                    case 1
                        for i=1:size(A,1)
                            S(i,1,3)=x(n,i);
                        end
                    case 2
                        for i=1:size(A,2)
                           S(1,i+1,3)=x(n,i).';
                        end
                end
 end
 
 for k=1:3
    for j=1:(size(A,1)-1)
        for i=2:(size(A,2)+1)
            S(j+1,i,k)= ((1-0.2)*(1-(lambda*S(j,i,k)*S(j,i,k))))+ (0.2*(1-(lambda*S(j,i-1,k)*S(j,i-1,k))));
        end
    end
    S1(:,:,k)=S(:,2:(size(A,2)+1),k);
 end

 S1=mod(round(S1*(10^14)),256);
 
 xh=0.1*MK; yh=0.1*MK;
for i=1:(max(size(A,1),size(A,2))+IK)
	xh(i+1)=yh(i)+1-(1.4*xh(i)*xh(i));
	yh(i+1)=0.3*xh(i);
end
for i=1:size(A,1)
	xh1(i)= xh(IK+i-1);
end
 for i=1:size(A,2)
	yh1(i)= yh(IK+i-1);
end
[temp,index1]=sort(abs(xh1));
[temp,index2]=sort(abs(yh1));

 A1=bitxor(A,uint8(S1));
 
for k=1:3
    for i=1:size(A,1)
        for j=1:size(A,2)
            decrypt1(index1(i),index2(j),k)=A1(i,j,k);
        end
    end
end
imshow(decrypt1,[]);
