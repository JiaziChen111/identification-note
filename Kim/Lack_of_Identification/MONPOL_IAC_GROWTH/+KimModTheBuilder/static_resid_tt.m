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

T(1) = (y(3))/(y(1));
T(2) = ((1-T(1))*(y(2)/(1-T(1)))^(1+params(8))+T(1)*(y(3)/T(1))^(1+params(8)))^(1/(1+params(8)));
T(3) = 0;
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = y(5);
T(8) = 1+params(10)/400;
T(9) = (y(2)/((1-T(1))*T(2)))^params(8);
T(10) = (y(2)-T(3))^(-1)*(1-T(4));
T(11) = 1/(1+params(2)/400);
T(12) = (y(2)-T(5))^(-1)*(-T(6));
T(13) = (y(3)/(T(1)*T(2)))^params(8);
T(14) = 1;
T(15) = 0;
T(16) = 0;
T(17) = 1;
T(18) = 0;
T(19) = T(7)^params(1);
T(20) = params(1)*T(7)^(params(1)-1);
T(21) = (y(9))*(y(10)/T(8))^params(11)*(y(1)/(y(1)))^params(12);
T(22) = T(21)^(1-params(13));
T(23) = y(9)^params(13);

end
