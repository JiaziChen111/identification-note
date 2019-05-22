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

assert(length(T) >= 40);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(23) = (y(7)/T(1))^params(6);
T(24) = y(9)^params(7);
T(25) = y(7)^params(16);
T(26) = (y(7))^(1-params(16));
T(27) = getPowerDeriv(y(5),(-params(4)),1);
T(28) = getPowerDeriv(T(5),(-1),1);
T(29) = y(4)*(T(5)*T(4)*T(27)-T(7)*y(10)*T(27))/(T(5)*T(5))/y(4);
T(30) = (y(7)-T(10))*T(29);
T(31) = getPowerDeriv(T(11),1-params(8),1);
T(32) = getPowerDeriv(y(6),params(8),1);
T(33) = getPowerDeriv(y(7),params(16),1);
T(34) = getPowerDeriv((y(7)),1-params(16),1);
T(35) = 1-(T(26)*T(33)+T(25)*T(34));
T(36) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(37) = (-1)/(y(8)*y(8));
T(38) = getPowerDeriv(y(9),params(7),1);
T(39) = y(4)*(T(3)*T(5)-T(2)*T(7))/(T(5)*T(5))/y(4);
T(40) = (y(7)-T(10))*T(39);

end
