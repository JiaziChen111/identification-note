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

assert(length(T) >= 44);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(22) = (y(7)/T(1))^params(6);
T(23) = (y(4)/(y(4)))^params(7);
T(24) = y(7)^params(16);
T(25) = (y(7))^(1-params(16));
T(26) = getPowerDeriv(y(4)/(y(4)),params(7),1);
T(27) = ((y(4))-y(4))/((y(4))*(y(4)))*T(26);
T(28) = (y(6))*T(22)*T(27);
T(29) = getPowerDeriv(T(11),1-params(8),1);
T(30) = getPowerDeriv(y(5),(-params(4)),1);
T(31) = y(10)*T(30)/y(10);
T(32) = getPowerDeriv(T(5)/y(10),(-1),1);
T(33) = y(4)*(T(5)*T(4)*T(30)-T(7)*y(10)*T(30))/(T(5)*T(5))/y(4);
T(34) = (y(7)-T(10))*T(33);
T(35) = getPowerDeriv(y(6),params(8),1);
T(36) = getPowerDeriv(y(7),params(16),1);
T(37) = getPowerDeriv((y(7)),1-params(16),1);
T(38) = 1-(T(25)*T(36)+T(24)*T(37));
T(39) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(40) = (y(6))*T(39);
T(41) = (-1)/(y(8)*y(8));
T(42) = (y(10)*T(2)-T(5))/(y(10)*y(10));
T(43) = y(4)*(T(3)*T(5)-T(2)*T(7))/(T(5)*T(5))/y(4);
T(44) = (y(7)-T(10))*T(43);

end
