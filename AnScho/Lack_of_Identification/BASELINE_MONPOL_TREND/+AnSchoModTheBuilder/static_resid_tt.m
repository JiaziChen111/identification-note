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

T(1) = 1+params(2)/400;
T(2) = (1-params(5))^(1/params(4))*y(8);
T(3) = (1-params(5))^(1/params(4))*y(8);
T(4) = y(5)^(-params(4));
T(5) = 1;
T(6) = y(5)^(-params(4));
T(7) = 1;
T(8) = T(4)*T(5);
T(9) = 1/(1+params(1)/400);
T(10) = T(6)*T(7);
T(11) = 1+params(3)/100;
T(12) = (y(7));
T(13) = (y(7));
T(14) = (y(6))*(y(7)/T(1))^params(6)*(y(4)/T(2))^params(7)*(1/(T(2)/T(3)))^params(8);
T(15) = 1/params(16);
T(16) = (y(7)-T(13))*y(4)*T(10)/T(8)/y(4);
T(17) = params(15)/2*(y(7)-T(12))^2;
T(18) = T(14)^(1-params(9));
T(19) = y(6)^params(9);
T(20) = exp(params(12)/100*x(1));
T(21) = y(9)/(y(9));
T(22) = y(7)/(y(7));
T(23) = y(6)/(y(6));

end
