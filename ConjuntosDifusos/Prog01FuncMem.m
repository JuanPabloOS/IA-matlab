clear all; 
close all; 
clc; 

valini=50;
valfin=150;
x=valini:1:valfin;

for i=1:size(x,2)  
    ft1(i)=fmTriangular(x(i),70,80,90); 
    ft2(i)=fmTriangular(x(i),65,65,85); 
    ft3(i)=fmTriangular(x(i),75,85,95); 
    
    fT1(i)=fmTrapezoidal(x(i),60,75,85,110); 
    fT2(i)=fmTrapezoidal(x(i),65,65,75,100); 
    fT3(i)=fmTrapezoidal(x(i),70,75,105,105); 
   
    fg1(i)=fmGaussiana(x(i),90,1); 
    fg2(i)=fmGaussiana(x(i),90,5); 
    fg3(i)=fmGaussiana(x(i),90,10); 
    
    fc1(i)=fmCampana(x(i),90,10,1); 
    fc2(i)=fmCampana(x(i),90,10,2); 
    fc3(i)=fmCampana(x(i),90,10,3); 
    
    fs1(i)=fmSigmoidal(x(i),80,0.15);
    fs2(i)=fmSigmoidal(x(i),80,0.25);
    fs3(i)=fmSigmoidal(x(i),80,0.35);
    fs4(i)=fmSigmoidal(x(i),80,0.45);
    
    fs5(i)=fmSigmoidal(x(i),90,-0.15);
    fs6(i)=fmSigmoidal(x(i),90,-0.25);
    fs7(i)=fmSigmoidal(x(i),90,-0.35);
    fs8(i)=fmSigmoidal(x(i),90,-0.45);
end

fT2=fT2*.85;
fT3=fT3*.90;

%% complementos
ft1c=1-ft1; 
fT3c=1-fT3;
fg2c=1-fg2;
fc3c=1-fc3;
fs4c=1-fs4;
fs5c=1-fs5;

%% cortes alfas
alfa=0.80; 
cAlfa_ft1=corteAlfa(ft1, alfa);
cAlfa_fT3=corteAlfa(fT3, alfa);
cAlfa_fg2=corteAlfa(fg2, alfa);
cAlfa_fc3=corteAlfa(fc3, alfa);
cAlfa_fs4=corteAlfa(fs4, alfa);
cAlfa_fs5=corteAlfa(fs5, alfa);

fUnion=max(max(max(ft1,fT3),max(fg2,fc3)),max(fs4,fs5));
fIntersec=min(min(min(ft1,fT3),min(fg2,fc3)),min(fs4,fs5));

fT3xfg2=prodCart(fT3,fg2,1); %% producto cartesiano
cofT3xfg2=prodCart(fT3,fg2,2); %% coproducto cartesiano

figure; surf(fT3xfg2); title('Producto Cartesiano   AxB');
xlabel('B'); ylabel('A'); zlabel('m(AxB)'); 

figure; surf(cofT3xfg2); title('co-Producto Cartesiano   AxB');
xlabel('B'); ylabel('A'); zlabel('m(AxB)'); 

figure;
plot(x,ft1,'b','Linewidth',3); hold on;
plot(x,ft2,'r','Linewidth',3);
plot(x,ft3,'m','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('ft1','ft2','ft3');

figure;
plot(x,fT1,'b','Linewidth',3); hold on;
plot(x,fT2,'r','Linewidth',3);
plot(x,fT3,'m','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('fT1','fT2','fT3');

figure;
plot(x,fg1,'b','Linewidth',3); hold on;
plot(x,fg2,'r','Linewidth',3);
plot(x,fg3,'m','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('fg1','fg2','fg3');

figure;
plot(x,fc1,'b','Linewidth',3); hold on;
plot(x,fc2,'r','Linewidth',3);
plot(x,fc3,'m','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('fc1','fc2','fc3');

figure;
plot(x,fs1,'b','Linewidth',3); hold on;
plot(x,fs2,'r','Linewidth',3);
plot(x,fs3,'m','Linewidth',3); 
plot(x,fs4,'g','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('fs1','fs2','fs3','fs4');

figure;
plot(x,fs5,'b','Linewidth',3); hold on;
plot(x,fs6,'r','Linewidth',3);
plot(x,fs7,'m','Linewidth',3); 
plot(x,fs8,'g','Linewidth',3); hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('fs5','fs6','fs7','fs8');

figure;


%% estamos integrando los cortes alfa a las graficas
subplot(2,3,1); plot(x,ft1,'b','Linewidth',3); hold on;
plot(x,ft1c,'b--','Linewidth',1); 
plot(x,cAlfa_ft1,'y--','Linewidth',2);hold off;
title('ft1'); grid on; axis([valini, valfin, 0, 1.1]);

subplot(2,3,2); plot(x,fT3,'r','Linewidth',3); hold on;
plot(x,fT3c,'r--','Linewidth',1); hold off;
title('fT3'); grid on; axis([valini, valfin, 0, 1.1]);

subplot(2,3,3); plot(x,fg2,'m','Linewidth',3); hold on;
plot(x,fg2c,'m--','Linewidth',1); hold off;
title('fg2'); grid on; axis([valini, valfin, 0, 1.1]);

subplot(2,3,4); plot(x,fc3,'g','Linewidth',3); hold on;
plot(x,fc3c,'g--','Linewidth',1); hold off;
title('fc3'); grid on; axis([valini, valfin, 0, 1.1]);

subplot(2,3,5); plot(x,fs4,'k','Linewidth',3); hold on;
plot(x,fs4c,'k--','Linewidth',1); hold off;
title('fs4'); grid on; axis([valini, valfin, 0, 1.1]);

subplot(2,3,6); plot(x,fs5,'c','Linewidth',3); hold on;
plot(x,fs5c,'c--','Linewidth',1); hold off;
title('fs5'); grid on; axis([valini, valfin, 0, 1.1]);



figure;
plot(x,ft1,'color',[0.59 0.2 0],'Linewidth',3); hold on; %% cafe
plot(x,fT3,'r','Linewidth',3);
plot(x,fg2,'m','Linewidth',3); 
plot(x,fc3,'g','Linewidth',3); 
plot(x,fs4,'color',[0.5 0.5 0.5],'Linewidth',3); %% gris
plot(x,fs5,'c','Linewidth',3); 
plot(x,fUnion,'k--','Linewidth',2);
plot(x,fIntersec,'b--','Linewidth',2);
hold off; grid on;
axis([valini, valfin, 0, 1.1]);
lgd1=legend('ft1','fT3','fg2','fc3','fs4','fs5','U','Intersec');




