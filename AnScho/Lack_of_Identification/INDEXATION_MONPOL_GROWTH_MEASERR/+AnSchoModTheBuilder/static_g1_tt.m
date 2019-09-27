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

assert(length(T) >= 37);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(22) = (y(7)/T(1))^params(6);
T(23) = y(9)^params(7);
T(24) = y(7)^params(16);
T(25) = (y(7))^(1-params(16));
T(26) = getPowerDeriv(y(5),(-params(4)),1);
T(27) = getPowerDeriv(T(6)/T(3),(-1),1);
T(28) = y(4)*(T(6)*T(5)*T(26)-T(8)*T(3)*T(26))/(T(6)*T(6))/y(4);
T(29) = (y(7)-T(11))*T(28);
T(30) = getPowerDeriv(T(12),1-params(8),1);
T(31) = getPowerDeriv(y(6),params(8),1);
T(32) = getPowerDeriv(y(7),params(16),1);
T(33) = getPowerDeriv((y(7)),1-params(16),1);
T(34) = 1-(T(25)*T(32)+T(24)*T(33));
T(35) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(36) = (-1)/(y(8)*y(8));
T(37) = getPowerDeriv(y(9),params(7),1);

end
