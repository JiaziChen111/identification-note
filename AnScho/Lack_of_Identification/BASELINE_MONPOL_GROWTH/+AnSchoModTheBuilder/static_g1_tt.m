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

assert(length(T) >= 31);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(22) = (y(7)/T(1))^params(6);
T(23) = y(9)^params(7);
T(24) = getPowerDeriv(y(5),(-params(4)),1);
T(25) = getPowerDeriv(T(6),(-1),1);
T(26) = (y(7)-T(11))*y(4)*(T(6)*T(5)*T(24)-T(8)*T(3)*T(24))/(T(6)*T(6))/y(4);
T(27) = getPowerDeriv(T(12),1-params(8),1);
T(28) = getPowerDeriv(y(6),params(8),1);
T(29) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(30) = (-1)/(y(8)*y(8));
T(31) = getPowerDeriv(y(9),params(7),1);

end
