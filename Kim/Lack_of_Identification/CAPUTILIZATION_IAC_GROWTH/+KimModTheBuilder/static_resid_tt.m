function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 23);

T(1) = 0;
T(2) = (y(3))/((y(1))-T(1)*(y(5)));
T(3) = ((1-T(2))*(y(2)/(1-T(2)))^(1+params(8))+T(2)*(y(3)/T(2))^(1+params(8)))^(1/(1+params(8)));
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = 0;
T(8) = y(9)*y(5);
T(9) = (y(2)/((1-T(2))*T(3)))^params(8);
T(10) = (y(2)-T(4))^(-1)*(1-T(5));
T(11) = 1/(1+params(2)/400);
T(12) = (y(2)-T(6))^(-1)*(-T(7));
T(13) = (y(3)/(T(2)*T(3)))^params(8);
T(14) = 1;
T(15) = 0;
T(16) = 0;
T(17) = 1;
T(18) = 0;
T(19) = (1-params(11))*(y(9)-(y(9)))+params(11)/2*(y(9)-(y(9)))^2;
T(20) = 1-params(11)+params(11)*(y(9)-(y(9)));
T(21) = T(8)^params(1);
T(22) = params(1)*T(8)^(params(1)-1);
T(23) = (1-params(11))*(y(9)-(y(9)))+params(11)/2*(y(9)-(y(9)))^2;

end
