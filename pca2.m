 %% �Լ�ʵ��PCA�ķ���
[Row Col]=size(X);
covX=cov(X);                                    %��������Э�������ɢ���������(n-1)��ΪЭ�������
[V D]=eigs(covX);                               %��Э������������ֵD����������V
meanX=mean(X);                                  %������ֵm
%��������X��ȥ������ֵm���ٳ���Э�������ɢ�����󣩵���������V����Ϊ���������ɷ�SCORE
tempX= repmat(meanX,Row,1);
SCORE2=(X-tempX)*V                              %���ɷݣ�SCORE
pcaData2=SCORE2(:,1:k)