

function [Jx,Jy,Jz] = J_operator(N)

% ģa��ʾ�����ϣ�ģb��ʾ������
Dimentions = N+1;
adegab_vector = zeros(N,1);
bdegaa_vector = zeros(N,1);
adegaa_vector = zeros(N+1,1);
bdegab_vector = zeros(N+1,1);
%%
for Na=Dimentions-1:-1:1
    bdegaa_vector(N-Na+1) = sqrt(Na)*sqrt(N-Na+1);%Na��N��1
    adegab_vector(N-Na+1) = sqrt(Na)*sqrt(N-Na+1);%Na��N-1��0
end
%%
for ii=1:Dimentions
    adegaa_vector(ii) = N+1-ii;
    bdegab_vector(ii) = ii-1;
end
%%
bdegaa = diag(bdegaa_vector,-1);
adegab = diag(adegab_vector,+1);
adegaa = diag(adegaa_vector);
bdegab = diag(bdegab_vector);

%Jx,Jy,Jz�ı�ʾ
Jx = (1/2)*(bdegaa + adegab);
Jy = (1i/2)*(bdegaa - adegab);
Jz = (1/2)*(adegaa - bdegab);
end

