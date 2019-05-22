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

assert(length(T) >= 67);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(24) = (y(2)/(1-T(2)))^(1+params(8));
T(25) = (y(3)/T(2))^(1+params(8));
T(26) = (-(y(3)))/(((y(1))-T(1)*(y(5)))*((y(1))-T(1)*(y(5))));
T(27) = (-T(26));
T(28) = (-(y(2)*T(27)))/((1-T(2))*(1-T(2)));
T(29) = getPowerDeriv(y(2)/(1-T(2)),1+params(8),1);
T(30) = (-(y(3)*T(26)))/(T(2)*T(2));
T(31) = getPowerDeriv(y(3)/T(2),1+params(8),1);
T(32) = T(24)*T(27)+(1-T(2))*T(28)*T(29)+T(25)*T(26)+T(2)*T(30)*T(31);
T(33) = getPowerDeriv((1-T(2))*T(24)+T(2)*T(25),1/(1+params(8)),1);
T(34) = T(32)*T(33);
T(35) = (1-T(2))*T(3)*(1-T(2))*T(3);
T(36) = (-(y(2)*(T(3)*T(27)+(1-T(2))*T(34))))/T(35);
T(37) = getPowerDeriv(y(2)/((1-T(2))*T(3)),params(8),1);
T(38) = T(2)*T(3)*T(2)*T(3);
T(39) = (-(y(3)*(T(3)*T(26)+T(2)*T(34))))/T(38);
T(40) = getPowerDeriv(y(3)/(T(2)*T(3)),params(8),1);
T(41) = 1/(1-T(2));
T(42) = (1-T(2))*T(29)*T(41);
T(43) = T(33)*T(42);
T(44) = ((1-T(2))*T(3)-y(2)*(1-T(2))*T(43))/T(35);
T(45) = (-(y(3)*T(2)*T(43)))/T(38);
T(46) = 1/((y(1))-T(1)*(y(5)));
T(47) = (-T(46));
T(48) = (-(y(2)*T(47)))/((1-T(2))*(1-T(2)));
T(49) = T(29)*T(48);
T(50) = (T(2)-y(3)*T(46))/(T(2)*T(2));
T(51) = T(31)*T(50);
T(52) = T(24)*T(47)+(1-T(2))*T(49)+T(25)*T(46)+T(2)*T(51);
T(53) = T(33)*T(52);
T(54) = (-(y(2)*(T(3)*T(47)+(1-T(2))*T(53))))/T(35);
T(55) = (T(2)*T(3)-y(3)*(T(3)*T(46)+T(2)*T(53)))/T(38);
T(56) = (-((y(3))*(-T(1))))/(((y(1))-T(1)*(y(5)))*((y(1))-T(1)*(y(5))));
T(57) = (-T(56));
T(58) = (-(y(2)*T(57)))/((1-T(2))*(1-T(2)));
T(59) = T(29)*T(58);
T(60) = (-(y(3)*T(56)))/(T(2)*T(2));
T(61) = T(31)*T(60);
T(62) = T(24)*T(57)+(1-T(2))*T(59)+T(25)*T(56)+T(2)*T(61);
T(63) = T(33)*T(62);
T(64) = (-(y(2)*(T(3)*T(57)+(1-T(2))*T(63))))/T(35);
T(65) = (-(y(3)*(T(3)*T(56)+T(2)*T(63))))/T(38);
T(66) = getPowerDeriv(T(8),params(1),1);
T(67) = getPowerDeriv(T(8),params(1)-1,1);

end
