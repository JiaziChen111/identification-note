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

assert(length(T) >= 62);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(22) = (y(2)/(1-T(1)))^(1+params(8));
T(23) = (y(3)/T(1))^(1+params(8));
T(24) = T(7)^params(1);
T(25) = y(9)^(1-params(1));
T(26) = T(7)/y(9);
T(27) = (-(y(3)))/((y(1))*(y(1)));
T(28) = (-T(27));
T(29) = (-(y(2)*T(28)))/((1-T(1))*(1-T(1)));
T(30) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),1);
T(31) = (-(y(3)*T(27)))/(T(1)*T(1));
T(32) = getPowerDeriv(y(3)/T(1),1+params(8),1);
T(33) = T(22)*T(28)+(1-T(1))*T(29)*T(30)+T(23)*T(27)+T(1)*T(31)*T(32);
T(34) = getPowerDeriv((1-T(1))*T(22)+T(1)*T(23),1/(1+params(8)),1);
T(35) = T(33)*T(34);
T(36) = (1-T(1))*T(2)*(1-T(1))*T(2);
T(37) = (-(y(2)*(T(2)*T(28)+(1-T(1))*T(35))))/T(36);
T(38) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),1);
T(39) = (-(y(3)*(T(2)*T(27)+T(1)*T(35))))/(T(1)*T(2)*T(1)*T(2));
T(40) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),1);
T(41) = 1/(1-T(1));
T(42) = (1-T(1))*T(30)*T(41);
T(43) = T(34)*T(42);
T(44) = ((1-T(1))*T(2)-y(2)*(1-T(1))*T(43))/T(36);
T(45) = (-(y(3)*T(1)*T(43)))/(T(1)*T(2)*T(1)*T(2));
T(46) = 1/(y(1));
T(47) = (-(y(2)*(-T(46))))/((1-T(1))*(1-T(1)));
T(48) = T(30)*T(47);
T(49) = (T(1)-y(3)*T(46))/(T(1)*T(1));
T(50) = T(32)*T(49);
T(51) = T(22)*(-T(46))+(1-T(1))*T(48)+T(23)*T(46)+T(1)*T(50);
T(52) = T(34)*T(51);
T(53) = (-(y(2)*(T(2)*(-T(46))+(1-T(1))*T(52))))/T(36);
T(54) = (T(1)*T(2)-y(3)*(T(2)*T(46)+T(1)*T(52)))/(T(1)*T(2)*T(1)*T(2));
T(55) = getPowerDeriv(T(7),params(1),1);
T(56) = T(25)*T(55);
T(57) = 1/y(9);
T(58) = getPowerDeriv(T(26),params(1)-1,1);
T(59) = getPowerDeriv(T(26),params(1),1);
T(60) = getPowerDeriv(y(9),1-params(1),1);
T(61) = T(24)*T(60);
T(62) = (-T(7))/(y(9)*y(9));

end
