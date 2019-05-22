function T = static_g2_tt(T, y, x, params)
% function T = static_g2_tt(T, y, x, params)
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

assert(length(T) >= 81);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(61) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(62) = (-T(61));
T(63) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(64) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(65) = getPowerDeriv((1-T(1))*T(19)+T(1)*T(20),1/(1+params(8)),2);
T(66) = T(28)*(T(22)*T(23)*T(24)+T(19)*T(62)+T(22)*T(23)*T(24)+(1-T(1))*(T(24)*((1-T(1))*(1-T(1))*(-(y(2)*T(62)))-(-(y(2)*T(22)))*((1-T(1))*T(22)+(1-T(1))*T(22)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(23)*T(23)*T(63))+T(21)*T(25)*T(26)+T(20)*T(61)+T(21)*T(25)*T(26)+T(1)*(T(26)*(T(1)*T(1)*(-(y(3)*T(61)))-(-(y(3)*T(21)))*(T(1)*T(21)+T(1)*T(21)))/(T(1)*T(1)*T(1)*T(1))+T(25)*T(25)*T(64)))+T(27)*T(27)*T(65);
T(67) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(68) = T(28)*(T(22)*T(24)*T(35)+(1-T(1))*(T(24)*T(21)/((1-T(1))*(1-T(1)))+T(23)*T(35)*T(63)))+T(27)*T(36)*T(65);
T(69) = (-1)/((y(1))*(y(1)));
T(70) = (-T(69));
T(71) = T(28)*(T(22)*T(42)+T(19)*T(70)+T(23)*T(24)*(-T(40))+(1-T(1))*(T(24)*((1-T(1))*(1-T(1))*(-(y(2)*T(70)))-(-(y(2)*T(22)))*((1-T(1))*(-T(40))+(1-T(1))*(-T(40))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(23)*T(41)*T(63))+T(21)*T(44)+T(20)*T(69)+T(25)*T(26)*T(40)+T(1)*(T(26)*(T(1)*T(1)*(-(T(21)+y(3)*T(69)))-(-(y(3)*T(21)))*(T(1)*T(40)+T(1)*T(40)))/(T(1)*T(1)*T(1)*T(1))+T(25)*T(43)*T(64)))+T(27)*T(45)*T(65);
T(72) = (1-T(1))*T(2)*(T(2)*(-T(40))+(1-T(1))*T(46))+(1-T(1))*T(2)*(T(2)*(-T(40))+(1-T(1))*T(46));
T(73) = T(36)*T(45)*T(65)+T(28)*(T(24)*T(35)*(-T(40))+(1-T(1))*(T(35)*T(41)*T(63)+T(24)*T(40)/((1-T(1))*(1-T(1)))));
T(74) = T(45)*T(45)*T(65)+T(28)*((-T(40))*T(42)+(-T(40))*T(42)+(1-T(1))*(T(41)*T(41)*T(63)+T(24)*(-((-(y(2)*(-T(40))))*((1-T(1))*(-T(40))+(1-T(1))*(-T(40)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(40)*T(44)+T(40)*T(44)+T(1)*(T(43)*T(43)*T(64)+T(26)*(-((T(1)-y(3)*T(40))*(T(1)*T(40)+T(1)*T(40))))/(T(1)*T(1)*T(1)*T(1))));
T(75) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(76) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(77) = T(48)*T(76);
T(78) = getPowerDeriv(y(5)*params(3)/y(3),params(9),2);
T(79) = getPowerDeriv(y(9)*y(3)/params(3),1-params(9),2);
T(80) = getPowerDeriv(T(18),1/(1-params(9)),2);
T(81) = params(3)*T(52)*y(3)/params(3)*T(80);

end
