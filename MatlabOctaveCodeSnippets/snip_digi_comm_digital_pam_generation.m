M=8; %modulation order (cardinality of the set of symbols)
N=10000; %number of symbols to be generated
L=3; %oversampling factor
indices=floor(M*rand(1,N))+1; %random indices from [1, M]
alphabet=[-(M-1):2:M-1]; %symbols ...,-3,-1,1,3,5,7,...
m=alphabet(indices); %obtain N random symbols
m_upsampled=zeros(1,N*L); %pre-allocate space with zeros
m_upsampled(1:L:end)=m; %symbols with L-1 zeros in-between
p=ones(1,L); %shaping pulse with square waveform
s=conv(m_upsampled,p); %convolve symbols with pulse

