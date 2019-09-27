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

assert(length(T) >= 33);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(21) = (y(7)/T(1))^params(6);
T(22) = (y(4)/(y(4)))^params(7);
T(23) = getPowerDeriv(y(4)/(y(4)),params(7),1);
T(24) = ((y(4))-y(4))/((y(4))*(y(4)))*T(23);
T(25) = (y(6))*T(21)*T(24);
T(26) = getPowerDeriv(T(12),1-params(8),1);
T(27) = getPowerDeriv(y(5),(-params(4)),1);
T(28) = getPowerDeriv(T(6)/T(3),(-1),1);
T(29) = (y(7)-T(11))*y(4)*(T(6)*T(5)*T(27)-T(8)*T(3)*T(27))/(T(6)*T(6))/y(4);
T(30) = getPowerDeriv(y(6),params(8),1);
T(31) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(32) = (y(6))*T(31);
T(33) = (-1)/(y(8)*y(8));

end
