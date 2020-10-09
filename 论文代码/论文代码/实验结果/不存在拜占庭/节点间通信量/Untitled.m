%��ͬ���������µ�Leader��Ŀ�꺯��ֵ

%%�ҵ���ǰ·��
p1 = mfilename('fullpath');
i = findstr(p1,'\');
now_Path = p1(1:i(end));

Markersize = 10;
lineWidth = 1;
%%�����ļ�1��Ϣ
file1 = [now_Path,'ttt.txt'];
data = load(file1);
data1 = data(:,1);
[row,col] = size(data1);
xAris = 0:100:1000;
obj1(1:row,:) = data(:,1);
obj2(1:row,:) = data(:,2);

plot(xAris, obj1(1:60:660,1),'o-','LineWidth',1.5);
hold on;
plot(xAris, obj2(1:60:660,1),'*--','LineWidth',1.5);
axis([0 1000 0 120000])
%%����ͼƬ��ʽ
set(gcf,'Units','centimeters','Position',[6 6 14.5 12]);
set(gca,'Position',[.15 .15 .8 .75]);
set(get(gca,'XLabel'),'FontSize',16);
xlabel('\fontname{SimSun}����ʱ��/\fontname{SimSun}ms','FontSize',14);
ylabel('\fontname{SimSun}����ռ��/\fontname{SimSun}kb','FontSize',14);
h = legend('SPBFT','PBFT');
set(h,'Interpreter','latex')
grid on;set(gca,'GridLineStyle',':','GridColor','k','GridAlpha',1);
set(gca,'FontSize',12);

%%����ͼ���ļ�
saveObjImg = [now_Path,'\diff_eps.png'];
saveas(gcf,saveObjImg);
