function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 36);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(21) = (y(7)/T(1))^params(6);
T(22) = (y(4)/(y(4)))^params(7);
T(23) = getPowerDeriv(y(4)/(y(4)),params(7),1);
T(24) = ((y(4))-y(4))/((y(4))*(y(4)))*T(23);
T(25) = (y(6))*T(21)*T(24);
T(26) = getPowerDeriv(T(11),1-params(8),1);
T(27) = getPowerDeriv(y(5),(-params(4)),1);
T(28) = y(10)*T(27)/y(10);
T(29) = getPowerDeriv(T(5)/y(10),(-1),1);
T(30) = (y(7)-T(10))*y(4)*(T(5)*T(4)*T(27)-T(7)*y(10)*T(27))/(T(5)*T(5))/y(4);
T(31) = getPowerDeriv(y(6),params(8),1);
T(32) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(33) = (y(6))*T(32);
T(34) = (-1)/(y(8)*y(8));
T(35) = (y(10)*T(2)-T(5))/(y(10)*y(10));
T(36) = (y(7)-T(10))*y(4)*(T(3)*T(5)-T(2)*T(7))/(T(5)*T(5))/y(4);

end
