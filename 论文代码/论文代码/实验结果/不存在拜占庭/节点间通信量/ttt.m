%read data into matirx
%http function 
fid = fopen('ttt.txt','rt'); %���ȴ��ļ������ݶ�ȡ����
C = textscan(fid, '%f %f', 'Delimiter',' ');
fclose(fid); %֮�������ɨ���C���������,�����ǰ��ո������͵���ʽ���������ǵ����ݵ�
data1 = deal(C{1});% ÿһ�����ݱ�ʾ��һ�����ʵ����ȡ�����������,�������Ƿֱ���
data2 = deal(C{2});
%data3 = deal(C{3});
x = 1:2:100;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ʵ�����

h1 = plot(x ,data2);% ��matlab�л�ͼ����ʹ��cdfplot,�������
h1.Marker = '*';
h1.Color = [0 0 1];
hold on;

h2 =plot(x, data1);
h2.Marker = 'o';
h2.Color = [1 0 0];
hold on;

%h3 =plot(x, data3);
%h3.Marker = '>';
%h.Color = [0 1 0];
hold on;
axis([0 100 0 110000]);%%%%%%%%����
xlabel('\fontname{SimSun}����ʱ��/\fontname{SimSun}ms','FontSize',14); 
ylabel('\fontname{SimSun}����ռ��/\fontname{SimSun}kb','FontSize',14);
%set(legend,'Box','off','FontSize',14);
%box off;
%xl=xlim;
%yl=ylim;
%line([xl(1),xl(2)],[yl(2),yl(2)],'color',[0 0 0]);   %���ϱ߿���������ɫ����Ϊ��ɫ

%line([xl(2),xl(2)],[yl(1),yl(2)],'color',[0 0 0]);    %���ұ߿���������ɫ����Ϊ��ɫ
%zlabel(['\fontname{����}����ֵ[m]\fontname{Euclid}this is english!\fontname{����}�������ģ� '])
legend( {'\fontname{Times New Roman}PBFT','\fontname{Times New Roman}SPBFT'},'FontSize',12);
grid on
set(gca,'GridLineStyle',':','GridColor','k', 'GridAlpha',1)
