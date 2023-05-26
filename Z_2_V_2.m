close all; clear all; clc;


%1 часть

%1.Загрузка данных
r = load('V_2.txt');
%Параметры стандартного нормального(гауссовкого распределения)
m=0;%матожидание
s=1;%дисперсия(отклонение)%Можно испльзовать и другие параметры мат ожидания
% И дисперсии
N = 5000;
z = (r - m)/s; %Нормировка

z1 = z(1:N,1);
z2 = z(1:N,2);

%2.Построение скатерограммы
figure('Name','Скатерограмма исходных данных','NumberTitle','off')
gscatter(z1,z2);
title('Скатерограмма исходных данных')

method = 'centroid';
metric = 'euclidean';
ro = linkage(r,method,metric);
%Метод средней связи 'average'
%Метод одиночной связи 'single'
%Метод полной связи 'complete'
%Центроидный момент 'centroid'
%Метод уорда 'ward'

%Евкдилово расстояние 'euclidean'
%Квадрат евклидового расстояния 'squaredeuclidean'
%Расстояние городских кварталов 'cityblock'
%Чебышева 'chebychev';
%Степенное

%Метод средней связи 'average'
ro11 = linkage(r,'average','euclidean');
ro12 = linkage(r,'average','squaredeuclidean');
ro13 = linkage(r,'average','cityblock');
ro14 = linkage(r,'average','chebychev');

%Метод одиночной связи 'single'
ro21 = linkage(r,'single','euclidean');
ro22 = linkage(r,'single','squaredeuclidean');
ro23 = linkage(r,'single','cityblock');
ro24 = linkage(r,'single','chebychev');

%Метод полной связи 'complete'
ro31 = linkage(r,'complete','euclidean');
ro32 = linkage(r,'complete','squaredeuclidean');
ro33 = linkage(r,'complete','cityblock');
ro34 = linkage(r,'complete','chebychev');

%Центроидный момент 'centroid'
ro41 = linkage(r,'centroid','euclidean');
ro42 = linkage(r,'centroid','squaredeuclidean');
ro43 = linkage(r,'centroid','cityblock');
ro44 = linkage(r,'centroid','chebychev');

%Метод уорда 'ward'
ro51 = linkage(r,'ward','euclidean');
ro52 = linkage(r,'ward','squaredeuclidean');
ro53 = linkage(r,'ward','cityblock');
ro54 = linkage(r,'ward','chebychev');

%{
%Метод средней связи 'average'
c11 = cluster(ro11,'Maxclust',15);
c12 = cluster(ro12,'Maxclust',15);
c13 = cluster(ro13,'Maxclust',15);
c14 = cluster(ro14,'Maxclust',15);

%Метод одиночной связи 'single'
c21 = cluster(ro21,'Maxclust',15);
c22 = cluster(ro22,'Maxclust',15);
c23 = cluster(ro23,'Maxclust',15);
c24 = cluster(ro24,'Maxclust',15);

%Метод полной связи 'complete'
c31 = cluster(ro31,'Maxclust',15);
c32 = cluster(ro32,'Maxclust',15);
c33 = cluster(ro33,'Maxclust',15);
c34 = cluster(ro34,'Maxclust',15);

%Центроидный момент 'centroid'
c41 = cluster(ro41,'Maxclust',15);
c42 = cluster(ro42,'Maxclust',15);
c43 = cluster(ro43,'Maxclust',15);
c44 = cluster(ro44,'Maxclust',15);

%Метод уорда 'ward'
c51 = cluster(ro51,'Maxclust',15);
c52 = cluster(ro52,'Maxclust',15);
c53 = cluster(ro53,'Maxclust',15);
c54 = cluster(ro54,'Maxclust',15);
%}

%{
%Метод средней связи 'average'
figure('Name','Скатерограмма методом средней связи, average','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],c11,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],c12,'.')
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],c13,'.')
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],c14,'.')
title('Метод Чебышева, chebychev');


%Метод одиночной связи 'single'
figure('Name','Скатерограмма методом одиночной связи , single','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],c21,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],c22,'.')
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],c23,'.')
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],c24,'.')
title('Метод Чебышева, chebychev');

%Метод полной связи 'complete'
figure('Name','Скатерограмма методом полной связи, complete','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],c31,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],c32,'.')
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],c33,'.')
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],c34,'.')
title('Метод Чебышева, chebychev');

%Центроидный момент 'centroid'
figure('Name','Скатерограмма центроидным моментом, centroid','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],c41,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],c42,'.')
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],c43,'.')
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],c44,'.')
title('Метод Чебышева, chebychev');

%Метод уорда 'ward'
figure('Name','Скатерограмма методом Уорда, ward','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],c51,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],c52,'.')
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],c53,'.')
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],c54,'.')
title('Метод Чебышева, chebychev');
%}
%Метод средней связи 'average'
figure('Name','Дендрограмма методом средней связи, average','NumberTitle','off')
subplot(2,2,1);
dendrogram(ro11);
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
dendrogram(ro12)
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
dendrogram(ro13)
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
dendrogram(ro14)
title('Метод Чебышева, chebychev');

%Метод одиночной связи 'single'
figure('Name','Дендрограмма методом одиночной связи, single','NumberTitle','off')
subplot(2,2,1);
dendrogram(ro21);
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
dendrogram(ro22)
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
dendrogram(ro23)
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
dendrogram(ro24)
title('Метод Чебышева, chebychev');

%Метод полной связи 'complete'
figure('Name','Дендрограмма методом полной связи, complete','NumberTitle','off')
subplot(2,2,1);
dendrogram(ro31);
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
dendrogram(ro32)
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
dendrogram(ro33)
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
dendrogram(ro34)
title('Метод Чебышева, chebychev');

%Центроидный момент 'centroid'
figure('Name','Дендрограмма методом Центроидным момент, centroid','NumberTitle','off')
subplot(2,2,1);
dendrogram(ro41);
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
dendrogram(ro42)
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
dendrogram(ro43)
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
dendrogram(ro44)
title('Метод Чебышева, chebychev');

%Метод уорда 'ward'
figure('Name','Дендрограмма метод Уорда, ward','NumberTitle','off')
subplot(2,2,1);
dendrogram(ro51);
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
dendrogram(ro52)
title('Квадрат евклидового расстояния, squaredeuclidean');
subplot(2,2,3);
dendrogram(ro53)
title('Расстояние городских кварталов, cityblock');
subplot(2,2,4);
dendrogram(ro54)
title('Метод Чебышева, chebychev');


T = cluster(ro11,'maxclust',15);
cutoff = median([z(15,end-1) z(15,end) ]);
figure('Name','Дендрограмма пробная, ward','NumberTitle','off')
dendrogram(ro11,'ColorThreshold',cutoff)
%Z(end-12,15) Z(end-11,15) Z(end-10,15) Z(end-9,15) Z(end-8,15) Z(end-7,15) Z(end-6,15) Z(end-5,15)  Z(end-4,15) Z(end-3,15) Z(end-2,15)] Z(end-1,15));

%{
%7 пункт* Определение выбросов

% Обнаружение выбросов 
[Dbv1,TF1] = rmoutliers(r,'median'); %Метод
Dbv2 = rmoutliers(r,'mean');
Dbv3 = rmoutliers(r,'quartiles');
Dbv4 = rmoutliers(r,'grubbs'); %Метод Гриббса
Dbv5 = rmoutliers(r,'gesd'); %обобщенного экстремального Studentized
%Выбросов не обнаружено, либо метод не может их определить
%}

%2 ЧАСТЬ
%Расчет скетерограммы методом средних значений

KN1 = kmeans(r,15,'Distance','sqeuclidean');%Мера расстояние - Евклидового
KN2 = kmeans(r,15,'Distance','cityblock');%Мера расстояния - городских кварталов
KN3 = kmeans(r,15,'Distance','cosine');%Мера расстояния - (1-cos(угла между точками))
KN4 = kmeans(r,15,'Distance','correlation');%Мера расстояния - (1-corr)


figure('Name','Скетерограмма методом средних значений','NumberTitle','off')
subplot(2,2,1);
scatter(r(:,1),r(:,2),[],KN1,'.')
title('Евкдилово расстояние, euclidean');
subplot(2,2,2);
scatter(r(:,1),r(:,2),[],KN2,'.')
title('Метод городских кварталов,cityblock');
subplot(2,2,3);
scatter(r(:,1),r(:,2),[],KN3,'.')
title('Метод косинусов,cosine');
subplot(2,2,4);
scatter(r(:,1),r(:,2),[],KN4,'.')
title('Метод корреляции,correlation');


