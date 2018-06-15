function [rho,absResult] = densityH2O(T)

switch nargin
    
    case 1
        rho    = 999.85308 + 6.32693 * (10^-2)*T  - 8.523829 * (10^-3)*(T^2) + 6.943248 * (10^-5*T^3) - 3.821216 * 10^-7*(T^4);

    
end

if nargout > 1
   absResult = abs(rho);
end