function propertyTables   (  )
%PROPERTYTABLE  Summary of this function goes here
%   Detailed explanation goes here
 
 temp  = [5;10;15;20;25;30;35;40];
 
 
 
disp('     T(C)            rho(kg/m^3)')
for i= 1:length(temp)
  b1 = num2str(temp(i));
  s =  densityH2O(temp(i));
  
 b=  strcat (b1 ,{'               '});
  
 b2 = num2str(s);
 
 c1 = strcat(b, b2);
 disp(c1 ) ;
 
    
           
end

 
   
 
end

