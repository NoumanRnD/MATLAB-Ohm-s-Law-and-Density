function [I] = RVI(L)
%PART B
L = 15;
    R= ResistanceR(28 , L , 3) ;
    V=VoltageV(18,R);
    
    I = CurerentI(V,R)  ;
dawg = [28 30 32 34 36];
j=0;
 P=linspace(0,20);
for i= 1:length(dawg)
    
    R= ResistanceR(dawg(i) , L , 3) ;
    V=VoltageV(P,R);
   %PART C
    I = CurerentI(V,R)  ;
end
   

 
  figure
   P1 =   subplot(2,1,1);
  plot(P,V);
   set( get(P1,'XLabel'), 'String', 'Ohms Law P' );
  ylabel('Voltage V'), 
  leg = legend('Ohms Law   Voltage');
 
  
  P2 =   subplot(2,1,2);
  plot(P,I );
   set( get(P1,'XLabel'), 'String', 'Ohms Law P' );
  ylabel('Current I'), 
  leg = legend('Ohms Law   Cirrent');
end

 
function [ Re,R ] = ResistanceR( p, L, d )
%RVI Summary of this function goes here

 
A= 2*3.14*d;
switch nargin
    
    case 3
           Re = (p*L)/A;
          disp('Resistance :')
          disp(Re)
if nargout > 1
   R = abs(Re);
end

end
end
function [ vol ,V] = VoltageV( P ,R  )
%RVI Summary of this function goes here
switch nargin
    %as P = v^2/R
    case 2
           vol = sqrt(P*R);
           disp('Voltage :')
           disp(vol)
           
           
if nargout > 1
   V = abs(vol);
end

end
end
function [ cur ,I] = CurerentI( V ,R  )
%RVI Summary of this function goes here
switch nargin
    
    case 2
           cur = V/R;
            disp('Current :')
            disp(cur)
if nargout > 1
   I = abs(cur);
end

end
end



