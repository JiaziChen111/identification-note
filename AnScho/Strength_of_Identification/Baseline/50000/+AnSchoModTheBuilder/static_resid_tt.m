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

assert(length(T) >= 18);

T(1) = 1+params(2)/400;
T(2) = (1-params(5))^(1/params(4))*y(8);
T(3) = y(5)^(-params(4));
T(4) = 1;
T(5) = y(5)^(-params(4));
T(6) = 1;
T(7) = T(3)*T(4);
T(8) = 1/(1+params(1)/400);
T(9) = T(5)*T(6);
T(10) = 1+params(3)/100;
T(11) = (y(7));
T(12) = (y(7));
T(13) = (y(6))*(y(7)/T(1))^params(6)*(y(4)/T(2))^params(7);
T(14) = 1/params(15);
T(15) = (y(7)-T(11))^2;
T(16) = y(4)*T(9)/T(7)/y(4)*(y(7)-T(12));
T(17) = T(13)^(1-params(8));
T(18) = y(6)^params(8);

end
