 %% 自己实现PCA的方法
[Row Col]=size(X);
covX=cov(X);                                    %求样本的协方差矩阵（散步矩阵除以(n-1)即为协方差矩阵）
[V D]=eigs(covX);                               %求协方差矩阵的特征值D和特征向量V
meanX=mean(X);                                  %样本均值m
%所有样本X减去样本均值m，再乘以协方差矩阵（散步矩阵）的特征向量V，即为样本的主成份SCORE
tempX= repmat(meanX,Row,1);
SCORE2=(X-tempX)*V                              %主成份：SCORE
pcaData2=SCORE2(:,1:k)