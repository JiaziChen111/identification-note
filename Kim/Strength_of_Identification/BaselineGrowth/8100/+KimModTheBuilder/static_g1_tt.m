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

assert(length(T) >= 32);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(20) = (y(2)/(1-T(1)))^(1+params(8));
T(21) = (y(3)/T(1))^(1+params(8));
T(22) = (-(y(3)))/((y(1))*(y(1)));
T(23) = (-T(22));
T(24) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),1);
T(25) = getPowerDeriv(y(3)/T(1),1+params(8),1);
T(26) = getPowerDeriv((1-T(1))*T(20)+T(1)*T(21),1/(1+params(8)),1);
T(27) = (T(20)*T(23)+(1-T(1))*(-(y(2)*T(23)))/((1-T(1))*(1-T(1)))*T(24)+T(21)*T(22)+T(1)*(-(y(3)*T(22)))/(T(1)*T(1))*T(25))*T(26);
T(28) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),1);
T(29) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),1);
T(30) = T(26)*(1-T(1))*T(24)*1/(1-T(1));
T(31) = 1/(y(1));
T(32) = T(26)*(T(20)*(-T(31))+(1-T(1))*T(24)*(-(y(2)*(-T(31))))/((1-T(1))*(1-T(1)))+T(21)*T(31)+T(1)*T(25)*(T(1)-y(3)*T(31))/(T(1)*T(1)));

end
