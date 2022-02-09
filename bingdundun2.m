%%
clear
close all
% function bingdundung
ax=gca;
ax.DataAspectRatio=[1 1 1];
ax.XLim=[-5 5];
ax.YLim=[-5 5];
hold(ax,'on')


% =========================================================================
% 绘制冰糖外壳
[X,Y]=getEllipse([0,0],[1,0;0,1.3],3.17^2,200);
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
%
[X,Y]=getEllipse([1.7,2.6],[1.2,0;0,1.8],.65^2,200);
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
plot(-X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
[X,Y]=getEllipse([1.7,2.6],[1.2,0;0,1.8],.6^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
fill(-X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
%
[X,Y]=getEllipse([-3.5,-1],[1.1,.3;.3,1.1],.75^2,200);
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
[X,Y]=getEllipse([-3.5,-1],[1.1,.3;.3,1.1],.68^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
[X,Y]=getEllipse([3.5,1],[1.1,.3;.3,1.1],.75^2,200);
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
[X,Y]=getEllipse([3.5,1],[1.1,.3;.3,1.1],.68^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
%
X=[-3.8,-2,-3];
Y=[-.51+.13,1+.13,-1];
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',1.8)
plot(-X,-Y,'Color',[57,57,57]./255,'LineWidth',1.8)
X=[-3.8,-2,-3];
Y=[-.51+.03,1+.03,-1];
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
fill(-X,-Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
%
[X,Y]=getEllipse([0,-.1],[1,0;0,1.6],.9^2,200);
Y(Y<0)=Y(Y<0).*.2;Y=Y-4.2;X=X-1.2;
plot(X,Y,'Color',[57,57,57]./255,'LineWidth',2)
plot(-X,Y,'Color',[57,57,57]./255,'LineWidth',2)
rectangle('Position',[-2.1 -4.2 1.7 3],'Curvature',0.4,...
    'FaceColor',[1 1 1],'EdgeColor',[57,57,57]./255,'LineWidth',1.8)
rectangle('Position',[2.1-1.7 -4.2 1.7 3],'Curvature',0.4,...
    'FaceColor',[1 1 1],'EdgeColor',[57,57,57]./255,'LineWidth',1.8)
[X,Y]=getEllipse([0,-.1],[1,0;0,1.6],.8^2,200);
Y(Y<0)=Y(Y<0).*.2;Y=Y-4.1;X=X-1.2;
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
fill(-X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
%
[X,Y]=getEllipse([0,0],[1,0;0,1.3],3.1^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',1.8)
pause(.5)

% =========================================================================
% 耳朵
[X,Y]=getEllipse([1.7,2.6],[1.2,0;0,1.8],.5^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
fill(-X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
pause(.5)
% 胳膊
[X,Y]=getEllipse([-3.5,-1],[1.1,.3;.3,1.1],.6^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
[X,Y]=getEllipse([3.5,1],[1.1,.3;.3,1.1],.6^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
X=[-3.8,-2,-3];
Y=[-.51,1,-1];
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255)
fill(-X,-Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255)
pause(.5)
tt=linspace(-2.9,2.9,1000);
X=16.*(sin(tt)).^3;
Y=13.*cos(tt)-5.*cos(2.*tt)-2.*cos(3.*tt)-cos(4.*tt);
X=X.*.018+3.6;
Y=Y.*.018+1.1;
fill(X,Y,[180,39,45]./255,'EdgeColor',[180,39,45]./255,'LineWidth',2)
pause(.5)
% 腿
[X,Y]=getEllipse([0,-.1],[1,0;0,1.6],.7^2,200);
Y(Y<0)=Y(Y<0).*.2;Y=Y-4.1;X=X-1.2;
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
fill(-X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
rectangle('Position',[-1.95 -4.3 1.4 3],'Curvature',0.4,...
    'FaceColor',[57,57,57]./255,'EdgeColor',[57,57,57]./255)
rectangle('Position',[1.95-1.4 -4.3 1.4 3],'Curvature',0.4,...
    'FaceColor',[57,57,57]./255,'EdgeColor',[57,57,57]./255)
pause(.5)
% 身体
[X,Y]=getEllipse([0,0],[1,0;0,1.3],3^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[57,57,57]./255,'LineWidth',2.5)
pause(.5)
% 五环
cList=[132,199,114;251,184,77;89,120,177;158,48,87;98,205,247];
for i=1:5
    [X,Y]=getEllipse([0,0],[1.6,0;0,1.3],(2.05-0.05.*i)^2,200);
    Y(Y<0)=Y(Y<0).*.8;Y=Y+.5;
    fill(X,Y,[1,1,1],'EdgeColor',cList(i,:)./255,'LineWidth',2.5)
    pause(.5)
end
% 眼睛
[X,Y]=getEllipse([1.2,1.2],[1.2,-.5;-.5,1.1],.65^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
pause(.5)
fill(-X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
pause(.5)
[X,Y]=getEllipse([.95,1.3],[1,0;0,1],.35^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[1,1,1],'LineWidth',1.6)
pause(.5)
fill(-X,Y,[57,57,57]./255,'EdgeColor',[1,1,1],'LineWidth',1.6)
pause(.5)
[X,Y]=getEllipse([.95,1.3],[1,0;0,1],.1^2,200);
fill(X+.18,Y,[1,1,1],'EdgeColor',[57,57,57]./255,'LineWidth',.5)
fill(-X+.18,Y,[1,1,1],'EdgeColor',[57,57,57]./255,'LineWidth',.5)
pause(.5)
% 嘴巴
[X,Y]=getEllipse([0.05,.2],[1.2,.15;.15,.8],.69^2,200);
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
[X,Y]=getEllipse([0,.75],[1,0.2;0.2,.3],.4^2,200);
fill(X,Y,[1,1,1],'EdgeColor',[1,1,1],'LineWidth',2)
pause(.5)
[X,Y]=getEllipse([0,0],[.8,0;0,.2],.6^2,200);
fill(X,Y,[180,39,45]./255,'EdgeColor',[180,39,45]./255,'LineWidth',2)
pause(.5)
% 鼻子
[X,Y]=getEllipse([0,-.1],[1,0;0,1.6],.2^2,200);
Y(Y<0)=Y(Y<0).*.2;Y=-Y+.9;
fill(X,Y,[57,57,57]./255,'EdgeColor',[57,57,57]./255,'LineWidth',2)
pause(.5)


% =========================================================================
% 冬奥会标志及五环
% 五环
tt=linspace(0,2*pi,100);
X=cos(tt).*.14;
Y=sin(tt).*.14;
plot(X,Y-2.8,'Color',[57,57,57]./255,'LineWidth',1.2)
pause(.5)
plot(X-.3,Y-2.8,'Color',[106,201,245]./255,'LineWidth',1.2)
pause(.5)
plot(X+.3,Y-2.8,'Color',[155,79,87]./255,'LineWidth',1.2)
pause(.5)
plot(X-.15,Y-2.9,'Color',[236,197,107]./255,'LineWidth',1.2)
pause(.5)
plot(X+.15,Y-2.9,'Color',[126,159,101]./255,'LineWidth',1.2)
pause(.5)
% 文本
text(0,-2.4,'BEIJING 2022','HorizontalAlignment','center',...
    'FontSize',8,'FontName','Comic Sans MS')
pause(.5)
% 标志
fill([.1,-.12,-.08],[0,0-0.05,-0.15]-1.5,[98,118,163]./255,'EdgeColor',[98,118,163]./255)
fill([-.08,-.35,.1],[-0.1,-.2,-.1]-1.6,[98,118,163]./255,'EdgeColor',[98,118,163]./255)
fill([-.08,-.08,.1,.1],[-0.1,-0.15,-.2,-.15]-1.5,[192,15,45]./255,'EdgeColor',[192,15,45]./255)
plot([-.35,-.3,-.25,-.2,-.15,-.1,-.05,.1]+.02,...
     [0,.02,.04,.06,.04,.02,0,.02]-1.82,'Color',[120,196,219]./255,'LineWidth',1.8)
plot([-.33,.05]+.02,[0,-.08]-1.82,'Color',[190,215,84]./255,'LineWidth',1.8)
plot([.05,-.2]+.02,[-.08,-.15]-1.82,'Color',[32,162,218]./255,'LineWidth',1.8)
plot([-.2,.05]+.02,[-.15,-.2]-1.82,'Color',[99,118,151]./255,'LineWidth',1.8)


%%
% =========================================================================
    % 椭圆数据计算函数，输入协方差矩阵、中心点、半径生成椭圆数据
function [X,Y]=getEllipse(Mu,Sigma,S,pntNum)
    % (X-Mu)*inv(Sigma)*(X-Mu)=S
    invSig=inv(Sigma);

    [V,D]=eig(invSig);
    aa=sqrt(S/D(1));
    bb=sqrt(S/D(4));

    t=linspace(0,2*pi,pntNum);
    XY=V*[aa*cos(t);bb*sin(t)];
    X=(XY(1,:)+Mu(1))';
    Y=(XY(2,:)+Mu(2))';
end


